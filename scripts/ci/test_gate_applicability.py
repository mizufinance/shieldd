from __future__ import annotations

import importlib.util
import io
import json
import re
import subprocess
import sys
import tempfile
import unittest
from contextlib import redirect_stdout
from pathlib import Path
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("gate-applicability.py")
SPEC = importlib.util.spec_from_file_location("gate_applicability", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
GATE = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = GATE
SPEC.loader.exec_module(GATE)


class GateApplicabilityTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.root = SCRIPT.parents[2]
        cls.orbis = GATE.load_declaration(
            cls.root / "ci/gates/orbis-integration.json", "orbis-integration"
        )
        cls.snarkpack = GATE.load_declaration(
            cls.root / "ci/gates/snarkpack-formal.json", "snarkpack-formal"
        )
        cls.soundness = GATE.load_declaration(
            cls.root / "ci/gates/soundness-formal.json", "soundness-formal"
        )
        cls.lean_source = next(
            item
            for item in cls.snarkpack.derived_inputs
            if item["type"] == "lean_extraction_manifest"
        )

    def synthetic_manifest(self, *graphs: tuple[str, str]) -> dict:
        return {
            "schema_version": 3,
            "toolchains": {"lean": "test"},
            "graphs": [
                {
                    "id": graph_id,
                    "output": f"generated/{graph_id}.lean",
                    "crate_manifest": f"crates/{graph_id}/Cargo.toml",
                    "source_files": [input_path],
                    "inputs": [{"path": input_path}],
                    "normalization": {
                        "script": "tools/normalize.py",
                        "reuse_modules": [],
                    },
                    "parity": [{"cwd": ".", "argv": ["true"]}],
                }
                for graph_id, input_path in graphs
            ],
        }

    def lean_rules(self, manifest: dict, event: str = "pull_request"):
        return GATE.lean_manifest_rules_from_data(
            manifest,
            self.lean_source,
            event,
            verify_root=None,
            label="fixture manifest",
        )

    def test_orbis_closure_contains_at_least_40_local_packages(self) -> None:
        source = next(
            item
            for item in self.orbis.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        relevant, outside = GATE.cargo_closure_rules(
            self.root, source, "pull_request"
        )
        self.assertGreaterEqual(len(relevant.patterns) // 2, 40)
        self.assertIn("crates/core/app/**", relevant.patterns)
        self.assertEqual(relevant.tier, "full")
        self.assertEqual(outside.tier, "skip")
        self.assertIn("outside the declared closure", outside.reason)

    def test_core_app_selects_orbis(self) -> None:
        source = next(
            item
            for item in self.orbis.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        rules = GATE.cargo_closure_rules(self.root, source, "pull_request")
        decision = GATE.classify(
            self.orbis, "pull_request", ["crates/core/app/src/lib.rs"], rules
        )
        self.assertEqual((decision.status, decision.tier), ("run", "full"))

    def test_known_package_outside_closure_is_explained_skip(self) -> None:
        source = next(
            item
            for item in self.orbis.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        rules = GATE.cargo_closure_rules(self.root, source, "pull_request")
        outside = rules[1]
        package_pattern = next(
            pattern for pattern in outside.patterns if pattern.endswith("/**")
        )
        path = package_pattern[:-2] + "src/lib.rs"
        decision = GATE.classify(self.orbis, "pull_request", [path], rules)
        self.assertEqual((decision.status, decision.tier), ("skip", "skip"))
        self.assertIn("declared skips", decision.explanation)
        self.assertIn("outside the declared closure", decision.matched[0]["reason"])

    def test_known_package_outside_snarkpack_closure_is_explained_skip(
        self,
    ) -> None:
        source = next(
            item
            for item in self.snarkpack.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        rules = GATE.cargo_closure_rules(
            self.root, source, "pull_request"
        )
        outside = rules[1]
        package_pattern = next(
            pattern for pattern in outside.patterns if pattern.endswith("/**")
        )
        path = package_pattern[:-2] + "src/lib.rs"
        decision = GATE.classify(
            self.snarkpack, "pull_request", [path], rules
        )
        self.assertEqual((decision.status, decision.tier), ("skip", "skip"))
        self.assertIn("declared skips", decision.explanation)
        self.assertIn("outside the declared closure", decision.matched[0]["reason"])

    def test_cargo_metadata_timeout_is_forwarded_and_bounded(self) -> None:
        metadata = {
            "packages": [
                {
                    "name": "fixture",
                    "manifest_path": str(self.root / "fixture/Cargo.toml"),
                    "dependencies": [],
                }
            ]
        }
        completed = subprocess.CompletedProcess(
            args=["cargo", "metadata"],
            returncode=0,
            stdout=json.dumps(metadata),
            stderr="",
        )
        source = {
            "packages": ["fixture"],
            "tiers": {"default": "static"},
            "reason": "fixture closure",
        }
        with patch.object(
            GATE.subprocess, "run", return_value=completed
        ) as run:
            rules = GATE.cargo_closure_rules(
                self.root,
                source,
                "pull_request",
                metadata_timeout_seconds=240,
            )
        self.assertEqual(rules[0].patterns, ("fixture/**", "fixture/Cargo.toml"))
        self.assertEqual(run.call_args.kwargs["timeout"], 240)

        for timeout in (True, 0, -1, 901):
            with self.subTest(timeout=timeout):
                with self.assertRaisesRegex(
                    GATE.ClassificationError,
                    "integer from 1 through 900 seconds",
                ):
                    GATE.cargo_closure_rules(
                        self.root,
                        source,
                        "pull_request",
                        metadata_timeout_seconds=timeout,
                    )

    def test_workspace_and_toolchain_inputs_select_declared_tiers(self) -> None:
        paths = (
            "Cargo.toml",
            "Cargo.lock",
            "rust-toolchain.toml",
            ".cargo/config.toml",
            "flake.nix",
            "flake.lock",
        )
        for path in paths:
            with self.subTest(path=path, gate="orbis"):
                decision = GATE.classify(
                    self.orbis, "pull_request", [path], []
                )
                self.assertEqual(decision.tier, "full")
            with self.subTest(path=path, gate="snarkpack"):
                decision = GATE.classify(
                    self.snarkpack, "pull_request", [path], []
                )
                self.assertEqual(
                    decision.tier,
                    (
                        "static"
                        if path in {"flake.nix", "flake.lock"}
                        else "extract-all"
                    ),
                )
            with self.subTest(path=path, gate="soundness"):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual(decision.tier, "stamps")

    def test_handwritten_snarkpack_lean_inputs_select_full_tier(self) -> None:
        paths = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Goal.lean",
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/ProofAudit.lean",
            "crates/crypto/proof-aggregation/formal/lean-ipp/lakefile.lean",
            "crates/crypto/proof-aggregation/formal/lean-ipp/lean-toolchain",
        )
        for path in paths:
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack, "pull_request", [path], []
                )
                self.assertEqual((decision.status, decision.tier), ("run", "full"))

    def test_attestation_helpers_are_static_gate_inputs(self) -> None:
        for path in (
            "scripts/ci/snarkpack_lean_attestation.py",
            "scripts/ci/test_snarkpack_lean_attestation.py",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack, "pull_request", [path], []
                )
                self.assertEqual(
                    (decision.status, decision.tier),
                    ("run", "static"),
                )

    def test_future_github_workflow_and_action_changes_are_static_inputs(
        self,
    ) -> None:
        for path in (
            ".github/workflows/new-snarkpack-lane.yml",
            ".github/actions/new-snarkpack-helper/action.yml",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack, "pull_request", [path], []
                )
                self.assertEqual(
                    (decision.status, decision.tier),
                    ("run", "static"),
                )
                self.assertFalse(decision.unknown_files)

    def test_one_graph_input_selects_only_that_graph(self) -> None:
        manifest = self.synthetic_manifest(
            ("GraphA", "src/a.rs"), ("GraphB", "src/b.rs")
        )
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            ["src/a.rs"],
            self.lean_rules(manifest),
        )
        self.assertEqual((decision.status, decision.tier), ("run", "extract-changed"))
        self.assertEqual(decision.graphs, ("GraphA",))

    def test_extraction_manifest_evidence_refresh_is_not_semantic(self) -> None:
        previous = self.synthetic_manifest(("GraphA", "src/a.rs"))
        current = json.loads(json.dumps(previous))
        previous_graph = previous["graphs"][0]
        current_graph = current["graphs"][0]
        previous_graph["source_sha256"] = "0" * 64
        current_graph["source_sha256"] = "1" * 64
        previous_graph["output_sha256"] = "2" * 64
        current_graph["output_sha256"] = "3" * 64
        previous_graph["inputs"][0]["sha256"] = "4" * 64
        current_graph["inputs"][0]["sha256"] = "5" * 64
        previous_graph["normalization"].update(
            {
                "selected_raw_declarations_sha256": "6" * 64,
                "normalized_sha256": "2" * 64,
            }
        )
        current_graph["normalization"].update(
            {
                "selected_raw_declarations_sha256": "7" * 64,
                "normalized_sha256": "3" * 64,
            }
        )
        graphs, shared = GATE.extraction_manifest_semantic_changes(
            current,
            previous,
            current_label="current",
            previous_label="previous",
        )
        self.assertEqual(graphs, frozenset())
        self.assertFalse(shared)

    def test_extraction_manifest_root_change_selects_exact_graph(self) -> None:
        previous = self.synthetic_manifest(
            ("GraphA", "src/a.rs"), ("GraphB", "src/b.rs")
        )
        current = json.loads(json.dumps(previous))
        current["graphs"][0]["roots"] = ["crate::changed"]
        graphs, shared = GATE.extraction_manifest_semantic_changes(
            current,
            previous,
            current_label="current",
            previous_label="previous",
        )
        self.assertEqual(graphs, frozenset({"GraphA"}))
        self.assertFalse(shared)

    def test_extraction_manifest_toolchain_change_selects_all(self) -> None:
        previous = self.synthetic_manifest(
            ("GraphA", "src/a.rs"), ("GraphB", "src/b.rs")
        )
        current = json.loads(json.dumps(previous))
        current["toolchains"]["lean"] = "changed"
        graphs, shared = GATE.extraction_manifest_semantic_changes(
            current,
            previous,
            current_label="current",
            previous_label="previous",
        )
        self.assertEqual(graphs, frozenset({"GraphA", "GraphB"}))
        self.assertTrue(shared)

    def test_current_generated_output_is_static_not_extraction(self) -> None:
        manifest = self.synthetic_manifest(("GraphA", "src/a.rs"))
        rules = GATE.lean_manifest_rules_from_data(
            manifest,
            self.lean_source,
            "pull_request",
            verify_root=None,
            label="fixture manifest",
            include_manifest_input=False,
            stale_output_graphs=frozenset(),
            evidence_tier="static",
        )
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            ["generated/GraphA.lean"],
            rules,
        )
        self.assertEqual((decision.status, decision.tier), ("run", "static"))
        self.assertEqual(decision.graphs, ())

    def test_stale_generated_output_selects_exact_graph(self) -> None:
        manifest = self.synthetic_manifest(("GraphA", "src/a.rs"))
        rules = GATE.lean_manifest_rules_from_data(
            manifest,
            self.lean_source,
            "pull_request",
            verify_root=None,
            label="fixture manifest",
            include_manifest_input=False,
            stale_output_graphs=frozenset({"GraphA"}),
            evidence_tier="static",
        )
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            ["generated/GraphA.lean"],
            rules,
        )
        self.assertEqual(
            (decision.status, decision.tier), ("run", "extract-changed")
        )
        self.assertEqual(decision.graphs, ("GraphA",))

    def test_missing_stale_generated_output_is_recoverable(self) -> None:
        manifest = self.synthetic_manifest(("GraphA", "src/a.rs"))
        source = {
            **self.lean_source,
            "global_inputs": ("tools/normalize.py",),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for path in (
                "src/a.rs",
                "crates/GraphA/Cargo.toml",
                "tools/normalize.py",
            ):
                destination = root / path
                destination.parent.mkdir(parents=True, exist_ok=True)
                destination.write_text("fixture\n", encoding="utf-8")

            rules = GATE.lean_manifest_rules_from_data(
                manifest,
                source,
                "pull_request",
                verify_root=root,
                label="fixture manifest",
                include_manifest_input=False,
                stale_output_graphs=frozenset({"GraphA"}),
                evidence_tier="static",
            )

        output_rule = next(
            rule for rule in rules if rule.patterns == ("generated/GraphA.lean",)
        )
        self.assertEqual(output_rule.tier, "extract-changed")
        self.assertEqual(output_rule.graphs, ("GraphA",))

    def test_missing_current_output_or_graph_input_blocks(self) -> None:
        manifest = self.synthetic_manifest(("GraphA", "src/a.rs"))
        source = {
            **self.lean_source,
            "global_inputs": ("tools/normalize.py",),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for path in (
                "src/a.rs",
                "crates/GraphA/Cargo.toml",
                "tools/normalize.py",
            ):
                destination = root / path
                destination.parent.mkdir(parents=True, exist_ok=True)
                destination.write_text("fixture\n", encoding="utf-8")

            with self.assertRaisesRegex(
                GATE.ClassificationError,
                "missing current generated output",
            ):
                GATE.lean_manifest_rules_from_data(
                    manifest,
                    source,
                    "pull_request",
                    verify_root=root,
                    label="fixture manifest",
                    include_manifest_input=False,
                    stale_output_graphs=frozenset(),
                    evidence_tier="static",
                )

            (root / "generated").mkdir(parents=True)
            (root / "generated/GraphA.lean").write_text(
                "fixture\n", encoding="utf-8"
            )
            (root / "src/a.rs").unlink()
            with self.assertRaisesRegex(
                GATE.ClassificationError,
                "missing input file",
            ):
                GATE.lean_manifest_rules_from_data(
                    manifest,
                    source,
                    "pull_request",
                    verify_root=root,
                    label="fixture manifest",
                    include_manifest_input=False,
                    stale_output_graphs=frozenset({"GraphA"}),
                    evidence_tier="static",
                )

    def test_workflow_unsafe_graph_id_blocks_classification(self) -> None:
        manifest = self.synthetic_manifest(
            ('Graph"; echo injected', "src/a.rs"),
        )
        with self.assertRaisesRegex(
            GATE.ClassificationError,
            r"must match \[A-Za-z\]\[A-Za-z0-9_\]\*",
        ):
            self.lean_rules(manifest)

    def test_deleted_former_input_is_found_from_base_manifest(self) -> None:
        current = self.synthetic_manifest(("GraphA", "src/current.rs"))
        previous = self.synthetic_manifest(("GraphA", "src/deleted.rs"))
        rules = self.lean_rules(current) + self.lean_rules(previous)
        decision = GATE.classify(
            self.snarkpack, "pull_request", ["src/deleted.rs"], rules
        )
        self.assertEqual(decision.tier, "extract-changed")
        self.assertEqual(decision.graphs, ("GraphA",))
        self.assertFalse(decision.unknown_files)

    def test_generated_module_reuse_selects_transitive_dependents(self) -> None:
        manifest = self.synthetic_manifest(
            ("GraphA", "src/a.rs"),
            ("GraphB", "src/b.rs"),
            ("GraphC", "src/c.rs"),
        )
        manifest["graphs"][1]["normalization"]["reuse_modules"] = [
            "generated.GraphA"
        ]
        manifest["graphs"][2]["normalization"]["reuse_modules"] = [
            "generated.GraphB"
        ]
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            ["src/a.rs"],
            self.lean_rules(manifest),
        )
        self.assertEqual(
            decision.graphs,
            ("GraphA", "GraphB", "GraphC"),
        )

    def test_shared_extractor_normalizer_and_runtime_select_all(self) -> None:
        manifest = self.synthetic_manifest(
            ("GraphA", "src/a.rs"), ("GraphB", "src/b.rs")
        )
        rules = self.lean_rules(manifest)
        for path in (
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/extractions.py",
            "tools/normalize.py",
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/AeneasRuntime.lean",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack, "pull_request", [path], rules
                )
                self.assertEqual(decision.tier, "extract-all")
                self.assertEqual(decision.graphs, ("GraphA", "GraphB"))

    def test_declared_extraction_source_closure_is_graph_scoped(self) -> None:
        rules = GATE.derived_rules(
            self.root,
            self.snarkpack,
            "pull_request",
            None,
        )
        manifest = json.loads(
            (
                self.root
                / "crates/crypto/proof-aggregation/formal/snarkpack/"
                "lean-extraction-manifest.json"
            ).read_text(encoding="utf-8")
        )
        source = (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "app_verifier.rs"
        )
        owners = {
            graph["id"]
            for graph in manifest["graphs"]
            if source in graph["source_files"]
        }
        expected = GATE.extraction_reuse_closure(
            manifest,
            owners,
            label="extraction manifest",
        )
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            [source],
            rules,
        )
        self.assertEqual(
            (decision.status, decision.tier),
            ("run", "extract-changed"),
        )
        self.assertEqual(decision.graphs, expected)
        self.assertLess(len(expected), len(manifest["graphs"]))

    def test_undeclared_extraction_sources_select_extract_all(self) -> None:
        rules = GATE.derived_rules(
            self.root,
            self.snarkpack,
            "pull_request",
            None,
        )
        manifest = json.loads(
            (
                self.root
                / "crates/crypto/proof-aggregation/formal/snarkpack/"
                "lean-extraction-manifest.json"
            ).read_text(encoding="utf-8")
        )
        graph_ids = tuple(sorted(graph["id"] for graph in manifest["graphs"]))
        undeclared = (
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/poly_commit/mod.rs",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/applications/poly_commit/transparent.rs",
        )
        for path in undeclared:
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack,
                    "pull_request",
                    [path],
                    rules,
                )
                self.assertEqual(
                    (decision.status, decision.tier),
                    ("run", "extract-all"),
                )
                self.assertEqual(decision.graphs, graph_ids)
                self.assertIn(
                    "undeclared extracted-crate Rust source",
                    decision.matched[-1]["reason"],
                )

    def test_local_extraction_crate_cargo_change_selects_extract_all(self) -> None:
        rules = GATE.derived_rules(
            self.root,
            self.snarkpack,
            "pull_request",
            None,
        )
        manifest = json.loads(
            (
                self.root
                / "crates/crypto/proof-aggregation/formal/snarkpack/"
                "lean-extraction-manifest.json"
            ).read_text(encoding="utf-8")
        )
        graph_ids = tuple(sorted(graph["id"] for graph in manifest["graphs"]))
        path = (
            "crates/crypto/proof-aggregation/src/ipp/"
            "dh_commitments/Cargo.toml"
        )
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            [path],
            rules,
        )
        self.assertEqual(
            (decision.status, decision.tier),
            ("run", "extract-all"),
        )
        self.assertEqual(decision.graphs, graph_ids)

    def test_malformed_or_missing_manifest_blocks(self) -> None:
        with self.assertRaises(GATE.ClassificationError):
            self.lean_rules({"schema_version": 3, "graphs": "invalid"})
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            lean_only = GATE.Declaration(
                gate=self.snarkpack.gate,
                tiers=self.snarkpack.tiers,
                events=self.snarkpack.events,
                derived_inputs=(self.lean_source,),
                explicit_inputs=self.snarkpack.explicit_inputs,
                irrelevant_inputs=self.snarkpack.irrelevant_inputs,
            )
            with self.assertRaises(GATE.ClassificationError):
                GATE.derived_rules(root, lean_only, "pull_request", None)

    def test_malformed_declaration_blocks(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "broken.json"
            path.write_text("{", encoding="utf-8")
            with self.assertRaises(GATE.ClassificationError):
                GATE.load_declaration(path)

    def test_unknown_path_promotes_pr_and_merge_group(self) -> None:
        pr = GATE.classify(
            self.snarkpack, "pull_request", ["new-area/input.bin"], []
        )
        queue = GATE.classify(
            self.snarkpack, "merge_group", ["new-area/input.bin"], []
        )
        self.assertEqual(pr.tier, "extract-all")
        self.assertEqual(queue.tier, "full")
        self.assertEqual(pr.unknown_files, ("new-area/input.bin",))

    def test_deleted_declared_control_uses_base_declaration(self) -> None:
        retired_path = "scripts/ci/retired-formal-control.py"
        current = GATE.classify(
            self.snarkpack,
            "pull_request",
            [retired_path],
            [],
        )
        self.assertEqual(current.unknown_files, (retired_path,))

        control = next(
            item
            for item in self.snarkpack.explicit_inputs
            if item["reason"]
            == "workflow, classifier, diagnostic, or invoked gate implementation"
        )
        previous = GATE.Declaration(
            gate=self.snarkpack.gate,
            tiers=self.snarkpack.tiers,
            events=self.snarkpack.events,
            derived_inputs=self.snarkpack.derived_inputs,
            explicit_inputs=(
                *self.snarkpack.explicit_inputs,
                {
                    "patterns": (retired_path,),
                    "tiers": control["tiers"],
                    "reason": control["reason"],
                },
            ),
            irrelevant_inputs=self.snarkpack.irrelevant_inputs,
        )
        classified = GATE.classify(
            self.snarkpack,
            "pull_request",
            [retired_path],
            [],
            previous_declaration=previous,
        )
        self.assertEqual((classified.status, classified.tier), ("run", "static"))
        self.assertFalse(classified.unknown_files)
        self.assertIn("base declaration", classified.matched[0]["reason"])

    def test_audited_unrelated_changes_skip_both_formal_families(self) -> None:
        for path in (
            "README.md",
            ".envrc.example",
            "deployments/compose/README.md",
            "docs/architecture/unrelated.md",
            "proto/shieldd/shieldd/core/component/sct/v1/sct.proto",
        ):
            for declaration in (self.snarkpack, self.soundness):
                with self.subTest(path=path, gate=declaration.gate):
                    decision = GATE.classify(
                        declaration,
                        "pull_request",
                        [path],
                        [],
                    )
                    self.assertEqual(
                        (decision.status, decision.tier),
                        ("skip", "skip"),
                    )
                    self.assertIn("declared skips", decision.explanation)

    def test_stack_orchestration_is_outside_formal_contracts(self) -> None:
        for path in (
            "scripts/lib/common.sh",
            "scripts/orbis-ci-cleanup.sh",
            "scripts/orbis-integration-preflight.sh",
            "scripts/orbis-stack.sh",
            "scripts/shieldd-down.sh",
            "scripts/shieldd-up.sh",
        ):
            for declaration in (self.snarkpack, self.soundness):
                with self.subTest(path=path, gate=declaration.gate):
                    decision = GATE.classify(
                        declaration,
                        "pull_request",
                        [path],
                        [],
                    )
                    self.assertEqual(
                        (decision.status, decision.tier),
                        ("skip", "skip"),
                    )
                    self.assertFalse(decision.unknown_files)

    def test_shipping_application_boundary_never_uses_outside_package_skip(
        self,
    ) -> None:
        source = next(
            item
            for item in self.snarkpack.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        rules = GATE.cargo_closure_rules(
            self.root, source, "pull_request"
        )
        paths = (
            "crates/core/app/Cargo.toml",
            "crates/core/app/src/action_handler/actions.rs",
            "crates/core/app/src/app/mod.rs",
            "crates/core/app/src/app/preconsensus.rs",
            "crates/core/app/src/app/validation_support.rs",
            "crates/core/app/src/server/consensus.rs",
            "crates/core/app/src/stateless_cache.rs",
        )
        for path in paths:
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack,
                    "pull_request",
                    [path],
                    rules,
                )
                self.assertEqual((decision.status, decision.tier), ("run", "full"))

    def test_single_star_does_not_cross_a_path_separator(self) -> None:
        self.assertTrue(GATE._matches("Ipp/Goal.lean", ("Ipp/*.lean",)))
        self.assertFalse(
            GATE._matches("Ipp/Extracted/Generated.lean", ("Ipp/*.lean",))
        )
        self.assertTrue(
            GATE._matches("Ipp/Extracted/Generated.lean", ("Ipp/**",))
        )

    def test_every_snarkpack_lane_is_applicability_gated(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        lanes = re.findall(
            r"(?ms)^  (snarkpack-[a-z0-9-]+):\n"
            r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
            workflow,
        )
        self.assertEqual(
            {lane for lane, _ in lanes},
            {
                "snarkpack-static",
                "snarkpack-extract",
                "snarkpack-fstar",
                "snarkpack-parity",
                "snarkpack-runtime",
                "snarkpack-publication",
            },
        )
        for lane, body in lanes:
            if lane == "snarkpack-publication":
                continue
            with self.subTest(lane=lane):
                self.assertRegex(
                    body,
                    r"needs: (?:applicability|\[applicability,[^\]]+\])",
                )
                self.assertRegex(
                    body,
                    r"needs\.applicability\.outputs\."
                    r"snarkpack_[a-z_]+_run == 'true'",
                )

    def test_snarkpack_publication_closes_selected_lane_results(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        lanes = dict(
            re.findall(
                r"(?ms)^  (snarkpack-[a-z0-9-]+):\n"
                r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                workflow,
            )
        )
        publication = lanes["snarkpack-publication"]
        self.assertIn(
            "needs.applicability.outputs.snarkpack_status == 'run'",
            publication,
        )
        self.assertIn(
            "needs.snarkpack-static.result == 'success'",
            publication,
        )
        selected_results = {
            "extract": "snarkpack-extract",
            "fstar": "snarkpack-fstar",
            "parity": "snarkpack-parity",
        }
        for selection, lane in selected_results.items():
            with self.subTest(publication_lane=lane):
                self.assertIn(
                    "needs.applicability.outputs."
                    f"snarkpack_{selection}_run != 'true'",
                    publication,
                )
                self.assertIn(
                    f"needs.{lane}.result == 'success'",
                    publication,
                )
        for cached_lane in ("extract", "fstar", "parity", "runtime"):
            self.assertIn(
                "needs.applicability.outputs."
                f"snarkpack_{cached_lane}_cache_hit == 'true'",
                publication,
            )
        self.assertIn(
            "needs.applicability.outputs.snarkpack_rust_reference_run "
            "!= 'true'",
            publication,
        )
        self.assertIn(
            "needs.snarkpack-runtime.result == 'success'",
            publication,
        )
        self.assertIn("SNARKPACK_FV_MODE: publication", publication)

        summary = re.search(
            r"(?ms)^  summary:\n(.*)\Z",
            workflow,
        )
        self.assertIsNotNone(summary)
        assert summary is not None
        summary_job = summary.group(1)
        self.assertIn("- snarkpack-publication", summary_job)
        self.assertIn(
            "PUBLICATION: ${{ needs.snarkpack-publication.result }}",
            summary_job,
        )
        self.assertIn(
            "actions/checkout@11d5960a326750d5838078e36cf38b85af677262",
            summary_job,
        )
        self.assertIn(
            "ref: ${{ needs.applicability.outputs.candidate_sha }}",
            summary_job,
        )

    def test_snarkpack_workflow_uses_exact_impact_outputs(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        self.assertIn(
            "python3 scripts/ci/snarkpack_fv_impact.py", workflow
        )
        filtered_graphs = (
            "${{ needs.applicability.outputs.snarkpack_extract_graphs }}"
        )
        self.assertIn(
            f"SNARKPACK_FV_GRAPHS_JSON: {filtered_graphs}", workflow
        )
        self.assertIn(
            "LEAN_MODULES_JSON: "
            "${{ needs.applicability.outputs.snarkpack_lean_modules }}",
            workflow,
        )
        self.assertIn(
            "Validate the locally generated Lean cache",
            workflow,
        )
        self.assertIn(
            "snarkpack_lean_attestation.py plan", workflow
        )
        self.assertIn("--exact-cache", workflow)
        self.assertIn(
            "snarkpack_lean_attestation.py validate-audit", workflow
        )
        self.assertNotIn("snarkpack-lean:", workflow)
        self.assertNotIn("lean-ipp-v", workflow)
        self.assertNotIn("SNARKPACK_FV_MODE: lean-changed", workflow)
        self.assertNotIn("SNARKPACK_FV_MODE: lean-audit-changed", workflow)
        self.assertNotIn("SNARKPACK_ALLOW_PENDING_LEAN_", workflow)
        self.assertNotIn("matrix.graph", workflow)
        self.assertNotIn("snarkpack-extraction-recovery:", workflow)
        self.assertIn(
            "SNARKPACK_ALLOW_STALE_EXTRACTION_GRAPHS_JSON: "
            "${{ needs.applicability.outputs.snarkpack_extract_run == "
            "'true' && needs.applicability.outputs."
            "snarkpack_extract_graphs || '[]' }}",
            workflow,
        )
        self.assertIn("snarkpack-extract-v5-", workflow)
        self.assertIn(
            '--title "SnarkPack affected extraction graphs"', workflow
        )
        self.assertIn("snarkpack-runtime:", workflow)
        self.assertIn("--lane runtime", workflow)
        self.assertIn("snarkpack-runtime-pass-v2-", workflow)
        self.assertIn("id: parity_pass_cache", workflow)
        self.assertIn("id: extract_pass_cache", workflow)
        self.assertIn("id: runtime_cache", workflow)
        self.assertIn("id: fstar_pass_cache", workflow)
        self.assertNotIn("snarkpack-rust-reference:", workflow)
        self.assertNotIn("snarkpack-slow:", workflow)
        self.assertNotIn("snarkpack-fuzz:", workflow)
        self.assertNotIn("snarkpack-dos:", workflow)
        snarkpack_section = workflow.split(
            "  # ---------------------------------------------------------------- soundness",
            maxsplit=1,
        )[0]
        self.assertEqual(snarkpack_section.count("runs-on: blacksmith-"), 1)
        self.assertEqual(
            snarkpack_section.count(
                "runs-on: blacksmith-16vcpu-ubuntu-2404"
            ),
            1,
        )
        for forbidden in (
            "lake build",
            "lake env lean",
            "SNARKPACK_FV_MODE: lean",
            "LEAN_NUM_THREADS",
        ):
            with self.subTest(forbidden_ci_lean=forbidden):
                self.assertNotIn(forbidden, snarkpack_section)
        self.assertIn(
            "run: python3 scripts/ci/enforce_formal_result.py",
            workflow,
        )

    def test_snarkpack_extraction_is_one_aggregate_runner(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        lanes = dict(
            re.findall(
                r"(?ms)^  (snarkpack-[a-z0-9-]+):\n"
                r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                workflow,
            )
        )
        extraction = lanes["snarkpack-extract"]
        self.assertNotIn("strategy:", extraction)
        self.assertNotIn("matrix.", extraction)
        self.assertEqual(extraction.count("runs-on: ubuntu-24.04"), 1)
        self.assertIn(
            "SNARKPACK_FV_GRAPHS_JSON: "
            "${{ needs.applicability.outputs.snarkpack_extract_graphs }}",
            extraction,
        )
        self.assertIn("SNARKPACK_FV_MODE: extract-changed", extraction)
        self.assertIn(
            "snarkpack_extract_cache_hit != 'true'", extraction
        )
        self.assertIn("snarkpack-extract-pass-v2-", extraction)
        self.assertNotIn("id: extract_pass_cache", extraction)

    def test_heavy_snarkpack_lanes_use_aggregate_exact_attestations(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        lanes = dict(
            re.findall(
                r"(?ms)^  (snarkpack-[a-z0-9-]+):\n"
                r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                workflow,
            )
        )
        fstar = lanes["snarkpack-fstar"]
        parity = lanes["snarkpack-parity"]
        runtime = lanes["snarkpack-runtime"]
        applicability = workflow.split("  snarkpack-static:", maxsplit=1)[0]
        self.assertNotIn("actions/cache/restore@", fstar)
        self.assertIn("snarkpack-parity-pass-v2-", parity)
        self.assertIn("snarkpack-runtime-pass-v2-", runtime)
        self.assertNotIn("actions/cache/restore@", parity)
        self.assertNotIn("actions/cache/restore@", runtime)
        self.assertIn("id: parity_pass_cache", applicability)
        self.assertIn("id: extract_pass_cache", applicability)
        self.assertIn("id: runtime_cache", applicability)
        self.assertIn("id: fstar_pass_cache", applicability)
        self.assertIn("--lane runtime", applicability)
        self.assertIn(
            "snarkpack_fstar_cache_hit != 'true'", fstar
        )
        self.assertIn(
            "snarkpack_parity_cache_hit != 'true'", parity
        )
        self.assertIn(
            "snarkpack_runtime_cache_hit != 'true'", runtime
        )
        for lane in (fstar, parity):
            with self.subTest(github_hosted_lane=lane):
                self.assertEqual(lane.count("runs-on: ubuntu-24.04"), 1)
                self.assertNotIn("runs-on: blacksmith-", lane)
        self.assertIn(
            "runs-on: blacksmith-16vcpu-ubuntu-2404",
            runtime,
        )
        self.assertNotIn("runs-on: ubuntu-24.04", runtime)
        self.assertNotIn("restore-keys:", runtime)
        self.assertNotIn("runner.temp }}/snarkpack", workflow)

    def test_every_soundness_lane_is_applicability_gated(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        lanes = re.findall(
            r"(?ms)^  (soundness-[a-z0-9-]+):\n"
            r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
            workflow,
        )
        self.assertEqual(
            {lane for lane, _ in lanes},
            {
                "soundness-gate",
                "soundness-seam-and-pin",
                "soundness-vk-derivation",
                "soundness-alloy",
                "soundness-lean-circuit-fv",
            },
        )
        for lane, body in lanes:
            with self.subTest(lane=lane):
                self.assertIn("needs: applicability", body)
                self.assertIn(
                    "needs.applicability.outputs.soundness_run == 'true'",
                    body,
                )

    def test_formal_workflow_does_not_run_on_standalone_branch_pushes(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        triggers = re.search(
            r"(?ms)^on:\n(.*?)(?=^concurrency:\n)",
            workflow,
        )
        self.assertIsNotNone(triggers)
        assert triggers is not None
        self.assertIn("  pull_request:", triggers.group(1))
        self.assertNotRegex(triggers.group(1), r"(?m)^  push:")

    def test_downstream_jobs_checkout_the_frozen_candidate_sha(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        applicability, downstream = workflow.split(
            "\n  # ---------------------------------------------------------------- snarkpack\n",
            maxsplit=1,
        )
        self.assertIn("candidate_sha: ${{ steps.candidate.outputs.sha }}", applicability)
        self.assertEqual(applicability.count("ref: ${{ env.CANDIDATE_REF }}"), 1)
        self.assertNotIn("ref: ${{ env.CANDIDATE_REF }}", downstream)
        self.assertGreaterEqual(
            downstream.count(
                "ref: ${{ needs.applicability.outputs.candidate_sha }}"
            ),
            12,
        )

    def test_reusable_scheduled_run_honors_its_target_ref(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        self.assertIn(
            "CANDIDATE_REF: ${{ inputs.target_ref || '' }}",
            workflow,
        )
        self.assertNotIn(
            "github.event_name == 'workflow_call') && inputs.target_ref",
            workflow,
        )

    def test_nix_cache_key_includes_flake_lock(self) -> None:
        action = (
            self.root / ".github/actions/setup-nix-rust/action.yml"
        ).read_text(encoding="utf-8")
        self.assertIn(
            "hashFiles(inputs.nix-cache-glob, 'flake.lock')",
            action,
        )

    def test_local_fv_quarantine_recovery_uses_real_safety_state(self) -> None:
        runner = (
            self.root / "scripts/run-snarkpack-fv-safe.ps1"
        ).read_text(encoding="utf-8")
        clear_block = runner.split("if ($ClearQuarantine) {", maxsplit=1)[1]
        clear_block = clear_block.split(
            "\n    if ($null -ne $existingQuarantine) {", maxsplit=1
        )[0]

        self.assertIn("Assert-NoFvProcesses", clear_block)
        self.assertIn("$quarantine.source_fingerprint", clear_block)
        self.assertIn("Remove-ValidatedQuarantine", clear_block)
        self.assertNotIn("$quarantine.session_fingerprint", clear_block)
        self.assertIn(
            "'exec env CARGO_BUILD_JOBS=1 LEAN_NUM_THREADS=1 "
            "RAYON_NUM_THREADS=1 python3",
            runner,
        )
        self.assertIn('"bash",\n                "-lc",', runner)

    def test_local_lean_cache_includes_ci_selected_modules(self) -> None:
        runner = (self.root / "scripts/snarkpack-fv.sh").read_text(
            encoding="utf-8"
        )
        publisher = runner.split(
            "publish_local_lean_cache() {", maxsplit=1
        )[1].split("\n}\n\nreproduce_lean_cache()", maxsplit=1)[0]

        self.assertIn("SNARKPACK_LEAN_MODULES_JSON", publisher)
        self.assertIn("parse_json_string_array", publisher)
        self.assertIn('selected_modules+=("${requested_modules[@]}")', publisher)
        self.assertIn("dict.fromkeys", publisher)
        self.assertIn('run_lean "${pending_modules[@]}"', publisher)
        self.assertIn("--exact-cache", publisher)

    def test_schedule_and_workflow_call_do_not_resolve_derived_inputs(self) -> None:
        for event in ("schedule", "workflow_call"):
            with self.subTest(event=event):
                output = io.StringIO()
                with patch.object(
                    GATE,
                    "derived_rules",
                    side_effect=AssertionError("derived inputs were resolved"),
                ), redirect_stdout(output):
                    status = GATE.main(
                        ["--gate", "snarkpack-formal", "--event", event]
                    )
                self.assertEqual(status, 0)
                decision = json.loads(output.getvalue())
                self.assertEqual(
                    (decision["status"], decision["tier"]), ("run", "full")
                )

    def test_rename_diff_includes_old_and_new_paths(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            subprocess.run(["git", "init", "-q"], cwd=root, check=True)
            subprocess.run(
                ["git", "config", "user.email", "test@example.invalid"],
                cwd=root,
                check=True,
            )
            subprocess.run(
                ["git", "config", "user.name", "Test"], cwd=root, check=True
            )
            old = root / "old.txt"
            old.write_text("content\n", encoding="utf-8")
            subprocess.run(["git", "add", "old.txt"], cwd=root, check=True)
            subprocess.run(["git", "commit", "-qm", "old"], cwd=root, check=True)
            base = subprocess.check_output(
                ["git", "rev-parse", "HEAD"], cwd=root, text=True
            ).strip()
            old.rename(root / "new.txt")
            subprocess.run(["git", "add", "-A"], cwd=root, check=True)
            subprocess.run(["git", "commit", "-qm", "rename"], cwd=root, check=True)
            head = subprocess.check_output(
                ["git", "rev-parse", "HEAD"], cwd=root, text=True
            ).strip()
            self.assertEqual(
                GATE.changed_files(root, base, head), ("new.txt", "old.txt")
            )


if __name__ == "__main__":
    unittest.main()
