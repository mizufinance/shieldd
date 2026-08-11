from __future__ import annotations

import copy
import hashlib
import importlib.util
import json
import re
import sys
import tempfile
import unittest
from contextlib import redirect_stderr
from io import StringIO
from pathlib import Path, PurePosixPath
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("verification_manifest.py")
SPEC = importlib.util.spec_from_file_location("verification_manifest", SCRIPT)
assert SPEC and SPEC.loader
VERIFICATION = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = VERIFICATION
SPEC.loader.exec_module(VERIFICATION)


class VerificationManifestTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.manifest = VERIFICATION.load_manifest()

    def manifest_with_current_contract_sources(self):
        manifest = copy.deepcopy(self.manifest)
        for entry in manifest["statement_binding_evidence"]:
            for source in entry["sources"]:
                path = VERIFICATION.REPO_ROOT.joinpath(
                    *Path(source["path"]).parts
                )
                source["sha256"] = VERIFICATION.fstar_source_sha256(
                    source["path"], path.read_bytes()
                )
        return manifest

    def manifest_with_stale_contract_row(self, kind):
        manifest = self.manifest_with_current_contract_sources()
        row = next(
            entry
            for entry in manifest["statement_binding_evidence"]
            if entry["kind"] == kind
        )
        row["checker"]["last_result"] = "stale"
        return manifest, row

    def test_transaction_proto_fingerprint_ignores_unrelated_action_plan_fields(self):
        relative = (
            "proto/shieldd/shieldd/core/transaction/v1/transaction.proto"
        )
        source = (VERIFICATION.REPO_ROOT / relative).read_text(encoding="utf-8")
        unrelated = source.replace(
            "    component.shielded_pool.v1.ShieldedIcs20WithdrawalPlan "
            "shielded_ics20_withdrawal = 200;",
            "    component.shielded_pool.v1.ShieldedIcs20WithdrawalPlan "
            "shielded_ics20_withdrawal = 200;\n"
            "    component.shielded_pool.v1.ShieldedHostWithdrawalPlan "
            "shielded_host_withdrawal = 201;",
        )
        self.assertNotEqual(source, unrelated)

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / relative
            path.parent.mkdir(parents=True)
            path.write_text(source, encoding="utf-8")
            original = VERIFICATION._fstar_source_record(root, relative)
            path.write_text(unrelated, encoding="utf-8")
            changed = VERIFICATION._fstar_source_record(root, relative)

        self.assertEqual(original["sha256"], changed["sha256"])

    def test_transaction_proto_fingerprint_tracks_aggregate_wire_semantics(self):
        relative = (
            "proto/shieldd/shieldd/core/transaction/v1/transaction.proto"
        )
        source = (VERIFICATION.REPO_ROOT / relative).read_text(encoding="utf-8")
        changed_tag = source.replace(
            "    AggregateBundle aggregate_bundle = 82;",
            "    AggregateBundle aggregate_bundle = 83;",
            1,
        )
        changed_family = source.replace(
            "  uint32 real_count = 3;",
            "  uint32 real_count = 9;",
            1,
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / relative
            path.parent.mkdir(parents=True)
            path.write_text(source, encoding="utf-8")
            original = VERIFICATION._fstar_source_record(root, relative)
            path.write_text(changed_tag, encoding="utf-8")
            tag = VERIFICATION._fstar_source_record(root, relative)
            path.write_text(changed_family, encoding="utf-8")
            family = VERIFICATION._fstar_source_record(root, relative)

        self.assertNotEqual(original["sha256"], tag["sha256"])
        self.assertNotEqual(original["sha256"], family["sha256"])

    def test_cargo_lock_fingerprint_tracks_only_proof_aggregation_closure(self):
        relative = "Cargo.lock"
        original = """\
version = 4

[[package]]
name = "shieldd-sdk-proof-aggregation"
version = "2.1.0"
dependencies = ["relevant"]

[[package]]
name = "relevant"
version = "1.0.0"
source = "registry+https://example.invalid/index"
checksum = "1111"

[[package]]
name = "unrelated"
version = "1.0.0"
source = "registry+https://example.invalid/index"
checksum = "2222"
"""
        unrelated_change = original.replace(
            'name = "unrelated"\nversion = "1.0.0"',
            'name = "unrelated"\nversion = "2.0.0"',
        )
        relevant_change = original.replace('checksum = "1111"', 'checksum = "3333"')

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / relative
            path.write_text(original, encoding="utf-8")
            baseline = VERIFICATION._fstar_source_record(root, relative)
            path.write_text(unrelated_change, encoding="utf-8")
            unrelated = VERIFICATION._fstar_source_record(root, relative)
            path.write_text(relevant_change, encoding="utf-8")
            relevant = VERIFICATION._fstar_source_record(root, relative)

        self.assertEqual(baseline["sha256"], unrelated["sha256"])
        self.assertNotEqual(baseline["sha256"], relevant["sha256"])

    def test_real_manifest_is_nonempty_and_complete(self):
        # The checker artifact pins this validator's own source and is therefore
        # necessarily stale while this test file is exercising validator edits.
        # Production callers retain the fail-closed default and validate it.
        summary = VERIFICATION.validate_repository(
            self.manifest,
            require_checker_artifact=False,
            allow_pending_contract_kinds=(
                VERIFICATION.PENDING_CONTRACT_REFRESH_KINDS
            ),
        )
        self.assertGreater(summary.audit_capstones, 0)
        self.assertGreater(summary.claims, 0)
        self.assertGreater(summary.assumptions, 0)

    def test_operation_register_is_complete_and_fail_closed(self):
        register = VERIFICATION.load_operation_register()
        VERIFICATION.validate_operation_register(register)

        candidate_missing_role = copy.deepcopy(register)
        del candidate_missing_role["candidates"][0]["deltas"]["setup"]
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_operation_register(candidate_missing_role)
        self.assertIn("prover, verifier, and setup", str(raised.exception))

        unproved_frontier = copy.deepcopy(register)
        unproved_frontier["formal_pareto_frontier"] = [
            unproved_frontier["research_order"][0]
        ]
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_operation_register(unproved_frontier)
        self.assertIn("without a proved model", str(raised.exception))

        promoted = copy.deepcopy(register)
        promoted["candidates"][0]["status"] = "proved-model"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_operation_register(promoted)
        self.assertIn(
            "structured audited equivalence/refinement",
            str(raised.exception),
        )

    def test_missing_audit_module_fails_closed(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["audit_modules"][0]["path"] = "Ipp/DeletedAudit.lean"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_repository(manifest)
        self.assertIn("missing audit module", str(raised.exception))

    def test_statement_contract_evidence_is_digest_pinned_and_complete(self):
        manifest = self.manifest_with_current_contract_sources()
        manifest["statement_binding_evidence"][0]["sources"][0]["sha256"] = "0" * 64
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        self.assertIn("sha256 differs", str(raised.exception))

        manifest = self.manifest_with_current_contract_sources()
        manifest["statement_binding_evidence"][1]["contract_field"] = (
            manifest["statement_binding_evidence"][0]["contract_field"]
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        self.assertIn("coverage differs", str(raised.exception))

        manifest = self.manifest_with_current_contract_sources()
        stale = next(
            item
            for item in manifest["statement_binding_evidence"]
            if item["kind"] == "fstar"
        )
        stale["checker"]["last_result"] = "stale"
        external = next(
            item
            for item in manifest["statement_binding_evidence"]
            if item["kind"] == "external"
        )
        self.assertIn("| `stale` |", VERIFICATION.render_markdown(manifest))
        for claim in manifest["claims"]:
            claim["status"] = "proved"
            if claim["root"].startswith("UNPROVED."):
                claim["root"] = f"Ipp.Test.{claim['id'].lower()}"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_closed_verification(manifest)
        self.assertIn("stale contract evidence", str(raised.exception))

        external["checker"]["required_result"] = "pass"
        external["checker"]["last_result"] = "pass"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "cannot claim pass without a registered proof-producing artifact",
            str(raised.exception),
        )

        external["checker"]["last_result"] = "not-run"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        self.assertIn("must be pass, stale, or assumed", str(raised.exception))

    def test_only_stale_rows_may_enter_source_recheck_mode(self):
        manifest, stale = self.manifest_with_stale_contract_row("fstar")
        stale["sources"][0]["sha256"] = "0" * 64

        wrong_kind = next(
            kind
            for kind in VERIFICATION.PENDING_CONTRACT_REFRESH_KINDS
            if kind != stale["kind"]
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest,
                VERIFICATION.REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift_kinds=(wrong_kind,),
            )
        self.assertIn("sha256 differs", str(raised.exception))

        VERIFICATION.validate_contract_evidence(
            manifest,
            VERIFICATION.REPO_ROOT,
            require_checker_artifact=False,
            allow_stale_source_drift_kinds=(stale["kind"],),
        )

        stale["checker"]["last_result"] = "pass"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest,
                VERIFICATION.REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift_kinds=(stale["kind"],),
            )
        self.assertIn("sha256 differs", str(raised.exception))

    def test_stale_digest_metadata_does_not_change_fstar_cache_identity(self):
        for kind in ("fstar", "external"):
            with self.subTest(kind=kind):
                candidate, stale = self.manifest_with_stale_contract_row(kind)
                before = VERIFICATION.fstar_ci_cache_fingerprints(
                    candidate, VERIFICATION.REPO_ROOT
                )
                stale["sources"][0]["sha256"] = "0" * 64
                after = VERIFICATION.fstar_ci_cache_fingerprints(
                    candidate, VERIFICATION.REPO_ROOT
                )
                self.assertEqual(before, after)

    def test_unrelated_gate_owner_values_do_not_invalidate_fstar_ci_control(self):
        relative = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
            "verification_manifest.py"
        )
        source = SCRIPT.read_text(encoding="utf-8")
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            path = root.joinpath(*PurePosixPath(relative).parts)
            path.parent.mkdir(parents=True)
            path.write_text(source, encoding="utf-8")
            baseline = VERIFICATION._fstar_ci_control_record(root, relative)

            changed = source
            for name in VERIFICATION.FSTAR_UNRELATED_GATE_DIGEST_CONSTANTS:
                changed, replacements = re.subn(
                    rf'({name}\s*=\s*\(\s*")[0-9a-f]{{64}}("\s*\))',
                    rf"\g<1>{'0' * 64}\g<2>",
                    changed,
                )
                self.assertEqual(replacements, 1)
            path.write_text(changed, encoding="utf-8")
            self.assertEqual(
                baseline,
                VERIFICATION._fstar_ci_control_record(root, relative),
            )

            path.write_text(
                changed.replace(
                    'FSTAR_GLOBAL_MODULE_INVENTORY = ("SnarkpackMachineSupport",)',
                    (
                        'FSTAR_GLOBAL_MODULE_INVENTORY = '
                        '("SnarkpackMachineSupport", "ChangedControl")'
                    ),
                    1,
                ),
                encoding="utf-8",
            )
            self.assertNotEqual(
                baseline,
                VERIFICATION._fstar_ci_control_record(root, relative),
            )

    def test_lean_only_manifest_edits_do_not_change_fstar_evidence_or_cache(self):
        baseline_evidence = VERIFICATION.expected_fstar_checker_evidence(
            self.manifest, VERIFICATION.REPO_ROOT
        )
        baseline_cache = VERIFICATION.fstar_ci_cache_fingerprints(
            self.manifest, VERIFICATION.REPO_ROOT
        )

        candidates = {}

        audit = copy.deepcopy(self.manifest)
        audit["audit_modules"][0]["expected_capstones"] += 1
        candidates["Lean audit"] = audit

        claim = copy.deepcopy(self.manifest)
        claim["claims"][0]["evidence"] += " Lean-only ledger edit."
        candidates["claim ledger"] = claim

        axioms = copy.deepcopy(self.manifest)
        axioms["allowed_axioms"].append("Lean.TestOnly")
        candidates["axiom allowlist"] = axioms

        deployed_srs = copy.deepcopy(self.manifest)
        deployed_srs["deployed_srs_evidence"]["closure"] += " Metadata edit."
        candidates["deployed SRS"] = deployed_srs

        lean_evidence = copy.deepcopy(self.manifest)
        next(
            entry
            for entry in lean_evidence["statement_binding_evidence"]
            if entry["kind"] == "lean"
        )["theorem_roots"][0] += "_lean_only_edit"
        candidates["Lean evidence"] = lean_evidence

        aeneas_role = copy.deepcopy(self.manifest)
        next(
            role
            for role in aeneas_role["toolchain_roles"]
            if role["id"] == "hax-aeneas"
        )["purpose"] += " Lean-only edit."
        candidates["Aeneas role"] = aeneas_role

        for label, candidate in candidates.items():
            with self.subTest(label=label):
                self.assertEqual(
                    baseline_evidence,
                    VERIFICATION.expected_fstar_checker_evidence(
                        candidate, VERIFICATION.REPO_ROOT
                    ),
                )
                self.assertEqual(
                    baseline_cache,
                    VERIFICATION.fstar_ci_cache_fingerprints(
                        candidate, VERIFICATION.REPO_ROOT
                    ),
                )

    def test_fstar_manifest_edits_change_fstar_evidence_and_cache(self):
        baseline_evidence = VERIFICATION.expected_fstar_checker_evidence(
            self.manifest, VERIFICATION.REPO_ROOT
        )
        baseline_cache = VERIFICATION.fstar_ci_cache_fingerprints(
            self.manifest, VERIFICATION.REPO_ROOT
        )

        evidence = copy.deepcopy(self.manifest)
        next(
            entry
            for entry in evidence["statement_binding_evidence"]
            if entry["kind"] == "fstar"
        )["theorem_roots"][0] += "_fstar_edit"

        role = copy.deepcopy(self.manifest)
        next(
            item
            for item in role["toolchain_roles"]
            if item["id"] == "hax-fstar"
        )["purpose"] += " F* edit."

        for label, candidate in {
            "F* evidence": evidence,
            "F* toolchain role": role,
        }.items():
            with self.subTest(label=label):
                self.assertNotEqual(
                    baseline_evidence,
                    VERIFICATION.expected_fstar_checker_evidence(
                        candidate, VERIFICATION.REPO_ROOT
                    ),
                )
                before_environment, before_exact = baseline_cache
                after_environment, after_exact = (
                    VERIFICATION.fstar_ci_cache_fingerprints(
                        candidate, VERIFICATION.REPO_ROOT
                    )
                )
                self.assertNotEqual(before_environment, after_environment)
                self.assertNotEqual(before_exact, after_exact)

    def test_stale_recheck_requires_current_input_fingerprint_coverage(self):
        manifest, stale = self.manifest_with_stale_contract_row("fstar")
        uncovered = "README.md"
        stale["sources"][0]["path"] = uncovered
        stale["sources"][0]["sha256"] = "0" * 64

        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest,
                VERIFICATION.REPO_ROOT,
                require_checker_artifact=False,
                allow_stale_source_drift_kinds=("fstar",),
            )
        self.assertIn("current F* module or global-input fingerprint", str(raised.exception))

    def test_statement_contract_source_fields_match_evidence_schema(self):
        contract = (
            VERIFICATION.REPO_ROOT
            / "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/ShippingV1.lean"
        )
        self.assertEqual(
            VERIFICATION.statement_binding_contract_fields(contract),
            VERIFICATION.CONTRACT_DATA_FIELDS
            | VERIFICATION.CONTRACT_EVIDENCE_FIELDS,
        )

        with tempfile.TemporaryDirectory(
            prefix="snarkpack-contract-fields-"
        ) as directory:
            missing = Path(directory) / "Missing.lean"
            missing.write_text("structure Different where\n  x : Nat\n")
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.statement_binding_contract_fields(missing)
            self.assertIn(
                "StatementBindingContract declaration is missing",
                str(raised.exception),
            )

    def test_fstar_and_aeneas_hax_roles_cannot_be_collapsed_or_repointed(self):
        for role_id in ("hax-fstar", "hax-aeneas"):
            with self.subTest(role_id=role_id):
                manifest = copy.deepcopy(self.manifest)
                role = next(
                    role
                    for role in manifest["toolchain_roles"]
                    if role["id"] == role_id
                )
                role["pin"] = "same-unverified-pin"
                with self.assertRaises(VERIFICATION.VerificationError) as raised:
                    VERIFICATION.validate_toolchain_roles(
                        manifest, VERIFICATION.REPO_ROOT
                    )
                self.assertIn("does not match", str(raised.exception))

    def test_aeneas_image_digest_is_bound_to_extraction_and_workflows(self):
        toolchain = VERIFICATION.tomllib.loads(
            (
                VERIFICATION.REPO_ROOT
                / "crates/crypto/proof-aggregation/formal/snarkpack/"
                "aeneas-toolchain.toml"
            ).read_text(encoding="utf-8")
        )["toolchain"]
        extraction = json.loads(
            (
                VERIFICATION.REPO_ROOT
                / "crates/crypto/proof-aggregation/formal/snarkpack/"
                "lean-extraction-manifest.json"
            ).read_text(encoding="utf-8")
        )["toolchains"]
        self.assertEqual(
            toolchain["image_digest"],
            extraction["image_digest"],
        )
        VERIFICATION.validate_toolchain_roles(
            self.manifest, VERIFICATION.REPO_ROOT
        )

        workflow_paths = (
            ".github/workflows/formal.yml",
            ".github/workflows/snarkpack-release-audit.yml",
        )
        toolchain_paths = (
            "crates/crypto/proof-aggregation/formal/snarkpack/toolchain.toml",
            "crates/crypto/proof-aggregation/formal/snarkpack/aeneas-toolchain.toml",
            "crates/crypto/proof-aggregation/formal/snarkpack/lean-extraction-manifest.json",
        )
        for workflow_path in workflow_paths:
            with self.subTest(workflow=workflow_path), tempfile.TemporaryDirectory(
                prefix="snarkpack-workflow-image-lock-"
            ) as directory:
                repo_root = Path(directory)
                for relative in toolchain_paths + workflow_paths:
                    source = VERIFICATION.REPO_ROOT / relative
                    destination = repo_root / relative
                    destination.parent.mkdir(parents=True, exist_ok=True)
                    destination.write_bytes(source.read_bytes())

                tampered = repo_root / workflow_path
                tampered.write_text(
                    tampered.read_text(encoding="utf-8").replace(
                        toolchain["image_digest"],
                        "sha256:" + "0" * 64,
                        1,
                    ),
                    encoding="utf-8",
                )
                with self.assertRaises(VERIFICATION.VerificationError) as raised:
                    VERIFICATION.validate_toolchain_roles(self.manifest, repo_root)
                self.assertIn(workflow_path, str(raised.exception))

    def test_empty_audit_and_duplicate_claim_roots_fail_closed(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["audit_modules"] = []
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_repository(manifest)
        self.assertIn("audit_modules must be nonempty", str(raised.exception))

        manifest = copy.deepcopy(self.manifest)
        manifest["claims"][1]["root"] = manifest["claims"][0]["root"]
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_repository(manifest)
        self.assertIn("duplicate claim root", str(raised.exception))

    def test_claim_ledger_cannot_drop_publication_capstone(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["claims"] = [
            claim
            for claim in manifest["claims"]
            if claim["id"] != "FULL-ADAPTIVE-END-TO-END-FV"
        ]
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_repository(manifest)
        self.assertIn("claim ledger digest", str(raised.exception))

    def test_claim_ledger_cannot_silently_weaken_dependencies(self):
        for field, value in (
            ("dependencies", "S1-QUANTITATIVE-SOUNDNESS"),
            ("assumptions", "SHA256-SECURITY"),
        ):
            with self.subTest(field=field, value=value):
                manifest = copy.deepcopy(self.manifest)
                claim = next(
                    item
                    for item in manifest["claims"]
                    if item["id"] == "SHIPPING-TO-GOAL"
                )
                claim[field].remove(value)
                with self.assertRaises(
                    VERIFICATION.VerificationError
                ) as raised:
                    VERIFICATION.validate_repository(manifest)
                self.assertIn("claim ledger digest", str(raised.exception))

    def test_verification_contract_cannot_silently_weaken_gates(self):
        mutations = []

        missing_reference = copy.deepcopy(self.manifest)
        missing_reference["required_repository_inputs"].remove(
            "crates/crypto/proof-aggregation-reference/Cargo.toml"
        )
        mutations.append(("required input", missing_reference))

        expanded_axioms = copy.deepcopy(self.manifest)
        expanded_axioms["allowed_axioms"].append("False.elim")
        mutations.append(("axiom allowlist", expanded_axioms))

        missing_audit = copy.deepcopy(self.manifest)
        missing_audit["audit_modules"].pop()
        mutations.append(("audit inventory", missing_audit))

        missing_spec = copy.deepcopy(self.manifest)
        missing_spec["spec_roots"].pop()
        mutations.append(("spec isolation", missing_spec))

        for label, manifest in mutations:
            with self.subTest(label=label):
                with self.assertRaises(
                    VERIFICATION.VerificationError
                ) as raised:
                    VERIFICATION.validate_repository(manifest)
                self.assertIn(
                    "verification contract digest", str(raised.exception)
                )

    def test_full_verification_gate_rejects_open_or_unproved_claims(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["claims"][0]["status"] = "open"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_closed_verification(manifest)
        self.assertIn(manifest["claims"][0]["id"], str(raised.exception))

        manifest = copy.deepcopy(self.manifest)
        manifest["claims"][0]["root"] = "UNPROVED.placeholder"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_closed_verification(manifest)
        self.assertIn(manifest["claims"][0]["id"], str(raised.exception))

    def test_full_verification_gate_allows_only_exact_deferred_srs(self):
        manifest = copy.deepcopy(self.manifest)
        for evidence in manifest["statement_binding_evidence"]:
            evidence["checker"]["last_result"] = evidence["checker"][
                "required_result"
            ]
        VERIFICATION.require_closed_verification(manifest)

        for field, value in (
            ("root", "UNPROVED.different_deployment_gap"),
            ("status", "reviewed"),
        ):
            with self.subTest(field=field):
                candidate = copy.deepcopy(manifest)
                claim = next(
                    item
                    for item in candidate["claims"]
                    if item["id"] == VERIFICATION.DEPLOYED_SRS_CLAIM_ID
                )
                claim[field] = value
                with self.assertRaises(
                    VERIFICATION.VerificationError
                ) as raised:
                    VERIFICATION.require_closed_verification(candidate)
                self.assertIn(
                    VERIFICATION.DEPLOYED_SRS_CLAIM_ID,
                    str(raised.exception),
                )

        registered = copy.deepcopy(manifest)
        registered["deployed_srs_evidence"]["status"] = "registered"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_closed_verification(registered)
        self.assertIn(
            VERIFICATION.DEPLOYED_SRS_CLAIM_ID,
            str(raised.exception),
        )

    def test_full_verification_gate_rejects_status_downgrades(self):
        evidence = {
            "contract_field": "field",
            "checker": {
                "required_result": "pass",
                "last_result": "pass",
            },
        }
        for status in ("tested", "reviewed", "assumed", "rejected"):
            with self.subTest(status=status):
                manifest = {
                    "claims": [
                        {
                            "id": "PUBLICATION-BLOCKER",
                            "root": "Ipp.Fake.notAudited",
                            "status": status,
                        }
                    ],
                    "statement_binding_evidence": [evidence],
                }
                with self.assertRaises(VERIFICATION.VerificationError) as raised:
                    VERIFICATION.require_closed_verification(manifest)
                self.assertIn("PUBLICATION-BLOCKER", str(raised.exception))

    def test_spec_import_closure_rejects_extracted_modules(self):
        with tempfile.TemporaryDirectory(prefix="snarkpack-spec-import-") as directory:
            lean_root = Path(directory)
            ipp = lean_root / "Ipp"
            ipp.mkdir()
            (ipp / "Goal.lean").write_text(
                "import Ipp.Helper\n", encoding="utf-8"
            )
            (ipp / "Helper.lean").write_text(
                "import Ipp.Extracted.Bad\n", encoding="utf-8"
            )
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.validate_import_closure(
                    lean_root,
                    ["Ipp.Goal"],
                    ["Ipp.Extracted"],
                )
            self.assertIn("forbidden import", str(raised.exception))

        declarations = (
            "import Ipp.Extracted.Bad -- trailing comment\n",
            "public import Ipp.Extracted.Bad\n",
        )
        for declaration in declarations:
            with self.subTest(declaration=declaration):
                with tempfile.TemporaryDirectory(
                    prefix="snarkpack-decorated-import-"
                ) as directory:
                    lean_root = Path(directory)
                    ipp = lean_root / "Ipp"
                    ipp.mkdir()
                    (ipp / "Goal.lean").write_text(
                        declaration, encoding="utf-8"
                    )
                    with self.assertRaises(
                        VERIFICATION.VerificationError
                    ) as raised:
                        VERIFICATION.validate_import_closure(
                            lean_root,
                            ["Ipp.Goal"],
                            ["Ipp.Extracted"],
                        )
                    self.assertIn("forbidden import", str(raised.exception))

    def test_spec_import_closure_traverses_non_ipp_local_modules(self):
        with tempfile.TemporaryDirectory(
            prefix="snarkpack-local-import-"
        ) as directory:
            lean_root = Path(directory)
            ipp = lean_root / "Ipp"
            ipp.mkdir()
            (ipp / "Goal.lean").write_text(
                "import LocalHelper\n", encoding="utf-8"
            )
            (lean_root / "LocalHelper.lean").write_text(
                "import Ipp.Extracted.Bad\n", encoding="utf-8"
            )
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.validate_import_closure(
                    lean_root,
                    ["Ipp.Goal"],
                    ["Ipp.Extracted"],
                )
            self.assertIn("forbidden import", str(raised.exception))

    def test_fstar_evidence_roots_require_full_declarations(self):
        manifest = self.manifest_with_current_contract_sources()
        entry = next(
            item
            for item in manifest["statement_binding_evidence"]
            if item["kind"] == "fstar"
        )
        leaf = entry["theorem_roots"][0].rsplit(".", 1)[-1]
        entry["theorem_roots"][0] = f"WrongNamespace.{leaf}"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        self.assertIn("theorem root is absent", str(raised.exception))

    def test_fstar_pass_requires_generated_checker_artifact(self):
        manifest = self.manifest_with_current_contract_sources()
        manifest["fstar_checker_evidence"] = {
            "path": "does/not/exist.json",
            "sha256": "0" * 64,
        }
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_contract_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        self.assertIn("F* checker evidence", str(raised.exception))

    def test_stale_fstar_rows_require_an_exact_checked_import(self):
        manifest = copy.deepcopy(self.manifest)
        fstar_rows = [
            entry
            for entry in manifest["statement_binding_evidence"]
            if entry["kind"] == "fstar"
        ]
        self.assertTrue(fstar_rows)
        for entry in fstar_rows:
            entry["checker"]["last_result"] = "stale"
        self.assertTrue(
            all(entry["checker"]["last_result"] == "stale"
                for entry in fstar_rows)
        )

        artifact = VERIFICATION._canonical_json(
            VERIFICATION.expected_fstar_checker_evidence(
                manifest, VERIFICATION.REPO_ROOT
            )
        ).encode("utf-8")
        promoted = VERIFICATION.promoted_fstar_manifest(
            manifest, artifact, VERIFICATION.REPO_ROOT
        )
        self.assertTrue(
            all(
                entry["checker"]["last_result"] == "pass"
                for entry in promoted["statement_binding_evidence"]
                if entry["kind"] == "fstar"
            )
        )
        self.assertEqual(
            promoted["fstar_checker_evidence"]["sha256"],
            hashlib.sha256(artifact).hexdigest(),
        )

        forged = json.loads(artifact)
        forged["checker"]["result"] = "failed"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.promoted_fstar_manifest(
                manifest,
                VERIFICATION._canonical_json(forged).encode("utf-8"),
                VERIFICATION.REPO_ROOT,
            )
        self.assertIn(
            "differs from the current pinned", str(raised.exception)
        )

    def test_fstar_module_graph_is_explicit_and_exact(self):
        specs = VERIFICATION.validate_fstar_module_graph(
            self.manifest, VERIFICATION.REPO_ROOT
        )
        self.assertEqual(
            specs["ChallengePreimageProofs"].dependencies,
            ("FrameLemmas",),
        )
        self.assertEqual(
            specs["StatementEncodingProofs"].dependencies,
            ("FrameLemmas",),
        )
        self.assertEqual(
            specs["DigestBindingProofs"].dependencies,
            ("FrameLemmas", "StatementEncodingProofs"),
        )
        self.assertEqual(
            self.manifest["fstar_modules"]["global_modules"],
            ["SnarkpackMachineSupport"],
        )

    def test_fstar_plan_never_trusts_evidence_over_changed_module_hints(self):
        manifest = copy.deepcopy(self.manifest)
        for entry in manifest["statement_binding_evidence"]:
            if entry["kind"] == "fstar":
                entry["checker"]["last_result"] = "pass"
        current = VERIFICATION.expected_fstar_checker_evidence(
            manifest, VERIFICATION.REPO_ROOT
        )

        # Checked-in JSON is useful for dependency reuse, but cannot attest
        # that CI checked a changed module.
        self.assertEqual(
            set(
                VERIFICATION.plan_fstar_modules(
                    manifest,
                    VERIFICATION.REPO_ROOT,
                    base=current,
                    requested=("StatementEncodingProofs.fst",),
                )
            ),
            {"StatementEncodingProofs", "DigestBindingProofs"},
        )

        def without(module):
            candidate = copy.deepcopy(current)
            candidate["module_results"] = [
                result
                for result in candidate["module_results"]
                if result["module"] != module
            ]
            return candidate

        self.assertEqual(
            set(
                VERIFICATION.plan_fstar_modules(
                    manifest,
                    VERIFICATION.REPO_ROOT,
                    base=without("FrameLemmas"),
                    requested=(),
                )
            ),
            {
                "FrameLemmas",
                "ChallengePreimageProofs",
                "StatementEncodingProofs",
                "DigestBindingProofs",
            },
        )
        self.assertEqual(
            set(
                VERIFICATION.plan_fstar_modules(
                    manifest,
                    VERIFICATION.REPO_ROOT,
                    base=without("StatementEncodingProofs"),
                    requested=(),
                )
            ),
            {"StatementEncodingProofs", "DigestBindingProofs"},
        )
        self.assertEqual(
            VERIFICATION.plan_fstar_modules(
                manifest,
                VERIFICATION.REPO_ROOT,
                base=without("FamilyRoutingProofs"),
                requested=(),
            ),
            ("FamilyRoutingProofs",),
        )
        self.assertEqual(
            set(
                VERIFICATION.plan_fstar_modules(
                    manifest,
                    VERIFICATION.REPO_ROOT,
                    base=without("SnarkpackMachineSupport"),
                    requested=(),
                )
            ),
            set(manifest["fstar_modules"]["modules"][index]["name"]
                for index in range(len(manifest["fstar_modules"]["modules"]))),
        )

    def test_fstar_evidence_merge_rejects_an_unchecked_stale_module(self):
        manifest = copy.deepcopy(self.manifest)
        for entry in manifest["statement_binding_evidence"]:
            if entry["kind"] == "fstar":
                entry["checker"]["last_result"] = "pass"
        current = VERIFICATION.expected_fstar_checker_evidence(
            manifest, VERIFICATION.REPO_ROOT
        )
        stale = copy.deepcopy(current)
        stale["module_results"] = [
            result
            for result in stale["module_results"]
            if result["module"] != "ValidationProofs"
        ]
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.merged_fstar_checker_evidence(
                manifest,
                VERIFICATION.REPO_ROOT,
                base=stale,
                requested=(),
                checked=(),
            )
        self.assertIn(
            "checked F* module set differs", str(raised.exception)
        )

    def test_checker_result_is_state_not_immutable_contract(self):
        stale = VERIFICATION._verification_contract_payload(self.manifest)
        passed_manifest = copy.deepcopy(self.manifest)
        for entry in passed_manifest["statement_binding_evidence"]:
            if entry["kind"] == "fstar":
                entry["checker"]["last_result"] = "pass"
        passed = VERIFICATION._verification_contract_payload(
            passed_manifest
        )
        self.assertEqual(stale, passed)

        weakened = copy.deepcopy(passed_manifest)
        fstar = next(
            entry
            for entry in weakened["statement_binding_evidence"]
            if entry["kind"] == "fstar"
        )
        fstar["theorem_roots"].pop()
        self.assertNotEqual(
            passed,
            VERIFICATION._verification_contract_payload(weakened),
        )

    def test_fstar_module_inventory_rejects_missing_and_unexpected_modules(self):
        def fixture(
            directory: str, modules: tuple[str, ...]
        ) -> tuple[dict[str, object], Path]:
            root = Path(directory)
            verifier = (
                root
                / "crates/crypto/proof-aggregation/formal/lean-ipp/scripts/"
                "verification_manifest.py"
            )
            verifier.parent.mkdir(parents=True)
            verifier.write_text("# inventory fixture\n", encoding="utf-8")
            toolchain = (
                root
                / "crates/crypto/proof-aggregation/formal/snarkpack/"
                "toolchain.toml"
            )
            toolchain.parent.mkdir(parents=True)
            toolchain.write_text("", encoding="utf-8")
            proof_root = toolchain.parent / "fstar"
            proof_root.mkdir()
            for module in modules:
                (proof_root / module).write_text(
                    f"module {Path(module).stem}\n", encoding="utf-8"
                )
            manifest: dict[str, object] = {
                "fstar_modules": {
                    "global_inputs": list(
                        VERIFICATION.FSTAR_GLOBAL_INPUT_INVENTORY
                    ),
                    "global_modules": list(
                        VERIFICATION.FSTAR_GLOBAL_MODULE_INVENTORY
                    ),
                    "modules": [
                        {
                            "name": Path(module).stem,
                            "path": (
                                "crates/crypto/proof-aggregation/formal/"
                                f"snarkpack/fstar/{module}"
                            ),
                            "dependencies": [],
                        }
                        for module in modules
                    ],
                },
                "statement_binding_evidence": [
                    {
                        "contract_field": "fixture",
                        "kind": "fstar",
                        "theorem_roots": ["Fixture.root"],
                        "sources": [],
                        "checker": {"command": "scripts/snarkpack-formal.sh"},
                    }
                ]
            }
            return manifest, root

        cases = (
            (
                "missing",
                VERIFICATION.FSTAR_MODULE_INVENTORY[:-1],
                "missing: WrapperProofs.fst",
            ),
            (
                "unexpected",
                VERIFICATION.FSTAR_MODULE_INVENTORY + ("UnexpectedProofs.fst",),
                "unexpected: UnexpectedProofs.fst",
            ),
            (
                "unexpected-interface",
                VERIFICATION.FSTAR_MODULE_INVENTORY + ("FrameLemmas.fsti",),
                "unexpected: FrameLemmas.fsti",
            ),
        )
        for label, modules, expected in cases:
            with self.subTest(label=label):
                with tempfile.TemporaryDirectory(
                    prefix=f"snarkpack-fstar-{label}-"
                ) as directory:
                    manifest, root = fixture(directory, modules)
                    with self.assertRaises(
                        VERIFICATION.VerificationError
                    ) as raised:
                        VERIFICATION.expected_fstar_checker_evidence(
                            manifest, root
                        )
                    self.assertIn("F* module inventory differs", str(raised.exception))
                    self.assertIn(expected, str(raised.exception))

    def test_extraction_output_list_requires_exact_nonempty_coverage(self):
        extraction_manifest = (
            VERIFICATION.REPO_ROOT
            / "crates/crypto/proof-aggregation/formal/snarkpack/"
            "lean-extraction-manifest.json"
        )
        payload = json.loads(extraction_manifest.read_text(encoding="utf-8"))
        self.assertEqual(len(VERIFICATION.extraction_outputs()), 38)
        with tempfile.TemporaryDirectory(prefix="snarkpack-extraction-list-") as directory:
            path = Path(directory) / "manifest.json"
            payload["graphs"].pop()
            path.write_text(json.dumps(payload), encoding="utf-8")
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.extraction_outputs(path)
            self.assertIn("expected 38 extraction outputs", str(raised.exception))

    def test_audit_sources_are_manifest_pinned_before_log_parsing(self):
        roots = ["Ipp.first", "Ipp.second"]
        digest = hashlib.sha256(
            "".join(f"{root}\n" for root in roots).encode("utf-8")
        ).hexdigest()
        manifest = {
            "audit_modules": [
                {
                    "path": "Ipp/ProofAudit.lean",
                    "expected_capstones": len(roots),
                    "capstone_roots_sha256": digest,
                    "required_roots": roots,
                }
            ]
        }
        with tempfile.TemporaryDirectory(prefix="snarkpack-audit-pins-") as directory:
            lean_root = Path(directory)
            ipp_root = lean_root / "Ipp"
            ipp_root.mkdir()
            audit = ipp_root / "ProofAudit.lean"
            audit.write_text(
                "-- #print axioms Ipp.line_comment_spoof\n"
                "/- #print axioms Ipp.block_comment_spoof\n"
                "   /- #print axioms Ipp.nested_comment_spoof -/\n"
                "-/\n"
                '#eval IO.println "#print axioms Ipp.string_spoof"\n'
                + "\n".join(f"#print axioms {root}" for root in roots)
                + "\n",
                encoding="utf-8",
            )
            self.assertEqual(
                VERIFICATION.manifest_audit_roots(
                    manifest, lean_root=lean_root
                ),
                roots,
            )
            diagnostics = VERIFICATION.manifest_audit_diagnostics(
                manifest, lean_root=lean_root
            )
            self.assertEqual(
                [(item.root, item.source, item.line, item.column) for item in diagnostics],
                [
                    ("Ipp.first", "Ipp/ProofAudit.lean", 6, 0),
                    ("Ipp.second", "Ipp/ProofAudit.lean", 7, 0),
                ],
            )

            audit.write_text(
                f"#print axioms {roots[0]}\n",
                encoding="utf-8",
            )
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.manifest_audit_roots(
                    manifest, lean_root=lean_root
                )
            self.assertIn("contains 1 capstones; expected 2", str(raised.exception))

            audit.write_text(
                "#print axioms Ipp.first\n#print axioms Ipp.substituted\n",
                encoding="utf-8",
            )
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.manifest_audit_roots(
                    manifest, lean_root=lean_root
                )
            self.assertIn(
                "capstone roots differ from the fixed manifest",
                str(raised.exception),
            )

    def test_audit_log_command_checks_source_pins_before_reading_log(self):
        manifest = {"allowed_axioms": ["propext"]}
        missing_log = Path("does-not-exist-audit.log")
        stderr = StringIO()
        with (
            patch.object(VERIFICATION, "load_manifest", return_value=manifest),
            patch.object(
                VERIFICATION,
                "selected_manifest_audit_diagnostics",
                side_effect=VERIFICATION.VerificationError(
                    "audit source differs from fixed pins"
                ),
            ) as validate_diagnostics,
            redirect_stderr(stderr),
        ):
            self.assertEqual(
                VERIFICATION.main(["audit-log", str(missing_log)]),
                2,
            )
        validate_diagnostics.assert_called_once_with(manifest, [])
        self.assertIn("audit source differs from fixed pins", stderr.getvalue())
        self.assertNotIn(str(missing_log), stderr.getvalue())

    def test_test_log_command_is_manifest_independent(self):
        test_name = "tests::exact_shipping_boundary"
        with tempfile.TemporaryDirectory(
            prefix="snarkpack-test-log-"
        ) as directory:
            log = Path(directory) / "test.log"
            log.write_text(
                "running 1 test\n"
                f"test {test_name} ... ok\n"
                "\ntest result: ok. 1 passed; 0 failed; 0 ignored\n",
                encoding="utf-8",
            )
            with patch.object(
                VERIFICATION,
                "load_manifest",
                side_effect=AssertionError(
                    "test-log must not read the claim manifest"
                ),
            ):
                self.assertEqual(
                    VERIFICATION.main(
                        [
                            "test-log",
                            str(log),
                            "--expected",
                            "1",
                            "--label",
                            "exact shipping boundary",
                            "--test-name",
                            test_name,
                        ]
                    ),
                    0,
                )

    def test_audit_diagnostics_can_select_one_exact_manifest_module(self):
        roots = {
            "Ipp/ProofAudit.lean": "Ipp.base",
            "Ipp/ProofAuditAdaptive.lean": "Ipp.adaptive",
        }
        manifest = {
            "audit_modules": [
                {
                    "path": source,
                    "expected_capstones": 1,
                    "capstone_roots_sha256": hashlib.sha256(
                        f"{root}\n".encode("utf-8")
                    ).hexdigest(),
                    "required_roots": [root],
                }
                for source, root in roots.items()
            ]
        }
        with tempfile.TemporaryDirectory(
            prefix="snarkpack-audit-selection-"
        ) as directory:
            lean_root = Path(directory)
            for source, root in roots.items():
                path = lean_root / source
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(
                    f"#print axioms {root}\n", encoding="utf-8"
                )
            selected = VERIFICATION.selected_manifest_audit_diagnostics(
                manifest,
                ["Ipp.ProofAuditAdaptive"],
                lean_root=lean_root,
            )
            self.assertEqual(
                [(item.root, item.source) for item in selected],
                [("Ipp.adaptive", "Ipp/ProofAuditAdaptive.lean")],
            )
            with self.assertRaisesRegex(
                VERIFICATION.VerificationError,
                "requested unknown audit module",
            ):
                VERIFICATION.selected_manifest_audit_diagnostics(
                    manifest,
                    ["Ipp.ProofAuditUnknown"],
                    lean_root=lean_root,
                )
            with self.assertRaisesRegex(
                VERIFICATION.VerificationError,
                "contain duplicates",
            ):
                VERIFICATION.selected_manifest_audit_diagnostics(
                    manifest,
                    ["Ipp.ProofAudit", "Ipp.ProofAudit"],
                    lean_root=lean_root,
                )

    def test_axiom_log_cannot_pass_with_no_expected_diagnostics(self):
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.audit_log_summary(
                "",
                expected_diagnostics=[],
                allowed_axioms={"propext"},
            )
        self.assertIn("expected_diagnostics must be nonempty", str(raised.exception))

    def test_axiom_log_ignores_non_audit_module_results(self):
        text = (
            "info: Ipp/Imported.lean:1:0: 'unrelated' depends on axioms: [bad]\n"
            "info: Ipp/ProofAudit.lean:2:0: 'audited' depends on axioms: "
            "[propext,\n Classical.choice]\n"
        )
        self.assertEqual(
            VERIFICATION.audit_log_summary(
                text,
                expected_diagnostics=[
                    VERIFICATION.AuditDiagnostic(
                        "audited", "Ipp/ProofAudit.lean", 2, 0
                    )
                ],
                allowed_axioms={"propext", "Classical.choice"},
            ),
            "1 capstones; axioms allowlisted",
        )

    def test_axiom_log_accepts_json_diagnostic_with_pinned_location(self):
        text = json.dumps(
            {
                "data": "'audited' depends on axioms: [propext]",
                "fileName": "Ipp/ProofAudit.lean",
                "pos": {"line": 2, "column": 0},
                "severity": "information",
            }
        )
        self.assertEqual(
            VERIFICATION.audit_log_summary(
                text,
                expected_diagnostics=[
                    VERIFICATION.AuditDiagnostic(
                        "audited", "Ipp/ProofAudit.lean", 2, 0
                    )
                ],
                allowed_axioms={"propext"},
            ),
            "1 capstones; axioms allowlisted",
        )

    def test_axiom_log_does_not_accept_near_named_audit_module(self):
        text = (
            "info: Ipp/ProofAuditAdaptiveExtra.lean:2:0: 'audited' "
            "does not depend on any axioms\n"
        )
        with self.assertRaisesRegex(
            VERIFICATION.VerificationError,
            "do not originate at the pinned",
        ):
            VERIFICATION.audit_log_summary(
                text,
                expected_diagnostics=[
                    VERIFICATION.AuditDiagnostic(
                        "audited",
                        "Ipp/ProofAuditAdaptive.lean",
                        2,
                        0,
                    )
                ],
                allowed_axioms={"propext"},
            )

    def test_axiom_log_rejects_unprefixed_spoof_output(self):
        text = (
            "\ufeff'first' depends on axioms: [propext,\n Classical.choice]\n"
            "'second' does not depend on any axioms\n"
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.audit_log_summary(
                text,
                expected_diagnostics=[
                    VERIFICATION.AuditDiagnostic(
                        "first", "Ipp/ProofAudit.lean", 1, 0
                    ),
                    VERIFICATION.AuditDiagnostic(
                        "second", "Ipp/ProofAudit.lean", 2, 0
                    ),
                ],
                allowed_axioms={"propext", "Classical.choice"},
            )
        self.assertIn("roots differ from the fixed manifest", str(raised.exception))

    def test_axiom_log_rejects_spoofed_compiler_location(self):
        text = (
            "info: Ipp/ProofAudit.lean:9:0: 'audited' "
            "does not depend on any axioms\n"
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.audit_log_summary(
                text,
                expected_diagnostics=[
                    VERIFICATION.AuditDiagnostic(
                        "audited", "Ipp/ProofAudit.lean", 8, 0
                    )
                ],
                allowed_axioms={"propext"},
            )
        self.assertIn(
            "do not originate at the pinned #print axioms commands",
            str(raised.exception),
        )

    def test_axiom_log_requires_the_exact_manifest_roots(self):
        text = (
            "info: Ipp/ProofAudit.lean:2:0: 'different' "
            "does not depend on any axioms\n"
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.audit_log_summary(
                text,
                expected_diagnostics=[
                    VERIFICATION.AuditDiagnostic(
                        "required", "Ipp/ProofAudit.lean", 2, 0
                    )
                ],
                allowed_axioms={"propext"},
            )
        self.assertIn("roots differ from the fixed manifest", str(raised.exception))

    def test_dependency_graph_footer_tracks_manifest_status(self):
        manifest = copy.deepcopy(self.manifest)
        rendered = VERIFICATION.render_dependency_graph(manifest)
        open_ids = [
            claim["id"]
            for claim in manifest["claims"]
            if not claim["id"].startswith("COST-")
            and (
                claim["status"] == "open"
                or claim["root"].startswith("UNPROVED.")
            )
        ]
        self.assertTrue(open_ids)
        self.assertIn(
            "Open graph claims: " + ", ".join(f"`{claim_id}`" for claim_id in open_ids),
            rendered,
        )

        for claim in manifest["claims"]:
            if not claim["id"].startswith("COST-"):
                claim["status"] = "proved"
                if claim["root"].startswith("UNPROVED."):
                    claim["root"] = f"Ipp.Test.{claim['id'].lower()}"
        rendered = VERIFICATION.render_dependency_graph(manifest)
        self.assertIn("No graph claims are open.", rendered)
        self.assertNotIn("remains open", rendered)

    def test_required_repository_inputs_fail_when_reference_or_fuzz_input_is_missing(self):
        with tempfile.TemporaryDirectory(prefix="snarkpack-required-input-") as directory:
            root = Path(directory)
            present = root / "reference" / "Cargo.toml"
            present.parent.mkdir()
            present.write_text("[package]\n", encoding="utf-8")
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.validate_required_inputs(
                    ["reference/Cargo.toml", "fuzz/Cargo.toml"], root
                )
            self.assertIn("missing required repository input", str(raised.exception))

    def test_byte_drift_guidance_must_point_to_a_live_versioning_anchor(self):
        with tempfile.TemporaryDirectory(prefix="snarkpack-versioning-guide-") as directory:
            root = Path(directory)
            backend = root / "crates/crypto/proof-aggregation/src/backend.rs"
            guide = root / "docs/snarkpack/verification.md"
            backend.parent.mkdir(parents=True)
            guide.parent.mkdir(parents=True)
            target = "docs/snarkpack/verification.md#x3--optimization-byte-lock"
            backend.write_text(target, encoding="utf-8")
            guide.write_text(
                "### X3 — Optimization byte-lock\n", encoding="utf-8"
            )
            VERIFICATION.validate_versioning_guidance(root)

            guide.write_text("# renamed\n", encoding="utf-8")
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.validate_versioning_guidance(root)
            self.assertIn("X3 anchor", str(raised.exception))

            guide.write_text(
                "### X3 — Optimization byte-lock\n", encoding="utf-8"
            )
            backend.write_text(
                "formal/snarkpack/adaptation-register.md", encoding="utf-8"
            )
            with self.assertRaises(VERIFICATION.VerificationError) as raised:
                VERIFICATION.validate_versioning_guidance(root)
            self.assertIn("live versioning procedure", str(raised.exception))

    def test_lean_source_axiom_injection_fails_closed(self):
        declarations = (
            "axiom unapproved : False\n",
            "private axiom unapproved : False\n",
            "@[implemented_by replacement]\naxiom unapproved : False\n",
            "constant unapproved : False\n",
        )
        for declaration in declarations:
            with self.subTest(declaration=declaration):
                with tempfile.TemporaryDirectory(
                    prefix="snarkpack-axiom-"
                ) as directory:
                    lean_root = Path(directory)
                    ipp_root = lean_root / "Ipp"
                    ipp_root.mkdir()
                    (ipp_root / "Injected.lean").write_text(
                        declaration, encoding="utf-8"
                    )
                    with self.assertRaises(
                        VERIFICATION.VerificationError
                    ) as raised:
                        VERIFICATION.validate_lean_source_tokens(lean_root)
                    self.assertIn(
                        "source-level axiom declaration",
                        str(raised.exception),
                    )

    def test_summary_enforces_consolidated_runtime_lane_for_full_tier(self):
        workflow = (
            VERIFICATION.REPO_ROOT / ".github/workflows/formal.yml"
        ).read_text(encoding="utf-8")
        summary = workflow.split("\n  summary:\n", maxsplit=1)[1]
        self.assertIn("- snarkpack-runtime", summary)
        self.assertIn(
            "RUNTIME: ${{ needs.snarkpack-runtime.result }}",
            summary,
        )
        enforcer = (
            VERIFICATION.REPO_ROOT / "scripts/ci/enforce_formal_result.py"
        ).read_text(encoding="utf-8")
        self.assertIn(
            '"snarkpack-rust-reference": value("RUST_REFERENCE_RUN")',
            enforcer,
        )
        self.assertIn(
            '"snarkpack-runtime": value("RUNTIME")',
            enforcer,
        )

    def test_all_filtered_slow_and_dos_recipes_require_exactly_one_test(self):
        justfile = (VERIFICATION.REPO_ROOT / "justfile").read_text(
            encoding="utf-8"
        )
        modular_slow_labels = (
            "snarkpack_matches_legacy_batch_across_families_and_counts_slow",
            "snarkpack_matches_single_and_batch_groth16_oracles_slow",
            "slow_two_way_interop_band",
        )
        self.assertEqual(justfile.count('--label "$filter"'), 1)
        for label in modular_slow_labels:
            with self.subTest(label=label):
                self.assertIn(f"filter={label}", justfile)

        literal_labels = (
            "snarkpack_dos_gate_valid_and_adversarial_paths_hold_thresholds",
            "bounded_challenge_sampler_",
            "shipping_nonce_exhaustion_maps_exact_public_error",
        )
        for label in literal_labels:
            with self.subTest(label=label):
                self.assertIn(f'--label "{label}"', justfile)

    def test_generic_rust_ci_defers_formal_evidence_freshness(self):
        justfile = (VERIFICATION.REPO_ROOT / "justfile").read_text(
            encoding="utf-8"
        )
        ci_check = justfile.split("\nci-check:\n", maxsplit=1)[1].split(
            "\n# CI wrapper for `test`.", maxsplit=1
        )[0]
        for kind in ("FSTAR", "LEAN", "EXTERNAL"):
            with self.subTest(kind=kind):
                flag = (
                    f"SNARKPACK_ALLOW_PENDING_{kind}_CONTRACT_REFRESH=1"
                )
                self.assertEqual(ci_check.count(flag), 2)
        self.assertEqual(ci_check.count("just check"), 2)

    def test_v1_byte_lock_requires_proof_and_trace_baselines(self):
        backend = (
            VERIFICATION.REPO_ROOT
            / "crates/crypto/proof-aggregation/src/backend.rs"
        ).read_text(encoding="utf-8")
        trace_fixture = (
            VERIFICATION.REPO_ROOT
            / "crates/crypto/proof-aggregation/tests/fixtures/"
            "shieldd_byte_trace_baseline.txt"
        )
        self.assertRegex(
            backend,
            r"#\[test\]\s*fn "
            r"v1_bytes_and_transcript_match_committed_baselines\s*\(",
        )
        self.assertIn(
            "regenerate_shieldd_byte_trace_baseline", backend
        )
        self.assertTrue(trace_fixture.is_file())
        byte_lock = next(
            claim
            for claim in self.manifest["claims"]
            if claim["id"] == "V1-BYTE-LOCK"
        )
        self.assertEqual(
            byte_lock["root"],
            "v1_bytes_and_transcript_match_committed_baselines",
        )
        VERIFICATION.validate_v1_byte_lock_source(backend, byte_lock["root"])
        ignored_backend = backend.replace(
            "#[test]\n    fn "
            "v1_bytes_and_transcript_match_committed_baselines",
            "#[test]\n    #[ignore]\n    fn "
            "v1_bytes_and_transcript_match_committed_baselines",
            1,
        )
        self.assertNotEqual(ignored_backend, backend)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_v1_byte_lock_source(
                ignored_backend, byte_lock["root"]
            )
        self.assertIn("must not be ignored", str(raised.exception))

        disabled_backend = backend.replace(
            "#[test]\n    fn "
            "v1_bytes_and_transcript_match_committed_baselines",
            "#[cfg(any())]\n    #[test]\n    fn "
            "v1_bytes_and_transcript_match_committed_baselines",
            1,
        )
        self.assertNotEqual(disabled_backend, backend)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_v1_byte_lock_source(
                disabled_backend, byte_lock["root"]
            )
        self.assertIn("attributes differ", str(raised.exception))

        emptied_umbrella = backend.replace(
            "fn v1_bytes_and_transcript_match_committed_baselines() {\n"
            "        assert_aggregate_bytes_match_committed_baseline();\n"
            "        assert_shieldd_byte_trace_matches_committed_baseline();\n"
            "    }",
            "fn v1_bytes_and_transcript_match_committed_baselines() {}\n"
            "\n"
            "    fn unaudited_baseline_calls() {\n"
            "        assert_aggregate_bytes_match_committed_baseline();\n"
            "        assert_shieldd_byte_trace_matches_committed_baseline();\n"
            "    }",
            1,
        )
        self.assertNotEqual(emptied_umbrella, backend)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_v1_byte_lock_source(
                emptied_umbrella, byte_lock["root"]
            )
        self.assertIn("directly and exclusively", str(raised.exception))

        fixture_root = (
            VERIFICATION.REPO_ROOT
            / "crates/crypto/proof-aggregation/tests/fixtures"
        )
        byte_contents = (
            fixture_root / "aggregate_bytes_baseline.txt"
        ).read_text(encoding="utf-8")
        trace_contents = (
            fixture_root / "shieldd_byte_trace_baseline.txt"
        ).read_text(encoding="utf-8")
        VERIFICATION.validate_v1_baseline_fixtures(
            byte_contents, trace_contents
        )

        self.assertEqual(
            VERIFICATION.V1_BASELINE_FAMILIES,
            (
                ("Transfer", 9_000),
                ("NoteReshape(NoteReshapeFamilyId(2))", 9_200),
                ("NoteReshape(NoteReshapeFamilyId(3))", 9_300),
                (
                    "ShieldedIcs20Withdrawal("
                    "ShieldedIcs20WithdrawalFamilyId(1))",
                    9_500,
                ),
            ),
        )

        removed_vector = "\n".join(
            line
            for line in trace_contents.splitlines()
            if not line.startswith("vector 15 ")
            and not line.startswith("15.")
        ) + "\n"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_v1_baseline_fixtures(
                byte_contents, removed_vector
            )
        self.assertIn("vector inventory differs", str(raised.exception))

        regenerated_without_version_bump = byte_contents.replace(
            "0 Transfer count=1 seed=9001 ",
            "0 Transfer count=1 seed=9001 00",
            1,
        )
        self.assertNotEqual(regenerated_without_version_bump, byte_contents)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_v1_baseline_fixtures(
                regenerated_without_version_bump, trace_contents
            )
        self.assertIn(
            "changed without updating the independent v1 protocol lock",
            str(raised.exception),
        )

    def test_unregistered_srs_keeps_deployed_soundness_open(self):
        VERIFICATION.validate_deployed_srs_soundness(
            self.manifest, VERIFICATION.REPO_ROOT
        )

        promoted = copy.deepcopy(self.manifest)
        srs_claim = next(
            claim
            for claim in promoted["claims"]
            if claim["id"] == VERIFICATION.DEPLOYED_SRS_CLAIM_ID
        )
        srs_claim["status"] = "proved"
        srs_claim["root"] = "Ipp.Test.deployed_srs_sound"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_deployed_srs_soundness(
                promoted, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "must remain open", str(raised.exception)
        )

        disconnected = copy.deepcopy(self.manifest)
        kzg = next(
            claim
            for claim in disconnected["claims"]
            if claim["id"] == "KZG-LEAF-REDUCTION"
        )
        kzg["dependencies"].remove(VERIFICATION.DEPLOYED_SRS_CLAIM_ID)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_deployed_srs_soundness(
                disconnected, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "must depend on DEPLOYED-SRS-SOUNDNESS",
            str(raised.exception),
        )

    def test_srs_claim_cannot_close_without_registered_evidence(self):
        promoted = copy.deepcopy(self.manifest)
        srs_claim = next(
            claim
            for claim in promoted["claims"]
            if claim["id"] == VERIFICATION.DEPLOYED_SRS_CLAIM_ID
        )
        srs_claim["status"] = "proved"
        srs_claim["root"] = "Ipp.Test.deployed_srs_sound"
        promoted["deployed_srs_evidence"]["status"] = "registered"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_deployed_srs_soundness(
                promoted, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "registered deployed_srs_evidence has unexpected or missing fields",
            str(raised.exception),
        )

    def test_deployed_srs_evidence_is_required(self):
        missing = copy.deepcopy(self.manifest)
        del missing["deployed_srs_evidence"]
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_deployed_srs_soundness(
                missing, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "deployed_srs_evidence must be an object",
            str(raised.exception),
        )

    def test_registered_evidence_rejects_an_inactive_registry(self):
        promoted = copy.deepcopy(self.manifest)
        srs_claim = next(
            claim
            for claim in promoted["claims"]
            if claim["id"] == VERIFICATION.DEPLOYED_SRS_CLAIM_ID
        )
        srs_claim["status"] = "proved"
        srs_claim["root"] = "Ipp.Test.deployed_srs_sound"
        evidence = promoted["deployed_srs_evidence"]
        evidence.update(
            {
                "status": "registered",
                "registry_source_sha256": "0" * 64,
                "application_source_sha256": "0" * 64,
                "setup_binding_root": srs_claim["root"],
                "artifact": {
                    "path": "registered.srs",
                    "sha256": "0" * 64,
                    "srs_id": "0" * 64,
                    "max_padded_count": 32_768,
                },
                "ceremony": {
                    "owner": "Example owner",
                    "transcript_path": "transcript.bin",
                    "transcript_sha256": "0" * 64,
                    "verification_path": "verification.json",
                    "verification_sha256": "0" * 64,
                    "checker_result": "verified",
                },
            }
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_deployed_srs_soundness(
                promoted, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "cannot use an inactive production id",
            str(raised.exception),
        )

    def test_registered_srs_evidence_binds_the_active_registry_entry(self):
        artifact_bytes = b"synthetic canonical BLS12-377 SRS bytes"
        artifact_sha256 = hashlib.sha256(artifact_bytes).digest()
        srs_id = VERIFICATION._deployed_srs_identifier(
            32_768, artifact_bytes
        )
        artifact = {
            "path": (
                "crates/crypto/proof-aggregation/artifacts/production.srs"
            ),
            "sha256": artifact_sha256.hex(),
            "srs_id": srs_id.hex(),
            "max_padded_count": 32_768,
        }
        artifact_relative = PurePosixPath(artifact["path"])

        def rust_bytes(value):
            return ", ".join(f"0x{byte:02x}" for byte in value)

        def registry_source(
            *,
            active_id=srs_id,
            entry_id=srs_id,
            entry_sha256=artifact_sha256,
            filename="production.srs",
            max_padded_count=32_768,
        ):
            return f"""
const ACTIVE_PRODUCTION_SRS_ID: Option<[u8; 32]> =
    Some([{rust_bytes(active_id)}]);
const PRODUCTION_SRS_REGISTRY: &[ProductionSrsRegistryEntry] = &[
    ProductionSrsRegistryEntry {{
        id: [{rust_bytes(entry_id)}],
        artifact_sha256: [{rust_bytes(entry_sha256)}],
        artifact_filename: "{filename}",
        max_padded_count: {max_padded_count},
    }},
];
"""

        VERIFICATION._validate_deployed_srs_registry_binding(
            srs_text=registry_source(),
            artifact_relative=artifact_relative,
            artifact=artifact,
            artifact_bytes=artifact_bytes,
        )

        forged_id = bytes([0xA5]) * 32
        cases = (
            (
                "manifest id",
                registry_source(),
                {**artifact, "srs_id": forged_id.hex()},
                "evidence id differs",
            ),
            (
                "registry digest",
                registry_source(entry_sha256=bytes([0x5A]) * 32),
                artifact,
                "bytes differ from the registry artifact hash",
            ),
            (
                "registry filename",
                registry_source(filename="other.srs"),
                artifact,
                "filename differs",
            ),
            (
                "registry capacity",
                registry_source(max_padded_count=16_384),
                artifact,
                "max count differs",
            ),
            (
                "domain-separated id",
                registry_source(
                    active_id=forged_id,
                    entry_id=forged_id,
                ),
                {**artifact, "srs_id": forged_id.hex()},
                "not the domain-separated identifier",
            ),
        )
        for label, source, candidate_artifact, message in cases:
            with self.subTest(label=label):
                with self.assertRaises(
                    VERIFICATION.VerificationError
                ) as raised:
                    VERIFICATION._validate_deployed_srs_registry_binding(
                        srs_text=source,
                        artifact_relative=artifact_relative,
                        artifact=candidate_artifact,
                        artifact_bytes=artifact_bytes,
                    )
                self.assertIn(message, str(raised.exception))

    def test_pending_contract_refresh_flag_is_explicit(self):
        args = VERIFICATION.parser().parse_args(
            [
                "validate",
                "--allow-pending-contract-kind",
                "fstar",
                "--allow-pending-contract-kind",
                "lean",
            ]
        )
        self.assertEqual(
            args.allow_pending_contract_kind,
            ["fstar", "lean"],
        )
        default = VERIFICATION.parser().parse_args(["validate"])
        self.assertEqual(default.allow_pending_contract_kind, [])

    def test_bounded_sampler_pins_test_and_shipping_call_sites(self):
        VERIFICATION.validate_bounded_challenge_sampler(
            self.manifest, VERIFICATION.REPO_ROOT
        )
        relative, (expected_from_zero, expected_from_nonce) = next(
            iter(VERIFICATION.SHIPPING_NONCE_CALL_INVENTORY.items())
        )
        source = VERIFICATION.REPO_ROOT.joinpath(
            *Path(relative).parts
        ).read_text(encoding="utf-8")
        VERIFICATION.validate_shipping_nonce_source(
            relative,
            source,
            expected_from_zero=expected_from_zero,
            expected_from_nonce=expected_from_nonce,
        )
        bypass = source + "\ncounter_nonce = counter_nonce + 1;\n"
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_shipping_nonce_source(
                relative,
                bypass,
                expected_from_zero=expected_from_zero,
                expected_from_nonce=expected_from_nonce,
            )
        self.assertIn("direct nonce arithmetic", str(raised.exception))

        extracted_relative, extracted = next(
            iter(
                VERIFICATION.EXTRACTED_CHECKED_SUCCESSOR_INVENTORY.items()
            )
        )
        extracted_source = VERIFICATION.REPO_ROOT.joinpath(
            *Path(extracted_relative).parts
        ).read_text(encoding="utf-8")
        VERIFICATION.validate_extracted_checked_successor_source(
            extracted_relative,
            extracted_source,
            function=extracted["function"],
            expected_calls=extracted["expected_calls"],
            tests=extracted["tests"],
        )

        extra_checked_call = (
            extracted_source
            + "\nfn unaudited_nonce_loop(nonce: u64) {\n"
            + "    let _ = checked_next_challenge_nonce(nonce);\n"
            + "}\n"
        )
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_extracted_checked_successor_source(
                extracted_relative,
                extra_checked_call,
                function=extracted["function"],
                expected_calls=extracted["expected_calls"],
                tests=extracted["tests"],
            )
        self.assertIn(
            "checked-successor call inventory differs",
            str(raised.exception),
        )

        open_at_exhaustion = extracted_source.replace(
            "None => return Err(AggregateAdapterCoreError::NonceExhausted),",
            "None => break,",
            1,
        )
        self.assertNotEqual(open_at_exhaustion, extracted_source)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_extracted_checked_successor_source(
                extracted_relative,
                open_at_exhaustion,
                function=extracted["function"],
                expected_calls=extracted["expected_calls"],
                tests=extracted["tests"],
            )
        self.assertIn("fail-closed branch", str(raised.exception))

        missing_audit_root = copy.deepcopy(self.manifest)
        for audit in missing_audit_root["audit_modules"]:
            if extracted["audit_root"] in audit["required_roots"]:
                audit["required_roots"].remove(extracted["audit_root"])
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_bounded_challenge_sampler(
                missing_audit_root, VERIFICATION.REPO_ROOT
            )
        self.assertIn(
            "checked-successor audit root", str(raised.exception)
        )

        extracted_test = extracted["tests"][0]
        disabled_extracted_test = extracted_source.replace(
            '    #[cfg(not(feature = "bench-baseline"))]\n'
            "    #[test]\n"
            f"    fn {extracted_test}",
            "    #[cfg(any())]\n"
            '    #[cfg(not(feature = "bench-baseline"))]\n'
            "    #[test]\n"
            f"    fn {extracted_test}",
            1,
        )
        self.assertNotEqual(disabled_extracted_test, extracted_source)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.validate_extracted_checked_successor_source(
                extracted_relative,
                disabled_extracted_test,
                function=extracted["function"],
                expected_calls=extracted["expected_calls"],
                tests=extracted["tests"],
            )
        self.assertIn("attributes differ", str(raised.exception))

        challenge_path = (
            VERIFICATION.REPO_ROOT
            / "crates/crypto/proof-aggregation/src/ipp/ip_proofs/src/"
            "challenge.rs"
        )
        challenge = challenge_path.read_text(encoding="utf-8")
        test_name = VERIFICATION.BOUNDED_SAMPLER_TESTS[0]
        disabled = challenge.replace(
            "#[test]\n    fn "
            + test_name,
            "#[cfg(any())]\n    #[test]\n    fn "
            + test_name,
            1,
        )
        self.assertNotEqual(disabled, challenge)
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_unignored_rust_test(
                disabled, test_name
            )
        self.assertIn("attributes differ", str(raised.exception))

    def test_parity_output_must_execute_at_least_one_test(self):
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_positive_test_execution(
                "running 0 tests\n\ntest result: ok.\n",
                command="cargo test stale_filter",
            )
        self.assertIn("executed zero tests", str(raised.exception))
        self.assertEqual(
            VERIFICATION.require_positive_test_execution(
                "running 0 tests\nrunning 2 tests\n",
                command="cargo test --workspace",
            ),
            2,
        )

    def test_exact_parity_command_binds_full_test_identity(self):
        test_name = (
            "app_verifier::tests::"
            "accepted_join_projection_is_exact_and_fail_closed"
        )
        argv = (
            "cargo",
            "test",
            "--lib",
            test_name,
            "--",
            "--exact",
        )
        extraction_manifest = json.loads(
            VERIFICATION.EXTRACTION_MANIFEST_PATH.read_text(encoding="utf-8")
        )
        self.assertIn(
            (
                "crates/crypto/proof-aggregation/src/ipp/ip_proofs",
                argv,
            ),
            VERIFICATION.validated_parity_commands(
                extraction_manifest,
                VERIFICATION.REPO_ROOT,
                selected_graphs=["AppVerifier"],
            ),
        )
        self.assertEqual(
            VERIFICATION.parity_exact_test_name(argv),
            test_name,
        )
        self.assertEqual(
            VERIFICATION.require_exact_test_execution(
                "running 1 test\n"
                f"test {test_name} ... ok\n"
                "\ntest result: ok. 1 passed; 0 failed; 0 ignored\n",
                command=" ".join(argv),
                expected=1,
                expected_names=[test_name],
            ),
            1,
        )

        for output, needle in (
            ("running 0 tests\n", "executed zero tests"),
            (
                "running 1 test\n"
                "test app_verifier::tests::unrelated ... ok\n",
                "test identities differ",
            ),
        ):
            with self.subTest(output=output):
                with self.assertRaises(
                    VERIFICATION.VerificationError
                ) as raised:
                    VERIFICATION.require_exact_test_execution(
                        output,
                        command=" ".join(argv),
                        expected=1,
                        expected_names=[test_name],
                    )
                self.assertIn(needle, str(raised.exception))

        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.parity_exact_test_name(
                ("cargo", "test", "--lib", test_name, "--exact")
            )
        self.assertIn("exact parity command must be", str(raised.exception))

    def test_parity_manifest_rejects_empty_and_unknown_selections(self):
        with tempfile.TemporaryDirectory(
            prefix="snarkpack-parity-"
        ) as directory:
            root = Path(directory)
            crate = root / "crate"
            crate.mkdir()
            payload = {
                "graphs": [
                    {
                        "id": "g",
                        "parity": [
                            {
                                "cwd": "crate",
                                "argv": ["cargo", "test", "--lib", "g"],
                            }
                        ],
                    }
                ]
            }
            self.assertEqual(
                VERIFICATION.validated_parity_commands(payload, root),
                [("crate", ("cargo", "test", "--lib", "g"))],
            )
            with self.assertRaises(
                VERIFICATION.VerificationError
            ) as raised:
                VERIFICATION.validated_parity_commands(
                    payload, root, selected_graphs=["missing"]
                )
            self.assertIn(
                "unknown parity graph selection", str(raised.exception)
            )
            payload["graphs"][0]["id"] = "g\nunsafe"
            with self.assertRaises(
                VERIFICATION.VerificationError
            ) as raised:
                VERIFICATION.validated_parity_commands(payload, root)
            self.assertIn("unsafe id", str(raised.exception))
            payload["graphs"][0]["id"] = "g"
            with self.assertRaises(
                VERIFICATION.VerificationError
            ) as raised:
                VERIFICATION.validated_parity_commands(
                    payload, root, selected_graphs=["g;unsafe"]
                )
            self.assertIn("unsafe id", str(raised.exception))

            payload["graphs"][0]["parity"] = []
            with self.assertRaises(
                VERIFICATION.VerificationError
            ) as raised:
                VERIFICATION.validated_parity_commands(payload, root)
            self.assertIn("has no parity command", str(raised.exception))

    def test_slow_interop_output_must_execute_exactly_one_test(self):
        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_exact_test_execution(
                "running 0 tests\n",
                command="cargo test slow_two_way_interop_band",
                expected=1,
            )
        self.assertIn("executed zero tests", str(raised.exception))

        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_exact_test_execution(
                "running 2 tests\n",
                command="cargo test slow_two_way_interop_band",
                expected=1,
            )
        self.assertIn("expected exactly 1", str(raised.exception))

        self.assertEqual(
            VERIFICATION.require_exact_test_execution(
                "running 1 test\n"
                "test tests::slow_two_way_interop_band ... ok\n"
                "running 0 tests\n",
                command="cargo test slow_two_way_interop_band",
                expected=1,
                expected_names=["tests::slow_two_way_interop_band"],
            ),
            1,
        )

        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_exact_test_execution(
                "running 1 test\n"
                "test tests::unrelated_but_matching_count ... ok\n",
                command="cargo test slow_two_way_interop_band",
                expected=1,
                expected_names=["tests::slow_two_way_interop_band"],
            )
        self.assertIn("test identities differ", str(raised.exception))

        with self.assertRaises(VERIFICATION.VerificationError) as raised:
            VERIFICATION.require_exact_test_execution(
                "running 1 test\n"
                "test tests::slow_two_way_interop_band ... ok\n"
                "test tests::slow_two_way_interop_band ... ok\n",
                command="cargo test slow_two_way_interop_band",
                expected=1,
                expected_names=["tests::slow_two_way_interop_band"],
            )
        self.assertIn("duplicate identities", str(raised.exception))


if __name__ == "__main__":
    unittest.main()
