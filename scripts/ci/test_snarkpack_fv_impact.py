#!/usr/bin/env python3

from __future__ import annotations

import importlib.util
import json
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

    def test_changed_graph_does_not_force_unrelated_proof_builds(self) -> None:
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
        self.assertEqual(result.extraction_graphs, (graph,))
        self.assertEqual(result.lean_modules, ())
        self.assertTrue(result.parity)
        self.assertTrue(result.rust_reference)

    def test_repository_evidence_cannot_suppress_a_changed_graph(self) -> None:
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
        self.assertEqual(result.extraction_graphs, (graph,))
        self.assertTrue(result.parity)

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

    def test_reference_fuzz_and_boundary_inputs_select_exact_heavy_lanes(self) -> None:
        reference = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/crypto/proof-aggregation-reference/src/lib.rs",),
            declared_graphs=(),
        )
        self.assertTrue(reference.rust_reference)
        self.assertFalse(reference.fuzz)

        fuzz = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/crypto/proof-aggregation-fuzz/fuzz/fuzz_targets/x.rs",),
            declared_graphs=(),
        )
        self.assertTrue(fuzz.fuzz)
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
        self.assertTrue(fixture.rust_reference)
        self.assertTrue(fixture.fuzz)

        app = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("crates/core/app/Cargo.toml",),
            declared_graphs=(),
        )
        self.assertTrue(app.rust_reference)
        self.assertTrue(app.dos)

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

    def test_lean_attestation_helper_change_forces_every_audit_root(self) -> None:
        result = IMPACT.plan(
            ROOT,
            event="pull_request",
            status="run",
            changed=("scripts/ci/snarkpack_lean_attestation.py",),
            declared_graphs=(),
        )
        modules, _ = IMPACT.lean_import_graph(ROOT)
        self.assertEqual(
            set(result.lean_modules),
            set(IMPACT.lean_audit_modules(modules)),
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
