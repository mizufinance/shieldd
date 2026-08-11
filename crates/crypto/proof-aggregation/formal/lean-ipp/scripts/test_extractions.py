from __future__ import annotations

import copy
import importlib.util
import io
import json
import os
import sys
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("extractions.py")
sys.path.insert(0, str(SCRIPT.parent))
SPEC = importlib.util.spec_from_file_location("extractions", SCRIPT)
assert SPEC and SPEC.loader
EXTRACTIONS = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = EXTRACTIONS
SPEC.loader.exec_module(EXTRACTIONS)


class ExtractionManifestTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.raw_manifest = EXTRACTIONS.load_manifest()
        cls.graph_inventory = EXTRACTIONS.load_graph_inventory()
        cls.manifest = copy.deepcopy(cls.raw_manifest)
        # The checked-in manifest is being recovered graph-by-graph. Unit tests
        # exercise the final strict schema without fabricating generated output.
        for graph in cls.manifest["graphs"]:
            graph.setdefault("source_sha256", "0" * 64)

    def validate(self, manifest, *, verify_files: bool = False) -> None:
        EXTRACTIONS.validate_manifest(
            manifest,
            verify_files=verify_files,
            verify_canonical_file=False,
        )

    def assert_invalid(self, manifest, needle: str, *, verify_files: bool = False) -> None:
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            self.validate(manifest, verify_files=verify_files)
        self.assertIn(needle, str(raised.exception))

    def test_real_manifest_schema_hashes_and_exact_coverage(self):
        # Scoped regeneration is allowed while unrelated graphs are stale.
        # The CLI `check` command remains the full file-hash gate.
        self.validate(self.manifest, verify_files=False)
        self.assertEqual(self.manifest["schema_version"], 3)
        outputs = [graph["output"] for graph in self.manifest["graphs"]]
        self.assertEqual(
            tuple(graph["id"] for graph in self.manifest["graphs"]),
            self.graph_inventory,
        )
        self.assertEqual(len(outputs), len(self.graph_inventory))
        self.assertEqual(len(set(outputs)), len(self.graph_inventory))
        self.assertEqual(
            {Path(output).name for output in outputs},
            {
                path.name
                for path in (
                    EXTRACTIONS.REPO_ROOT
                    / "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted"
                ).glob("*Generated.lean")
            },
        )

    def test_canonical_pretty_json_is_enforced(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            path = Path(directory) / "manifest.json"
            path.write_text(json.dumps(self.manifest), encoding="utf-8")
            with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                EXTRACTIONS.load_manifest(path)
            self.assertIn("canonical pretty JSON", str(raised.exception))

            inventory_path = Path(directory) / "graph-inventory.json"
            inventory_path.write_text(
                json.dumps(
                    {
                        "schema_version": 1,
                        "graph_ids": list(self.graph_inventory),
                    }
                ),
                encoding="utf-8",
            )
            with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                EXTRACTIONS.load_graph_inventory(inventory_path)
            self.assertIn("canonical pretty JSON", str(raised.exception))

    def test_graph_inventory_is_exact_ordered_and_fail_closed(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            missing = Path(directory) / "missing-inventory.json"
            with self.assertRaises(EXTRACTIONS.ManifestError):
                EXTRACTIONS.load_graph_inventory(missing)

            duplicate = Path(directory) / "duplicate-inventory.json"
            duplicate.write_bytes(
                EXTRACTIONS.canonical_json(
                    {
                        "schema_version": 1,
                        "graph_ids": [
                            self.graph_inventory[0],
                            self.graph_inventory[0],
                        ],
                    }
                )
            )
            with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                EXTRACTIONS.load_graph_inventory(duplicate)
            self.assertIn("duplicate value", str(raised.exception))

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0], manifest["graphs"][1] = (
            manifest["graphs"][1],
            manifest["graphs"][0],
        )
        self.assert_invalid(manifest, "order differs")

        manifest = copy.deepcopy(self.manifest)
        unexpected = copy.deepcopy(manifest["graphs"][0])
        unexpected["id"] = "UnexpectedInventoryGraph"
        unexpected["output"] = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
            "UnexpectedInventoryGraphGenerated.lean"
        )
        manifest["graphs"].append(unexpected)
        self.assert_invalid(
            manifest,
            "unexpected UnexpectedInventoryGraph",
        )

    def test_unknown_and_missing_fields_are_rejected_at_each_level(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["unknown"] = True
        self.assert_invalid(manifest, "unknown unknown")

        manifest = copy.deepcopy(self.manifest)
        del manifest["toolchains"]["lean"]
        self.assert_invalid(manifest, "missing lean")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["unknown"] = True
        self.assert_invalid(manifest, "unknown unknown")

        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["inputs"][0]["sha256"]
        self.assert_invalid(manifest, "missing sha256")

    def test_null_or_non_commit_tool_revisions_are_rejected(self):
        for key, value in (
            ("hax_commit", None),
            ("charon_commit", "unknown"),
            ("aeneas_commit", "e0a1596"),
        ):
            with self.subTest(key=key):
                manifest = copy.deepcopy(self.manifest)
                manifest["toolchains"][key] = value
                self.assert_invalid(manifest, f"toolchains.{key}")

    def test_image_digest_is_validated_and_bound_into_every_source_stamp(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["toolchains"]["image_digest"] = "latest"
        self.assert_invalid(manifest, "toolchains.image_digest")

        graph = self.manifest["graphs"][0]
        cache = EXTRACTIONS.SourceSnapshotCache()
        original = EXTRACTIONS.current_graph_source_sha256(
            graph, self.manifest, cache=cache
        )
        changed_manifest = copy.deepcopy(self.manifest)
        changed_manifest["toolchains"]["image_digest"] = "sha256:" + "0" * 64
        changed = EXTRACTIONS.current_graph_source_sha256(
            graph, changed_manifest, cache=cache
        )
        self.assertNotEqual(original, changed)

    def test_ci_success_fingerprint_binds_declared_and_actual_graph_state(self):
        graph = self.manifest["graphs"][0]
        cache = EXTRACTIONS.SourceSnapshotCache()
        original = EXTRACTIONS.graph_ci_success_fingerprint(
            graph, self.manifest, cache=cache
        )
        changed = copy.deepcopy(graph)
        changed["output_sha256"] = "0" * 64
        self.assertNotEqual(
            original,
            EXTRACTIONS.graph_ci_success_fingerprint(
                changed, self.manifest, cache=cache
            ),
        )

    def test_undeclared_rust_inventory_changes_on_add_change_and_delete(self):
        with tempfile.TemporaryDirectory(
            prefix="extractions-undeclared-rust-"
        ) as directory:
            repo_root = Path(directory)
            crate = repo_root / "crates/example"
            source = crate / "src"
            source.mkdir(parents=True)
            (crate / "Cargo.toml").write_text(
                '[package]\nname = "example"\nversion = "0.1.0"\n',
                encoding="utf-8",
            )
            declared = source / "declared.rs"
            declared.write_text("pub fn declared() {}\n", encoding="utf-8")
            manifest = {
                "graphs": [
                    {
                        "id": "Example",
                        "package": "example",
                        "crate_manifest": "crates/example/Cargo.toml",
                        "source_files": ["crates/example/src/declared.rs"],
                    }
                ]
            }
            selection = SimpleNamespace(
                directories=(Path("crates/example"),),
                metadata_projection=b"metadata\n",
                lock_projection=b"lock\n",
            )

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS, "cargo_selection", return_value=selection
                ),
            ):
                baseline = EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                    manifest
                )
                helper = source / "helper.rs"
                helper.write_text("pub fn helper() -> u8 { 1 }\n", encoding="utf-8")
                added = EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                    manifest
                )
                helper.write_text("pub fn helper() -> u8 { 2 }\n", encoding="utf-8")
                changed = EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                    manifest
                )
                helper.unlink()
                deleted = EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                    manifest
                )
                declared.write_text(
                    "pub fn declared() { let _ = 1; }\n", encoding="utf-8"
                )
                declared_only = (
                    EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                        manifest
                    )
                )

        self.assertNotEqual(baseline, added)
        self.assertNotEqual(added, changed)
        self.assertNotEqual(changed, deleted)
        self.assertEqual(deleted, baseline)
        self.assertEqual(declared_only, baseline)

    def test_undeclared_rust_inventory_is_independent_of_traversal_order(self):
        with tempfile.TemporaryDirectory(
            prefix="extractions-undeclared-rust-order-"
        ) as directory:
            repo_root = Path(directory)
            crate = repo_root / "crates/example"
            source = crate / "src"
            source.mkdir(parents=True)
            (crate / "Cargo.toml").write_text(
                '[package]\nname = "example"\nversion = "0.1.0"\n',
                encoding="utf-8",
            )
            first_source = source / "first.rs"
            second_source = source / "second.rs"
            first_source.write_text("pub fn first() {}\n", encoding="utf-8")
            second_source.write_text("pub fn second() {}\n", encoding="utf-8")
            manifest = {
                "graphs": [
                    {
                        "id": "Example",
                        "package": "example",
                        "crate_manifest": "crates/example/Cargo.toml",
                        "source_files": [],
                    }
                ]
            }
            selection = SimpleNamespace(
                directories=(Path("crates/example"),),
                metadata_projection=b"metadata\n",
                lock_projection=b"lock\n",
            )

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS, "cargo_selection", return_value=selection
                ),
                patch.object(
                    EXTRACTIONS.Path,
                    "rglob",
                    return_value=[second_source, first_source],
                ),
            ):
                reverse_traversal = (
                    EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                        manifest
                    )
                )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS, "cargo_selection", return_value=selection
                ),
                patch.object(
                    EXTRACTIONS.Path,
                    "rglob",
                    return_value=[first_source, second_source],
                ),
            ):
                forward_traversal = (
                    EXTRACTIONS.undeclared_rust_source_inventory_sha256(
                        manifest
                    )
                )

        self.assertEqual(reverse_traversal, forward_traversal)

    def test_ci_fingerprint_binds_undeclared_rust_inventory(self):
        graph = copy.deepcopy(self.manifest["graphs"][0])
        with tempfile.TemporaryDirectory(
            prefix="extractions-inventory-fingerprint-"
        ) as directory:
            repo_root = Path(directory)
            output = repo_root.joinpath(*Path(graph["output"]).parts)
            output.parent.mkdir(parents=True)
            output.write_bytes(b"generated\n")
            graph["output_sha256"] = EXTRACTIONS.sha256_file(output)
            selection = SimpleNamespace(
                directories=(Path("crates/selected"),),
                metadata_projection=b"metadata\n",
                lock_projection=b"lock\n",
            )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS, "cargo_selection", return_value=selection
                ),
                patch.object(EXTRACTIONS, "CI_ATTESTATION_PATHS", ()),
                patch.object(EXTRACTIONS, "graph_source_paths", return_value=[]),
                patch.object(
                    EXTRACTIONS.SourceSnapshotCache,
                    "head",
                    return_value="a" * 40,
                ),
                patch.object(
                    EXTRACTIONS,
                    "undeclared_rust_source_inventory_sha256",
                    return_value="b" * 64,
                ),
            ):
                before = EXTRACTIONS.graph_ci_success_fingerprint(
                    graph, self.manifest
                )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS, "cargo_selection", return_value=selection
                ),
                patch.object(EXTRACTIONS, "CI_ATTESTATION_PATHS", ()),
                patch.object(EXTRACTIONS, "graph_source_paths", return_value=[]),
                patch.object(
                    EXTRACTIONS.SourceSnapshotCache,
                    "head",
                    return_value="a" * 40,
                ),
                patch.object(
                    EXTRACTIONS,
                    "undeclared_rust_source_inventory_sha256",
                    return_value="c" * 64,
                ),
            ):
                after = EXTRACTIONS.graph_ci_success_fingerprint(
                    graph, self.manifest
                )

        self.assertNotEqual(before, after)

    def test_schema_one_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["schema_version"] = 1
        self.assert_invalid(manifest, "schema_version: expected 3")

    def test_duplicate_ids_and_outputs_are_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["id"] = manifest["graphs"][0]["id"]
        self.assert_invalid(manifest, "duplicate graph id")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["output"] = manifest["graphs"][0]["output"]
        self.assert_invalid(manifest, "duplicate output")

    def test_graph_ids_use_the_workflow_safe_identifier_grammar(self):
        for graph_id in ("bad-id", "bad id", "../bad", 'bad"graph', "1Bad"):
            with self.subTest(graph_id=graph_id):
                manifest = copy.deepcopy(self.manifest)
                manifest["graphs"][0]["id"] = graph_id
                self.assert_invalid(
                    manifest, "expected [A-Za-z][A-Za-z0-9_]*"
                )

    def test_absolute_backslash_and_parent_paths_are_rejected(self):
        for path in (
            "/tmp/Generated.lean",
            r"C:\tmp\Generated.lean",
            "../Ipp/Extracted/FooGenerated.lean",
        ):
            with self.subTest(path=path):
                manifest = copy.deepcopy(self.manifest)
                manifest["graphs"][0]["output"] = path
                self.assert_invalid(manifest, "output")

    def test_roots_features_and_source_files_must_be_sorted(self):
        manifest = copy.deepcopy(self.manifest)
        graph = next(graph for graph in manifest["graphs"] if len(graph["roots"]) > 1)
        graph["roots"] = list(reversed(graph["roots"]))
        self.assert_invalid(manifest, "expected sorted array")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["features"] = ["z", "a"]
        self.assert_invalid(manifest, "expected sorted array")

        manifest = copy.deepcopy(self.manifest)
        graph = next(
            graph for graph in manifest["graphs"] if len(graph["source_files"]) > 1
        )
        graph["source_files"] = list(reversed(graph["source_files"]))
        self.assert_invalid(manifest, "source_files: expected sorted array")

    def test_source_files_are_required_existing_rust_and_cover_rust_inputs(self):
        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["source_files"]
        self.assert_invalid(manifest, "missing source_files")

        manifest = copy.deepcopy(self.manifest)
        graph = manifest["graphs"][0]
        graph["source_files"][0] = "Cargo.toml"
        self.assert_invalid(manifest, "expected Rust source")

        manifest = copy.deepcopy(self.manifest)
        graph = manifest["graphs"][0]
        direct_input = graph["inputs"][0]["path"]
        graph["source_files"].remove(direct_input)
        self.assert_invalid(
            manifest,
            f"undeclared Rust input(s): {direct_input}",
        )

        manifest = copy.deepcopy(self.manifest)
        graph = manifest["graphs"][0]
        graph["source_files"].append(
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "missing_extraction_source.rs"
        )
        graph["source_files"].sort()
        self.assert_invalid(
            manifest,
            "path does not exist",
            verify_files=True,
        )

        manifest = copy.deepcopy(self.manifest)
        grouped: dict[str, list[dict]] = {}
        for graph in manifest["graphs"]:
            root = next(
                item["path"]
                for item in graph["inputs"]
                if item["role"] == "copy-source"
            )
            grouped.setdefault(root, []).append(graph)
        siblings = next(graphs for graphs in grouped.values() if len(graphs) > 1)
        changed = siblings[1]
        direct_input = changed["inputs"][0]["path"]
        removable = next(
            path
            for path in changed["source_files"]
            if path != direct_input
        )
        changed["source_files"].remove(removable)
        self.assert_invalid(
            manifest,
            "must declare the same module closure",
        )

    def test_source_hash_mismatch_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["inputs"][0]["sha256"] = "f" * 64
        self.assert_invalid(manifest, "stale", verify_files=True)

    def test_source_directory_inventory_tolerates_stale_input_hashes(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["inputs"][0]["sha256"] = "f" * 64
        with tempfile.TemporaryDirectory(
            prefix="extractions-source-inventory-"
        ) as directory:
            manifest_path = Path(directory) / "manifest.json"
            manifest_path.write_bytes(EXTRACTIONS.canonical_json(manifest))
            output = io.BytesIO()

            class Stdout:
                buffer = output

            with patch.object(EXTRACTIONS.sys, "stdout", Stdout()):
                self.assertEqual(
                    EXTRACTIONS.command_source_directories(
                        SimpleNamespace(manifest=manifest_path)
                    ),
                    0,
                )

        payload = json.loads(output.getvalue())
        self.assertEqual(payload["schema_version"], 1)
        self.assertEqual(
            set(payload["directories"]),
            {
                "crates/crypto/proof-aggregation/src/ipp/dh_commitments",
                "crates/crypto/proof-aggregation/src/ipp/inner_products",
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs",
            },
        )

    def test_source_fingerprint_is_required_and_validated(self):
        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["source_sha256"]
        self.assert_invalid(manifest, "missing source_sha256")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["source_sha256"] = "not-a-hash"
        self.assert_invalid(manifest, "source_sha256")

    def test_selected_digest_and_output_normalized_hash_must_match(self):
        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["normalization"][
            "selected_raw_declarations_sha256"
        ]
        self.assert_invalid(
            manifest, "missing selected_raw_declarations_sha256"
        )

        for malformed in ("f" * 63, "F" * 64, ["f" * 64]):
            with self.subTest(malformed=malformed):
                manifest = copy.deepcopy(self.manifest)
                manifest["graphs"][0]["normalization"][
                    "selected_raw_declarations_sha256"
                ] = malformed
                self.assert_invalid(
                    manifest, "selected_raw_declarations_sha256"
                )

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["raw_sha256"] = []
        self.assert_invalid(manifest, "unknown raw_sha256")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["normalized_sha256"] = "f" * 64
        self.assert_invalid(manifest, "do not match")

    def test_generated_output_shape_and_exact_record_coverage_are_required(self):
        manifest = copy.deepcopy(self.manifest)
        removed = manifest["graphs"][-1]["id"]
        manifest["graphs"].pop()
        self.assert_invalid(manifest, f"missing {removed}")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["output"] = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
            "AeneasRuntime.lean"
        )
        self.assert_invalid(manifest, "expected Ipp/Extracted/*Generated.lean")

    def test_extraction_command_shape_and_parity_command_are_pinned(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["extractions"][0]["argv"] = ["cargo", "hax"]
        self.assert_invalid(manifest, "expected cargo hax into")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["parity"][0]["argv"] = ["cargo", "check"]
        self.assert_invalid(manifest, "expected cargo test")

    def test_shared_runtime_change_affects_every_graph(self):
        changed = SimpleNamespace(stdout=f"{EXTRACTIONS.RUNTIME_REPO_PATH}\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                sorted(graph["id"] for graph in self.manifest["graphs"]),
            )

    def test_shared_cargo_change_affects_every_graph(self):
        changed = SimpleNamespace(stdout="Cargo.lock\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                sorted(graph["id"] for graph in self.manifest["graphs"]),
            )

    def test_changed_relevant_source_selects_graph_and_reuse_dependents(self):
        app_verifier = next(
            graph for graph in self.manifest["graphs"] if graph["id"] == "AppVerifier"
        )
        source = next(
            path
            for path in app_verifier["source_files"]
            if path.endswith("/app_verifier.rs")
        )
        owners = {
            graph["id"]
            for graph in self.manifest["graphs"]
            if source in graph["source_files"]
        }
        expected = EXTRACTIONS.affected_with_reuse_dependents(
            self.manifest, owners
        )
        changed = SimpleNamespace(stdout=f"{source}\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                expected,
            )
        self.assertIn("AppVerifier", expected)
        self.assertIn("AggregateAdapter", expected)
        self.assertLess(len(expected), len(self.manifest["graphs"]))

    def test_changed_shared_dependency_selects_every_owner_and_reuse_dependent(self):
        shared = (
            "crates/crypto/proof-aggregation/src/ipp/"
            "dh_commitments/src/lib.rs"
        )
        owners = {
            graph["id"]
            for graph in self.manifest["graphs"]
            if shared in graph["source_files"]
        }
        self.assertGreater(len(owners), 1)
        expected = EXTRACTIONS.affected_with_reuse_dependents(
            self.manifest, owners
        )
        changed = SimpleNamespace(stdout=f"{shared}\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                expected,
            )

    def test_graphs_sharing_a_root_module_share_the_same_source_closure(self):
        closures_by_root: dict[str, set[tuple[str, ...]]] = {}
        for graph in self.manifest["graphs"]:
            copy_sources = {
                item["path"]
                for item in graph["inputs"]
                if item["role"] == "copy-source"
            }
            self.assertEqual(
                len(copy_sources),
                1,
                f"{graph['id']} must identify one root module",
            )
            root_source = next(iter(copy_sources))
            closures_by_root.setdefault(root_source, set()).add(
                tuple(graph["source_files"])
            )
        for root_source, closures in closures_by_root.items():
            self.assertEqual(
                len(closures),
                1,
                f"graphs rooted in {root_source} disagree on module closure",
            )

    def test_changed_unrelated_rust_source_does_not_select_extraction(self):
        changed = SimpleNamespace(stdout="crates/core/app/src/unrelated.rs\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                [],
            )

    def test_changed_undeclared_rust_in_extraction_closure_fails_closed(self):
        undeclared = (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "applications/poly_commit/transparent.rs"
        )
        self.assertFalse(
            any(
                undeclared in graph["source_files"]
                for graph in self.manifest["graphs"]
            )
        )
        changed = SimpleNamespace(stdout=f"{undeclared}\n")
        with (
            patch.object(EXTRACTIONS, "_git", return_value=changed),
            self.assertRaises(EXTRACTIONS.ManifestError) as raised,
        ):
            EXTRACTIONS.affected_graph_ids(self.manifest, "base")
        self.assertIn("undeclared in graph source_files", str(raised.exception))
        self.assertIn(undeclared, str(raised.exception))

    def test_reuse_dependency_selection_is_transitive(self):
        manifest = copy.deepcopy(self.manifest)
        first, second, third = manifest["graphs"][:3]
        second["normalization"]["reuse_modules"] = [
            EXTRACTIONS._graph_output_module(first)
        ]
        third["normalization"]["reuse_modules"] = [
            EXTRACTIONS._graph_output_module(second)
        ]
        self.assertEqual(
            EXTRACTIONS.affected_with_reuse_dependents(
                manifest, [first["id"]]
            ),
            sorted([first["id"], second["id"], third["id"]]),
        )

    def test_inventory_only_change_is_not_a_graph_semantic_change(self):
        graph = self.manifest["graphs"][0]
        source_paths = {
            path.relative_to(EXTRACTIONS.REPO_ROOT).as_posix()
            for path in EXTRACTIONS.graph_source_paths(graph)
        }
        self.assertNotIn(EXTRACTIONS.GRAPH_INVENTORY_REPO_PATH, source_paths)

        changed = SimpleNamespace(
            stdout=f"{EXTRACTIONS.GRAPH_INVENTORY_REPO_PATH}\n"
        )
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                [],
            )

    def test_declared_source_inventory_change_affects_every_graph(self):
        manifest = copy.deepcopy(self.manifest)
        graph = copy.deepcopy(manifest["graphs"][0])
        graph["id"] = "NewSourceGraph"
        graph["output"] = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
            "NewSourceGraphGenerated.lean"
        )
        graph["source_files"] = sorted(
            [
                *graph["source_files"],
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
                "new_source.rs",
            ]
        )
        manifest["graphs"].append(graph)
        changed = SimpleNamespace(
            stdout=f"{EXTRACTIONS.MANIFEST_REPO_PATH}\n",
            returncode=0,
        )
        old_manifest = SimpleNamespace(
            stdout=EXTRACTIONS.canonical_json(self.manifest).decode("utf-8"),
            returncode=0,
        )
        with patch.object(
            EXTRACTIONS,
            "_git",
            side_effect=[changed, old_manifest],
        ):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(manifest, "base"),
                sorted(graph["id"] for graph in manifest["graphs"]),
            )

    def test_semantic_extraction_tools_affect_every_graph(self):
        expected = sorted(graph["id"] for graph in self.manifest["graphs"])
        for path in (
            EXTRACTIONS.EXTRACTIONS_REPO_PATH,
            EXTRACTIONS.NORMALIZER_REPO_PATH,
        ):
            with (
                self.subTest(path=path),
                patch.object(
                    EXTRACTIONS,
                    "_git",
                    return_value=SimpleNamespace(stdout=f"{path}\n"),
                ),
            ):
                self.assertEqual(
                    EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                    expected,
                )

    def test_new_missing_output_is_recoverable_but_fails_strict_check(self):
        previous = copy.deepcopy(self.manifest)
        manifest = copy.deepcopy(previous)
        new_graph = copy.deepcopy(manifest["graphs"][0])
        new_graph["id"] = "NewRecoveryGraph"
        new_graph["output"] = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
            "NewRecoveryGraphGenerated.lean"
        )
        manifest["graphs"].append(new_graph)
        expected_graph_ids = tuple(
            graph["id"] for graph in manifest["graphs"]
        )
        self.assertEqual(
            len(expected_graph_ids),
            len(self.graph_inventory) + 1,
        )
        output_path = EXTRACTIONS.REPO_ROOT.joinpath(
            *EXTRACTIONS.PurePosixPath(new_graph["output"]).parts
        )
        self.assertFalse(output_path.exists())

        def output_hash(path):
            return next(
                graph["output_sha256"]
                for graph in previous["graphs"]
                if Path(graph["output"]).name == path.name
            )

        changed = SimpleNamespace(
            stdout=(
                f"{EXTRACTIONS.MANIFEST_REPO_PATH}\n"
                f"{EXTRACTIONS.GRAPH_INVENTORY_REPO_PATH}\n"
            ),
            returncode=0,
        )
        old_manifest = SimpleNamespace(
            stdout=EXTRACTIONS.canonical_json(previous).decode("utf-8"),
            returncode=0,
        )
        with patch.object(
            EXTRACTIONS,
            "load_graph_inventory",
            return_value=expected_graph_ids,
        ):
            EXTRACTIONS.validate_recovery_manifest(
                manifest,
                verify_files=False,
                verify_canonical_file=False,
            )
            with patch.object(
                EXTRACTIONS,
                "_git",
                side_effect=[changed, old_manifest],
            ):
                self.assertEqual(
                    EXTRACTIONS.affected_graph_ids(manifest, "base"),
                    [new_graph["id"]],
                )

            with (
                patch.object(
                    EXTRACTIONS,
                    "load_manifest",
                    return_value=manifest,
                ),
                patch.object(
                    EXTRACTIONS,
                    "validate_recovery_manifest",
                ),
                patch.object(
                    EXTRACTIONS,
                    "validate_manifest",
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    side_effect=lambda graph, **_kwargs: [
                        item["sha256"] for item in graph["inputs"]
                    ],
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_sha256",
                    side_effect=lambda graph, _manifest, **_kwargs: graph[
                        "source_sha256"
                    ],
                ),
                patch.object(
                    EXTRACTIONS,
                    "sha256_file",
                    side_effect=output_hash,
                ),
            ):
                self.assertEqual(
                    EXTRACTIONS.stale_graph_ids(
                        manifest,
                        repair_incomplete_sources=True,
                    ),
                    [new_graph["id"]],
                )
                with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                    EXTRACTIONS.command_check(
                        SimpleNamespace(manifest=EXTRACTIONS.MANIFEST_PATH)
                    )

        self.assertIn(new_graph["id"], str(raised.exception))

    def test_stale_graphs_report_input_and_output_drift_in_manifest_order(self):
        first = self.manifest["graphs"][0]
        second = self.manifest["graphs"][1]
        manifest = copy.deepcopy(self.manifest)
        for graph in manifest["graphs"]:
            graph["source_sha256"] = "c" * 64
        expected_hashes = {
            graph["id"]: [item["sha256"] for item in graph["inputs"]]
            for graph in manifest["graphs"]
        }
        expected_hashes[first["id"]][0] = "f" * 64

        def current_hashes(graph, **_kwargs):
            return expected_hashes[graph["id"]]

        def output_hash(path):
            graph = next(
                graph
                for graph in manifest["graphs"]
                if Path(graph["output"]).name == path.name
            )
            if graph["id"] == second["id"]:
                return "e" * 64
            return graph["output_sha256"]

        with (
            patch.object(EXTRACTIONS, "validate_manifest"),
            patch.object(EXTRACTIONS, "current_input_hashes", side_effect=current_hashes),
            patch.object(
                EXTRACTIONS,
                "current_graph_source_sha256",
                return_value="c" * 64,
            ),
            patch.object(EXTRACTIONS, "sha256_file", side_effect=output_hash),
        ):
            self.assertEqual(
                EXTRACTIONS.stale_graph_ids(manifest),
                [first["id"], second["id"]],
            )

    def test_recovery_stale_marks_missing_or_changed_source_fingerprint(self):
        first = self.manifest["graphs"][0]
        second = self.manifest["graphs"][1]
        manifest = copy.deepcopy(self.manifest)
        for graph in manifest["graphs"]:
            graph["source_sha256"] = "a" * 64
        del manifest["graphs"][0]["source_sha256"]
        manifest["graphs"][1]["source_sha256"] = "b" * 64

        with (
            patch.object(EXTRACTIONS, "validate_recovery_manifest"),
            patch.object(
                EXTRACTIONS,
                "current_input_hashes",
                side_effect=lambda graph, **_kwargs: [
                    item["sha256"] for item in graph["inputs"]
                ],
            ),
            patch.object(
                EXTRACTIONS,
                "current_graph_source_sha256",
                return_value="a" * 64,
            ),
            patch.object(
                EXTRACTIONS,
                "sha256_file",
                side_effect=lambda path: next(
                    graph["output_sha256"]
                    for graph in manifest["graphs"]
                    if Path(graph["output"]).name == path.name
                ),
            ),
        ):
            self.assertEqual(
                EXTRACTIONS.stale_graph_ids(
                    manifest,
                    repair_incomplete_sources=True,
                )[:2],
                [first["id"], second["id"]],
            )

    def test_check_rejects_stale_source_fingerprints(self):
        args = SimpleNamespace(manifest=EXTRACTIONS.MANIFEST_PATH)
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=self.manifest),
            patch.object(EXTRACTIONS, "validate_manifest"),
            patch.object(
                EXTRACTIONS,
                "stale_graph_ids",
                return_value=[self.manifest["graphs"][0]["id"]],
            ),
            self.assertRaises(EXTRACTIONS.ManifestError) as raised,
        ):
            EXTRACTIONS.command_check(args)
        self.assertIn("stale extraction graph", str(raised.exception))

    def test_check_delegates_only_explicit_stale_graphs(self):
        graph_ids = [
            self.manifest["graphs"][0]["id"],
            self.manifest["graphs"][1]["id"],
        ]
        args = SimpleNamespace(
            manifest=EXTRACTIONS.MANIFEST_PATH,
            allow_stale_graph=[graph_ids[0]],
        )
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=self.manifest),
            patch.object(EXTRACTIONS, "validate_recovery_manifest"),
            patch.object(
                EXTRACTIONS,
                "stale_graph_ids",
                return_value=graph_ids,
            ),
            self.assertRaises(EXTRACTIONS.ManifestError) as raised,
        ):
            EXTRACTIONS.command_check(args)
        self.assertIn(graph_ids[1], str(raised.exception))

        args.allow_stale_graph = graph_ids
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=self.manifest),
            patch.object(EXTRACTIONS, "validate_recovery_manifest"),
            patch.object(
                EXTRACTIONS,
                "stale_graph_ids",
                return_value=graph_ids,
            ),
        ):
            self.assertEqual(EXTRACTIONS.command_check(args), 0)

    def test_check_delegates_an_incomplete_source_only_by_exact_graph_id(self):
        manifest = copy.deepcopy(self.manifest)
        first = manifest["graphs"][0]
        second = manifest["graphs"][1]
        first.pop("source_sha256", None)
        args = SimpleNamespace(
            manifest=EXTRACTIONS.MANIFEST_PATH,
            allow_stale_graph=[first["id"]],
        )
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=manifest),
            patch.object(EXTRACTIONS, "validate_recovery_manifest"),
            patch.object(
                EXTRACTIONS,
                "stale_graph_ids",
                return_value=[first["id"]],
            ),
        ):
            self.assertEqual(EXTRACTIONS.command_check(args), 0)

        args.allow_stale_graph = [second["id"]]
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=manifest),
            patch.object(EXTRACTIONS, "validate_recovery_manifest"),
            patch.object(
                EXTRACTIONS,
                "stale_graph_ids",
                return_value=[first["id"]],
            ),
            self.assertRaises(EXTRACTIONS.ManifestError) as raised,
        ):
            EXTRACTIONS.command_check(args)
        self.assertIn(first["id"], str(raised.exception))

    def test_stale_graphs_reject_unexpected_generated_output(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            repo_root = Path(directory)
            generated_dir = repo_root.joinpath(
                *Path(EXTRACTIONS.EXTRACTED_REPO_DIR).parts
            )
            generated_dir.mkdir(parents=True)
            (generated_dir / "UnexpectedGenerated.lean").write_text(
                "unexpected\n", encoding="utf-8"
            )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(EXTRACTIONS, "validate_manifest"),
                self.assertRaises(EXTRACTIONS.ManifestError) as raised,
            ):
                EXTRACTIONS.stale_graph_ids(self.manifest)
        self.assertIn("unexpected generated output", str(raised.exception))

    def test_shards_are_stable_disjoint_and_cover_the_manifest(self):
        shards = [
            EXTRACTIONS.select_graphs(
                self.manifest, None, shard_index=index, shard_count=4
            )
            for index in range(4)
        ]
        ids = [[graph["id"] for graph in shard] for shard in shards]
        self.assertEqual(
            [len(shard) for shard in ids],
            [
                len(self.manifest["graphs"][index::4])
                for index in range(4)
            ],
        )
        self.assertEqual(
            len({graph_id for shard in ids for graph_id in shard}),
            len(self.graph_inventory),
        )
        self.assertEqual(
            [
                graph["id"]
                for position, graph in enumerate(self.manifest["graphs"])
                if position % 4 == 2
            ],
            ids[2],
        )

    def test_requested_graphs_keep_manifest_position_when_sharded(self):
        requested = [
            self.manifest["graphs"][1]["id"],
            self.manifest["graphs"][4]["id"],
            self.manifest["graphs"][9]["id"],
        ]
        selected = EXTRACTIONS.select_graphs(
            self.manifest, requested, shard_index=1, shard_count=4
        )
        self.assertEqual(
            [graph["id"] for graph in selected],
            [self.manifest["graphs"][1]["id"], self.manifest["graphs"][9]["id"]],
        )

    def test_invalid_shard_arguments_fail_closed(self):
        for index, count, needle in (
            (0, None, "used together"),
            (None, 4, "used together"),
            (0, 0, "positive"),
            (-1, 4, "must be in"),
            (4, 4, "must be in"),
        ):
            with self.subTest(index=index, count=count):
                with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                    EXTRACTIONS.select_graphs(
                        self.manifest,
                        None,
                        shard_index=index,
                        shard_count=count,
                    )
                self.assertIn(needle, str(raised.exception))

    def test_compare_tolerates_unselected_missing_source_fingerprint(self):
        manifest = copy.deepcopy(self.manifest)
        selected = manifest["graphs"][0]
        unselected = manifest["graphs"][1]
        unselected.pop("source_sha256")
        args = SimpleNamespace(
            manifest=Path("recovery-manifest.json"),
            graph=[selected["id"]],
            shard_index=None,
            shard_count=None,
        )
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=manifest),
            patch.object(
                EXTRACTIONS,
                "compare_graph",
                return_value=(True, "ok"),
            ) as compare,
            patch("sys.stdout", io.StringIO()),
        ):
            self.assertEqual(EXTRACTIONS.command_compare(args), 0)
        compare.assert_called_once_with(selected, manifest)

    def test_source_stamp_state_routes_only_selected_unstamped_graph(self):
        manifest = copy.deepcopy(self.manifest)
        selected = manifest["graphs"][0]
        unselected = manifest["graphs"][1]
        unselected.pop("source_sha256")
        args = SimpleNamespace(
            manifest=Path("recovery-manifest.json"),
            graph=selected["id"],
        )
        output = io.StringIO()
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=manifest),
            patch("sys.stdout", output),
        ):
            self.assertEqual(EXTRACTIONS.command_source_stamp_state(args), 0)
        self.assertEqual(output.getvalue(), "present\n")

        selected.pop("source_sha256")
        output = io.StringIO()
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=manifest),
            patch("sys.stdout", output),
        ):
            self.assertEqual(EXTRACTIONS.command_source_stamp_state(args), 0)
        self.assertEqual(output.getvalue(), "missing\n")

    def test_source_stamp_state_rejects_unknown_graph(self):
        args = SimpleNamespace(
            manifest=Path("recovery-manifest.json"),
            graph="UnknownGraph",
        )
        with (
            patch.object(
                EXTRACTIONS,
                "load_manifest",
                return_value=copy.deepcopy(self.manifest),
            ),
            self.assertRaises(EXTRACTIONS.ManifestError) as raised,
        ):
            EXTRACTIONS.command_source_stamp_state(args)
        self.assertIn("unknown graph id", str(raised.exception))

    def test_compare_rejects_selected_missing_source_with_graph_name(self):
        manifest = copy.deepcopy(self.manifest)
        selected = manifest["graphs"][0]
        selected.pop("source_sha256")
        args = SimpleNamespace(
            manifest=Path("recovery-manifest.json"),
            graph=[selected["id"]],
            shard_index=None,
            shard_count=None,
        )
        output = io.StringIO()
        with (
            patch.object(EXTRACTIONS, "load_manifest", return_value=manifest),
            patch.object(EXTRACTIONS, "reproduce_graph") as reproduce,
            patch("sys.stdout", output),
        ):
            self.assertEqual(EXTRACTIONS.command_compare(args), 1)
        reproduce.assert_not_called()
        self.assertIn(selected["id"], output.getvalue())
        self.assertIn("missing source_sha256", output.getvalue())

    def test_compare_rejects_selected_stale_input_before_reproduction(self):
        graph = copy.deepcopy(self.manifest["graphs"][0])
        stale_path = graph["inputs"][0]["path"]
        with (
            patch.object(
                EXTRACTIONS.SourceSnapshotCache,
                "file_sha256",
                return_value="f" * 64,
            ),
            patch.object(EXTRACTIONS.Path, "is_file", return_value=True),
            patch.object(EXTRACTIONS, "reproduce_graph") as reproduce,
        ):
            matches, report = EXTRACTIONS.compare_graph(
                graph, self.manifest
            )
        reproduce.assert_not_called()
        self.assertFalse(matches)
        self.assertIn(graph["id"], report)
        self.assertIn(f"stale declared input {stale_path}", report)

    def test_compare_rejects_selected_missing_and_stale_output(self):
        graph = copy.deepcopy(self.manifest["graphs"][0])
        expected_inputs = iter(item["sha256"] for item in graph["inputs"])
        with tempfile.TemporaryDirectory(
            prefix="extractions-compare-output-"
        ) as directory:
            repo_root = Path(directory)
            for item in graph["inputs"]:
                input_path = repo_root.joinpath(*Path(item["path"]).parts)
                input_path.parent.mkdir(parents=True, exist_ok=True)
                input_path.write_bytes(b"input\n")
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS.SourceSnapshotCache,
                    "file_sha256",
                    side_effect=lambda _path: next(expected_inputs),
                ),
            ):
                matches, report = EXTRACTIONS.compare_graph(
                    graph, self.manifest
                )
            self.assertFalse(matches)
            self.assertIn(graph["id"], report)
            self.assertIn("missing declared output", report)

            output_path = repo_root.joinpath(*Path(graph["output"]).parts)
            output_path.parent.mkdir(parents=True)
            output_path.write_bytes(b"stale output\n")
            expected_inputs = iter(item["sha256"] for item in graph["inputs"])
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS.SourceSnapshotCache,
                    "file_sha256",
                    side_effect=lambda _path: next(expected_inputs),
                ),
            ):
                matches, report = EXTRACTIONS.compare_graph(
                    graph, self.manifest
                )
            self.assertFalse(matches)
            self.assertIn(graph["id"], report)
            self.assertIn("stale declared output", report)

    def test_compare_reproduces_only_after_selected_evidence_matches(self):
        graph = copy.deepcopy(self.manifest["graphs"][0])
        committed = b"generated output\n"
        graph["output_sha256"] = EXTRACTIONS.hashlib.sha256(
            committed
        ).hexdigest()
        graph["normalization"]["normalized_sha256"] = graph["output_sha256"]
        source_snapshot = {
            "git:HEAD": "b" * 40,
            "selected-source": "c" * 64,
        }
        graph["source_sha256"] = EXTRACTIONS.source_snapshot_sha256(
            source_snapshot
        )
        expected_inputs = iter(
            item["sha256"] for item in graph["inputs"]
        )
        with tempfile.TemporaryDirectory(
            prefix="extractions-compare-success-"
        ) as directory:
            repo_root = Path(directory)
            for item in graph["inputs"]:
                input_path = repo_root.joinpath(*Path(item["path"]).parts)
                input_path.parent.mkdir(parents=True, exist_ok=True)
                input_path.write_bytes(b"input\n")
            output_path = repo_root.joinpath(*Path(graph["output"]).parts)
            output_path.parent.mkdir(parents=True, exist_ok=True)
            output_path.write_bytes(committed)
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS.SourceSnapshotCache,
                    "file_sha256",
                    side_effect=lambda _path: next(expected_inputs),
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=source_snapshot,
                ),
                patch.object(
                    EXTRACTIONS,
                    "reproduce_graph",
                    return_value=(
                        committed,
                        graph["normalization"][
                            "selected_raw_declarations_sha256"
                        ],
                    ),
                ) as reproduce,
            ):
                matches, report = EXTRACTIONS.compare_graph(
                    graph, self.manifest
                )
        reproduce.assert_called_once()
        self.assertTrue(matches, report)
        self.assertIn("byte-identical", report)

    def test_regenerate_refreshes_selected_graph_input_hashes(self):
        selected = self.manifest["graphs"][0]
        unselected = self.manifest["graphs"][1]
        manifest = copy.deepcopy(self.manifest)
        selected_copy = next(
            graph for graph in manifest["graphs"] if graph["id"] == selected["id"]
        )
        selected_copy["inputs"][0]["sha256"] = "f" * 64
        original_unselected_inputs = copy.deepcopy(
            next(
                graph
                for graph in manifest["graphs"]
                if graph["id"] == unselected["id"]
            )["inputs"]
        )

        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            repo_root = Path(directory)
            manifest_path = repo_root / "manifest.json"
            for item in selected_copy["inputs"]:
                path = repo_root.joinpath(*Path(item["path"]).parts)
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(f"current:{item['path']}".encode())
            output = repo_root.joinpath(*Path(selected_copy["output"]).parts)
            output.parent.mkdir(parents=True, exist_ok=True)
            manifest_path.write_bytes(EXTRACTIONS.canonical_json(manifest))
            args = SimpleNamespace(
                update_manifest=True,
                manifest=manifest_path,
                graph=[selected["id"]],
            )
            source_snapshot = {
                "git:HEAD": "b" * 40,
                "recipe:graph": EXTRACTIONS.extraction_recipe_sha256(
                    selected_copy
                ),
            }

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(EXTRACTIONS, "validate_manifest"),
                patch.object(
                    EXTRACTIONS,
                    "reproduce_graph",
                    return_value=(b"generated\n", "a" * 64),
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=source_snapshot,
                ),
            ):
                EXTRACTIONS.command_regenerate(args)

            updated = EXTRACTIONS.load_manifest(manifest_path)
            updated_selected = next(
                graph
                for graph in updated["graphs"]
                if graph["id"] == selected["id"]
            )
            self.assertEqual(
                [item["sha256"] for item in updated_selected["inputs"]],
                [
                    EXTRACTIONS.sha256_file(
                        repo_root.joinpath(*Path(item["path"]).parts)
                    )
                    for item in selected_copy["inputs"]
                ],
            )
            self.assertEqual(
                updated_selected["source_sha256"],
                EXTRACTIONS.source_snapshot_sha256(source_snapshot),
            )
            updated_unselected = next(
                graph
                for graph in updated["graphs"]
                if graph["id"] == unselected["id"]
            )
            self.assertEqual(updated_unselected["inputs"], original_unselected_inputs)

    def test_extraction_environment_enforces_single_worker_limits(self):
        with patch.dict(
            os.environ,
            {
                "CARGO_BUILD_JOBS": "19",
                "LEAN_NUM_THREADS": "23",
                "RAYON_NUM_THREADS": "29",
            },
        ):
            environment = EXTRACTIONS._bounded_extraction_environment(
                {
                    "CARGO_BUILD_JOBS": "31",
                    "LEAN_NUM_THREADS": "37",
                    "RAYON_NUM_THREADS": "41",
                    "GRAPH_SETTING": "preserved",
                }
            )
        self.assertEqual(environment["CARGO_BUILD_JOBS"], "1")
        self.assertEqual(environment["LEAN_NUM_THREADS"], "1")
        self.assertEqual(environment["RAYON_NUM_THREADS"], "1")
        self.assertEqual(environment["GRAPH_SETTING"], "preserved")

    def test_crate_configuration_paths_cover_selected_cargo_scope(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            repo_root = Path(directory).resolve()
            main = repo_root / "crates" / "main"
            dependency = repo_root / "crates" / "dependency"
            (repo_root / ".cargo").mkdir(parents=True)
            (main / "src").mkdir(parents=True)
            (main / "tests").mkdir()
            (main / "proofs").mkdir()
            (dependency / "src").mkdir(parents=True)
            (repo_root / "Cargo.toml").write_text(
                "[workspace]\n", encoding="utf-8"
            )
            (repo_root / ".cargo" / "config.toml").write_text(
                "[build]\n", encoding="utf-8"
            )
            (main / "Cargo.toml").write_text(
                '[package]\nname = "main"\n', encoding="utf-8"
            )
            (main / "src" / "lib.rs").write_text("", encoding="utf-8")
            (main / "tests" / "parity.rs").write_text("", encoding="utf-8")
            (main / "proofs" / "stale.rs").write_text("", encoding="utf-8")
            (dependency / "Cargo.toml").write_text(
                "[package]\nname = \"dep\"\n", encoding="utf-8"
            )
            (dependency / "src" / "lib.rs").write_text("", encoding="utf-8")

            selection = SimpleNamespace(
                directories=(Path("crates/main"), Path("crates/dependency")),
                metadata_projection=b"metadata\n",
                lock_projection=b"lock\n",
            )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS, "cargo_selection", return_value=selection
                ),
            ):
                paths = set(
                    EXTRACTIONS.crate_configuration_paths(
                        {
                            "id": "Main",
                            "package": "main",
                            "crate_manifest": "crates/main/Cargo.toml",
                        }
                    )
                )

        self.assertNotIn(main / "src" / "lib.rs", paths)
        self.assertNotIn(main / "tests" / "parity.rs", paths)
        self.assertNotIn(dependency / "src" / "lib.rs", paths)
        self.assertIn(main / "Cargo.toml", paths)
        self.assertIn(dependency / "Cargo.toml", paths)
        self.assertNotIn(repo_root / "Cargo.toml", paths)
        self.assertIn(repo_root / ".cargo" / "config.toml", paths)
        self.assertNotIn(main / "proofs" / "stale.rs", paths)

    def test_graph_source_paths_use_only_declared_rust_sources(self):
        graph = next(
            graph for graph in self.manifest["graphs"] if graph["id"] == "AppVerifier"
        )
        paths = {
            path.relative_to(EXTRACTIONS.REPO_ROOT).as_posix()
            for path in EXTRACTIONS.graph_source_paths(graph)
        }
        self.assertTrue(set(graph["source_files"]).issubset(paths))
        self.assertNotIn(
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/gipa.rs",
            paths,
        )
        self.assertNotIn("Cargo.lock", paths)
        self.assertNotIn("Cargo.toml", paths)
        self.assertIn("scripts/ci/snarkpack_lane_fingerprint.py", paths)

    def test_source_snapshot_hashes_resolved_cargo_scope(self):
        graph = copy.deepcopy(self.manifest["graphs"][0])
        selection = SimpleNamespace(
            directories=(Path("crates/selected"),),
            metadata_projection=b"selected metadata\n",
            lock_projection=b"selected lock closure\n",
        )
        cache = EXTRACTIONS.SourceSnapshotCache()
        cache._head = "a" * 40
        with (
            patch.object(EXTRACTIONS, "cargo_selection", return_value=selection),
            patch.object(EXTRACTIONS, "graph_source_paths", return_value=[]),
            patch.object(
                EXTRACTIONS,
                "undeclared_rust_source_inventory_sha256",
                return_value="b" * 64,
            ),
        ):
            snapshot = EXTRACTIONS.current_graph_source_snapshot(
                graph, self.manifest, cache=cache
            )

        self.assertEqual(
            snapshot["cargo:local-metadata-v1"],
            EXTRACTIONS.hashlib.sha256(selection.metadata_projection).hexdigest(),
        )
        self.assertEqual(
            snapshot["cargo:lock-closure-v1"],
            EXTRACTIONS.hashlib.sha256(selection.lock_projection).hexdigest(),
        )

    def test_graph_source_paths_include_reuse_modules(self):
        graph = copy.deepcopy(self.manifest["graphs"][0])
        graph["normalization"]["reuse_modules"] = ["Ipp.Extracted.Shared"]
        expected = (
            EXTRACTIONS.REPO_ROOT
            / "crates/crypto/proof-aggregation/formal/lean-ipp"
            / "Ipp/Extracted/Shared.lean"
        )
        self.assertIn(expected, EXTRACTIONS.graph_source_paths(graph))

    def test_source_fingerprint_ignores_head_but_not_source_content(self):
        first = {
            "git:HEAD": "a" * 40,
            "crate/src/lib.rs": "b" * 64,
        }
        second = {
            "git:HEAD": "c" * 40,
            "crate/src/lib.rs": "b" * 64,
        }
        changed = {
            "git:HEAD": "c" * 40,
            "crate/src/lib.rs": "d" * 64,
        }
        self.assertEqual(
            EXTRACTIONS.source_snapshot_sha256(first),
            EXTRACTIONS.source_snapshot_sha256(second),
        )
        self.assertNotEqual(
            EXTRACTIONS.source_snapshot_sha256(first),
            EXTRACTIONS.source_snapshot_sha256(changed),
        )

    def test_source_snapshot_cache_hashes_head_and_shared_files_once(self):
        with tempfile.TemporaryDirectory(prefix="extractions-cache-") as directory:
            source = Path(directory) / "shared.rs"
            source.write_bytes(b"shared source\n")
            cache = EXTRACTIONS.SourceSnapshotCache()
            git_result = SimpleNamespace(stdout=f"{'a' * 40}\n")
            original_sha256 = EXTRACTIONS.sha256_file
            with (
                patch.object(EXTRACTIONS, "_git", return_value=git_result) as git,
                patch.object(
                    EXTRACTIONS,
                    "sha256_file",
                    wraps=original_sha256,
                ) as digest,
            ):
                self.assertEqual(cache.head(), "a" * 40)
                self.assertEqual(cache.head(), "a" * 40)
                self.assertEqual(
                    cache.file_sha256(source),
                    cache.file_sha256(source),
                )
            git.assert_called_once_with(["rev-parse", "HEAD"])
            digest.assert_called_once()

    def _recovery_wave_fixture(
        self,
        repo_root: Path,
        *,
        cyclic: bool = False,
        self_dependent: bool = False,
    ):
        manifest = copy.deepcopy(self.manifest)
        first, second = manifest["graphs"][:2]
        old_contents = {
            first["id"]: b"old first output\n",
            second["id"]: b"old second output\n",
        }
        recovered_contents = {
            first["id"]: b"recovered first output\n",
            second["id"]: b"recovered second output\n",
        }
        output_paths = {}
        for graph in (first, second):
            output_path = repo_root.joinpath(*Path(graph["output"]).parts)
            output_path.parent.mkdir(parents=True, exist_ok=True)
            output_path.write_bytes(old_contents[graph["id"]])
            output_paths[graph["id"]] = output_path

        old_hashes = {
            graph_id: EXTRACTIONS.hashlib.sha256(content).hexdigest()
            for graph_id, content in old_contents.items()
        }
        snapshots = {
            first["id"]: {
                "git:HEAD": "a" * 40,
                "recipe:graph": EXTRACTIONS.extraction_recipe_sha256(first),
                "crate/src/lib.rs": "b" * 64,
            },
            second["id"]: {
                "git:HEAD": "a" * 40,
                "recipe:graph": EXTRACTIONS.extraction_recipe_sha256(second),
                "crate/src/lib.rs": "b" * 64,
                first["output"]: old_hashes[first["id"]],
            },
        }
        if cyclic:
            snapshots[first["id"]][second["output"]] = old_hashes[second["id"]]
        if self_dependent:
            for graph in (first, second):
                snapshots[graph["id"]][graph["output"]] = old_hashes[graph["id"]]

        input_hashes = {
            graph["id"]: ["c" * 64 for _item in graph["inputs"]]
            for graph in (first, second)
        }
        artifacts = []
        for index, graph in enumerate((first, second)):
            content = recovered_contents[graph["id"]]
            record = EXTRACTIONS._recovery_record(
                manifest=manifest,
                graph=graph,
                source_snapshot=snapshots[graph["id"]],
                input_hashes=input_hashes[graph["id"]],
                content=content,
                selected_digest=("d" if index == 0 else "e") * 64,
            )
            artifact = repo_root / f"artifact-{graph['id']}"
            EXTRACTIONS._write_recovery_artifact(
                artifact,
                record=record,
                output_content=content,
            )
            artifacts.append(artifact)

        manifest_path = repo_root / "manifest.json"
        manifest_path.write_bytes(EXTRACTIONS.canonical_json(manifest))

        def current_snapshot(graph, _manifest, *, cache=None):
            del cache
            snapshot = dict(snapshots[graph["id"]])
            for dependency in (first, second):
                output = dependency["output"]
                if output in snapshot:
                    snapshot[output] = EXTRACTIONS.sha256_file(
                        output_paths[dependency["id"]]
                    )
            return snapshot

        def current_inputs(graph, *, cache=None):
            del cache
            return input_hashes[graph["id"]]

        return {
            "manifest": manifest,
            "manifest_path": manifest_path,
            "graphs": (first, second),
            "artifacts": artifacts,
            "output_paths": output_paths,
            "old_contents": old_contents,
            "recovered_contents": recovered_contents,
            "current_snapshot": current_snapshot,
            "current_inputs": current_inputs,
        }

    def test_strict_recovery_batch_rejects_generated_output_dependency(self):
        with tempfile.TemporaryDirectory(prefix="extractions-wave-") as directory:
            repo_root = Path(directory)
            fixture = self._recovery_wave_fixture(repo_root)
            args = SimpleNamespace(
                manifest=fixture["manifest_path"],
                artifact=fixture["artifacts"],
                maximal_compatible=False,
            )
            original_manifest = fixture["manifest_path"].read_bytes()
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    side_effect=fixture["current_snapshot"],
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    side_effect=fixture["current_inputs"],
                ),
                self.assertRaises(EXTRACTIONS.ManifestError) as raised,
            ):
                EXTRACTIONS.command_import_recovery(args)

            self.assertIn("source changed during extraction", str(raised.exception))
            self.assertEqual(
                fixture["manifest_path"].read_bytes(),
                original_manifest,
            )
            for graph in fixture["graphs"]:
                self.assertEqual(
                    fixture["output_paths"][graph["id"]].read_bytes(),
                    fixture["old_contents"][graph["id"]],
                )

    def test_maximal_compatible_recovery_imports_dependency_first_wave(self):
        with tempfile.TemporaryDirectory(prefix="extractions-wave-") as directory:
            repo_root = Path(directory)
            fixture = self._recovery_wave_fixture(repo_root)
            first, second = fixture["graphs"]
            args = SimpleNamespace(
                manifest=fixture["manifest_path"],
                artifact=fixture["artifacts"],
                maximal_compatible=True,
            )
            output = io.StringIO()
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    side_effect=fixture["current_snapshot"],
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    side_effect=fixture["current_inputs"],
                ),
                patch("sys.stdout", output),
            ):
                self.assertEqual(EXTRACTIONS.command_import_recovery(args), 0)

            self.assertEqual(
                fixture["output_paths"][first["id"]].read_bytes(),
                fixture["recovered_contents"][first["id"]],
            )
            self.assertEqual(
                fixture["output_paths"][second["id"]].read_bytes(),
                fixture["old_contents"][second["id"]],
            )
            updated = EXTRACTIONS.load_manifest(fixture["manifest_path"])
            self.assertEqual(
                updated["graphs"][0]["output_sha256"],
                EXTRACTIONS.hashlib.sha256(
                    fixture["recovered_contents"][first["id"]]
                ).hexdigest(),
            )
            self.assertEqual(
                updated["graphs"][1]["output_sha256"],
                fixture["manifest"]["graphs"][1]["output_sha256"],
            )
            report = output.getvalue()
            self.assertIn(f"{first['id']}: imported recovery", report)
            self.assertIn(
                f"{second['id']}: skipped recovery for this wave",
                report,
            )
            self.assertIn(first["output"], report)

    def test_maximal_compatible_recovery_rejects_empty_wave(self):
        with tempfile.TemporaryDirectory(prefix="extractions-wave-") as directory:
            repo_root = Path(directory)
            fixture = self._recovery_wave_fixture(
                repo_root,
                self_dependent=True,
            )
            args = SimpleNamespace(
                manifest=fixture["manifest_path"],
                artifact=fixture["artifacts"],
                maximal_compatible=True,
            )
            original_manifest = fixture["manifest_path"].read_bytes()
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    side_effect=fixture["current_snapshot"],
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    side_effect=fixture["current_inputs"],
                ),
                self.assertRaises(EXTRACTIONS.ManifestError) as raised,
            ):
                EXTRACTIONS.command_import_recovery(args)

            self.assertIn("maximal-compatible wave is empty", str(raised.exception))
            self.assertEqual(
                fixture["manifest_path"].read_bytes(),
                original_manifest,
            )
            for graph in fixture["graphs"]:
                self.assertEqual(
                    fixture["output_paths"][graph["id"]].read_bytes(),
                    fixture["old_contents"][graph["id"]],
                )

    def test_maximal_compatible_recovery_rolls_back_post_swap_source_drift(self):
        with tempfile.TemporaryDirectory(prefix="extractions-wave-") as directory:
            repo_root = Path(directory)
            fixture = self._recovery_wave_fixture(repo_root)
            first = fixture["graphs"][0]
            args = SimpleNamespace(
                manifest=fixture["manifest_path"],
                artifact=[fixture["artifacts"][0]],
                maximal_compatible=True,
            )
            original_manifest = fixture["manifest_path"].read_bytes()

            def drifting_snapshot(graph, current_manifest, *, cache=None):
                snapshot = fixture["current_snapshot"](
                    graph, current_manifest, cache=cache
                )
                if (
                    fixture["output_paths"][first["id"]].read_bytes()
                    == fixture["recovered_contents"][first["id"]]
                ):
                    snapshot["crate/src/lib.rs"] = "f" * 64
                return snapshot

            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    side_effect=drifting_snapshot,
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    side_effect=fixture["current_inputs"],
                ),
                self.assertRaises(EXTRACTIONS.ManifestError) as raised,
            ):
                EXTRACTIONS.command_import_recovery(args)

            self.assertIn("source changed during extraction", str(raised.exception))
            self.assertEqual(
                fixture["manifest_path"].read_bytes(),
                original_manifest,
            )
            self.assertEqual(
                fixture["output_paths"][first["id"]].read_bytes(),
                fixture["old_contents"][first["id"]],
            )

    def test_recovery_artifact_import_is_incremental_and_atomic(self):
        manifest = copy.deepcopy(self.manifest)
        graph = manifest["graphs"][0]
        del manifest["graphs"][1]["source_sha256"]
        input_hashes = ["c" * 64 for _item in graph["inputs"]]
        source_snapshot = {
            "git:HEAD": "a" * 40,
            "recipe:graph": EXTRACTIONS.extraction_recipe_sha256(graph),
            "crate/src/lib.rs": "b" * 64,
        }
        content = b"recovered generated output\n"
        record = EXTRACTIONS._recovery_record(
            manifest=manifest,
            graph=graph,
            source_snapshot=source_snapshot,
            input_hashes=input_hashes,
            content=content,
            selected_digest="d" * 64,
        )

        with tempfile.TemporaryDirectory(prefix="extractions-import-") as directory:
            repo_root = Path(directory)
            manifest_path = repo_root / "manifest.json"
            manifest_path.write_bytes(EXTRACTIONS.canonical_json(manifest))
            output_path = repo_root.joinpath(*Path(graph["output"]).parts)
            output_path.parent.mkdir(parents=True)
            output_path.write_bytes(b"old generated output\n")
            artifact = repo_root / "artifact"
            EXTRACTIONS._write_recovery_artifact(
                artifact,
                record=record,
                output_content=content,
            )
            args = SimpleNamespace(
                manifest=manifest_path,
                artifact=[artifact],
            )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=source_snapshot,
                ),
                patch.object(
                    EXTRACTIONS,
                    "current_input_hashes",
                    return_value=input_hashes,
                ),
            ):
                self.assertEqual(EXTRACTIONS.command_import_recovery(args), 0)

            updated = EXTRACTIONS.load_manifest(manifest_path)
            updated_graph = updated["graphs"][0]
            self.assertEqual(output_path.read_bytes(), content)
            self.assertEqual(
                updated_graph["source_sha256"],
                EXTRACTIONS.source_snapshot_sha256(source_snapshot),
            )
            self.assertEqual(updated_graph["output_sha256"], record["output_sha256"])
            self.assertNotIn("source_sha256", updated["graphs"][1])
            EXTRACTIONS.validate_recovery_manifest(
                updated,
                manifest_path=manifest_path,
                verify_files=False,
            )
            with self.assertRaises(EXTRACTIONS.ManifestError):
                EXTRACTIONS.validate_manifest(
                    updated,
                    manifest_path=manifest_path,
                    verify_files=False,
                )

    def test_recovery_import_rejects_stale_artifact_without_mutation(self):
        manifest = copy.deepcopy(self.manifest)
        graph = manifest["graphs"][0]
        input_hashes = ["c" * 64 for _item in graph["inputs"]]
        artifact_snapshot = {
            "git:HEAD": "a" * 40,
            "recipe:graph": EXTRACTIONS.extraction_recipe_sha256(graph),
            "crate/src/lib.rs": "b" * 64,
        }
        current_snapshot = dict(artifact_snapshot)
        current_snapshot["crate/src/lib.rs"] = "e" * 64
        content = b"recovered generated output\n"
        record = EXTRACTIONS._recovery_record(
            manifest=manifest,
            graph=graph,
            source_snapshot=artifact_snapshot,
            input_hashes=input_hashes,
            content=content,
            selected_digest="d" * 64,
        )

        with tempfile.TemporaryDirectory(prefix="extractions-import-") as directory:
            repo_root = Path(directory)
            manifest_path = repo_root / "manifest.json"
            original_manifest = EXTRACTIONS.canonical_json(manifest)
            manifest_path.write_bytes(original_manifest)
            output_path = repo_root.joinpath(*Path(graph["output"]).parts)
            output_path.parent.mkdir(parents=True)
            original_output = b"old generated output\n"
            output_path.write_bytes(original_output)
            artifact = repo_root / "artifact"
            EXTRACTIONS._write_recovery_artifact(
                artifact,
                record=record,
                output_content=content,
            )
            args = SimpleNamespace(
                manifest=manifest_path,
                artifact=[artifact],
            )
            with (
                patch.object(EXTRACTIONS, "REPO_ROOT", repo_root),
                patch.object(
                    EXTRACTIONS,
                    "current_graph_source_snapshot",
                    return_value=current_snapshot,
                ),
                self.assertRaises(EXTRACTIONS.ManifestError) as raised,
            ):
                EXTRACTIONS.command_import_recovery(args)

            self.assertIn("source changed after artifact", str(raised.exception))
            self.assertEqual(manifest_path.read_bytes(), original_manifest)
            self.assertEqual(output_path.read_bytes(), original_output)

    def test_command_failure_preserves_command_cwd_stdout_and_stderr(self):
        command = [
            sys.executable,
            "-c",
            (
                "import sys; "
                "print('partial stdout'); "
                "print('fatal: detected dubious ownership', file=sys.stderr); "
                "raise SystemExit(128)"
            ),
        ]
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            EXTRACTIONS.run_command(
                command,
                cwd=EXTRACTIONS.REPO_ROOT,
                poll_seconds=0.01,
            )
        message = str(raised.exception)
        self.assertIn(sys.executable, message)
        self.assertIn(str(EXTRACTIONS.REPO_ROOT), message)
        self.assertIn("partial stdout", message)
        self.assertIn("detected dubious ownership", message)

    def test_timeout_terminates_the_command_and_keeps_diagnostics(self):
        command = [
            sys.executable,
            "-c",
            (
                "import sys, time; "
                "print('started', flush=True); "
                "print('waiting', file=sys.stderr, flush=True); "
                "time.sleep(30)"
            ),
        ]
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            EXTRACTIONS.run_command(
                command,
                cwd=EXTRACTIONS.REPO_ROOT,
                timeout=0.05,
                poll_seconds=0.01,
            )
        message = str(raised.exception)
        self.assertIn("timed out", message)
        self.assertIn("started", message)
        self.assertIn("waiting", message)

    def test_monitoring_failure_terminates_the_command_fail_closed(self):
        command = [
            sys.executable,
            "-c",
            "import time; time.sleep(30)",
        ]
        with (
            patch.object(
                EXTRACTIONS,
                "_resource_limit_reason",
                side_effect=EXTRACTIONS.ManifestError("watchdog unavailable"),
            ),
            self.assertRaises(EXTRACTIONS.ManifestError) as raised,
        ):
            EXTRACTIONS.run_command(
                command,
                cwd=EXTRACTIONS.REPO_ROOT,
                enforce_resource_limits=True,
                poll_seconds=0.01,
            )
        self.assertIn("resource monitoring failed", str(raised.exception))
        self.assertIn("watchdog unavailable", str(raised.exception))

    def test_input_drift_is_fatal_and_names_the_changed_source(self):
        graph = {
            "id": "Example",
            "inputs": [
                {"path": "first.rs"},
                {"path": "second.rs"},
            ],
        }
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            EXTRACTIONS._assert_inputs_unchanged(
                graph,
                ["a" * 64, "b" * 64],
                ["a" * 64, "c" * 64],
            )
        self.assertIn("Example", str(raised.exception))
        self.assertIn("second.rs", str(raised.exception))

    def test_regenerate_requires_exactly_one_graph(self):
        args = SimpleNamespace(
            update_manifest=True,
            manifest=EXTRACTIONS.MANIFEST_PATH,
            graph=None,
        )
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            EXTRACTIONS.command_regenerate(args)
        self.assertIn("exactly one --graph", str(raised.exception))

    def test_proposed_manifest_can_be_schema_checked_before_atomic_swap(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            path = Path(directory) / "manifest.json"
            path.write_bytes(EXTRACTIONS.canonical_json(self.manifest))
            proposed = copy.deepcopy(self.manifest)
            proposed["graphs"][0]["output_sha256"] = "e" * 64
            proposed["graphs"][0]["normalization"]["normalized_sha256"] = "e" * 64
            with patch.object(EXTRACTIONS, "MANIFEST_PATH", path):
                EXTRACTIONS.validate_manifest(
                    proposed,
                    manifest_path=path,
                    verify_files=False,
                    verify_canonical_file=False,
                )
                with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                    EXTRACTIONS.validate_manifest(
                        proposed,
                        manifest_path=path,
                        verify_files=False,
                    )
            self.assertIn("canonical pretty JSON", str(raised.exception))

    def test_regeneration_commit_rolls_back_both_files_on_failure(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            root = Path(directory)
            output = root / "Generated.lean"
            manifest = root / "manifest.json"
            output.write_bytes(b"old output\n")
            manifest.write_bytes(b"old manifest\n")
            original_atomic_write = EXTRACTIONS._atomic_write_bytes
            calls = 0

            def fail_manifest_once(path, content):
                nonlocal calls
                calls += 1
                if calls == 2:
                    raise OSError("simulated manifest replacement failure")
                original_atomic_write(path, content)

            with (
                patch.object(
                    EXTRACTIONS,
                    "_atomic_write_bytes",
                    side_effect=fail_manifest_once,
                ),
                self.assertRaises(OSError),
            ):
                EXTRACTIONS._commit_regeneration(
                    output_path=output,
                    output_content=b"new output\n",
                    manifest_path=manifest,
                    manifest_content=b"new manifest\n",
                )
            self.assertEqual(output.read_bytes(), b"old output\n")
            self.assertEqual(manifest.read_bytes(), b"old manifest\n")

    def test_recovery_commit_rolls_back_every_output_and_manifest(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            root = Path(directory)
            first = root / "FirstGenerated.lean"
            second = root / "SecondGenerated.lean"
            manifest = root / "manifest.json"
            first.write_bytes(b"old first\n")
            second.write_bytes(b"old second\n")
            manifest.write_bytes(b"old manifest\n")
            original_atomic_write = EXTRACTIONS._atomic_write_bytes
            calls = 0

            def fail_manifest_once(path, content):
                nonlocal calls
                calls += 1
                if calls == 3:
                    raise OSError("simulated recovery manifest failure")
                original_atomic_write(path, content)

            with (
                patch.object(
                    EXTRACTIONS,
                    "_atomic_write_bytes",
                    side_effect=fail_manifest_once,
                ),
                self.assertRaises(OSError),
            ):
                EXTRACTIONS._commit_recoveries(
                    output_updates=[
                        (first, b"new first\n"),
                        (second, b"new second\n"),
                    ],
                    manifest_path=manifest,
                    manifest_content=b"new manifest\n",
                )
            self.assertEqual(first.read_bytes(), b"old first\n")
            self.assertEqual(second.read_bytes(), b"old second\n")
            self.assertEqual(manifest.read_bytes(), b"old manifest\n")

    def test_regeneration_commit_rolls_back_if_source_changes_after_swap(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            root = Path(directory)
            output = root / "Generated.lean"
            manifest = root / "manifest.json"
            output.write_bytes(b"old output\n")
            manifest.write_bytes(b"old manifest\n")

            with self.assertRaises(EXTRACTIONS.ManifestError):
                EXTRACTIONS._commit_regeneration(
                    output_path=output,
                    output_content=b"new output\n",
                    manifest_path=manifest,
                    manifest_content=b"new manifest\n",
                    post_commit_check=lambda: (_ for _ in ()).throw(
                        EXTRACTIONS.ManifestError("source changed")
                    ),
                )
            self.assertEqual(output.read_bytes(), b"old output\n")
            self.assertEqual(manifest.read_bytes(), b"old manifest\n")


if __name__ == "__main__":
    unittest.main()
