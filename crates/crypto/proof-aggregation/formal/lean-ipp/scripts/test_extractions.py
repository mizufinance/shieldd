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
        cls.manifest = EXTRACTIONS.load_manifest()

    def validate(self, manifest, *, verify_files: bool = False) -> None:
        EXTRACTIONS.validate_manifest(manifest, verify_files=verify_files)

    def assert_invalid(self, manifest, needle: str, *, verify_files: bool = False) -> None:
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            self.validate(manifest, verify_files=verify_files)
        self.assertIn(needle, str(raised.exception))

    def test_real_manifest_schema_hashes_and_exact_coverage(self):
        # Scoped regeneration is allowed while unrelated graphs are stale.
        # The CLI `check` command remains the full file-hash gate.
        self.validate(self.manifest, verify_files=False)
        self.assertEqual(self.manifest["schema_version"], 2)
        outputs = [graph["output"] for graph in self.manifest["graphs"]]
        self.assertEqual(EXTRACTIONS.EXPECTED_GRAPH_COUNT, 37)
        self.assertEqual(len(outputs), EXTRACTIONS.EXPECTED_GRAPH_COUNT)
        self.assertEqual(len(set(outputs)), EXTRACTIONS.EXPECTED_GRAPH_COUNT)
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

    def test_schema_one_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["schema_version"] = 1
        self.assert_invalid(manifest, "schema_version: expected 2")

    def test_duplicate_ids_and_outputs_are_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["id"] = manifest["graphs"][0]["id"]
        self.assert_invalid(manifest, "duplicate graph id")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["output"] = manifest["graphs"][0]["output"]
        self.assert_invalid(manifest, "duplicate output")

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

    def test_roots_and_features_must_be_sorted(self):
        manifest = copy.deepcopy(self.manifest)
        graph = next(graph for graph in manifest["graphs"] if len(graph["roots"]) > 1)
        graph["roots"] = list(reversed(graph["roots"]))
        self.assert_invalid(manifest, "expected sorted array")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["features"] = ["z", "a"]
        self.assert_invalid(manifest, "expected sorted array")

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

    def test_optional_source_fingerprint_is_schema_compatible_and_validated(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["source_sha256"] = "a" * 64
        EXTRACTIONS.validate_manifest(
            manifest,
            verify_files=False,
            verify_canonical_file=False,
        )
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
        manifest["graphs"].pop()
        self.assert_invalid(
            manifest,
            f"expected {EXTRACTIONS.EXPECTED_GRAPH_COUNT} records",
        )

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

        def current_hashes(graph):
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

    def test_stale_graphs_fail_closed_on_missing_or_changed_source_fingerprint(self):
        first = self.manifest["graphs"][0]
        second = self.manifest["graphs"][1]
        manifest = copy.deepcopy(self.manifest)
        for graph in manifest["graphs"]:
            graph["source_sha256"] = "a" * 64
        del manifest["graphs"][0]["source_sha256"]
        manifest["graphs"][1]["source_sha256"] = "b" * 64

        with (
            patch.object(EXTRACTIONS, "validate_manifest"),
            patch.object(
                EXTRACTIONS,
                "current_input_hashes",
                side_effect=lambda graph: [
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
                EXTRACTIONS.stale_graph_ids(manifest)[:2],
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
        self.assertEqual([len(shard) for shard in ids], [10, 9, 9, 9])
        self.assertEqual(
            len({graph_id for shard in ids for graph_id in shard}),
            EXTRACTIONS.EXPECTED_GRAPH_COUNT,
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
                    return_value={"git:HEAD": "b" * 40},
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
                EXTRACTIONS.source_snapshot_sha256(
                    {"git:HEAD": "b" * 40}
                ),
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

    def test_conservative_source_paths_cover_crate_dependencies_and_configs(self):
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
                '[dependencies]\ndep = { path = "../dependency" }\n',
                encoding="utf-8",
            )
            (main / "src" / "lib.rs").write_text("", encoding="utf-8")
            (main / "tests" / "parity.rs").write_text("", encoding="utf-8")
            (main / "proofs" / "stale.rs").write_text("", encoding="utf-8")
            (dependency / "Cargo.toml").write_text(
                "[package]\nname = \"dep\"\n", encoding="utf-8"
            )
            (dependency / "src" / "lib.rs").write_text("", encoding="utf-8")

            with patch.object(EXTRACTIONS, "REPO_ROOT", repo_root):
                paths = set(
                    EXTRACTIONS.conservative_crate_source_paths(
                        {"crate_manifest": "crates/main/Cargo.toml"}
                    )
                )

        self.assertIn(main / "src" / "lib.rs", paths)
        self.assertIn(main / "tests" / "parity.rs", paths)
        self.assertIn(dependency / "src" / "lib.rs", paths)
        self.assertIn(repo_root / "Cargo.toml", paths)
        self.assertIn(repo_root / ".cargo" / "config.toml", paths)
        self.assertNotIn(main / "proofs" / "stale.rs", paths)

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
