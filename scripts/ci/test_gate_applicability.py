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
                self.assertEqual(decision.tier, "extract-all")
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
                "snarkpack-toolchain",
                "snarkpack-fstar",
                "snarkpack-parity",
                "snarkpack-rust-reference",
                "snarkpack-fuzz",
                "snarkpack-dos",
            },
        )
        for lane, body in lanes:
            with self.subTest(lane=lane):
                self.assertIn("needs: applicability", body)
                self.assertIn(
                    "needs.applicability.outputs.snarkpack_run == 'true'",
                    body,
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
