#!/usr/bin/env python3

from __future__ import annotations

import importlib.util
import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch


ROOT = Path(__file__).resolve().parents[2]
SCRIPT = ROOT / "scripts/ci/snarkpack_fv_impact.py"
SPEC = importlib.util.spec_from_file_location("snarkpack_fv_impact", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
IMPACT = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = IMPACT
SPEC.loader.exec_module(IMPACT)


class ImpactPlannerTests(unittest.TestCase):
    def test_fstar_verifier_is_loaded_once_per_repository(self) -> None:
        first = IMPACT._load_fstar_verifier(ROOT)
        second = IMPACT._load_fstar_verifier(ROOT)
        self.assertIs(first, second)

    def test_nested_fstar_proof_is_rejected_by_flat_layout_contract(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            nested = root / IMPACT.FSTAR_ROOT / "nested" / "Proof.fst"
            nested.parent.mkdir(parents=True)
            nested.write_text("module Proof\n", encoding="utf-8")
            with self.assertRaisesRegex(
                IMPACT.ImpactError,
                "flat proof directory layout",
            ):
                IMPACT._fstar_proof_names(root)

    def test_semantic_input_comparison_ignores_unrelated_proto_change(self) -> None:
        relative = "proto/shieldd/shieldd/core/transaction/v1/transaction.proto"
        source = (ROOT / relative).read_text(encoding="utf-8")
        unrelated = source.replace(
            "    component.shielded_pool.v1.ShieldedIcs20WithdrawalPlan "
            "shielded_ics20_withdrawal = 200;",
            "    component.shielded_pool.v1.ShieldedIcs20WithdrawalPlan "
            "shielded_ics20_withdrawal = 200;\n"
            "    component.shielded_pool.v1.ShieldedHostWithdrawalPlan "
            "shielded_host_withdrawal = 201;",
        )
        relevant = source.replace(
            "    AggregateBundle aggregate_bundle = 82;",
            "    AggregateBundle aggregate_bundle = 83;",
            1,
        )
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            verifier = root / IMPACT.FSTAR_VERIFIER
            verifier.parent.mkdir(parents=True)
            verifier.write_text(
                (ROOT / IMPACT.FSTAR_VERIFIER).read_text(encoding="utf-8"),
                encoding="utf-8",
            )
            proto = root / relative
            proto.parent.mkdir(parents=True)
            proto.write_text(source, encoding="utf-8")
            subprocess.run(["git", "init", "-q"], cwd=root, check=True)
            subprocess.run(
                ["git", "config", "user.email", "test@example.invalid"],
                cwd=root,
                check=True,
            )
            subprocess.run(
                ["git", "config", "user.name", "Test"], cwd=root, check=True
            )
            subprocess.run(["git", "add", "."], cwd=root, check=True)
            subprocess.run(["git", "commit", "-qm", "base"], cwd=root, check=True)
            base = subprocess.run(
                ["git", "rev-parse", "HEAD"],
                cwd=root,
                check=True,
                capture_output=True,
                text=True,
            ).stdout.strip()

            proto.write_text(unrelated, encoding="utf-8")
            self.assertEqual(
                IMPACT.unchanged_fstar_semantic_inputs(
                    root, base, (relative,)
                ),
                (relative,),
            )
            proto.write_text(relevant, encoding="utf-8")
            self.assertEqual(
                IMPACT.unchanged_fstar_semantic_inputs(
                    root, base, (relative,)
                ),
                (),
            )

    def test_storage_feature_is_outside_fstar_manifest_projection(self) -> None:
        verifier = IMPACT._load_fstar_verifier(ROOT)
        relative = IMPACT.FSTAR_SHIELDED_POOL_MANIFEST_INPUT
        base = b"""\
[package]
name = "shieldd-sdk-shielded-pool"
version = "0.1.0"

[features]
default = ["std"]
std = []
download-proving-keys = ["std"]
"""
        storage_only = base.replace(
            b'download-proving-keys = ["std"]\n', b""
        )
        semantic = storage_only.replace(b"std = []", b'std = ["dep:serde"]')

        digest = IMPACT.fstar_semantic_source_sha256
        self.assertEqual(
            digest(verifier, relative, base),
            digest(verifier, relative, storage_only),
        )
        self.assertNotEqual(
            digest(verifier, relative, base),
            digest(verifier, relative, semantic),
        )

    def test_disabled_downloader_is_outside_fstar_lock_projection(self) -> None:
        verifier = IMPACT._load_fstar_verifier(ROOT)
        relative = verifier.FSTAR_CARGO_LOCK_INPUT
        base = b"""\
version = 4

[[package]]
name = "shieldd-sdk-proof-aggregation"
version = "0.1.0"
dependencies = ["shieldd-sdk-proof-params", "used 1.0.0"]

[[package]]
name = "shieldd-sdk-proof-params"
version = "0.1.0"
dependencies = ["regex", "reqwest 0.12.9"]

[[package]]
name = "regex"
version = "1.0.0"

[[package]]
name = "reqwest"
version = "0.12.9"

[[package]]
name = "used"
version = "1.0.0"
checksum = "first"
"""
        without_downloader = base.replace(
            b'dependencies = ["regex", "reqwest 0.12.9"]\n', b""
        )
        used_change = without_downloader.replace(
            b'checksum = "first"', b'checksum = "second"'
        )

        digest = IMPACT.fstar_semantic_source_sha256
        self.assertEqual(
            digest(verifier, relative, base),
            digest(verifier, relative, without_downloader),
        )
        self.assertNotEqual(
            digest(verifier, relative, base),
            digest(verifier, relative, used_change),
        )

    def test_base_without_extraction_manifest_has_no_retired_graphs(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            subprocess.run(["git", "init", "-q"], cwd=root, check=True)
            subprocess.run(
                ["git", "config", "user.email", "test@example.invalid"],
                cwd=root,
                check=True,
            )
            subprocess.run(
                ["git", "config", "user.name", "Test"],
                cwd=root,
                check=True,
            )
            (root / "README.md").write_text("base\n", encoding="utf-8")
            subprocess.run(["git", "add", "."], cwd=root, check=True)
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

            self.assertEqual(IMPACT.extraction_graph_ids_at(root, base), ())

    def test_skip_selects_no_work(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="skip",
            changed=("README.md",),
            declared_graphs=(),
        )
        self.assertFalse(result.static)
        self.assertEqual(result.extraction_graphs, ())
        self.assertEqual(result.lean_modules, ())
        self.assertEqual(result.fstar_proofs, ())
        self.assertFalse(result.rust_reference)

    def test_unknown_input_blocks_without_selecting_a_full_build(self) -> None:
        with self.assertRaisesRegex(
            IMPACT.ImpactError, "unclassified SnarkPack FV input"
        ):
            IMPACT.plan(
                ROOT,
                event="pull_request",
                status="run",
                changed=("new-proof-input.bin",),
                declared_graphs=(),
                unknown_files=("new-proof-input.bin",),
            )

    def test_gate_decision_file_preserves_unbounded_planner_inputs(self) -> None:
        decision = {
            "schema_version": 1,
            "status": "run",
            "tier": "extract-all",
            "run": True,
            "explanation": "fixture",
            "changed_files": ["Cargo.lock"],
            "matched": [],
            "unknown_files": ["new-proof-input.bin"],
            "graphs": ["GraphA"],
        }
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "decision.json"
            path.write_text(json.dumps(decision), encoding="utf-8")
            loaded = IMPACT.load_gate_decision(path)

        self.assertEqual(loaded.status, "run")
        self.assertEqual(loaded.graphs, ("GraphA",))
        self.assertEqual(loaded.unknown_files, ("new-proof-input.bin",))

    def test_retired_base_graph_is_static_only(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(
                "crates/crypto/proof-aggregation/formal/snarkpack/"
                "lean-extraction-manifest.json",
            ),
            declared_graphs=("FormerGraph",),
            retired_graphs=("FormerGraph",),
        )
        self.assertEqual(result.extraction_graphs, ())

    def test_current_extraction_evidence_import_does_not_reextract(self) -> None:
        manifest = json.loads(
            (ROOT / IMPACT.EXTRACTION_MANIFEST).read_text(encoding="utf-8")
        )
        output = manifest["graphs"][0]["output"]
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(IMPACT.EXTRACTION_MANIFEST.as_posix(), output),
            declared_graphs=(),
        )
        self.assertEqual(result.extraction_graphs, ())
        self.assertFalse(result.parity)
        self.assertIn(
            IMPACT._lean_module(Path(output)),
            result.lean_modules,
        )

    def test_docs_only_change_runs_static_without_builds(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("docs/snarkpack/verification.md",),
            declared_graphs=(),
        )
        self.assertTrue(result.static)
        self.assertEqual(result.extraction_graphs, ())
        self.assertEqual(result.lean_modules, ())
        self.assertEqual(result.fstar_proofs, ())
        self.assertFalse(result.parity)
        self.assertFalse(result.rust_reference)
        self.assertFalse(result.fuzz)
        self.assertFalse(result.dos)

    def test_summary_gate_change_runs_static_without_proof_builds(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(
                "scripts/ci/enforce_formal_result.py",
                "scripts/ci/test_enforce_formal_result.py",
            ),
            declared_graphs=(),
        )
        self.assertTrue(result.static)
        self.assertEqual(result.extraction_graphs, ())
        self.assertEqual(result.lean_modules, ())
        self.assertEqual(result.fstar_proofs, ())
        self.assertFalse(result.parity)
        self.assertFalse(result.rust_reference)
        self.assertFalse(result.fuzz)
        self.assertFalse(result.dos)

    def test_changed_graph_defers_reproduction_to_full_replay(self) -> None:
        graph = IMPACT.extraction_graph_ids(ROOT)[0]
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(
                "crates/crypto/proof-aggregation/src/ipp/"
                "ip_proofs/src/future_source.rs",
            ),
            declared_graphs=(graph,),
        )
        self.assertEqual(result.extraction_graphs, ())
        self.assertEqual(result.lean_modules, ())
        self.assertFalse(result.parity)
        self.assertFalse(result.rust_reference)
        self.assertIn("deferred extraction/parity", result.explanation)

    def test_changed_graph_never_enters_candidate_compute(self) -> None:
        graph = IMPACT.extraction_graph_ids(ROOT)[0]
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(
                "crates/crypto/proof-aggregation/src/ipp/"
                "ip_proofs/src/future_source.rs",
            ),
            declared_graphs=(graph,),
        )
        self.assertEqual(result.extraction_graphs, ())
        self.assertFalse(result.parity)

    def test_one_lean_leaf_selects_only_reverse_import_closure(self) -> None:
        changed = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/"
            "Ipp/ShippingAdaptiveSha.lean",
        )
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=changed,
            declared_graphs=(),
        )
        self.assertIn("Ipp.ShippingAdaptiveSha", result.lean_modules)
        self.assertNotIn("Ipp.Cost", result.lean_modules)
        self.assertEqual(result.extraction_graphs, ())
        self.assertEqual(result.fstar_proofs, ())
        self.assertFalse(result.rust_reference)

    def test_split_fv_domains_follow_reverse_import_closure(self) -> None:
        cases = (
            (
                "Ipp/Extracted/ShippingStatementConstruction.lean",
                "Ipp.ProofAuditConstruction",
                False,
            ),
            (
                "Ipp/Extracted/ShippingCallConstruction.lean",
                "Ipp.ProofAuditConstruction",
                False,
            ),
            (
                "Ipp/Extracted/ShippingCallMaterialization.lean",
                "Ipp.ProofAuditConstruction",
                False,
            ),
            (
                "Ipp/Extracted/ShippingVerifierHashProjection.lean",
                "Ipp.ProofAuditConstruction",
                True,
            ),
            (
                "Ipp/Extracted/ShippingBundleMaterialization.lean",
                "Ipp.ProofAuditConstruction",
                False,
            ),
            (
                "Ipp/ShippingProverRefinement.lean",
                "Ipp.ProofAuditProver",
                False,
            ),
            (
                "Ipp/ShippingProverExecutionTrace.lean",
                "Ipp.ProofAuditProver",
                False,
            ),
            (
                "Ipp/Extracted/ShippingProver.lean",
                "Ipp.ProofAuditProver",
                False,
            ),
            (
                "Ipp/ShippingAdaptiveReindex.lean",
                "Ipp.ProofAuditShippingAdaptive",
                False,
            ),
            (
                "Ipp/ShippingAdaptiveByteFieldCoupling.lean",
                "Ipp.ProofAuditShippingAdaptive",
                False,
            ),
            (
                "Ipp/ShippingAdaptiveGlobalFsCoupling.lean",
                "Ipp.ProofAuditShippingAdaptive",
                False,
            ),
            (
                "Ipp/ShippingAdaptiveOriginSha.lean",
                "Ipp.ProofAuditAdaptive",
                False,
            ),
            (
                "Ipp/S1Bls12377ReductionInterfaces.lean",
                "Ipp.ProofAuditReductions",
                False,
            ),
            (
                "Ipp/S1Bls12377FixedStatementKzg.lean",
                "Ipp.ProofAuditReductions",
                False,
            ),
            (
                "Ipp/ArkworksTippKzgBoundary.lean",
                "Ipp.ProofAuditReductions",
                False,
            ),
        )
        for relative, expected_audit, reaches_monolithic_audit in cases:
            with self.subTest(relative=relative):
                result = IMPACT.plan(
                    ROOT,
                    event="pull_request",
                    status="run",
                    changed=(
                        "crates/crypto/proof-aggregation/formal/lean-ipp/"
                        f"{relative}",
                    ),
                    declared_graphs=(),
                )
                self.assertIn(expected_audit, result.lean_modules)
                if reaches_monolithic_audit:
                    self.assertIn("Ipp.ProofAudit", result.lean_modules)
                else:
                    self.assertNotIn("Ipp.ProofAudit", result.lean_modules)

    def test_lean_import_parser_accepts_the_real_tree(self) -> None:
        modules, imports = IMPACT.lean_import_graph(ROOT)
        self.assertEqual(set(imports), set(modules))
        self.assertIn("Ipp.Goal", imports["Ipp.ProofAudit"])

    def test_lean_import_parser_rejects_noncanonical_forms(self) -> None:
        cases = (
            "import\n  Ipp.Dependency\n",
            "import Ipp.Dependency -- hidden trailing input\n",
            "public import Ipp.Dependency\n",
        )
        for source in cases:
            with self.subTest(source=source):
                with tempfile.TemporaryDirectory(
                    prefix="snarkpack-lean-import-"
                ) as directory:
                    root = Path(directory)
                    ipp = root / IMPACT.LEAN_IPP_ROOT
                    ipp.mkdir(parents=True)
                    dependency = ipp / "Dependency.lean"
                    consumer = ipp / "Consumer.lean"
                    dependency.write_text("", encoding="utf-8")
                    consumer.write_text(source, encoding="utf-8")
                    modules = IMPACT._lean_modules(root)
                    with self.assertRaisesRegex(
                        IMPACT.ImpactError,
                        "noncanonical Lean import",
                    ):
                        IMPACT._lean_imports(root, modules)

    def test_one_fstar_leaf_selects_its_dependents_only(self) -> None:
        with patch.object(
            IMPACT,
            "current_fstar_proofs",
            return_value=(
                "StatementEncodingProofs.fst",
                "DigestBindingProofs.fst",
            ),
        ):
            result = IMPACT.plan(
                ROOT,
                event="pull_request",
                status="run",
                changed=(
                    "crates/crypto/proof-aggregation/formal/snarkpack/"
                    "fstar/StatementEncodingProofs.fst",
                ),
                declared_graphs=(),
            )
        self.assertIn("StatementEncodingProofs.fst", result.fstar_proofs)
        self.assertIn("DigestBindingProofs.fst", result.fstar_proofs)
        self.assertNotIn("FamilyRoutingProofs.fst", result.fstar_proofs)
        self.assertEqual(result.lean_modules, ())

    def test_repository_evidence_cannot_suppress_a_changed_fstar_module(
        self,
    ) -> None:
        with patch.object(
            IMPACT,
            "current_fstar_proofs",
            return_value=("StatementEncodingProofs.fst",),
        ) as current:
            result = IMPACT.plan(
                ROOT,
                event="pull_request",
                status="run",
                changed=(
                    "crates/crypto/proof-aggregation/formal/snarkpack/"
                    "fstar/StatementEncodingProofs.fst",
                ),
                declared_graphs=(),
            )
        self.assertEqual(
            result.fstar_proofs, ("StatementEncodingProofs.fst",)
        )
        current.assert_called_once_with(
            ROOT,
            (
                "crates/crypto/proof-aggregation/formal/snarkpack/"
                "fstar/StatementEncodingProofs.fst",
            ),
            force_all=False,
        )

    def test_any_fstar_root_change_is_validated_before_planning(self) -> None:
        interface = (
            "crates/crypto/proof-aggregation/formal/snarkpack/"
            "fstar/FrameLemmas.fsti"
        )
        with patch.object(
            IMPACT,
            "current_fstar_proofs",
            side_effect=IMPACT.ImpactError("undeclared F* source"),
        ) as current:
            with self.assertRaisesRegex(
                IMPACT.ImpactError,
                "undeclared F\\* source",
            ):
                IMPACT.plan(
                    ROOT,
                    event="pull_request",
                    status="run",
                    changed=(interface,),
                    declared_graphs=(),
                )
        current.assert_called_once_with(
            ROOT,
            (interface,),
            force_all=False,
        )

    def test_evidence_only_import_does_not_rebuild_fstar(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(IMPACT.FSTAR_EVIDENCE.as_posix(),),
            declared_graphs=(),
        )
        self.assertEqual(result.fstar_proofs, ())

    def test_structural_fstar_manifest_change_forces_all_modules(self) -> None:
        with patch.object(
            IMPACT,
            "current_fstar_proofs",
            return_value=("WrapperProofs.fst",),
        ) as current:
            result = IMPACT.plan(
                ROOT,
                event="pull_request",
                status="run",
                changed=(IMPACT.FSTAR_MANIFEST.as_posix(),),
                declared_graphs=(),
                fstar_manifest_control_change=True,
            )
        self.assertEqual(result.fstar_proofs, ("WrapperProofs.fst",))
        current.assert_called_once_with(ROOT, (), force_all=True)

    def test_fstar_manifest_evidence_refresh_is_not_structural(self) -> None:
        manifest = json.loads(
            (ROOT / IMPACT.FSTAR_MANIFEST).read_text(encoding="utf-8")
        )
        refreshed = json.loads(json.dumps(manifest))
        refreshed["fstar_checker_evidence"]["sha256"] = "0" * 64
        for entry in refreshed["statement_binding_evidence"]:
            if entry["kind"] == "fstar":
                entry["checker"]["last_result"] = "pass"
                entry["sources"][0]["sha256"] = "1" * 64
        self.assertEqual(
            IMPACT._fstar_manifest_control_projection(manifest),
            IMPACT._fstar_manifest_control_projection(refreshed),
        )

    def test_fstar_checker_change_forces_one_exact_refresh(self) -> None:
        with patch.object(
            IMPACT,
            "current_fstar_proofs",
            return_value=("WrapperProofs.fst",),
        ) as current:
            result = IMPACT.plan(
                ROOT,
                event="pull_request",
                status="run",
                changed=(IMPACT.FSTAR_VERIFIER.as_posix(),),
                declared_graphs=(),
            )
        self.assertEqual(result.fstar_proofs, ("WrapperProofs.fst",))
        current.assert_called_once_with(ROOT, (), force_all=True)

    def test_deleted_fstar_hint_fails_closed(self) -> None:
        with self.assertRaisesRegex(
            IMPACT.ImpactError, "unknown F\\* module"
        ):
            IMPACT.current_fstar_proofs(
                ROOT,
                (
                    "crates/crypto/proof-aggregation/formal/snarkpack/"
                    "fstar/DeletedProof.fst",
                ),
            )

    def test_shared_fstar_input_selects_all_fstar_proofs(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/crypto/proof-aggregation/src/statement.rs",),
            declared_graphs=(),
        )
        expected = tuple(
            sorted(
                path.name
                for path in (ROOT / IMPACT.FSTAR_ROOT).glob("*.fst")
            )
        )
        self.assertEqual(set(result.fstar_proofs), set(expected))

    def test_unrelated_transaction_proto_change_does_not_select_fstar(self) -> None:
        path = "proto/shieldd/shieldd/core/transaction/v1/transaction.proto"
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(path,),
            declared_graphs=(),
            fstar_semantic_unchanged=(path,),
        )
        self.assertEqual(result.fstar_proofs, ())

    def test_semantic_transaction_proto_change_selects_fstar(self) -> None:
        path = "proto/shieldd/shieldd/core/transaction/v1/transaction.proto"
        with patch.object(
            IMPACT,
            "current_fstar_proofs",
            return_value=("FamilyRoutingProofs.fst",),
        ) as current:
            result = IMPACT.plan(
                ROOT,
                event="pull_request",
                status="run",
                changed=(path,),
                declared_graphs=(),
            )
        self.assertEqual(result.fstar_proofs, ("FamilyRoutingProofs.fst",))
        current.assert_called_once_with(ROOT, (), force_all=True)

    def test_pending_fstar_evidence_selects_refresh_without_source_change(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("docs/snarkpack/verification.md",),
            declared_graphs=(),
            pending_fstar=("FamilyRoutingProofs.fst",),
        )
        self.assertEqual(result.fstar_proofs, ("FamilyRoutingProofs.fst",))

    def test_reference_fuzz_and_boundary_inputs_defer_heavy_lanes(self) -> None:
        reference = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/crypto/proof-aggregation-reference/src/lib.rs",),
            declared_graphs=(),
        )
        self.assertFalse(reference.rust_reference)
        self.assertFalse(reference.fuzz)

        fuzz = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/crypto/proof-aggregation-fuzz/fuzz/fuzz_targets/x.rs",),
            declared_graphs=(),
        )
        self.assertFalse(fuzz.fuzz)
        self.assertFalse(fuzz.rust_reference)

        fixture = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(
                "crates/crypto/proof-aggregation/tests/fixtures/"
                "aggregate_bytes_baseline.txt",
            ),
            declared_graphs=(),
        )
        self.assertFalse(fixture.rust_reference)
        self.assertFalse(fixture.fuzz)

        app = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/core/app/Cargo.toml",),
            declared_graphs=(),
        )
        self.assertFalse(app.rust_reference)
        self.assertFalse(app.dos)
        for plan in (reference, fuzz, fixture, app):
            self.assertIn("deferred runtime", plan.explanation)

    def test_parity_never_runs_without_a_selected_graph(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/crypto/proof-aggregation/src/backend.rs",),
            declared_graphs=(),
        )
        self.assertFalse(result.parity)

    def test_unconditional_run_selects_full_fingerprint(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="workflow_dispatch",
            status="run",
            changed=(),
            declared_graphs=(),
        )
        self.assertEqual(
            result.extraction_graphs,
            IMPACT.extraction_graph_ids(ROOT),
        )
        modules, _ = IMPACT.lean_import_graph(ROOT)
        self.assertEqual(
            set(result.lean_modules),
            set(IMPACT.lean_audit_modules(modules)),
        )
        self.assertTrue(result.fstar_proofs)
        self.assertTrue(result.fstar_force_all)
        self.assertTrue(result.rust_reference)
        self.assertTrue(result.fuzz)
        self.assertTrue(result.dos)

    def test_workflow_only_change_runs_static_without_proof_builds(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(".github/workflows/formal.yml",),
            declared_graphs=(),
        )
        self.assertTrue(result.static)
        self.assertEqual(result.extraction_graphs, ())
        self.assertEqual(result.lean_modules, ())
        self.assertEqual(result.fstar_proofs, ())
        self.assertFalse(result.fstar_force_all)
        self.assertFalse(result.parity)
        self.assertFalse(result.rust_reference)
        self.assertFalse(result.fuzz)
        self.assertFalse(result.dos)

    def test_lean_attestation_helper_change_is_static_only(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("scripts/ci/snarkpack_lean_attestation.py",),
            declared_graphs=(),
        )
        self.assertTrue(result.static)
        self.assertEqual(result.lean_modules, ())

    def test_committed_lean_cache_change_validates_every_audit_root(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(
                IMPACT.LEAN_EVIDENCE_PREFIX
                + "modules/Ipp.ProofAudit.sha256",
            ),
            declared_graphs=(),
        )
        modules, _ = IMPACT.lean_import_graph(ROOT)
        self.assertEqual(
            set(result.lean_modules),
            set(IMPACT.lean_audit_modules(modules)),
        )

    def test_fv_control_changes_do_not_schedule_proof_builds(self) -> None:
        controls = (
            ".github/workflows/formal.yml",
            "ci/gates/snarkpack-formal.json",
            "justfile",
            "scripts/ci/gate-applicability.py",
            "scripts/ci/run_with_annotation.py",
            "scripts/ci/snarkpack_fv_impact.py",
            "scripts/ci/snarkpack_lean_attestation.py",
            "scripts/check-snarkpack-invariants.sh",
            "scripts/snarkpack-fv.sh",
        )
        for path in controls:
            with self.subTest(path=path):
                result = IMPACT.plan(
                    ROOT,
                    event="pull_request",
                    status="run",
                    changed=(path,),
                    declared_graphs=(),
                )
                self.assertTrue(result.static)
                self.assertEqual(result.extraction_graphs, ())
                self.assertEqual(result.lean_modules, ())
                self.assertEqual(result.fstar_proofs, ())

    def test_nonlean_aeneas_pin_change_does_not_build_lean(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(IMPACT.LEAN_ENVIRONMENT_MANIFEST.as_posix(),),
            declared_graphs=(),
            lean_environment_control_change=False,
        )
        self.assertTrue(result.static)
        self.assertEqual(result.lean_modules, ())

    def test_lean_environment_projection_change_forces_audits(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=(IMPACT.LEAN_ENVIRONMENT_MANIFEST.as_posix(),),
            declared_graphs=(),
            lean_environment_control_change=True,
        )
        modules, _ = IMPACT.lean_import_graph(ROOT)
        self.assertEqual(
            set(result.lean_modules),
            set(IMPACT.lean_audit_modules(modules)),
        )

    def test_lean_environment_projection_ignores_extractor_only_pins(self) -> None:
        current = {
            "toolchain": {
                "lean": "leanprover/lean4:v4.30.0",
                "image_digest": "sha256:" + "1" * 64,
                "rust": "1.89.0",
                "hax_commit": "old",
                "charon_commit": "old",
                "aeneas_commit": "old",
            }
        }
        extractor_changed = json.loads(json.dumps(current))
        extractor_changed["toolchain"]["hax_commit"] = "new"
        extractor_changed["toolchain"]["charon_commit"] = "new"
        extractor_changed["toolchain"]["aeneas_commit"] = "new"
        extractor_changed["toolchain"]["image_digest"] = (
            "sha256:" + "2" * 64
        )
        self.assertEqual(
            IMPACT._lean_environment_control_projection(current),
            IMPACT._lean_environment_control_projection(extractor_changed),
        )
        extractor_changed["toolchain"]["lean"] = "leanprover/lean4:v4.31.0"
        self.assertNotEqual(
            IMPACT._lean_environment_control_projection(current),
            IMPACT._lean_environment_control_projection(extractor_changed),
        )

    def test_github_outputs_are_compact_json(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("docs/snarkpack/verification.md",),
            declared_graphs=(),
        )
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory) / "output"
            IMPACT.write_github_output(output, result)
            values = dict(
                line.split("=", maxsplit=1)
                for line in output.read_text(encoding="utf-8").splitlines()
            )
        self.assertEqual(values["lean_modules"], "[]")
        self.assertEqual(json.loads(values["extract_graphs"]), [])
        self.assertEqual(values["static_run"], "true")
        self.assertEqual(values["fstar_force_all"], "false")


if __name__ == "__main__":
    unittest.main()
