from __future__ import annotations

import hashlib
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

    def test_orbis_closure_tracks_the_production_package_graph(self) -> None:
        source = next(
            item
            for item in self.orbis.derived_inputs
            if item["type"] == "cargo_local_closure"
        )
        relevant, outside = GATE.cargo_closure_rules(
            self.root, source, "pull_request"
        )
        # The application now verifies aggregate proofs in its production
        # transaction path, so Orbis must follow that dependency transitively.
        self.assertGreaterEqual(len(relevant.patterns) // 2, 37)
        self.assertIn("crates/core/app/**", relevant.patterns)
        self.assertIn("crates/crypto/proof-aggregation/**", relevant.patterns)
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

    def test_path_patched_crate_follows_formal_cargo_closures(self) -> None:
        path = "third_party/h2-0.3.27/src/lib.rs"
        for declaration, expected in (
            (self.snarkpack, ("run", "static")),
            (self.soundness, ("run", "pr")),
        ):
            source = next(
                item
                for item in declaration.derived_inputs
                if item["type"] == "cargo_local_closure"
            )
            rules = GATE.cargo_closure_rules(
                self.root, source, "pull_request"
            )
            decision = GATE.classify(
                declaration, "pull_request", [path], rules
            )
            with self.subTest(gate=declaration.gate):
                self.assertEqual((decision.status, decision.tier), expected)
                self.assertFalse(decision.unknown_files)

    def test_base_cargo_closure_classifies_deleted_workspace_package(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            subprocess.run(["git", "init"], cwd=root, check=True, capture_output=True)
            subprocess.run(
                ["git", "config", "user.email", "ci@example.invalid"],
                cwd=root,
                check=True,
            )
            subprocess.run(
                ["git", "config", "user.name", "CI"], cwd=root, check=True
            )
            (root / "Cargo.toml").write_text(
                '[workspace]\nmembers = ["root-package", "removed-package"]\n',
                encoding="utf-8",
            )
            (root / "Cargo.lock").write_text(
                'version = 4\n\n'
                '[[package]]\nname = "root-package"\nversion = "0.1.0"\n\n'
                '[[package]]\nname = "removed-package"\nversion = "0.1.0"\n',
                encoding="utf-8",
            )
            for package in ("root-package", "removed-package"):
                package_root = root / package
                package_root.mkdir()
                (package_root / "Cargo.toml").write_text(
                    f'[package]\nname = "{package}"\nversion = "0.1.0"\n',
                    encoding="utf-8",
                )
            subprocess.run(
                ["git", "add", "."], cwd=root, check=True, capture_output=True
            )
            subprocess.run(
                ["git", "commit", "-m", "base"],
                cwd=root,
                check=True,
                capture_output=True,
            )
            base = subprocess.run(
                ["git", "rev-parse", "HEAD"],
                cwd=root,
                check=True,
                capture_output=True,
                text=True,
            ).stdout.strip()
            source = {
                "packages": ("root-package",),
                "tiers": {
                    "pull_request": "static",
                    "merge_group": "full",
                    "default": "full",
                },
                "reason": "fixture closure",
            }

            rules = GATE.cargo_closure_rules_at_revision(
                root, source, "pull_request", base
            )
            decision = GATE.classify(
                self.snarkpack,
                "pull_request",
                ["removed-package/src/lib.rs"],
                rules,
            )

        self.assertEqual((decision.status, decision.tier), ("skip", "skip"))
        self.assertFalse(decision.unknown_files)
        self.assertIn("base Cargo package", decision.matched[0]["reason"])

    def test_base_cargo_closure_tracks_transitive_path_patch(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            subprocess.run(["git", "init", "-q"], cwd=root, check=True)
            subprocess.run(
                ["git", "config", "user.email", "ci@example.invalid"],
                cwd=root,
                check=True,
            )
            subprocess.run(
                ["git", "config", "user.name", "CI"], cwd=root, check=True
            )
            (root / "Cargo.toml").write_text(
                '[workspace]\nmembers = ["root-package"]\n'
                'exclude = ["third_party/transport"]\n\n'
                '[workspace.package]\nversion = "1.0.0"\n\n'
                '[patch.crates-io]\n'
                'transport = { path = "third_party/transport" }\n',
                encoding="utf-8",
            )
            (root / "Cargo.lock").write_text(
                'version = 4\n\n'
                '[[package]]\nname = "root-package"\nversion = "1.0.0"\n'
                'dependencies = ["relay"]\n\n'
                '[[package]]\nname = "relay"\nversion = "1.0.0"\n'
                'source = "registry+https://example.invalid/index"\n'
                'dependencies = ["transport"]\n\n'
                '[[package]]\nname = "transport"\nversion = "1.0.0"\n',
                encoding="utf-8",
            )
            package_root = root / "root-package"
            package_root.mkdir()
            (package_root / "Cargo.toml").write_text(
                '[package]\nname = "root-package"\nversion.workspace = true\n',
                encoding="utf-8",
            )
            patch_root = root / "third_party/transport"
            patch_root.mkdir(parents=True)
            (patch_root / "Cargo.toml").write_text(
                '[package]\nname = "transport"\nversion = "1.0.0"\n',
                encoding="utf-8",
            )
            subprocess.run(
                ["git", "add", "."], cwd=root, check=True, capture_output=True
            )
            subprocess.run(
                ["git", "commit", "-qm", "base"], cwd=root, check=True
            )
            base = subprocess.run(
                ["git", "rev-parse", "HEAD"],
                cwd=root,
                check=True,
                capture_output=True,
                text=True,
            ).stdout.strip()
            source = {
                "packages": ("root-package",),
                "tiers": {
                    "pull_request": "static",
                    "merge_group": "full",
                    "default": "full",
                },
                "reason": "fixture closure",
            }

            rules = GATE.cargo_closure_rules_at_revision(
                root, source, "pull_request", base
            )
            decision = GATE.classify(
                self.snarkpack,
                "pull_request",
                ["third_party/transport/src/lib.rs"],
                rules,
            )

        self.assertEqual((decision.status, decision.tier), ("run", "static"))
        self.assertFalse(decision.unknown_files)
        self.assertIn("base Cargo package", decision.matched[0]["reason"])

    def test_base_cargo_closure_ignores_root_introduced_after_base(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            subprocess.run(["git", "init"], cwd=root, check=True, capture_output=True)
            subprocess.run(
                ["git", "config", "user.email", "ci@example.invalid"],
                cwd=root,
                check=True,
            )
            subprocess.run(
                ["git", "config", "user.name", "CI"], cwd=root, check=True
            )
            (root / "Cargo.toml").write_text(
                '[workspace]\nmembers = ["historical-root", "outside"]\n',
                encoding="utf-8",
            )
            (root / "Cargo.lock").write_text(
                'version = 4\n\n'
                '[[package]]\nname = "historical-root"\nversion = "0.1.0"\n\n'
                '[[package]]\nname = "outside"\nversion = "0.1.0"\n',
                encoding="utf-8",
            )
            for package in ("historical-root", "outside"):
                package_root = root / package
                package_root.mkdir()
                (package_root / "Cargo.toml").write_text(
                    f'[package]\nname = "{package}"\nversion = "0.1.0"\n',
                    encoding="utf-8",
                )
            subprocess.run(
                ["git", "add", "."], cwd=root, check=True, capture_output=True
            )
            subprocess.run(
                ["git", "commit", "-m", "base"],
                cwd=root,
                check=True,
                capture_output=True,
            )
            base = subprocess.run(
                ["git", "rev-parse", "HEAD"],
                cwd=root,
                check=True,
                capture_output=True,
                text=True,
            ).stdout.strip()
            source = {
                "packages": ("historical-root", "introduced-later"),
                "tiers": {
                    "pull_request": "static",
                    "merge_group": "full",
                    "default": "full",
                },
                "reason": "fixture closure",
            }

            rules = GATE.cargo_closure_rules_at_revision(
                root, source, "pull_request", base
            )
            selected = GATE.classify(
                self.snarkpack,
                "pull_request",
                ["historical-root/src/lib.rs"],
                rules,
            )
            outside = GATE.classify(
                self.snarkpack,
                "pull_request",
                ["outside/src/lib.rs"],
                rules,
            )

        self.assertEqual((selected.status, selected.tier), ("run", "static"))
        self.assertEqual((outside.status, outside.tier), ("skip", "skip"))

    def test_large_decision_uses_file_not_github_outputs_for_details(self) -> None:
        paths = tuple(f"generated/path-{index:06d}.rs" for index in range(50000))
        decision = GATE.Decision(
            status="run",
            tier="extract-all",
            explanation="large candidate fixture",
            changed_files=paths,
            matched=(),
            unknown_files=paths,
            graphs=("GraphA",),
        )
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "github-output"
            detail = Path(directory) / "decision.json"
            GATE.write_github_output(output, decision)
            GATE.write_decision_file(detail, decision)
            output_text = output.read_text(encoding="utf-8")
            detail_value = json.loads(detail.read_text(encoding="utf-8"))

        self.assertLess(len(output_text.encode("utf-8")), 64 * 1024)
        self.assertNotIn("changed_files=", output_text)
        self.assertNotIn("unknown_files=", output_text)
        self.assertEqual(detail_value["changed_files"], list(paths))
        self.assertEqual(detail_value["unknown_files"], list(paths))

    def test_cargo_metadata_timeout_is_forwarded_and_bounded(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "fixture").mkdir()
            (root / "Cargo.toml").write_text(
                '[workspace]\nmembers = ["fixture"]\n', encoding="utf-8"
            )
            (root / "Cargo.lock").write_text(
                'version = 4\n\n'
                '[[package]]\nname = "fixture"\nversion = "1.0.0"\n',
                encoding="utf-8",
            )
            metadata = {
                "packages": [
                    {
                        "name": "fixture",
                        "version": "1.0.0",
                        "manifest_path": str(root / "fixture/Cargo.toml"),
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
                    root,
                    source,
                    "pull_request",
                    metadata_timeout_seconds=240,
                )
            self.assertEqual(
                rules[0].patterns, ("fixture/**", "fixture/Cargo.toml")
            )
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
                        if path in {"Cargo.toml", "flake.nix", "flake.lock"}
                        else "extract-all"
                    ),
                )
            with self.subTest(path=path, gate="soundness"):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual(
                    decision.tier,
                    "pr",
                )

    def test_cargo_lock_fingerprint_tracks_only_reachable_packages(self) -> None:
        base = {
            "package": [
                {
                    "name": "formal-root",
                    "version": "1.0.0",
                    "dependencies": ["formal-dependency"],
                },
                {
                    "name": "formal-dependency",
                    "version": "1.0.0",
                    "source": "registry+https://example.invalid/index",
                    "checksum": "formal-v1",
                },
                {
                    "name": "unrelated",
                    "version": "1.0.0",
                    "source": "registry+https://example.invalid/index",
                    "checksum": "unrelated-v1",
                },
            ]
        }
        unrelated_update = json.loads(json.dumps(base))
        unrelated_update["package"][2].update(
            version="2.0.0", checksum="unrelated-v2"
        )
        relevant_update = json.loads(json.dumps(base))
        relevant_update["package"][1]["checksum"] = "formal-v2"

        before = GATE.cargo_lock_closure_fingerprint(
            base, ("formal-root",), "base Cargo.lock"
        )
        after_unrelated = GATE.cargo_lock_closure_fingerprint(
            unrelated_update, ("formal-root",), "current Cargo.lock"
        )
        after_relevant = GATE.cargo_lock_closure_fingerprint(
            relevant_update, ("formal-root",), "current Cargo.lock"
        )

        self.assertEqual(before, after_unrelated)
        self.assertNotEqual(before, after_relevant)

    def test_dependency_aware_lock_rule_supersedes_base_declaration(self) -> None:
        for declaration, legacy_tier in (
            (self.snarkpack, "static"),
            (self.soundness, "policy"),
        ):
            previous = GATE.Declaration(
                gate=declaration.gate,
                tiers=declaration.tiers,
                events=declaration.events,
                derived_inputs=declaration.derived_inputs,
                explicit_inputs=(
                    *declaration.explicit_inputs,
                    {
                        "patterns": ("Cargo.lock",),
                        "tiers": {
                            "pull_request": legacy_tier,
                            "merge_group": legacy_tier,
                            "default": "full",
                        },
                        "reason": "legacy broad lockfile input",
                    },
                ),
                irrelevant_inputs=declaration.irrelevant_inputs,
            )
            decision = GATE.classify(
                declaration,
                "pull_request",
                ["Cargo.lock"],
                [
                    GATE.InputRule(
                        patterns=("Cargo.lock",),
                        tier="skip",
                        reason="relevant dependency closure is unchanged",
                    )
                ],
                previous_declaration=previous,
            )
            with self.subTest(gate=declaration.gate):
                self.assertEqual(
                    (decision.status, decision.tier), ("skip", "skip")
                )
                self.assertFalse(decision.unknown_files)

    def test_committed_formal_lock_closures_resolve_and_compare(self) -> None:
        for declaration in (self.snarkpack, self.soundness):
            source = next(
                item
                for item in declaration.derived_inputs
                if item["type"] == "cargo_lock_closure"
            )
            with self.subTest(gate=declaration.gate):
                rule = GATE.cargo_lock_closure_rule(
                    self.root, source, "pull_request", "HEAD"
                )
                self.assertEqual(rule.patterns, ("Cargo.lock",))
                self.assertEqual(rule.tier, "skip")

    def test_relevant_cargo_lock_change_runs_on_pr_and_merge_candidate(
        self,
    ) -> None:
        for declaration, pr_tier in (
            (self.snarkpack, "static"),
            (self.soundness, "pr"),
        ):
            source = next(
                item
                for item in declaration.derived_inputs
                if item["type"] == "cargo_lock_closure"
            )
            for event, expected in (
                ("pull_request", pr_tier),
                ("merge_group", "full"),
            ):
                with self.subTest(gate=declaration.gate, event=event):
                    tier = GATE.tier_for(
                        source["tiers"], event, "test Cargo.lock closure"
                    )
                    decision = GATE.classify(
                        declaration,
                        event,
                        ["Cargo.lock"],
                        [
                            GATE.InputRule(
                                patterns=("Cargo.lock",),
                                tier=tier,
                                reason="relevant dependency closure changed",
                            )
                        ],
                    )
                    self.assertEqual(
                        (decision.status, decision.tier), ("run", expected)
                    )

    def test_circuit_refinement_inputs_select_pr_gate(self) -> None:
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
            "crates/crypto/constraint-coverage/src/main.rs",
            "tools/gnark/cmd/gnarkctl/export_fv.go",
            "tools/gnark/internal/abi/statement.go",
            "tools/gnark/internal/circuits/transfer.go",
            "tools/gnark/internal/primitives/poseidon.go",
            "tools/gnark/third_party/gnark-lean-extractor/main.go",
            "scripts/check-constraint-coverage.sh",
            "scripts/check-lean-circuit-fv.sh",
            "scripts/gen-certified-circuit-artifacts.py",
            "crates/core/component/shielded-pool/formal/certified-circuit-obligation-ledger.md",
        )
        for path in paths:
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual((decision.status, decision.tier), ("run", "pr"))

    def test_circuit_inputs_select_full_merge_candidate_gate(self) -> None:
        for path in (
            "tools/gnark/internal/circuits/transfer.go",
            "tools/gnark/internal/abi/statement.go",
            "tools/gnark/lean/gen/gen_deployed_family.py",
            "tools/gnark/artifacts/transfer/circuit_metadata.json",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness, "merge_group", [path], []
                )
                self.assertEqual(
                    (decision.status, decision.tier), ("run", "full")
                )

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
                    (decision.status, decision.tier), ("run", "pr")
                )

    def test_runtime_protocol_seams_stay_bounded_in_merge_queue(self) -> None:
        decision = GATE.classify(
            self.soundness,
            "merge_group",
            ["crates/core/app/src/action_handler/transaction.rs"],
            [],
        )
        self.assertEqual((decision.status, decision.tier), ("run", "pr"))

    def test_formal_workflow_handles_every_declared_soundness_tier(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        replay_job = workflow[
            workflow.index("  soundness-artifact-replay:") : workflow.index(
                "  # ------------------------------------------------------------------ summary"
            )
        ]
        self.assertIn(
            "needs.applicability.outputs.soundness_tier == 'full'",
            replay_job,
        )
        self.assertIn("check-lean-circuit-fv.sh drift all", replay_job)
        self.assertIn("check-circuit-fv.sh receipt all", replay_job)
        self.assertNotIn("lake", replay_job.lower())
        self.assertNotIn("LEAN_NUM_THREADS", replay_job)
        self.assertNotIn("  soundness-source-drift:", workflow)
        self.assertNotIn("  soundness-lean-circuit-fv:", workflow)

        soundness_host = workflow[
            workflow.index("  soundness-host:") : workflow.index(
                "  soundness-artifact-replay:"
            )
        ]
        self.assertIn("soundness_tier == 'policy'", soundness_host)
        self.assertIn("test_gate_applicability.py", soundness_host)
        self.assertIn(
            "needs.applicability.outputs.soundness_run == 'true'",
            soundness_host,
        )
        self.assertIn(
            "bash scripts/check-soundness-invariants.sh candidate",
            soundness_host,
        )
        self.assertIn("sudo apt-get install -y ripgrep", soundness_host)
        self.assertIn(
            "bash scripts/compliance-lean-dleq.sh stamps", soundness_host
        )
        self.assertIn(
            "ALLOY_SELECTED: ${{ needs.applicability.outputs.soundness_tier != 'policy' }}",
            soundness_host,
        )
        self.assertNotIn(
            "github.event_name == 'pull_request' || github.event_name == 'merge_group'",
            soundness_host,
        )
        self.assertIn("id: results", soundness_host)
        self.assertIn("policy: ${{ steps.results.outputs.policy }}", soundness_host)
        self.assertIn("gate: ${{ steps.results.outputs.gate }}", soundness_host)

        summary = workflow[workflow.index("  summary:") :]
        self.assertIn("- soundness-artifact-replay", summary)
        self.assertIn(
            "run: python3 scripts/ci/enforce_formal_result.py",
            summary,
        )

    def test_soundness_host_reuses_one_prepared_full_bundle(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        soundness_host = workflow[
            workflow.index("  soundness-host:") : workflow.index(
                "  soundness-artifact-replay:"
            )
        ]
        self.assertIn(".github/actions/prepare-proof-artifacts", soundness_host)
        self.assertIn("bundle: full", soundness_host)
        self.assertNotIn(".github/actions/restore-proof-artifacts", soundness_host)
        self.assertEqual(
            workflow.count(".github/actions/prepare-proof-artifacts"), 1
        )
        self.assertEqual(
            workflow.count(".github/actions/restore-proof-artifacts"), 1
        )
        self.assertNotIn("lfs: true", workflow)

    def test_candidate_soundness_defers_only_the_reviewed_semantic_pin(self) -> None:
        runner = (self.root / "scripts/check-soundness-invariants.sh").read_text(
            encoding="utf-8"
        )
        self.assertIn("candidate|strict", runner)
        self.assertIn("--skip-semantic-digest", runner)
        self.assertIn("--glob '!third_party/**'", runner)
        self.assertIn(
            'check-certified-circuit-spec-independence.sh "$MODE"',
            runner,
        )
        independence = (
            self.root / "scripts/check-certified-circuit-spec-independence.sh"
        ).read_text(encoding="utf-8")
        self.assertIn("candidate|strict", independence)
        self.assertIn("--skip-semantic-digest", independence)
        self.assertIn(
            '"$ROOT/scripts/check-soundness-invariants.sh" strict',
            (self.root / "scripts/check-lean-circuit-fv.sh").read_text(
                encoding="utf-8"
            ),
        )

    def test_strict_replay_is_bounded_and_lake_free(self) -> None:
        workflow = (self.root / ".github/workflows/formal.yml").read_text(
            encoding="utf-8"
        )
        replay = workflow[
            workflow.index("  soundness-artifact-replay:") : workflow.index(
                "  # ------------------------------------------------------------------ summary"
            )
        ]
        self.assertIn("timeout-minutes: 180", replay)
        self.assertIn("check-lean-circuit-fv.sh drift all", replay)
        self.assertIn("check-circuit-fv.sh receipt all", replay)
        self.assertNotIn("check-lean-circuit-fv.sh release all", replay)
        self.assertNotIn("Cache Lean dependencies", replay)
        self.assertNotIn("tools/gnark/lean/.lake/packages", replay)

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

    def test_snarkpack_control_plane_stays_static_in_merge_queue(self) -> None:
        control = GATE.classify(
            self.snarkpack,
            "merge_group",
            [".github/workflows/formal.yml"],
            [],
        )
        environment = GATE.classify(
            self.snarkpack,
            "merge_group",
            [".github/actions/setup-nix-rust/action.yml"],
            [],
        )
        self.assertEqual((control.status, control.tier), ("run", "static"))
        self.assertEqual((environment.status, environment.tier), ("run", "full"))

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

    def test_certified_artifact_generator_selects_pr_gate(self) -> None:
        decision = GATE.classify(
            self.soundness,
            "pull_request",
            ["scripts/gen-certified-circuit-artifacts.py"],
            [],
        )
        self.assertEqual((decision.status, decision.tier), ("run", "pr"))
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
            == "formal control-plane, applicability, summary, cache-policy, or diagnostic input"
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

    def test_current_audit_can_reclassify_a_former_input_as_irrelevant(self) -> None:
        path = "storage/proof-key.packaging"
        previous = GATE.Declaration(
            gate=self.soundness.gate,
            tiers=self.soundness.tiers,
            events=self.soundness.events,
            derived_inputs=(),
            explicit_inputs=(
                {
                    "patterns": (path,),
                    "tiers": {
                        "pull_request": "pr",
                        "merge_group": "pr",
                        "default": "full",
                    },
                    "reason": "former broad formal input",
                },
            ),
            irrelevant_inputs=(),
        )
        current = GATE.Declaration(
            gate=self.soundness.gate,
            tiers=self.soundness.tiers,
            events=self.soundness.events,
            derived_inputs=(),
            explicit_inputs=(),
            irrelevant_inputs=(
                {
                    "patterns": (path,),
                    "reason": "audited storage-only input",
                },
            ),
        )

        decision = GATE.classify(
            current,
            "pull_request",
            [path],
            [],
            previous_declaration=previous,
        )

        self.assertEqual((decision.status, decision.tier), ("skip", "skip"))
        self.assertFalse(decision.unknown_files)
        self.assertEqual(
            decision.matched[0]["reason"], "audited storage-only input"
        )

    def test_removed_base_tier_uses_current_conservative_tier(self) -> None:
        retired_path = "retired-formal-control/proof-input.lean"
        previous = GATE.Declaration(
            gate=self.soundness.gate,
            tiers=("skip", "stamps", "typed", "full"),
            events={
                "pull_request": {"conservative_tier": "stamps"},
                "merge_group": {"conservative_tier": "stamps"},
                "schedule": {"tier": "full"},
                "workflow_call": {"tier": "full"},
                "workflow_dispatch": {"tier": "full"},
            },
            derived_inputs=(),
            explicit_inputs=(
                {
                    "patterns": (retired_path,),
                    "tiers": {
                        "pull_request": "typed",
                        "merge_group": "typed",
                        "default": "full",
                    },
                    "reason": "retired proof input",
                },
            ),
            irrelevant_inputs=(),
        )

        classified = GATE.classify(
            self.soundness,
            "pull_request",
            [retired_path],
            [],
            previous_declaration=previous,
        )

        self.assertEqual((classified.status, classified.tier), ("run", "pr"))
        self.assertFalse(classified.unknown_files)
        self.assertIn("former tier 'typed'", classified.matched[0]["reason"])

    def test_audited_unrelated_changes_skip_both_formal_families(self) -> None:
        for path in (
            "README.md",
            ".envrc.example",
            "deployments/compose/README.md",
            "deployments/scripts/rust_doc_packages.py",
            "deployments/scripts/tests/test_rust_doc_packages.py",
            "docs/architecture/unrelated.md",
            "docs/soundness/README.md",
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

    def test_proto_compiler_selects_formal_validation(self) -> None:
        for declaration, tier in (
            (self.snarkpack, "static"),
            (self.soundness, "pr"),
        ):
            with self.subTest(gate=declaration.gate):
                decision = GATE.classify(
                    declaration,
                    "pull_request",
                    ["tools/proto-compiler/src/main.rs"],
                    [],
                )
                self.assertEqual((decision.status, decision.tier), ("run", tier))
                self.assertFalse(decision.unknown_files)

    def test_circuit_soundness_tree_is_outside_snarkpack_contract(self) -> None:
        for path in (
            "tools/gnark/lean/ShielddGnarkFormal/StructuredLC.lean",
            "scripts/gen-note-reshape-family-artifacts.py",
            "scripts/check-circuit-fv.sh",
            "scripts/fv_specification_completeness.py",
            "scripts/check_lfs_policy.py",
            "scripts/proof_artifacts.py",
            "scripts/tests/test_proof_artifacts.py",
            "scripts/lib/soundness-symbol-cell.sh",
            "scripts/tests/test_wiring_certificates.py",
            "scripts/fixtures/fv-census/signed-coefficients.sr1cs",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack,
                    "pull_request",
                    [path],
                    [],
                )
                self.assertEqual((decision.status, decision.tier), ("skip", "skip"))
                self.assertFalse(decision.unknown_files)

    def test_proof_artifact_controls_select_soundness_validation(self) -> None:
        for path in (
            ".gitattributes",
            "justfile",
            "scripts/check_lfs_policy.py",
            "scripts/proof_artifacts.py",
            "scripts/tests/test_proof_artifacts.py",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness,
                    "pull_request",
                    [path],
                    [],
                )
                self.assertEqual(
                    (decision.status, decision.tier), ("run", "policy")
                )
                self.assertFalse(decision.unknown_files)

    def test_verifier_manifests_select_semantic_candidate_tiers(self) -> None:
        for path in (
            "crates/core/component/shielded-pool/Cargo.toml",
            "crates/core/transaction/Cargo.toml",
            "crates/crypto/proof-params/Cargo.toml",
        ):
            for event, tier in (
                ("pull_request", "pr"),
                ("merge_group", "full"),
            ):
                with self.subTest(path=path, event=event):
                    decision = GATE.classify(
                        self.soundness, event, [path], []
                    )
                    self.assertEqual(
                        (decision.status, decision.tier), ("run", tier)
                    )

    def test_snarkpack_evidence_uses_policy_not_circuit_soundness(self) -> None:
        for path in (
            "crates/crypto/proof-aggregation/formal/snarkpack/fstar-checker-evidence.json",
            "crates/crypto/proof-aggregation/formal/snarkpack/verification-manifest.json",
            "scripts/ci/enforce_formal_result.py",
            "scripts/ci/snarkpack_fv_impact.py",
            "scripts/ci/test_enforce_formal_result.py",
            "scripts/ci/test_snarkpack_fv_impact.py",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual(
                    (decision.status, decision.tier), ("run", "policy")
                )

    def test_proof_artifact_content_still_selects_soundness_gate(self) -> None:
        for path in (
            "tools/gnark/artifacts/transfer/transfer.sr1cs",
            "tools/gnark/artifacts/transfer/circuit_metadata.json",
            "tools/gnark/artifacts/transfer/proving_key.bin",
            "tools/gnark/artifacts/transfer/verifying_key.bin",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.soundness, "pull_request", [path], []
                )
                self.assertEqual(
                    (decision.status, decision.tier), ("run", "pr")
                )

    def test_shared_strict_json_helper_selects_snarkpack_static_gate(self) -> None:
        for path in (
            "scripts/fv_strict_json.py",
            "scripts/tests/test_fv_strict_json.py",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack,
                    "pull_request",
                    [path],
                    [],
                )
                self.assertEqual(
                    (decision.status, decision.tier),
                    ("run", "static"),
                )
                self.assertFalse(decision.unknown_files)

    def test_retired_snarkpack_controls_remain_classified(self) -> None:
        for path in (
            "scripts/check-snarkpack-filecoin-shape.sh",
            "scripts/snarkpack-lean-conformance.sh",
        ):
            with self.subTest(path=path):
                decision = GATE.classify(
                    self.snarkpack,
                    "pull_request",
                    [path],
                    [],
                )
                self.assertEqual((decision.status, decision.tier), ("run", "static"))
                self.assertFalse(decision.unknown_files)

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
                "snarkpack-host",
                "snarkpack-extract",
                "snarkpack-closure",
            },
        )
        for lane, body in lanes:
            with self.subTest(lane=lane):
                self.assertRegex(
                    body,
                    r"needs: (?:applicability|\[applicability,[^\]]+\])",
                )
                self.assertIn("needs.applicability.result == 'success'", body)
        host = dict(lanes)["snarkpack-host"]
        for selection in ("static", "fstar", "rust_reference", "fuzz", "dos"):
            self.assertIn(
                f"snarkpack_{selection}_run == 'true'", host
            )
        self.assertIn("id: results", host)

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
        publication = lanes["snarkpack-closure"]
        self.assertIn(
            "needs.applicability.outputs.snarkpack_status == 'run'",
            publication,
        )
        self.assertIn(
            "needs.snarkpack-host.result == 'success'",
            publication,
        )
        self.assertIn(
            "needs.applicability.outputs.snarkpack_extract_run != 'true'",
            publication,
        )
        self.assertIn(
            "needs.snarkpack-extract.result == 'success'",
            publication,
        )
        self.assertIn("snarkpack_parity_cache_hit != 'true'", publication)
        self.assertIn("SNARKPACK_FV_MODE: publication", publication)
        self.assertIn("publication: ${{ steps.results.outputs.publication }}", publication)

        summary = re.search(
            r"(?ms)^  summary:\n(.*)\Z",
            workflow,
        )
        self.assertIsNotNone(summary)
        assert summary is not None
        summary_job = summary.group(1)
        self.assertIn("- snarkpack-closure", summary_job)
        self.assertIn(
            "PUBLICATION: ${{ needs.snarkpack-closure.outputs.publication || 'skipped' }}",
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
        self.assertIn(
            "--decision-file .ci-state/snarkpack-decision.json", workflow
        )
        self.assertIn(
            "--gate-decision .ci-state/snarkpack-decision.json", workflow
        )
        self.assertNotIn("steps.snarkpack.outputs.unknown_files", workflow)
        self.assertIn("Upload applicability decisions", workflow)
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
        self.assertNotIn(
            "SNARKPACK_ALLOW_STALE_EXTRACTION_GRAPHS_JSON", workflow
        )
        self.assertIn("snarkpack-extract-v5-", workflow)
        self.assertIn(
            '--title "SnarkPack affected extraction graphs"', workflow
        )
        self.assertIn("snarkpack-host:", workflow)
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
        self.assertNotIn("runs-on: blacksmith-", snarkpack_section)
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
        host = lanes["snarkpack-host"]
        closure = lanes["snarkpack-closure"]
        applicability = workflow.split("  snarkpack-host:", maxsplit=1)[0]
        self.assertNotIn("actions/cache/restore@", host)
        self.assertIn("snarkpack-fstar-pass-v2-", host)
        self.assertIn("snarkpack-runtime-pass-v2-", host)
        self.assertIn("snarkpack-parity-pass-v2-", closure)
        self.assertNotIn("actions/cache/restore@", closure)
        self.assertIn("id: parity_pass_cache", applicability)
        self.assertIn("id: extract_pass_cache", applicability)
        self.assertIn("id: runtime_cache", applicability)
        self.assertIn("id: fstar_pass_cache", applicability)
        self.assertIn("--lane runtime", applicability)
        self.assertIn(
            "snarkpack_fstar_cache_hit != 'true'", host
        )
        self.assertIn("Upload exact F* evidence refresh", host)
        self.assertIn("actions/upload-artifact@", host)
        self.assertIn("fstar-checker-evidence.json", host)
        self.assertIn(
            "snarkpack_parity_cache_hit != 'true'", closure
        )
        self.assertIn(
            "snarkpack_runtime_cache_hit != 'true'", host
        )
        for lane in (host, closure):
            with self.subTest(github_hosted_lane=lane):
                self.assertEqual(lane.count("runs-on: ubuntu-24.04"), 1)
                self.assertNotIn("runs-on: blacksmith-", lane)
        self.assertNotIn("restore-keys:", host)
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
                "soundness-host",
                "soundness-artifact-replay",
            },
        )
        for lane, body in lanes:
            with self.subTest(lane=lane):
                self.assertRegex(
                    body,
                    r"needs: (?:applicability|\[[^]]*\bapplicability\b[^]]*\])",
                )
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
        self.assertEqual(
            downstream.count(
                "ref: ${{ needs.applicability.outputs.candidate_sha }}"
            ),
            6,
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

        scheduled = (
            self.root / ".github/workflows/formal-scheduled.yml"
        ).read_text(encoding="utf-8")
        self.assertIn("  schedule:", scheduled)
        self.assertIn("uses: ./.github/workflows/formal.yml", scheduled)
        self.assertIn("target_ref: ${{ github.sha }}", scheduled)
        self.assertNotIn("runs-on:", scheduled)
        self.assertNotIn("  push:", scheduled)

    def test_manual_formal_runs_accept_and_freeze_exact_commit_refs(self) -> None:
        for relative in (
            ".github/workflows/formal.yml",
            ".github/workflows/soundness-provers.yml",
        ):
            with self.subTest(workflow=relative):
                workflow = (self.root / relative).read_text(encoding="utf-8")
                dispatch_end = (
                    "\n  pull_request:"
                    if relative.endswith("/formal.yml")
                    else "\nconcurrency:"
                )
                dispatch = workflow.split(
                    "  workflow_dispatch:", maxsplit=1
                )[1].split(dispatch_end, maxsplit=1)[0]
                self.assertIn("type: string", dispatch)
                self.assertNotIn("type: choice", dispatch)
                self.assertIn(
                    "candidate_sha: ${{ steps.candidate.outputs.sha }}",
                    workflow,
                )

        provers = (
            self.root / ".github/workflows/soundness-provers.yml"
        ).read_text(encoding="utf-8")
        applicability, downstream = provers.split(
            "\n  tamarin-alloy:\n", maxsplit=1
        )
        self.assertEqual(applicability.count("ref: ${{ env.CANDIDATE_REF }}"), 1)
        self.assertNotIn("ref: ${{ env.CANDIDATE_REF }}", downstream)
        self.assertGreaterEqual(
            downstream.count(
                "ref: ${{ needs.applicability.outputs.candidate_sha }}"
            ),
            6,
        )
    def test_nix_cache_key_includes_flake_lock(self) -> None:
        action = (
            self.root / ".github/actions/setup-nix-rust/action.yml"
        ).read_text(encoding="utf-8")
        self.assertIn(
            "hashFiles(inputs.nix-cache-glob, 'flake.lock')",
            action,
        )

    def test_nix_shell_exposes_sqlite_to_rust_test_binaries(self) -> None:
        flake = (self.root / "flake.nix").read_text(encoding="utf-8")
        library_path = flake[
            flake.index("export LD_LIBRARY_PATH=") : flake.index(
                "export RUST_LOG=",
                flake.index("export LD_LIBRARY_PATH="),
            )
        ]
        self.assertIn("pkgs.sqlite", library_path)

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

    def test_static_snarkpack_gate_defers_extraction_freshness(self) -> None:
        runner = (self.root / "scripts/snarkpack-fv.sh").read_text(
            encoding="utf-8"
        )
        static = runner.split("run_static() {", maxsplit=1)[1].split(
            "\n}\n\nselected_graphs=", maxsplit=1
        )[0]

        self.assertIn('python3 "$EXTRACTIONS" validate', static)
        self.assertNotIn('python3 "$EXTRACTIONS" check', static)

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

    def test_lfs_pointer_to_identical_blob_is_not_a_semantic_change(self) -> None:
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
            payload = b"current proving material\n"
            digest = hashlib.sha256(payload).hexdigest()
            artifact = root / "artifact.bin"
            artifact.write_bytes(
                (
                    "version https://git-lfs.github.com/spec/v1\n"
                    f"oid sha256:{digest}\n"
                    f"size {len(payload)}\n"
                ).encode("ascii")
            )
            subprocess.run(["git", "add", "artifact.bin"], cwd=root, check=True)
            subprocess.run(["git", "commit", "-qm", "pointer"], cwd=root, check=True)
            base = subprocess.check_output(
                ["git", "rev-parse", "HEAD"], cwd=root, text=True
            ).strip()

            artifact.write_bytes(payload)
            subprocess.run(["git", "add", "artifact.bin"], cwd=root, check=True)
            subprocess.run(["git", "commit", "-qm", "materialize"], cwd=root, check=True)
            head = subprocess.check_output(
                ["git", "rev-parse", "HEAD"], cwd=root, text=True
            ).strip()
            self.assertEqual(GATE.changed_files(root, base, head), ())

            artifact.write_bytes(b"different proving material\n")
            subprocess.run(["git", "add", "artifact.bin"], cwd=root, check=True)
            subprocess.run(["git", "commit", "-qm", "change"], cwd=root, check=True)
            changed = subprocess.check_output(
                ["git", "rev-parse", "HEAD"], cwd=root, text=True
            ).strip()
            self.assertEqual(
                GATE.changed_files(root, base, changed), ("artifact.bin",)
            )


if __name__ == "__main__":
    unittest.main()
