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
            "scripts/ci/snarkpack_extraction_attestation.py",
            "scripts/ci/test_snarkpack_extraction_attestation.py",
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

    def test_audited_unrelated_changes_skip_both_formal_families(self) -> None:
        for path in (
            "README.md",
            ".envrc.example",
            "deployments/compose/README.md",
            "docs/architecture/unrelated.md",
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
                "snarkpack-extraction-recovery",
                "snarkpack-lean",
                "snarkpack-fstar",
                "snarkpack-parity",
                "snarkpack-rust-reference",
                "snarkpack-slow",
                "snarkpack-fuzz",
                "snarkpack-dos",
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
            "lean": "snarkpack-lean",
            "fstar": "snarkpack-fstar",
            "parity": "snarkpack-parity",
            "fuzz": "snarkpack-fuzz",
            "dos": "snarkpack-dos",
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
        self.assertIn(
            "needs.applicability.outputs.snarkpack_rust_reference_run "
            "!= 'true'",
            publication,
        )
        self.assertIn(
            "needs.snarkpack-rust-reference.result == 'success'",
            publication,
        )
        self.assertIn(
            "needs.snarkpack-slow.result == 'success'",
            publication,
        )
        self.assertIn("SNARKPACK_FV_MODE: publication", publication)

        summary = re.search(
            r"(?ms)^  summary:\n(.*)\Z",
            workflow,
        )
        self.assertIsNotNone(summary)
        assert summary is not None
        self.assertIn("- snarkpack-publication", summary.group(1))
        self.assertIn(
            "PUBLICATION: ${{ needs.snarkpack-publication.result }}",
            summary.group(1),
        )

    def test_snarkpack_workflow_uses_exact_impact_outputs(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        self.assertIn(
            "python3 scripts/ci/snarkpack_fv_impact.py", workflow
        )
        self.assertIn(
            "LEAN_MODULES_JSON: "
            "${{ needs.applicability.outputs.snarkpack_lean_modules }}",
            workflow,
        )
        filtered_graphs = (
            "${{ needs.applicability.outputs.snarkpack_extract_graphs }}"
        )
        self.assertIn(f"GRAPH_SELECTION: {filtered_graphs}", workflow)
        self.assertIn(
            f"SNARKPACK_FV_GRAPHS_JSON: {filtered_graphs}", workflow
        )
        exact_pending_contract_lanes = {
            "FSTAR": "fstar",
            "LEAN": "lean",
            "EXTERNAL": "rust_reference",
        }
        for kind, lane in exact_pending_contract_lanes.items():
            with self.subTest(pending_contract_kind=kind):
                self.assertIn(
                    "SNARKPACK_ALLOW_PENDING_"
                    f"{kind}_CONTRACT_REFRESH: "
                    "${{ needs.applicability.outputs.snarkpack_"
                    f"{lane}_run == 'true' && '1' || '0' }}",
                    workflow,
                )
        self.assertNotIn(
            "SNARKPACK_ALLOW_PENDING_CONTRACT_REFRESH:",
            workflow,
        )
        self.assertIn(
            "SNARKPACK_ALLOW_STALE_EXTRACTION_GRAPHS_JSON: "
            "${{ needs.applicability.outputs.snarkpack_extract_run == "
            "'true' && needs.applicability.outputs."
            "snarkpack_extract_graphs || '[]' }}",
            workflow,
        )
        self.assertNotIn(
            "GRAPH_SELECTION: "
            "${{ needs.applicability.outputs.snarkpack_graphs }}",
            workflow,
        )
        for lane in ("snarkpack-lean", "snarkpack-parity"):
            body = dict(
                re.findall(
                    r"(?ms)^  (snarkpack-[a-z0-9-]+):\n"
                    r"(.*?)(?=^  [A-Za-z0-9_-]+:\n|\Z)",
                    workflow,
                )
            )[lane]
            self.assertIn(
                "needs: [applicability, snarkpack-extract]",
                body,
            )
            self.assertIn(
                "needs.applicability.outputs.snarkpack_extract_run "
                "!= 'true'",
                body,
            )
            self.assertIn(
                "needs.snarkpack-extract.result == 'success'",
                body,
            )
        self.assertNotIn("snarkpack-toolchain:", workflow)
        extraction_attestation_key = (
            "snarkpack-extraction-pass-v1-${{ runner.os }}-"
            "${{ matrix.graph }}-"
            "${{ steps.extraction_fingerprint.outputs.sha256 }}"
        )
        self.assertEqual(
            workflow.count(extraction_attestation_key),
            2,
        )
        self.assertIn(
            "steps.extraction_source_stamp.outputs.state == 'present' &&\n"
            "          steps.extraction_pass_cache.outputs.cache-hit != 'true'\n"
            "        timeout-minutes: 22",
            workflow,
        )
        self.assertIn(
            "if: steps.extraction_compare.outcome == 'success'\n"
            "        shell: bash",
            workflow,
        )
        self.assertIn(
            "Validate restored graph attestation",
            workflow,
        )
        self.assertIn(
            "id: extraction_pass_cache\n"
            "        if: >-\n"
            "          steps.extraction_source_stamp.outputs.state == 'present' &&\n"
            "          (\n"
            "            github.event_name == 'pull_request' ||\n"
            "            github.event_name == 'merge_group'",
            workflow,
        )
        lean_key = (
            "lean-ipp-v7-${{ runner.os }}-${{ "
            "hashFiles('crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lake-manifest.json', "
            "'crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lakefile.lean', "
            "'crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lean-toolchain') }}"
        )
        self.assertEqual(workflow.count(lean_key), 4)
        self.assertIn(
            "lean-ipp-v6-${{ runner.os }}-${{ "
            "hashFiles('crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lake-manifest.json', "
            "'crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lakefile.lean', "
            "'crates/crypto/proof-aggregation/formal/lean-ipp/"
            "lean-toolchain') }}-",
            workflow,
        )
        self.assertIn(
            "python3 scripts/ci/snarkpack_lean_attestation.py fingerprint",
            workflow,
        )
        self.assertIn(
            "Validate restored markers and plan only pending Lean modules",
            workflow,
        )
        self.assertIn(
            "steps.lean_plan.outputs.pending == 'true'",
            workflow,
        )
        self.assertIn(
            "SNARKPACK_LEAN_MODULES_JSON: "
            "${{ steps.lean_plan.outputs.pending_modules }}",
            workflow,
        )
        self.assertNotIn(
            "FORCE_ALL: ${{ (github.event_name == 'schedule'",
            workflow,
        )
        self.assertIn("SNARKPACK_FV_MODE: lean-audit-changed", workflow)
        self.assertIn(
            "SNARKPACK_LEAN_AUDIT_LOG_DIR: "
            "${{ runner.temp }}/snarkpack-lean-audit",
            workflow,
        )
        self.assertIn(
            "snarkpack_lean_attestation.py record-audit",
            workflow,
        )
        self.assertIn(
            "Re-run the current axiom parser against cached raw audit evidence",
            workflow,
        )
        self.assertIn(
            "snarkpack_lean_attestation.py validate-audit",
            workflow,
        )
        script = (self.root / "scripts/snarkpack-fv.sh").read_text(
            encoding="utf-8"
        )
        self.assertIn(
            '"${lake_command[@]}" build "${modules[@]}"',
            script,
        )
        self.assertNotIn(
            '"${lake_command[@]}" build "$module"',
            script,
        )
        self.assertIn(
            'python3 "$VERIFICATION_MANIFEST" audit-modules',
            script,
        )
        self.assertIn(
            '^Ipp\\.ProofAudit[A-Za-z0-9_]*$',
            script,
        )
        self.assertIn(
            "Atomically attest modules only after builds and audits succeed",
            workflow,
        )
        self.assertIn(
            "--modules-json \"$PENDING_LEAN_MODULES_JSON\"",
            workflow,
        )
        self.assertIn(
            "Validate the complete current Lean attestation",
            workflow,
        )
        self.assertIn(
            "--exact-cache",
            workflow,
        )
        self.assertIn(
            '"${lake_command[@]}" env lean "$source"',
            script,
        )
        self.assertIn(
            "id: fstar_pass_cache\n"
            "        if: needs.applicability.outputs."
            "snarkpack_fstar_force_all != 'true'",
            workflow,
        )
        self.assertIn(
            "github.event_name == 'schedule' || "
            "github.event_name == 'workflow_call' || "
            "github.event_name == 'workflow_dispatch'",
            workflow,
        )
        fstar_attestation_key = (
            "snarkpack-fstar-pass-v1-${{ runner.os }}-"
            "${{ steps.fstar_fingerprint.outputs.environment_sha256 }}-"
            "${{ steps.fstar_fingerprint.outputs.exact_sha256 }}"
        )
        self.assertEqual(workflow.count(fstar_attestation_key), 2)
        self.assertIn(
            "Reuse exact current F* attestation without rebuilding",
            workflow,
        )
        self.assertIn("Validate newly checked F* evidence", workflow)
        self.assertIn(
            "-- nix develop --command scripts/snarkpack-formal.sh",
            workflow,
        )
        self.assertNotIn(
            "-- nix develop --command just snarkpack-formal",
            workflow,
        )
        self.assertIn(
            "if: steps.fstar_artifact_validation.outcome == 'success'",
            workflow,
        )
        self.assertIn(
            "steps.extraction_source_stamp.outputs.state == 'missing' ||\n"
            "            steps.extraction_fingerprint.outcome == 'failure' ||\n"
            "            steps.extraction_compare.outcome == 'failure'",
            workflow,
        )
        self.assertIn(
            "steps.extraction_recovery.outcome == 'success'\n"
            "        shell: bash\n"
            "        env:\n"
            "          SELECTED_GRAPH: ${{ matrix.graph }}\n"
            "        run: |\n"
            '          echo "$SELECTED_GRAPH: recovery evidence must be committed" >&2',
            workflow,
        )
        self.assertIn(
            "failure() &&\n"
            "          steps.lean_build.outcome == 'failure'",
            workflow,
        )
        self.assertIn(
            "SNARKPACK_FSTAR_FORCE_ALL: "
            "${{ needs.applicability.outputs.snarkpack_fstar_force_all "
            "== 'true' && '1' || '0' }}",
            workflow,
        )
        self.assertIn(
            "SNARKPACK_FSTAR_BOUNDARY_CACHE_HIT: "
            "${{ steps.fstar_boundary_cache.outputs.cache-hit == 'true' "
            "&& '1' || '0' }}",
            workflow,
        )
        self.assertIn(
            "snarkpack-fstar-boundary-v1-${{ runner.os }}-",
            workflow,
        )
        for manifest_path in (
            ".cargo/config.toml",
            "Cargo.toml",
            "crates/crypto/proof-aggregation/Cargo.toml",
            "crates/crypto/proof-aggregation/src/ipp/ip_proofs/Cargo.toml",
            "crates/core/component/shielded-pool/Cargo.toml",
        ):
            with self.subTest(fstar_boundary_input=manifest_path):
                self.assertIn(manifest_path, workflow)
        self.assertIn(
            "--status \"$SNARKPACK_STATUS\"",
            workflow,
        )
        summary = (
            self.root / "scripts/ci/enforce_formal_result.py"
        ).read_text(encoding="utf-8")
        self.assertIn(
            "run: python3 scripts/ci/enforce_formal_result.py",
            workflow,
        )
        self.assertIn(
            'if selections["snarkpack-static"] != "true":',
            summary,
        )
        self.assertIn(
            "for label, selected in selections.items():\n"
            "            require_not_selected(selected, label)",
            summary,
        )
        self.assertRegex(
            workflow,
            r"(?ms)^    needs:\n(?:      - .+\n)*"
            r"      - snarkpack-extraction-recovery\n",
        )

    def test_snarkpack_extraction_matrix_is_uncapped_and_collects_failures(
        self,
    ) -> None:
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
        strategy = re.search(
            r"(?ms)^    strategy:\n(.*?)(?=^    [A-Za-z0-9_-]+:)",
            extraction,
        )
        self.assertIsNotNone(strategy)
        assert strategy is not None
        self.assertIn("fail-fast: false", strategy.group(1))
        self.assertNotIn("max-parallel:", strategy.group(1))

    def test_heavy_snarkpack_lanes_use_exact_success_attestations(self) -> None:
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
        attested = {
            "snarkpack-parity": ("parity", "parity", 4),
            "snarkpack-rust-reference": (
                "rust_reference",
                "rust-reference",
                16,
            ),
            "snarkpack-slow": ("slow", "slow", 16),
            "snarkpack-fuzz": ("fuzz", "fuzz", 8),
            "snarkpack-dos": ("dos", "dos", 8),
        }
        for lane, (step_id, key_label, runner_vcpus) in attested.items():
            with self.subTest(lane=lane):
                body = lanes[lane]
                key_prefix = (
                    f"snarkpack-{key_label}-pass-v1-${{{{ runner.os }}}}-"
                )
                self.assertIn(
                    f"runs-on: blacksmith-{runner_vcpus}vcpu-ubuntu-2404",
                    body,
                )
                self.assertIn(
                    f"id: {step_id}_fingerprint",
                    body,
                )
                self.assertIn(
                    f"id: {step_id}_pass_cache",
                    body,
                )
                self.assertIn(
                    "uses: actions/cache/restore@"
                    "0057852bfaa89a56745cba8c7296529d2fc39830",
                    body,
                )
                self.assertIn(
                    "uses: actions/cache/save@"
                    "0057852bfaa89a56745cba8c7296529d2fc39830",
                    body,
                )
                self.assertEqual(body.count(key_prefix), 2)
                self.assertNotIn("restore-keys:", body)
                self.assertIn(
                    "if: needs.applicability.outputs."
                    "snarkpack_fstar_force_all != 'true'",
                    body,
                )
                cache_miss = (
                    f"if: steps.{step_id}_pass_cache.outputs."
                    "cache-hit != 'true'"
                )
                self.assertGreaterEqual(body.count(cache_miss), 2)
                self.assertIn(
                    f"id: {step_id}_check\n        {cache_miss}",
                    body,
                )
                self.assertIn(
                    f"if: steps.{step_id}_check.outcome == 'success'",
                    body,
                )
                self.assertIn(
                    "python3 scripts/ci/snarkpack_lane_fingerprint.py",
                    body,
                )
                self.assertIn(f"--lane {key_label}", body)
                self.assertLess(
                    body.index("uses: actions/cache/restore@"),
                    body.index("uses: ./.github/actions/setup-nix-rust"),
                )

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
