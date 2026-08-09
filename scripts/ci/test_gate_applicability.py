from __future__ import annotations

import importlib.util
import io
import json
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
            "schema_version": 2,
            "toolchains": {"lean": "test"},
            "graphs": [
                {
                    "id": graph_id,
                    "output": f"generated/{graph_id}.lean",
                    "crate_manifest": f"crates/{graph_id}/Cargo.toml",
                    "inputs": [{"path": input_path}],
                    "normalization": {"script": "tools/normalize.py"},
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

    def test_orbis_closure_tracks_the_production_package_graph(self) -> None:
        source = next(
            item
            for item in self.orbis.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        relevant, outside = GATE.cargo_closure_rules(
            self.root, source, "pull_request"
        )
        # Proof aggregation is research/benchmark-only and must not inflate the
        # production Orbis closure.
        self.assertGreaterEqual(len(relevant.patterns) // 2, 35)
        self.assertIn("crates/core/app/**", relevant.patterns)
        self.assertNotIn("crates/crypto/proof-aggregation/**", relevant.patterns)
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
                self.assertEqual(decision.tier, "extract-all")
            with self.subTest(path=path, gate="soundness"):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual(decision.tier, "stamps")

    def test_circuit_refinement_inputs_select_typed_pr_gate(self) -> None:
        paths = (
            "tools/gnark/fv_certification_backends.json",
            "tools/gnark/fv_profiles.json",
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/Common.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/NoteReshape/Semantics.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/Transfer/Semantics.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Protocol/ShieldedIcs20Withdrawal/Semantics.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Poseidon6Spec.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Poseidon377/Fixed6.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Poseidon377/Vectors.lean",
            "tools/gnark/lean/ShielddGnarkFormal/DleqBridge.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Poseidon5Bridge.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteReshape8x1Refinement.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Deployed/Generated/NoteReshape8x1Spend1.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/NoteReshape8x1/CircuitFacts.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/Transfer/CircuitFacts.lean",
            "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts/ShieldedIcs20Withdrawal/CircuitFacts.lean",
            "tools/gnark/lean/gen/gen_note_reshape_padded_spends.py",
            "tools/gnark/lean/gen/gen_deployed_family.py",
            "crates/core/component/shielded-pool/formal/certified-circuit-obligation-ledger.md",
        )
        for path in paths:
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual((decision.status, decision.tier), ("run", "typed"))

    def test_transaction_view_and_consensus_seams_select_soundness_gate(self) -> None:
        source = next(
            item
            for item in self.soundness.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        rules = GATE.cargo_closure_rules(self.root, source, "pull_request")
        for path in (
            "crates/bin/pd/src/main.rs",
            "crates/bin/shieldd/src/execution_client.rs",
            "crates/bin/shieldd/src/main.rs",
            "crates/core/transaction/src/plan/build.rs",
            "crates/core/app/src/action_handler/actions.rs",
            "crates/core/app/src/action_handler/transaction.rs",
            "crates/core/app/src/app/mod.rs",
            "crates/view/src/client_compliance.rs",
            "crates/view/src/note_manager.rs",
            "crates/view/src/service.rs",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness,
                    "pull_request",
                    [path],
                    rules,
                )
                self.assertEqual(
                    (decision.status, decision.tier), ("run", "stamps")
                )

    def test_formal_workflow_handles_every_declared_soundness_tier(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        run_case = workflow[
            workflow.index('case "$TIER" in') : workflow.index(
                "# ------------------------------------------------------------------ summary"
            )
        ]
        for tier in self.soundness.tiers:
            if tier == "skip":
                continue
            with self.subTest(tier=tier):
                self.assertIn(f"{tier})", run_case)

        key_coherence_job = workflow[
            workflow.index("  soundness-key-coherence:") : workflow.index(
                "  soundness-alloy:"
            )
        ]
        self.assertIn(
            """if: >-
      needs.applicability.result == 'success' &&
      needs.applicability.outputs.soundness_run == 'true' &&
      needs.applicability.outputs.soundness_tier != 'full'""",
            key_coherence_job,
        )

        summary = workflow[workflow.index("  summary:") :]
        self.assertIn(
            """if [[ "$SOUNDNESS_TIER" != full ]]; then
              required+=("soundness-key-coherence=$KEY_COHERENCE")
            fi""",
            summary,
        )
        self.assertIn('"soundness-lean-circuit-fv=$LEAN"', summary)

        full_case = run_case[run_case.index("            full)") :]
        full_case = full_case[: full_case.index("            *)")]
        self.assertIn(
            "bash scripts/check-circuit-fv.sh receipt --status candidate",
            full_case,
        )

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

    def test_malformed_or_missing_manifest_blocks(self) -> None:
        with self.assertRaises(GATE.ClassificationError):
            self.lean_rules({"schema_version": 2, "graphs": "invalid"})
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

    def test_duplicate_declaration_key_blocks(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "duplicate.json"
            path.write_text(
                '{"schema_version": 1, "schema_version": 1}',
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                GATE.ClassificationError, "duplicate JSON key 'schema_version'"
            ):
                GATE.load_declaration(path)

    def test_explicit_input_cannot_suppress_conservative_gate(self) -> None:
        raw = json.loads(
            (self.root / "ci/gates/soundness-formal.json").read_text(
                encoding="utf-8"
            )
        )
        raw["explicit_inputs"][0]["tiers"]["pull_request"] = "skip"
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "skip.json"
            path.write_text(json.dumps(raw), encoding="utf-8")
            with self.assertRaisesRegex(
                GATE.ClassificationError, "only non-skip tiers"
            ):
                GATE.load_declaration(path)

    def test_certified_artifact_generator_selects_soundness_gate(self) -> None:
        decision = GATE.classify(
            self.soundness,
            "pull_request",
            ["scripts/gen-certified-circuit-artifacts.py"],
            [],
        )
        self.assertEqual((decision.status, decision.tier), ("run", "stamps"))
        self.assertFalse(decision.unknown_files)

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

    def test_documentation_only_change_is_explained_skip(self) -> None:
        decision = GATE.classify(
            self.snarkpack,
            "pull_request",
            ["docs/architecture/unrelated.md"],
            [],
        )
        self.assertEqual((decision.status, decision.tier), ("skip", "skip"))
        self.assertIn("declared skips", decision.explanation)

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
