from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import sys
import tempfile
import unittest
from copy import deepcopy
from pathlib import Path
from unittest.mock import patch


SCRIPTS = Path(__file__).resolve().parents[1]
ROOT = SCRIPTS.parent
sys.path.insert(0, str(SCRIPTS))

import fv_specification_completeness as CHECK
import gen_fv_specification_matrix as GENERATE


def matrix() -> dict[str, object]:
    return json.loads(CHECK.MATRIX.read_text(encoding="utf-8"))


def profiles() -> tuple[dict[str, object], ...]:
    return CHECK.load_profile_catalog()


def validate(
    value: dict[str, object],
    *,
    repository_sources: bool = False,
) -> dict[str, object]:
    return CHECK.validate_matrix_structure(
        ROOT,
        value,
        profiles(),
        validate_repository_sources=repository_sources,
    )


def predicate(value: dict[str, object], predicate_id: str) -> dict[str, object]:
    return next(row for row in value["predicates"] if row["id"] == predicate_id)


def application_for(
    value: dict[str, object],
    predicate_id: str,
    profile: str,
) -> tuple[dict[str, object], dict[str, object], dict[str, object]]:
    row = predicate(value, predicate_id)
    role_sets = {role_set["id"]: role_set for role_set in value["role_sets"]}
    for application in row["applications"]:
        role_set = role_sets[application["role_set"]]
        profile_role = next(
            (
                item
                for item in role_set["profile_roles"]
                if item["profile"] == profile
            ),
            None,
        )
        if profile_role is not None:
            return application, role_set, profile_role
    raise AssertionError(f"no {predicate_id}/{profile} application")


def evidence(value: dict[str, object], evidence_id: str) -> dict[str, object]:
    return next(row for row in value["evidence_sets"] if row["id"] == evidence_id)


def action_plan_authorization_relatives() -> set[str]:
    model = CHECK.ACTION_AUTHORIZATION_MODEL
    return {
        str(model["action_plan_enum_path"]),
        *(
            str(spec["path"])
            for spec in model["construction_roster_functions"]
        ),
        str(model["construction_binding_block"]["path"]),
        *(
            str(block["path"])
            for block in model["construction_consumers"]
        ),
        *(
            str(path)
            for path, _ in model["construction_tests"]
        ),
    }


REPOSITORY_SURFACE_RELATIVES = (
    "Cargo.lock",
    "crates/bin/pd/Cargo.toml",
    "crates/bin/pd/src/main.rs",
    "crates/bin/shieldd/Cargo.toml",
    "crates/bin/shieldd/src/ffi.rs",
    "crates/bin/shieldd/src/grpc.rs",
    "crates/bin/shieldd/src/service.rs",
    "crates/bin/shieldd/src/main.rs",
    "crates/proto/src/gen/shieldd.execution_client.v1.rs",
    "crates/core/app/src/action_handler.rs",
    "crates/core/app/Cargo.toml",
    "crates/core/app/src/action_handler/actions.rs",
    "crates/core/app/src/action_handler/actions/submit.rs",
    "crates/core/app/src/app/mod.rs",
    "crates/core/app/src/app/host.rs",
    "crates/core/app/src/app/validation_support.rs",
    "crates/core/app/src/app/tests/proof_acceptance_tests.rs",
    "crates/core/app/src/action_handler/transaction.rs",
    "crates/core/app/src/action_handler/transaction/stateless.rs",
    "crates/core/app/src/lib.rs",
    "crates/core/app/src/server.rs",
    "crates/core/app/src/server/consensus.rs",
    "crates/core/app/src/server/mempool.rs",
    "crates/core/app/src/stateless_cache.rs",
    "crates/core/app-tests/tests/ibc_vs_transfer_benchmark.rs",
    "crates/core/app-tests/Cargo.toml",
    "crates/core/transaction/Cargo.toml",
    "crates/core/transaction/src/action.rs",
    "crates/core/transaction/src/plan.rs",
    "crates/core/transaction/src/plan/action.rs",
    "crates/core/transaction/src/plan/auth.rs",
    "crates/core/transaction/src/plan/build.rs",
    "crates/core/transaction/src/transaction.rs",
    "crates/custody/src/policy.rs",
    "crates/custody/src/threshold/sign.rs",
    "crates/test/mock-client/src/lib.rs",
    "crates/view/src/client_compliance.rs",
    "crates/view/src/note_manager.rs",
    "crates/view/src/service.rs",
    "crates/proto/src/gen/shieldd.core.transaction.v1.rs",
    "crates/core/component/compliance/src/component/state.rs",
    "crates/core/component/compliance/src/genesis.rs",
    "crates/core/component/compliance/src/registry.rs",
    "crates/core/component/compliance/src/structs.rs",
    (
        "crates/core/component/governance/src/action_handler/"
        "validator_vote.rs"
    ),
    (
        "crates/core/component/stake/src/component/action_handler/"
        "validator_definition.rs"
    ),
    "crates/core/component/stake/src/governance_key.rs",
    "crates/core/component/stake/src/identity_key.rs",
    "crates/crypto/proof-aggregation/Cargo.toml",
    "crates/crypto/proof-aggregation/src/bundle.rs",
    "crates/crypto/proof-params/src/batch.rs",
    "crates/crypto/proof-aggregation/src/backend.rs",
    "crates/core/component/shielded-pool/src/component.rs",
    "crates/core/component/shielded-pool/src/component/action_handler.rs",
    (
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/note_reshape_action.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/transfer.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/shielded_ics20_withdrawal.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/component/"
        "action_handler/shielded_host_withdrawal.rs"
    ),
    "crates/core/component/shielded-pool/src/test_proof_helpers.rs",
    (
        "crates/core/component/shielded-pool/src/"
        "note_reshape/generated.rs"
    ),
    (
        "crates/core/component/shielded-pool/src/"
        "shielded_ics20_withdrawal/generated.rs"
    ),
    "crates/core/component/shielded-pool/src/transfer/proof.rs",
    "crates/core/component/shielded-pool/formal/external-check-map.md",
    (
        "proto/shieldd/shieldd/execution_client/v1/"
        "execution_client.proto"
    ),
    "proto/shieldd/shieldd/core/transaction/v1/transaction.proto",
)


def copy_repository_surface(root: Path) -> None:
    def model_sources(value: object) -> set[str]:
        if isinstance(value, dict):
            return set().union(*(model_sources(item) for item in value.values()))
        if isinstance(value, (list, tuple)):
            return set().union(*(model_sources(item) for item in value))
        if isinstance(value, str) and "/" in value and (ROOT / value).is_file():
            return {value}
        return set()

    relatives = (
        set(REPOSITORY_SURFACE_RELATIVES)
        | model_sources(CHECK.ACTION_AUTHORIZATION_MODEL)
        | model_sources(CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL)
    )
    for relative in sorted(relatives):
        destination = root / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(ROOT / relative, destination)


class SpecificationCompletenessTests(unittest.TestCase):
    def test_end_to_end_withdrawal_uses_real_integration_test_target(
        self,
    ) -> None:
        row = {
            "id": "WITHDRAWAL-END-TO-END-STATE-TRANSITION",
            "path": "crates/core/app-tests/tests/ics23_transfer.rs",
            "symbol": "ics20_transfer_no_timeouts",
        }
        expected = {
            "runner": "cargo_test",
            "working_directory": ".",
            "package": "shieldd-sdk-app-tests",
            "cargo_target": "ics23_transfer",
            "selector": "ics20_transfer_no_timeouts",
            "build_profile": "release",
            "features": [],
            "prover_required": True,
        }
        self.assertEqual(GENERATE.execution_for(row), expected)
        self.assertEqual(
            CHECK.expected_test_execution(
                row["id"], row["path"], row["symbol"]
            ),
            expected,
        )

    def test_go_evidence_execution_uses_its_actual_package(self) -> None:
        cases = (
            (
                "tools/gnark/internal/circuits/family_test.go",
                "./internal/circuits",
                "tools/gnark",
            ),
            (
                "tools/gnark/internal/abi/binary_shared_test.go",
                "./internal/abi",
                "tools/gnark",
            ),
            (
                "tools/gnark/internal/artifacts/json_test.go",
                "./internal/artifacts",
                "tools/gnark",
            ),
            (
                (
                    "tools/gnark/third_party/gnark-lean-extractor/"
                    "extractor/lean_export_test.go"
                ),
                "./extractor",
                "tools/gnark/third_party/gnark-lean-extractor",
            ),
        )
        for path, package, working_directory in cases:
            with self.subTest(path=path):
                row = {
                    "id": "PROPERTY-PACKAGE-RESOLUTION",
                    "path": path,
                    "symbol": "TestPackageResolution",
                }
                generated = GENERATE.execution_for(row)
                checked = CHECK.expected_test_execution(
                    row["id"],
                    row["path"],
                    row["symbol"],
                )
                self.assertEqual(generated, checked)
                self.assertEqual(generated["package"], package)
                self.assertEqual(
                    generated["working_directory"],
                    working_directory,
                )

    def test_app_proof_fixture_module_is_always_release_prover_evidence(
        self,
    ) -> None:
        path = (
            "crates/core/app/src/app/tests/"
            "proof_acceptance_tests.rs"
        )
        row = {
            "id": "FUTURE-PROOF-FIXTURE-EVIDENCE",
            "path": path,
            "symbol": "future_proof_fixture_evidence",
        }
        expected = {
            "runner": "cargo_test",
            "working_directory": ".",
            "package": "shieldd-sdk-app",
            "cargo_target": "lib",
            "selector": "future_proof_fixture_evidence",
            "build_profile": "release",
            "features": [],
            "prover_required": True,
        }
        self.assertEqual(GENERATE.execution_for(row), expected)
        self.assertEqual(
            CHECK.expected_test_execution(
                row["id"], row["path"], row["symbol"]
            ),
            expected,
        )

    def test_shieldd_binary_unit_evidence_uses_exact_package(self) -> None:
        row = {
            "id": "RUNTIME-GRPC-CHECKTX-PROOF-FRONTDOOR",
            "path": "crates/bin/shieldd/src/grpc.rs",
            "symbol": "grpc_execution_check_tx_rejects_invalid_transaction",
        }
        expected = {
            "runner": "cargo_test",
            "working_directory": ".",
            "package": "shieldd",
            "cargo_target": "lib",
            "selector": row["symbol"],
            "build_profile": "default",
            "features": [],
            "prover_required": False,
        }
        self.assertEqual(GENERATE.execution_for(row), expected)
        self.assertEqual(
            CHECK.expected_test_execution(
                row["id"], row["path"], row["symbol"]
            ),
            expected,
        )

    def test_constraint_coverage_evidence_uses_exact_cargo_target(
        self,
    ) -> None:
        cases = (
            (
                "crates/crypto/constraint-coverage/src/lib.rs",
                "coverage_rejects_gap",
                "lib",
            ),
            (
                "crates/crypto/constraint-coverage/src/main.rs",
                "reused_ir_rejects_mutated_derived_content",
                "bin:shieldd-constraint-coverage",
            ),
        )
        for path, symbol, cargo_target in cases:
            with self.subTest(path=path):
                row = {
                    "id": "ARTIFACT-EXACT-CARGO-TARGET",
                    "path": path,
                    "symbol": symbol,
                }
                expected = {
                    "runner": "cargo_test",
                    "working_directory": ".",
                    "package": "shieldd-constraint-coverage",
                    "cargo_target": cargo_target,
                    "selector": symbol,
                    "build_profile": "default",
                    "features": [],
                    "prover_required": False,
                }
                self.assertEqual(GENERATE.execution_for(row), expected)
                self.assertEqual(
                    CHECK.expected_test_execution(
                        row["id"], row["path"], row["symbol"]
                    ),
                    expected,
                )

    def test_rust_evidence_uses_exact_workspace_package_and_target(
        self,
    ) -> None:
        cases = (
            (
                "crates/bin/pd/src/network/generate.rs",
                "generate_devnet_config",
                "pd",
                "lib",
            ),
            (
                "crates/core/component/stake/src/governance_key.rs",
                "governance_key_rejects_identity",
                "shieldd-sdk-validator",
                "lib",
            ),
            (
                "crates/core/asset/src/balance.rs",
                "all_expressions_correct_commitment",
                "shieldd-sdk-asset",
                "lib",
            ),
            (
                "crates/core/num/src/amount.rs",
                "amount_is_structurally_below_2_pow_128",
                "shieldd-sdk-num",
                "lib",
            ),
            (
                (
                    "crates/core/transaction/tests/"
                    "generate_transaction_signing_test_vectors.rs"
                ),
                "effect_hash_test_vectors",
                "shieldd-sdk-transaction",
                "generate_transaction_signing_test_vectors",
            ),
            (
                "crates/custody/src/policy.rs",
                "only_ibc_relay_rejects_external_transfer_outputs",
                "shieldd-sdk-custody",
                "lib",
            ),
            (
                "crates/test/mock-client/src/lib.rs",
                "witness_plan_includes_hidden_arity_transfer_spend_proof",
                "shieldd-sdk-mock-client",
                "lib",
            ),
            (
                (
                    "crates/crypto/proof-aggregation/src/ipp/"
                    "dh_commitments/src/afgho16/mod.rs"
                ),
                "afgho_g1_test",
                "ark-dh-commitments",
                "lib",
            ),
            (
                (
                    "crates/crypto/proof-aggregation/src/ipp/"
                    "inner_products/src/lib.rs"
                ),
                "cfg_multi_pairing_matches_reference_across_threshold_boundary",
                "ark-inner-products",
                "lib",
            ),
            (
                (
                    "crates/crypto/proof-aggregation/src/ipp/"
                    "ip_proofs/src/gipa.rs"
                ),
                "scalar_inner_product_test",
                "ark-ip-proofs",
                "lib",
            ),
        )
        for path, symbol, package, cargo_target in cases:
            with self.subTest(path=path):
                row = {
                    "id": "PROPERTY-EXACT-WORKSPACE-TARGET",
                    "path": path,
                    "symbol": symbol,
                }
                expected = {
                    "runner": "cargo_test",
                    "working_directory": ".",
                    "package": package,
                    "cargo_target": cargo_target,
                    "selector": symbol,
                    "build_profile": "default",
                    "features": [],
                    "prover_required": False,
                }
                self.assertEqual(GENERATE.execution_for(row), expected)
                self.assertEqual(
                    CHECK.expected_test_execution(
                        row["id"], row["path"], row["symbol"]
                    ),
                    expected,
                )
                CHECK.validate_rust_test_execution_target(
                    ROOT,
                    row["id"],
                    row["path"],
                    expected,
                )

        wrong_package = dict(expected)
        wrong_package["package"] = "shieldd-sdk-stake"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "does not own",
        ):
            CHECK.validate_rust_test_execution_target(
                ROOT,
                "PROPERTY-WRONG-PACKAGE",
                "crates/core/component/stake/src/governance_key.rs",
                wrong_package,
            )

        wrong_target = dict(expected)
        wrong_target["package"] = "pd"
        wrong_target["cargo_target"] = "bin:pd"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "execution target",
        ):
            CHECK.validate_rust_test_execution_target(
                ROOT,
                "PROPERTY-WRONG-TARGET",
                "crates/bin/pd/src/network/generate.rs",
                wrong_target,
            )

    def test_dedicated_proof_acceptance_module_has_no_unmapped_tests(
        self,
    ) -> None:
        value = matrix()
        tests = {row["id"]: row for row in value["tests"]}
        relative = CHECK.PROOF_ACCEPTANCE_TEST_PATH
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            destination = root / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(ROOT / relative, destination)
            CHECK.validate_proof_acceptance_test_census(root, tests)

            destination.write_text(
                destination.read_text(encoding="utf-8")
                + "\n#[tokio::test]\n"
                + "async fn unmapped_real_proof_regression() {}\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "proof-acceptance test census drifted",
            ):
                CHECK.validate_proof_acceptance_test_census(root, tests)

    def test_withdrawal_runtime_module_has_no_unmapped_withdrawal_tests(
        self,
    ) -> None:
        value = matrix()
        tests = {row["id"]: row for row in value["tests"]}
        relative = CHECK.WITHDRAWAL_RUNTIME_TEST_PATH
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            destination = root / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(ROOT / relative, destination)
            CHECK.validate_withdrawal_runtime_test_census(root, tests)

            destination.write_text(
                destination.read_text(encoding="utf-8")
                + "\n#[tokio::test]\n"
                + "async fn unmapped_withdrawal_regression() {}\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "Withdrawal runtime test census drifted",
            ):
                CHECK.validate_withdrawal_runtime_test_census(root, tests)

    def test_action_handlers_have_no_unmapped_tests(
        self,
    ) -> None:
        value = matrix()
        tests = {row["id"]: row for row in value["tests"]}
        relative = CHECK.WITHDRAWAL_ACTION_HANDLER_TEST_PATH
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for action_handler_path in (
                CHECK.CLOSED_ACTION_HANDLER_TEST_PATHS
            ):
                destination = root / action_handler_path
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / action_handler_path, destination)
            CHECK.validate_action_handler_test_censuses(root, tests)

            destination = root / relative
            destination.write_text(
                destination.read_text(encoding="utf-8")
                + "\n#[tokio::test]\n"
                + "async fn unmapped_handler_regression() {}\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "closed action-handler test census drifted",
            ):
                CHECK.validate_action_handler_test_censuses(
                    root,
                    tests,
                )

    def test_dynamic_proof_modules_have_no_unmapped_tests(
        self,
    ) -> None:
        value = matrix()
        tests = {row["id"]: row for row in value["tests"]}
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative in CHECK.CLOSED_DYNAMIC_PROOF_TEST_PATHS:
                destination = root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative, destination)
            CHECK.validate_dynamic_proof_test_censuses(root, tests)

            relative = CHECK.CLOSED_DYNAMIC_PROOF_TEST_PATHS[-1]
            destination = root / relative
            destination.write_text(
                destination.read_text(encoding="utf-8")
                + "\n#[test]\n"
                + "fn unmapped_dynamic_proof_regression() {}\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "closed dynamic-proof test census drifted",
            ):
                CHECK.validate_dynamic_proof_test_censuses(root, tests)

    def test_lean_comment_scrubber_preserves_lexical_boundaries(
        self,
    ) -> None:
        literal = r'"escaped quote: \" and markers: /- -- -/"'
        raw_literal = (
            'r#"raw quote: " and markers: /- --\n'
            'theorem rawStringShadow : False := by trivial"#'
        )
        interpolated_literal = (
            's!"interpolated markers: /- --\n'
            'theorem interpolatedShadow : False := by trivial\n'
            '{("inner escaped quote: \\" and /- -- -/" : String)} tail"'
        )
        source = (
            f"def rawString := {raw_literal}\n"
            f"def interpolatedString := {interpolated_literal}\n"
            f"theorem before : ({literal} = {literal}) := by\n"
            "  rfl\n"
            "/- outer block\n"
            "  /- nested theorem shadow : False := by trivial -/\n"
            "  structure Shadow where stale : False\n"
            "-/\n"
            "theorem after : True := by\n"
            "  trivial\n"
            "-- theorem eofShadow : False := by trivial"
        )

        scrubbed = CHECK._without_lean_comments(source)
        search_mask = CHECK._without_lean_comments(
            source,
            blank_strings=True,
        )
        newline_offsets = [
            index for index, character in enumerate(source) if character == "\n"
        ]
        self.assertEqual(len(scrubbed), len(source))
        self.assertEqual(len(search_mask), len(source))
        self.assertEqual(
            [
                index
                for index, character in enumerate(scrubbed)
                if character == "\n"
            ],
            newline_offsets,
        )
        self.assertEqual(
            [
                index
                for index, character in enumerate(search_mask)
                if character == "\n"
            ],
            newline_offsets,
        )
        self.assertIn(literal, scrubbed)
        self.assertIn(raw_literal, scrubbed)
        self.assertIn(interpolated_literal, scrubbed)
        self.assertNotIn("escaped quote", search_mask)
        self.assertNotIn("rawStringShadow", search_mask)
        self.assertNotIn("interpolatedShadow", search_mask)
        self.assertIn("theorem before", search_mask)
        self.assertIn("theorem after", search_mask)
        self.assertNotIn("nested theorem shadow", scrubbed)
        self.assertNotIn("structure Shadow", scrubbed)
        self.assertEqual(
            CHECK.normalize_lean_source(
                'theorem literal : "two  spaces" = "two  spaces" := by'
            ),
            'theorem literal : "two  spaces" = "two  spaces" := by',
        )
        eof_comment = source.index("-- theorem eofShadow")
        self.assertEqual(
            scrubbed[eof_comment:],
            " " * (len(source) - eof_comment),
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "unterminated Lean block comment",
        ):
            CHECK._without_lean_comments("theorem kept : True := by\n/-")
        for unterminated in (
            '"standard',
            'r#"raw',
            's!"interpolated',
            's!"interpolated {True',
        ):
            with self.subTest(unterminated=unterminated):
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "unterminated Lean .*string",
                ):
                    CHECK._without_lean_comments(unterminated)

    def test_lean_extraction_ignores_commented_declaration_shadows(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            relative = "Shadowed.lean"
            source = root / relative
            source.write_text(
                '''def stringShadow := "
theorem claimed : False := by
  trivial
structure ClaimedFacts where
  stale : False
"

/-
/- Nested comments must not expose declarations either. -/
theorem claimed : False := by
  trivial

structure ClaimedFacts where
  stale : False
-/
theorem claimed :
    ("/- string := contents are not comments -/" =
      "/- string := contents are not comments -/") := by
  /-
theorem proofBoundaryShadow : False := by
  trivial
  -/
  rfl

structure ClaimedFacts where
  live : True
''',
                encoding="utf-8",
            )

            self.assertEqual(
                CHECK.lean_theorem_signature(
                    root,
                    relative,
                    "theorem claimed",
                ),
                (
                    "theorem claimed : "
                    '("/- string := contents are not comments -/" = '
                    '"/- string := contents are not comments -/")'
                ),
            )
            declaration = CHECK.extract_named_declaration(
                root,
                relative,
                "theorem",
                "claimed",
            )
            self.assertIn("  rfl", declaration)
            self.assertNotIn("proofBoundaryShadow", declaration)
            self.assertNotIn("structure ClaimedFacts", declaration)
            self.assertEqual(
                CHECK.extract_structure_field_types(
                    root,
                    relative,
                    "ClaimedFacts",
                ),
                {"live": "True"},
            )

    def test_repository_matrix_is_closed_and_exhaustive(self) -> None:
        validated = validate(matrix(), repository_sources=True)
        if validated["semantic_evidence_deficits"]:
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "predicate-specific semantic evidence is incomplete",
            ):
                CHECK.load_and_validate(check_semantic_digest=False)
            statuses = ()
        else:
            statuses = CHECK.load_and_validate(check_semantic_digest=False)

        self.assertEqual(len(CHECK.PREDICATE_BASELINE), 110)
        self.assertEqual(
            sum(
                placement == "circuit"
                for placement, _ in CHECK.PREDICATE_BASELINE.values()
            ),
            68,
        )
        self.assertEqual(
            sum(
                placement == "external_acceptance"
                for placement, _ in CHECK.PREDICATE_BASELINE.values()
            ),
            38,
        )
        self.assertEqual(
            sum(
                placement == "construction"
                for placement, _ in CHECK.PREDICATE_BASELINE.values()
            ),
            4,
        )
        if statuses:
            self.assertEqual(len(statuses), 4)
            self.assertTrue(
                all(
                    status["computed_status"] == "specification_closed"
                    for status in statuses
                )
            )
        self.assertEqual(len(validated["trace_instances"]), 301)
        self.assertEqual(len(validated["tests"]), 289)
        self.assertEqual(len(validated["runtime_policy_tests"]), 70)
        self.assertEqual(len(validated["property_contract_tests"]), 269)
        self.assertEqual(len(validated["artifact_contract_tests"]), 291)
        self.assertEqual(len(CHECK.execution_tests(matrix())), 919)
        self.assertEqual(len(validated["property_contract"]), 25)
        self.assertEqual(
            len(
                validated["proof_acceptance_surface"][
                    "production_sinks"
                ]
            ),
            20,
        )
        self.assertEqual(
            len(
                validated["proof_acceptance_surface"][
                    "nonproduction_exclusions"
                ]
            ),
            3,
        )
        self.assertEqual(len(validated["applicable"]), 278)
        self.assertEqual(len(CHECK.expected_formal_fact_ids(ROOT)), 103)
        self.assertEqual(len(CHECK.expected_ledger_ids(ROOT)), 43)

    def test_independent_requirement_source_is_closed_and_fail_closed(
        self,
    ) -> None:
        original = json.loads(
            CHECK.REQUIREMENT_SOURCE.read_text(encoding="utf-8")
        )
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "requirements.json"

            def check_mutation(
                mutate: object,
                error: str,
            ) -> None:
                value = deepcopy(original)
                mutate(value)
                path.write_text(
                    json.dumps(value, indent=2, ensure_ascii=False) + "\n",
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    error,
                ):
                    CHECK.validate_requirement_source(path)

            check_mutation(
                lambda value: value["requirements"].pop(),
                "independent FV requirement census mismatch",
            )
            check_mutation(
                lambda value: value["requirements"][0].__setitem__(
                    "placement", "construction"
                ),
                "requirement placement",
            )
            check_mutation(
                lambda value: value["requirements"][0].__setitem__(
                    "profile_set", "withdrawal"
                ),
                "independent requirement profile roster",
            )
            check_mutation(
                lambda value: value["requirements"][0].__setitem__(
                    "branch_condition", ""
                ),
                "branch_condition must be a non-empty string",
            )
            check_mutation(
                lambda value: value["requirements"][0].__setitem__(
                    "evidence_removal_required", False
                ),
                "must require an exact evidence-removal census",
            )
            check_mutation(
                lambda value: value["statements"].pop(
                    "ADDRESS-CANONICAL-PACKING"
                ),
                "normative statement census mismatch",
            )
            check_mutation(
                lambda value: value["statements"].__setitem__(
                    "ADDRESS-CANONICAL-PACKING",
                    "",
                ),
                "normative statement",
            )

    def test_matrix_semantics_must_equal_independent_requirements(
        self,
    ) -> None:
        mutations = {
            "branch_condition": "mutated branch",
            "binding_mode": "construction_only",
            "disclosure": "wallet_private",
            "variable_source": "formal_facts",
        }
        for field_name, replacement in mutations.items():
            with self.subTest(field_name=field_name):
                value = matrix()
                row = predicate(value, "ADDRESS-CANONICAL-PACKING")
                row[field_name] = replacement
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "independent requirement",
                ):
                    validate(value)

        value = matrix()
        predicate(value, "ADDRESS-CANONICAL-PACKING")["severity"] = "medium"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "severity/independent semantic-evidence requirement drifted",
        ):
            validate(value)

        value = matrix()
        predicate(value, "ADDRESS-CANONICAL-PACKING")["statement"] += (
            " Weakened."
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "matrix statement .* != independent requirement",
        ):
            validate(value)

    def test_every_application_has_exact_evidence_removal_census(
        self,
    ) -> None:
        value = matrix()
        validated = validate(value)
        checked = 0
        for row in value["predicates"]:
            requirement = validated["requirements"][row["id"]]
            for application in row["applications"]:
                with self.subTest(
                    predicate=row["id"],
                    role_set=application["role_set"],
                ):
                    selected_traces = [
                        validated["trace_instances"][trace_id]
                        for trace_id in application["trace_instance_ids"]
                    ]
                    selected_facts = set(application["formal_fact_ids"])
                    mutated = deepcopy(application["semantic_contract"])
                    self.assertTrue(
                        mutated["evidence_removal"]["targets"],
                        "every required application needs a concrete target",
                    )
                    mutated["evidence_removal"]["targets"].pop()
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "non-empty array|evidence-removal census drifted",
                    ):
                        CHECK.validate_application_semantic_contract(
                            row["id"],
                            row["placement"],
                            requirement,
                            mutated,
                            selected_traces,
                            selected_facts,
                        )
                    checked += 1
        self.assertEqual(checked, 278)

    def test_high_impact_trace_semantics_reject_branch_and_disclosure_drift(
        self,
    ) -> None:
        value = matrix()
        validated = validate(value)

        def traces_for(predicate_id: str, profile: str) -> list[dict[str, object]]:
            application, _, _ = application_for(
                value, predicate_id, profile
            )
            return [
                deepcopy(validated["trace_instances"][trace_id])
                for trace_id in application["trace_instance_ids"]
            ]

        address = traces_for("ADDRESS-CANONICAL-PACKING", "transfer")
        address[0]["args"] = tuple(
            (
                "clue_key=receiver.clue_key"
                if argument.startswith("tier=")
                else argument
            )
            for argument in address[0]["args"]
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "must not include the clue key",
        ):
            CHECK.validate_selected_trace_semantics(
                "ADDRESS-CANONICAL-PACKING", address
            )

        dummy_amount = traces_for("DUMMY-AMOUNT-ZERO", "transfer")
        dummy_amount[0]["args"] = tuple(
            argument.replace(".is_dummy", ".is_not_dummy")
            for argument in dummy_amount[0]["args"]
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "gated by is_dummy",
        ):
            CHECK.validate_selected_trace_semantics(
                "DUMMY-AMOUNT-ZERO", dummy_amount
            )

        dummy_nullifier = traces_for(
            "DUMMY-NULLIFIER-DOMAIN-BINDING", "transfer"
        )
        mux = next(
            trace
            for trace in dummy_nullifier
            if trace["op"] == "dummy.mux"
        )
        mux["args"] = tuple(
            (
                "real=spend1.nullifier.synthetic"
                if argument.startswith("real=")
                else argument
            )
            for argument in mux["args"]
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "selector polarity",
        ):
            CHECK.validate_selected_trace_semantics(
                "DUMMY-NULLIFIER-DOMAIN-BINDING", dummy_nullifier
            )

        policy = traces_for("COMPLIANCE-POLICY-SELECTION", "transfer")
        point_select = next(
            trace for trace in policy if trace["op"] == "select.point"
        )
        point_select["args"] = tuple(
            (
                "cond=is_unregulated"
                if argument == "cond=is_regulated"
                else argument
            )
            for argument in point_select["args"]
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "branch polarity",
        ):
            CHECK.validate_selected_trace_semantics(
                "COMPLIANCE-POLICY-SELECTION", policy
            )

    def test_typed_pre_post_transition_contracts_reject_detachment(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            originals: dict[str, str] = {}
            common_relative = CHECK.TYPED_COMMON_TRANSACTION_MODEL["path"]
            common_destination = root / common_relative
            common_destination.parent.mkdir(parents=True, exist_ok=True)
            common_source = (ROOT / common_relative).read_text(
                encoding="utf-8"
            )
            common_destination.write_text(common_source, encoding="utf-8")
            originals["Common"] = common_source
            for model in CHECK.TYPED_TRANSITION_MODELS:
                relative = model["path"]
                destination = root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                source = (ROOT / relative).read_text(encoding="utf-8")
                destination.write_text(source, encoding="utf-8")
                originals[model["label"]] = source
            for block in CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                "runtime_blocks"
            ]:
                relative = block["path"]
                destination = root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                destination.write_text(
                    (ROOT / relative).read_text(encoding="utf-8"),
                    encoding="utf-8",
                )

            CHECK.validate_typed_transition_models(root)
            mutations = (
                (
                    "NoteReshape",
                    "delta.nullifiers = actionNullifiers action",
                    "delta.nullifiers = []",
                ),
                (
                    "Transfer",
                    (
                        "delta.proofBoundOutputCommitments\n"
                        "      after.proofBoundOutputCommitments"
                    ),
                    (
                        "delta.proofBoundOutputCommitments\n"
                        "      before.proofBoundOutputCommitments"
                    ),
                ),
                (
                    "Withdrawal",
                    (
                        "after.ibc.committedPackets =\n"
                        "      Function.update before.ibc.committedPackets"
                    ),
                    (
                        "after.ibc.committedPackets =\n"
                        "      before.ibc.committedPackets"
                    ),
                ),
                (
                    "Withdrawal",
                    (
                        "Protocol.Common.includedWithMultiplicity\n"
                        "      [balanceEffectOf action payload] balanceEffects"
                    ),
                    "True",
                ),
                (
                    "Transfer",
                    (
                        "ConsensusExternalFacts checks action before "
                        "delta after"
                    ),
                    "ConsensusExternalFacts checks action",
                ),
            )
            by_label = {
                model["label"]: root / model["path"]
                for model in CHECK.TYPED_TRANSITION_MODELS
            }
            by_label["Common"] = common_destination
            for label, old, new in mutations:
                with self.subTest(label=label, old=old):
                    for restore_label, source in originals.items():
                        by_label[restore_label].write_text(
                            source, encoding="utf-8"
                        )
                    target = by_label[label]
                    source = target.read_text(encoding="utf-8")
                    self.assertIn(old, source)
                    target.write_text(
                        source.replace(old, new, 1),
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "typed transition contract drifted|"
                        "typed protocol structure drifted|must retain",
                    ):
                        CHECK.validate_typed_transition_models(root)

            for restore_label, source in originals.items():
                by_label[restore_label].write_text(source, encoding="utf-8")
            source = common_destination.read_text(encoding="utf-8")
            old = "nullifiersUnique : nullifiers.Nodup"
            self.assertIn(old, source)
            common_destination.write_text(
                source.replace(
                    old,
                    "nullifiersUnique : True",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "transaction-wide effect contract drifted",
            ):
                CHECK.validate_typed_transition_models(root)

            common_destination.write_text(
                originals["Common"],
                encoding="utf-8",
            )
            source = common_destination.read_text(encoding="utf-8")
            old = (
                "targetOutputsIncluded :\n"
                "    includedWithMultiplicity targetOutputs "
                "effects.outputCommitments"
            )
            self.assertIn(old, source)
            common_destination.write_text(
                source.replace(
                    old,
                    "targetOutputsIncluded : True",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "deployed target composition drifted",
            ):
                CHECK.validate_typed_transition_models(root)

    def test_proof_bearing_binding_authorization_rejects_sentinel_drift(
        self,
    ) -> None:
        relative_paths = {
            str(
                CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                    "common_path"
                ]
            ),
            *(
                str(target["path"])
                for target in CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                    "targets"
                ]
            ),
            *(
                str(block["path"])
                for block in CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                    "runtime_blocks"
                ]
            ),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative_path in relative_paths:
                destination = root / relative_path
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative_path, destination)

            CHECK.validate_proof_bearing_binding_authorization(root)

            transfer_path = root / (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                "Transfer/Semantics.lean"
            )
            source = transfer_path.read_text(encoding="utf-8")
            source = source.replace(
                "Common.proofBearingBindingSignatureAccepted",
                "Common.canonicalBindingSignatureAccepted",
                1,
            )
            transfer_path.write_text(source, encoding="utf-8")
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "proof-bearing binding authorization drifted|"
                "no-proof identity binding mode leaked",
            ):
                CHECK.validate_proof_bearing_binding_authorization(root)

    def test_action_authorization_census_rejects_unclassified_variant(
        self,
    ) -> None:
        model = CHECK.ACTION_AUTHORIZATION_MODEL
        relative_paths = {
            str(model["action_enum_path"]),
            str(model["dispatch_path"]),
            str(model["profiled_execution_path"]),
            str(model["proof_count_path"]),
            *action_plan_authorization_relatives(),
            *(
                str(block["path"])
                for row in model["direct_actions"]
                for block in row["blocks"]
            ),
            *(
                str(path)
                for row in model["direct_actions"]
                for path, _ in row["tests"]
            ),
            *(
                str(block["path"])
                for block in model["genesis_authority_blocks"]
            ),
            *(str(path) for path, _ in model["genesis_authority_tests"]),
            *(
                str(block["path"])
                for block in (
                    CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                        "runtime_blocks"
                    ]
                )
            ),
            str(model["ibc_authorization"]["dispatch_path"]),
            *(
                str(block["path"])
                for block in model["ibc_authorization"][
                    "evidence_blocks"
                ]
            ),
            *(str(gate["path"]) for gate in model["execution_gate"]),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative_path in relative_paths:
                destination = root / relative_path
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative_path, destination)

            CHECK.validate_action_authorization_model(root)

            action_path = root / str(model["action_enum_path"])
            source = action_path.read_text(encoding="utf-8")
            old = "    AggregateBundle(AggregateBundle),\n}"
            self.assertIn(old, source)
            action_path.write_text(
                source.replace(
                    old,
                    "    AggregateBundle(AggregateBundle),\n"
                    "    FutureAuthority(future::AuthorityAction),\n"
                    "}",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "authorization census drifted",
            ):
                CHECK.validate_action_authorization_model(root)

    def test_action_authorization_rejects_guard_or_dispatch_bypass(
        self,
    ) -> None:
        model = CHECK.ACTION_AUTHORIZATION_MODEL
        relative_paths = {
            str(model["action_enum_path"]),
            str(model["dispatch_path"]),
            str(model["profiled_execution_path"]),
            str(model["proof_count_path"]),
            *action_plan_authorization_relatives(),
            *(
                str(block["path"])
                for row in model["direct_actions"]
                for block in row["blocks"]
            ),
            *(
                str(path)
                for row in model["direct_actions"]
                for path, _ in row["tests"]
            ),
            *(
                str(block["path"])
                for block in model["genesis_authority_blocks"]
            ),
            *(str(path) for path, _ in model["genesis_authority_tests"]),
            *(
                str(block["path"])
                for block in (
                    CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                        "runtime_blocks"
                    ]
                )
            ),
            str(model["ibc_authorization"]["dispatch_path"]),
            *(
                str(block["path"])
                for block in model["ibc_authorization"][
                    "evidence_blocks"
                ]
            ),
            *(str(gate["path"]) for gate in model["execution_gate"]),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative_path in relative_paths:
                destination = root / relative_path
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative_path, destination)

            identity_path = (
                root
                / "crates/core/component/stake/src/identity_key.rs"
            )
            original_identity = identity_path.read_text(encoding="utf-8")
            guard = (
                "ensure_nonidentity_spend_auth_key("
                '&verification_key, "validator identity key")?;'
            )
            self.assertIn(guard, original_identity)
            identity_path.write_text(
                original_identity.replace(
                    guard,
                    "let _ = &verification_key;",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "validator identity-key guard",
            ):
                CHECK.validate_action_authorization_model(root)

            identity_path.write_text(original_identity, encoding="utf-8")
            dispatch_path = root / str(model["dispatch_path"])
            source = dispatch_path.read_text(encoding="utf-8")
            dispatch = (
                "Action::ValidatorDefinition(action) => "
                "action.check_stateless(()).await,"
            )
            self.assertIn(dispatch, source)
            dispatch_path.write_text(
                source.replace(
                    dispatch,
                    "Action::ValidatorDefinition(_) => Ok(()),",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "does not propagate its authorization check exactly",
            ):
                CHECK.validate_action_authorization_model(root)

    def test_action_plan_construction_rosters_fail_closed(self) -> None:
        model = CHECK.ACTION_AUTHORIZATION_MODEL
        relative_paths = {
            str(model["action_enum_path"]),
            *action_plan_authorization_relatives(),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative_path in relative_paths:
                destination = root / relative_path
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative_path, destination)

            action_plan_path = root / str(model["action_plan_enum_path"])
            original_action_plan = action_plan_path.read_text(
                encoding="utf-8"
            )
            insertion = (
                "    ComplianceRegisterUser(MsgRegisterUser),\n"
                "}"
            )
            self.assertIn(insertion, original_action_plan)
            action_plan_path.write_text(
                original_action_plan.replace(
                    insertion,
                    "    ComplianceRegisterUser(MsgRegisterUser),\n"
                    "    FutureSpend(future::SpendPlan),\n"
                    "}",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "ActionPlan authorization census drifted",
            ):
                CHECK.validate_action_authorization_model(root)

            action_plan_path.write_text(
                original_action_plan,
                encoding="utf-8",
            )
            spends_arm = (
                "ActionPlan::NoteReshape(plan) => &plan.spends,"
            )
            self.assertIn(spends_arm, original_action_plan)
            action_plan_path.write_text(
                original_action_plan.replace(
                    spends_arm,
                    "ActionPlan::NoteReshape(_) => &[],",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "ActionPlan::spends real-spend arms drifted",
            ):
                CHECK.validate_action_authorization_model(root)

            action_plan_path.write_text(
                original_action_plan,
                encoding="utf-8",
            )
            custody_path = (
                root / "crates/custody/src/threshold/sign.rs"
            )
            original_custody = custody_path.read_text(encoding="utf-8")
            census = (
                ".flat_map(|action| "
                "action.spends().iter().map(|spend| spend.randomizer))"
            )
            self.assertIn(census, original_custody)
            custody_path.write_text(
                original_custody.replace(
                    census,
                    ".flat_map(|_| std::iter::empty())",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "threshold spend-randomizer census",
            ):
                CHECK.validate_action_authorization_model(root)

    def test_action_authorization_rejects_proof_count_or_ibc_join_bypass(
        self,
    ) -> None:
        model = CHECK.ACTION_AUTHORIZATION_MODEL
        relative_paths = {
            str(model["action_enum_path"]),
            str(model["dispatch_path"]),
            str(model["profiled_execution_path"]),
            str(model["proof_count_path"]),
            *action_plan_authorization_relatives(),
            *(
                str(block["path"])
                for row in model["direct_actions"]
                for block in row["blocks"]
            ),
            *(
                str(path)
                for row in model["direct_actions"]
                for path, _ in row["tests"]
            ),
            *(
                str(block["path"])
                for block in model["genesis_authority_blocks"]
            ),
            *(str(path) for path, _ in model["genesis_authority_tests"]),
            *(
                str(block["path"])
                for block in (
                    CHECK.PROOF_BEARING_BINDING_AUTHORIZATION_MODEL[
                        "runtime_blocks"
                    ]
                )
            ),
            str(model["ibc_authorization"]["dispatch_path"]),
            *(
                str(block["path"])
                for block in model["ibc_authorization"][
                    "evidence_blocks"
                ]
            ),
            *(str(gate["path"]) for gate in model["execution_gate"]),
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative_path in relative_paths:
                destination = root / relative_path
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative_path, destination)

            CHECK.validate_action_authorization_model(root)

            proof_count_path = root / str(model["proof_count_path"])
            original_proof_count = proof_count_path.read_text(
                encoding="utf-8"
            )
            old = (
                "| Action::ShieldedIcs20Withdrawal(_)\n"
                "                | Action::ShieldedHostWithdrawal(_) => 1,"
            )
            self.assertIn(old, original_proof_count)
            proof_count_path.write_text(
                original_proof_count.replace(
                    old,
                    "| Action::ShieldedIcs20Withdrawal(_) => 0,\n"
                    "                | Action::ShieldedHostWithdrawal(_) => 1,",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "proof-count arm census drifted|"
                "circuit-and-envelope Action class drifted",
            ):
                CHECK.validate_action_authorization_model(root)

            proof_count_path.write_text(
                original_proof_count,
                encoding="utf-8",
            )
            ibc_dispatch_path = (
                root / str(model["ibc_authorization"]["dispatch_path"])
            )
            original_ibc_dispatch = ibc_dispatch_path.read_text(
                encoding="utf-8"
            )
            old = (
                "IbcRelay::RecvPacket(msg) => "
                "msg.check_stateless::<AH>().await?,"
            )
            self.assertIn(old, original_ibc_dispatch)
            ibc_dispatch_path.write_text(
                original_ibc_dispatch.replace(
                    old,
                    "IbcRelay::RecvPacket(_) => {},",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "RecvPacket.*stateless authorization dispatch drifted",
            ):
                CHECK.validate_action_authorization_model(root)

            ibc_dispatch_path.write_text(
                original_ibc_dispatch,
                encoding="utf-8",
            )
            recv_path = (
                root
                / "crates/core/component/ibc/src/component/msg_handler/"
                "recv_packet.rs"
            )
            recv_source = recv_path.read_text(encoding="utf-8")
            old = ".verify_packet_recv_proof::<HI>(&connection, self)"
            self.assertIn(old, recv_source)
            recv_path.write_text(
                recv_source.replace(
                    old,
                    ".skip_packet_proof_for_test(&connection, self)",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "IBC receive-packet proof admission",
            ):
                CHECK.validate_action_authorization_model(root)

            recv_path.write_text(recv_source, encoding="utf-8")
            workflow_path = root / ".github/workflows/rust.yml"
            workflow = workflow_path.read_text(encoding="utf-8")
            invocation = (
                "run: nix develop --command bash "
                "scripts/check-fv-specification-evidence.sh"
            )
            self.assertIn(invocation, workflow)
            workflow_path.write_text(
                workflow.replace(
                    invocation,
                    "run: echo skipped-fv-evidence",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "Rust CI FV evidence execution",
            ):
                CHECK.validate_action_authorization_model(root)

    def test_deployed_transaction_bridge_detachment_fails_closed(
        self,
    ) -> None:
        relatives = {
            path
            for path, _ in CHECK.REFINEMENT_CONSEQUENCES.values()
        }
        relatives.update(
            path
            for path, _ in (
                CHECK.DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES.values()
            )
        )
        relatives.update(
            path
            for path, _ in (
                CHECK.GENERATED_TRANSACTION_REFINEMENT_ROOTS.values()
            )
        )
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative in relatives:
                destination = root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative, destination)
            CHECK.validate_transaction_acceptance_bridges(root)

            transfer_relative = (
                CHECK.DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES[
                    "transfer"
                ][0]
            )
            transfer = root / transfer_relative
            source = transfer.read_text(encoding="utf-8")
            old = (
                "Deployed.Contracts.Transfer."
                "transactionAccepted_of_relationAll"
            )
            self.assertIn(old, source)
            transfer.write_text(
                source.replace(
                    old,
                    "Deployed.Contracts.Transfer."
                    "consensusAccepted_of_relationAll",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "deployed relation-to-transaction root is detached",
            ):
                CHECK.validate_transaction_acceptance_bridges(root)

    def test_reviewed_theorem_and_test_semantics_are_fingerprinted(
        self,
    ) -> None:
        value = matrix()
        tests = {
            row["id"]: row
            for rows in (
                value["tests"],
                value["runtime_policy_contract"]["tests"],
                value["property_test_contract"]["tests"],
                value["artifact_test_contract"]["tests"],
            )
            for row in rows
        }
        requirements = json.loads(
            CHECK.REQUIREMENT_SOURCE.read_text(encoding="utf-8")
        )
        source_paths = {
            row["path"]
            for row in requirements["lean_declaration_fingerprints"]
        }
        source_paths.update(
            row["path"]
            for row in requirements["test_source_fingerprints"]
        )
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            requirement_path = root / CHECK.REQUIREMENT_SOURCE.relative_to(
                ROOT
            )
            requirement_path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(CHECK.REQUIREMENT_SOURCE, requirement_path)
            for relative in source_paths:
                destination = root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative, destination)

            CHECK.validate_reviewed_evidence_fingerprints(
                root,
                requirement_path,
                tests,
            )

            theorem_relative = (
                "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
                "Contracts/Transfer/SpecificationConsequences.lean"
            )
            theorem_path = root / theorem_relative
            original_theorem_source = theorem_path.read_text(
                encoding="utf-8"
            )
            old = "(action rho).assetId ≠ 0 := by"
            self.assertIn(old, original_theorem_source)
            theorem_path.write_text(
                original_theorem_source.replace(
                    old,
                    "True := by",
                    1,
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "reviewed theorem proposition changed",
            ):
                CHECK.validate_reviewed_evidence_fingerprints(
                    root,
                    requirement_path,
                    tests,
                )

            theorem_path.write_text(
                original_theorem_source,
                encoding="utf-8",
            )
            test_relative = (
                "crates/core/component/shielded-pool/src/"
                "component/transfer.rs"
            )
            test_path = root / test_relative
            test_source = test_path.read_text(encoding="utf-8")
            start = test_source.index(
                "    #[tokio::test]\n"
                "    async fn withdrawal_check_rejects_preopen_channel()"
            )
            end = test_source.index(
                "    #[tokio::test]\n",
                start + len("    #[tokio::test]\n"),
            )
            test_path.write_text(
                test_source[:start]
                + "    #[tokio::test]\n"
                + "    async fn withdrawal_check_rejects_preopen_channel()"
                + " {}\n\n"
                + test_source[end:],
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "reviewed test source changed",
            ):
                CHECK.validate_reviewed_evidence_fingerprints(
                    root,
                    requirement_path,
                    tests,
                )

    def test_state_predicates_cannot_fall_back_to_opaque_external_facts(
        self,
    ) -> None:
        value = matrix()
        application, _, _ = application_for(
            value, "EXT-ANCHOR-LIVENESS", "transfer"
        )
        application["formal_fact_ids"] = [
            "Transfer.ConsensusExternalFacts.registryWellFormed"
        ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "must be exactly the concrete typed ConsensusTransition fact",
        ):
            validate(value)

    def test_transaction_predicate_cannot_use_action_transition_fact(
        self,
    ) -> None:
        value = matrix()
        application, _, _ = application_for(
            value,
            "EXT-OUTPUT-PERSISTENCE",
            "transfer",
        )
        action_fact = "Transfer.ConsensusExternalFacts.transition"
        application["formal_fact_ids"] = [action_fact]
        application["semantic_contract"]["bound_variables"] = [action_fact]
        application["semantic_contract"]["evidence_removal"]["targets"] = [
            action_fact
        ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "transaction evidence must be exactly",
        ):
            validate(value)

    def test_shared_transition_is_not_predicate_specific_semantic_evidence(
        self,
    ) -> None:
        validated = validate(matrix())
        for profile, predicate_id in (
            ("note_reshape8x1", "EXT-TRANSACTION-EFFECTS-ATOMICITY"),
            (
                "shielded_ics20_withdrawal",
                "EXT-WITHDRAWAL-ACTION-ATOMICITY",
            ),
            (
                "shielded_ics20_withdrawal",
                "EXT-WITHDRAWAL-STATE-TRANSITION",
            ),
        ):
            with self.subTest(profile=profile, predicate=predicate_id):
                applicable = deepcopy(validated["applicable"])
                applicable[(profile, predicate_id)]["test_ids"] = (
                    "CIRCUIT-FAMILY-VALID",
                )
                deficits = CHECK.predicate_specific_semantic_deficits(
                    validated["predicates"],
                    validated["requirements"],
                    applicable,
                    validated["tests"],
                )
                self.assertIn(f"{profile}/{predicate_id}", deficits)

    def test_transaction_claim_requires_its_exact_semantic_test(self) -> None:
        validated = validate(matrix())
        applicable = deepcopy(validated["applicable"])
        key = ("note_reshape8x1", "EXT-TRANSACTION-EFFECTS-ATOMICITY")
        # This is a focused, non-generic state test, but it says nothing about
        # enclosing-transaction rollback and therefore cannot close the atom.
        applicable[key]["test_ids"] = ("PROOF-BOUND-OUTPUT-PERSISTENCE",)
        deficits = CHECK.predicate_specific_semantic_deficits(
            validated["predicates"],
            validated["requirements"],
            applicable,
            validated["tests"],
        )
        self.assertIn("/".join(key), deficits)

        applicable = deepcopy(validated["applicable"])
        binding_key = (
            "note_reshape8x1",
            "EXT-TRANSACTION-BINDING-SIGNATURE",
        )
        # An unrelated identity attack cannot replace the exact aggregate-BvK
        # permutation and proof-bearing construction regressions.
        applicable[binding_key]["test_ids"] = (
            "NOTE-RESHAPE-IDENTITY-OWNERSHIP-ATTACK",
        )
        deficits = CHECK.predicate_specific_semantic_deficits(
            validated["predicates"],
            validated["requirements"],
            applicable,
            validated["tests"],
        )
        self.assertIn("/".join(binding_key), deficits)

        applicable = deepcopy(validated["applicable"])
        application = applicable[key]
        application["test_ids"] = tuple(
            test_id
            for test_id in application["test_ids"]
            if test_id != "TRANSACTION-DEFERRED-INDEX-ROLLBACK"
        )
        deficits = CHECK.predicate_specific_semantic_deficits(
            validated["predicates"],
            validated["requirements"],
            applicable,
            validated["tests"],
        )
        self.assertIn("/".join(key), deficits)

        withdrawal_key = (
            "shielded_ics20_withdrawal",
            "EXT-WITHDRAWAL-ACTION-ATOMICITY",
        )
        applicable = deepcopy(validated["applicable"])
        application = applicable[withdrawal_key]
        application["test_ids"] = tuple(
            test_id
            for test_id in application["test_ids"]
            if test_id != "WITHDRAWAL-DEFERRED-INDEX-ROLLBACK"
        )
        deficits = CHECK.predicate_specific_semantic_deficits(
            validated["predicates"],
            validated["requirements"],
            applicable,
            validated["tests"],
        )
        self.assertIn("/".join(withdrawal_key), deficits)

    def test_rejection_rollback_is_runtime_only_evidence(self) -> None:
        for predicate_id in (
            "EXT-TRANSACTION-EFFECTS-ATOMICITY",
            "EXT-WITHDRAWAL-ACTION-ATOMICITY",
        ):
            for symbols in CHECK.STATE_SEMANTIC_CONSEQUENCES[
                predicate_id
            ].values():
                self.assertFalse(
                    any(
                        "rejectedTransactionPreserves" in symbol
                        for symbol in symbols
                    ),
                    predicate_id,
                )

    def test_action_local_output_evidence_cannot_close_transaction_persistence(
        self,
    ) -> None:
        validated = validate(matrix())
        applicable = deepcopy(validated["applicable"])
        key = ("transfer", "EXT-OUTPUT-PERSISTENCE")
        application = applicable[key]
        application["consequence_pairs"] = (
            (
                "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                "Transfer/Semantics.lean",
                "theorem successfulActionPersistsExactOutputs",
            ),
        )
        # Even a focused action-level persistence test cannot substitute for
        # a theorem about the committed transaction's durable final state.
        application["test_ids"] = ("PROOF-BOUND-OUTPUT-PERSISTENCE",)
        deficits = CHECK.predicate_specific_semantic_deficits(
            validated["predicates"],
            validated["requirements"],
            applicable,
            validated["tests"],
        )
        self.assertIn("/".join(key), deficits)

    def test_generated_consequence_roster_is_exact_and_independent(
        self,
    ) -> None:
        validated = validate(matrix())
        expected = CHECK.expected_generated_consequence_applications(
            validated["predicates"],
            validated["requirements"],
            validated["applicable"],
            validated["tests"],
        )
        self.assertEqual(
            set(CHECK.GENERATED_CONSEQUENCE_PAIRS),
            expected,
        )
        self.assertEqual(len(expected), 142)
        self.assertEqual(
            {
                profile: sum(
                    candidate_profile == profile
                    for candidate_profile, _ in expected
                )
                for profile in CHECK.ALL_PROFILES
            },
            CHECK.EXPECTED_CONSEQUENCE_ROSTER_COUNTS,
        )

    def test_generated_consequence_roster_mutation_fails_closed(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "roster.json"
            value = json.loads(
                CHECK.CONSEQUENCE_ROSTER.read_text(encoding="utf-8")
            )
            value["profiles"][0]["consequences"][0][1] = (
                "theorem specification_unrelated"
            )
            path.write_text(
                json.dumps(value, indent=2, ensure_ascii=False) + "\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "reviewed predicate consequence roster changed",
            ):
                CHECK.validate_consequence_roster(path)

    def test_generated_consequence_roster_counts_fail_closed(self) -> None:
        original = json.loads(
            CHECK.CONSEQUENCE_ROSTER.read_text(encoding="utf-8")
        )

        def remove_atom(value: dict[str, object]) -> None:
            value["profiles"][0]["consequences"].pop()

        def add_atom(value: dict[str, object]) -> None:
            consequences = value["profiles"][0]["consequences"]
            consequences.append(
                [
                    "ZZZ-UNREVIEWED-ATOM",
                    "theorem specification_zzz_unreviewed_atom",
                ]
            )
            consequences.sort(key=lambda item: item[0])

        def redistribute_atom(value: dict[str, object]) -> None:
            source = next(
                profile
                for profile in value["profiles"]
                if profile["profile"] == "transfer"
            )
            target = next(
                profile
                for profile in value["profiles"]
                if profile["profile"] == "note_reshape1x8"
            )
            moved = next(
                consequence
                for consequence in source["consequences"]
                if consequence[0] == "ASSET-PARAMETERS-HASH"
            )
            source["consequences"].remove(moved)
            target["consequences"].append(moved)
            target["consequences"].sort(key=lambda item: item[0])

        for label, mutate in (
            ("remove", remove_atom),
            ("add", add_atom),
            ("redistribute", redistribute_atom),
        ):
            with self.subTest(label=label), tempfile.TemporaryDirectory() as directory:
                path = Path(directory) / "roster.json"
                value = deepcopy(original)
                mutate(value)
                encoded = (
                    json.dumps(value, indent=2, ensure_ascii=False) + "\n"
                ).encode()
                path.write_bytes(encoded)
                with (
                    patch.object(
                        CHECK,
                        "CONSEQUENCE_ROSTER_SHA256",
                        hashlib.sha256(encoded).hexdigest(),
                    ),
                    self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "consequence roster count drifted",
                    ),
                ):
                    CHECK.validate_consequence_roster(path)

    def test_removing_generated_atom_theorem_reopens_its_claim(self) -> None:
        validated = validate(matrix())
        applicable = deepcopy(validated["applicable"])
        key = ("transfer", "ASSET-ID-NONZERO")
        generated = CHECK.GENERATED_CONSEQUENCE_PAIRS[key]
        application = applicable[key]
        application["consequence_pairs"] = tuple(
            pair
            for pair in application["consequence_pairs"]
            if pair != generated
        )
        deficits = CHECK.predicate_specific_semantic_deficits(
            validated["predicates"],
            validated["requirements"],
            applicable,
            validated["tests"],
        )
        self.assertIn("/".join(key), deficits)

    def test_transaction_protocol_theorems_without_deployed_bridge_stay_open(
        self,
    ) -> None:
        validated = validate(matrix())
        with patch.dict(
            CHECK.DEPLOYED_TRANSACTION_ACCEPTANCE_CONSEQUENCES,
            {},
            clear=True,
        ):
            deficits = CHECK.predicate_specific_semantic_deficits(
                validated["predicates"],
                validated["requirements"],
                validated["applicable"],
                validated["tests"],
            )
        for profile in CHECK.ALL_PROFILES:
            for predicate_id in CHECK.TRANSACTION_LEVEL_PREDICATES:
                if profile in CHECK.PREDICATE_BASELINE[predicate_id][1]:
                    self.assertIn(f"{profile}/{predicate_id}", deficits)

    def test_construction_claims_cannot_enter_consensus_acceptance(
        self,
    ) -> None:
        value = matrix()
        row = predicate(value, "EXT-OUTGOING-VIEW-BINDING")
        row["placement"] = "external_acceptance"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "placement .* != reviewed",
        ):
            validate(value)

        value = matrix()
        row = predicate(value, "EXT-OUTGOING-VIEW-BINDING")
        row["applications"][0]["consequence_evidence"] = [
            {
                "path": (
                    "tools/gnark/lean/ShielddGnarkFormal/Protocol/"
                    "NoteReshape/Refinement.lean"
                ),
                "symbols": [
                    "theorem consensusAccepted_of_circuitFacts"
                ],
            }
        ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "consequence theorem join drifted",
        ):
            validate(value)

    def test_strict_json_rejects_duplicate_keys_and_noncanonical_aliases(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "matrix.json"
            cases = (
                ('{"schema": 1, "schema": 2}\n', "duplicate JSON key"),
                ('{"schema": 1e10000}\n', "non-finite JSON number"),
                (
                    '{"schema": "\\ud800"}\n',
                    "unpaired Unicode surrogate",
                ),
            )
            for source, message in cases:
                with self.subTest(message=message):
                    path.write_text(source, encoding="utf-8")
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        message,
                    ):
                        CHECK.load_strict_json(
                            path, "test", canonical=True
                        )

    def test_test_evidence_requires_a_live_unignored_declaration(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            rust = root / "test.rs"
            rust.write_text(
                "#[test]\nfn exact_evidence() {}\n",
                encoding="utf-8",
            )
            CHECK.require_runnable_test_declaration(
                rust, "exact_evidence", "fixture"
            )

            for source, error in (
                (
                    "// #[test]\n// fn exact_evidence() {}\n",
                    "concrete Rust test declaration",
                ),
                (
                    "#[test]\n#[ignore]\nfn exact_evidence() {}\n",
                    "ignored",
                ),
                (
                    '#[test]\n#[ignore = "manual fixture writer"]\n'
                    "fn exact_evidence() {}\n",
                    "ignored",
                ),
                (
                    "#[test]\n#[ignore(reason = \"slow\")]\n"
                    "fn exact_evidence() {}\n",
                    "ignored",
                ),
                (
                    "#[test]\n#[ignore(\nreason = \"slow\"\n)]\n"
                    "fn exact_evidence() {}\n",
                    "ignored",
                ),
                (
                    "#[test]\n#[qualified::ignore]\n"
                    "fn exact_evidence() {}\n",
                    "ignored",
                ),
                (
                    '#[cfg(feature = "optional")]\n#[test]\n'
                    "fn exact_evidence() {}\n",
                    "feature-gated",
                ),
                (
                    '#[cfg(\nfeature = "optional"\n)]\n#[test]\n'
                    "fn exact_evidence() {}\n",
                    "feature-gated",
                ),
                (
                    '#![cfg(feature = "optional")]\n'
                    "#[test]\nfn exact_evidence() {}\n",
                    "feature-gated",
                ),
                (
                    '#[cfg(all(test, feature = "optional"))]\n'
                    "mod tests {\n"
                    "    #[test]\n"
                    "    fn exact_evidence() {}\n"
                    "}\n",
                    "feature-gated",
                ),
                (
                    "mod tests {\n"
                    '    #![cfg(feature = "optional")]\n'
                    "    #[test]\n"
                    "    fn exact_evidence() {}\n"
                    "}\n",
                    "feature-gated",
                ),
                (
                    "#[test]\nfn renamed_evidence() {}\n",
                    "concrete Rust test declaration",
                ),
                (
                    'const DEAD: &str = "#[test]\\nfn exact_evidence() {}";\n',
                    "concrete Rust test declaration",
                ),
            ):
                with self.subTest(source=source):
                    rust.write_text(source, encoding="utf-8")
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError, error
                    ):
                        CHECK.require_runnable_test_declaration(
                            rust, "exact_evidence", "fixture"
                        )

    def test_rust_test_census_handles_ignore_and_cfg_forms(self) -> None:
        source = (
            "#[test]\nfn normal() {}\n"
            '#[cfg(feature = "optional")]\n#[test]\nfn feature_gated() {}\n'
            "#[tokio::test(\nflavor = \"current_thread\"\n)]\n"
            "async fn multiline_tokio() {}\n"
            "#[cfg(\nfeature = \"multiline\"\n)]\n"
            "#[test]\nfn multiline_feature() {}\n"
            "#[cfg(any(unix, windows))] #[test]\n"
            "fn same_line_attributes() {}\n"
            "# [test]\nfn spaced_attribute() {}\n"
            "#[test]\n#[ignore]\nfn bare_ignored() {}\n"
            '#[test]\n#[ignore = "fixture writer"]\n'
            "fn reason_ignored() {}\n"
            "#[test]\n#[ignore(reason = \"slow\")]\n"
            "fn called_ignored() {}\n"
            "#[test]\n#[ignore(\nreason = \"slow\"\n)]\n"
            "fn multiline_called_ignored() {}\n"
            "#[test]\n#[qualified::ignore]\n"
            "fn qualified_ignored() {}\n"
            "const SHADOW: &str = r###\"#[test]\\nfn shadow() { }\"###;\n"
            "/* #[test]\nfn commented_shadow() {} */\n"
            "#[test]\nfn literal_braces() {\n"
            "  let _ = r#\"} fn raw_shadow() {\"#;\n"
            "  let _ = '{';\n"
            "}\n"
        )
        self.assertEqual(
            CHECK._runnable_rust_test_symbols(source),
            {
                "feature_gated",
                "literal_braces",
                "multiline_feature",
                "multiline_tokio",
                "normal",
                "same_line_attributes",
                "spaced_attribute",
            },
        )

    def test_test_rows_fail_closed_on_execution_and_scope_drift(self) -> None:
        value = matrix()
        value["tests"][0]["execution"]["selector"] = "renamed"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "execution command drifted",
        ):
            validate(value)

        value = matrix()
        transfer_test = next(
            row
            for row in value["tests"]
            if row["id"] == "TRANSFER-SPEND-AUTH-REJECT"
        )
        transfer_test["profiles"].append("note_reshape8x1")
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "test claim/application join drifted",
        ):
            validate(value)

        value = matrix()
        value["tests"][0]["predicate_ids"].append(
            "EXT-SPEND-AUTH-SIGNATURE"
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "cannot mix predicate placements",
        ):
            validate(value)

    def test_property_contract_is_exact_real_and_profile_complete(self) -> None:
        value = matrix()
        predicate(value, "NOTE-SPEND-NULLIFIER-DERIVATION")[
            "security_objectives"
        ].remove("NO-DOUBLE-SPEND")
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exact real-property objective join drifted",
        ):
            validate(value)

    def test_proof_acceptance_surface_is_exact_and_closed(self) -> None:
        value = matrix()
        value["proof_acceptance_surface"]["production_sinks"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "code-owned proof acceptance surface drifted",
        ):
            validate(value)

        value = matrix()
        value["proof_acceptance_surface"]["nonproduction_exclusions"][0][
            "reason"
        ] += " mutated"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "code-owned proof acceptance surface drifted",
        ):
            validate(value)

    def test_repository_proof_surface_rejects_direct_verify_and_cfg_drift(
        self,
    ) -> None:
        cases = (
            (
                "aggregate consensus wire bridge",
                "crates/crypto/proof-aggregation/src/bundle.rs",
                "impl From<AggregateBundle> for pb::AggregateBundle",
                "impl From<AggregateBundle> for pb::Action",
                "lacks its consensus wire bridge",
            ),
            (
                "production verifier downgrade",
                "crates/core/app/src/app/mod.rs",
                (
                    "batch::verify_each_with_capabilities(\n"
                    "                        key,\n"
                    "                        items.into_iter().map(Arc::new).collect(),\n"
                    "                    )"
                ),
                "batch::batch_verify(key.bundled_pvk(), &[])",
                "independent deployed-family verification|legacy batch_verify",
            ),
            (
                "benchmark cfg escape",
                "crates/core/app/src/app/mod.rs",
                (
                    '#[cfg(any(test, feature = "benchmark-helpers"))]\n'
                    "    pub async fn "
                    "build_tx_artifacts_extracted_for_stage_public"
                ),
                (
                    "    pub async fn "
                    "build_tx_artifacts_extracted_for_stage_public"
                ),
                "nonproduction proof-function census drifted|is not confined",
            ),
            (
                "CheckTx size guard",
                "crates/core/app/src/app/mod.rs",
                (
                    "anyhow::ensure!(\n"
                    "            transaction_size_allowed("
                    "tx_bytes.len()),"
                ),
                "anyhow::ensure!(\n            true,",
                "CheckTx size and cache boundary",
            ),
            (
                "cache entry-count bound",
                "crates/core/app/src/stateless_cache.rs",
                "inner.map.len() >= self.max_entries\n            || ",
                "",
                "bounded stateless cache",
            ),
            (
                "wire aggregate action",
                (
                    "proto/shieldd/shieldd/core/transaction/v1/"
                    "transaction.proto"
                ),
                "    AggregateBundle aggregate_bundle = 82;",
                "    reserved 82;",
                "omits aggregate consensus transport tag 82",
            ),
            (
                "production aggregation proto dependency",
                "crates/crypto/proof-aggregation/Cargo.toml",
                (
                    "shieldd-sdk-proto = { workspace = true, "
                    "default-features = true }"
                ),
                "",
                "omits the consensus proto dependency",
            ),
            (
                "production aggregation resolved package census",
                "Cargo.lock",
                (
                    'name = "shieldd-sdk-proof-aggregation"\n'
                    'version = "2.1.0"'
                ),
                (
                    'name = "shieldd-sdk-proof-aggregation-without-proto"\n'
                    'version = "2.1.0"'
                ),
                "exactly one production aggregation package entry",
            ),
            (
                "lossy family-only conversion",
                "crates/crypto/proof-aggregation/src/bundle.rs",
                "impl DomainType for AggregateBundle {",
                (
                    "impl TryFrom<i32> for ProofFamilyId {\n"
                    "    type Error = anyhow::Error;\n"
                    "    fn try_from(_: i32) -> Result<Self> { "
                    "Ok(Self::Transfer) }\n"
                    "}\n\n"
                    "impl DomainType for AggregateBundle {"
                ),
                "has a lossy family-only conversion",
            ),
            (
                "external enforcement map downgrade",
                (
                    "crates/core/component/shielded-pool/formal/"
                    "external-check-map.md"
                ),
                "batch::verify_each_with_capabilities",
                "batch::batch_verify",
                "enforcement map is stale",
            ),
        )
        for label, relative, old, new, error_pattern in cases:
            with self.subTest(
                label=label
            ), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                copy_repository_surface(root)
                path = root / relative
                source = path.read_text(encoding="utf-8")
                self.assertIn(old, source)
                path.write_text(
                    source.replace(old, new, 1),
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    error_pattern,
                ):
                    CHECK.validate_proof_acceptance_repository_surface(root)

    def test_repository_frontdoor_and_mutation_censuses_fail_closed(
        self,
    ) -> None:
        cases = (
            (
                "host transaction wrapper",
                "crates/core/app/src/app/host.rs",
                "    pub fn phase(&self) -> HostExecutionPhase {",
                (
                    "    pub async fn unchecked_tx_wrapper("
                    "&self, tx_bytes: &[u8]) -> anyhow::Result<HostTxResponse> { "
                    "self.check_tx(tx_bytes).await }\n\n"
                    "    pub fn phase(&self) -> HostExecutionPhase {"
                ),
                "HostExecution public method census drifted",
            ),
            (
                "gRPC transaction redirect",
                "crates/bin/shieldd/src/grpc.rs",
                ".check_tx(request.into_inner())",
                ".deliver_tx(request.into_inner())",
                "gRPC check_tx ExecutionService delegation",
            ),
            (
                "split ABCI cache",
                "crates/core/app/src/server.rs",
                "Mempool::new(storage, stateless_cache, queue).run().await",
                (
                    "Mempool::new(storage, Arc::new(StatelessCache::new()), "
                    "queue).run().await"
                ),
                "deployed ABCI shared-cache wiring",
            ),
            (
                "new benchmark-only function",
                "crates/core/app/src/app/mod.rs",
                "impl App {",
                (
                    "impl App {\n"
                    "    #[cfg(any(test, feature = \"benchmark-helpers\"))]\n"
                    "    fn unreviewed_benchmark_acceptance_path() {}\n"
                ),
                "nonproduction proof-function census drifted",
            ),
            (
                "fee funding direct stateless bypass",
                "crates/core/app/src/action_handler/transaction.rs",
                "Action::Transfer(fee_funding.transfer.clone())\n"
                "                .check_stateless(context)",
                "fee_funding.transfer.check_stateless(context)",
                "Transaction stateless join",
            ),
            (
                "deployed benchmark feature",
                "crates/bin/shieldd/Cargo.toml",
                'features = ["parallel"]',
                'features = ["parallel", "benchmark-helpers"]',
                "shieldd-sdk-app feature roster drifted",
            ),
        )
        for label, relative, old, new, error in cases:
            with self.subTest(
                label=label
            ), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                copy_repository_surface(root)
                path = root / relative
                source = path.read_text(encoding="utf-8")
                self.assertIn(old, source)
                path.write_text(source.replace(old, new, 1), encoding="utf-8")
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    error,
                ):
                    CHECK.validate_proof_acceptance_repository_surface(root)

    def test_runtime_architecture_source_mutations_fail_closed(self) -> None:
        cases = (
            (
                "independent verifier stops before drain",
                "crates/core/app/src/app/mod.rs",
                (
                    "drain_joinset_results("
                    "&mut tasks, \"independent proof verification task panicked\")"
                ),
                "return Err(anyhow::anyhow!(\"stop before draining tasks\"))",
                "independent deployed-family verification|structured drain",
            ),
            (
                "production independent verifier downgraded",
                "crates/core/app/src/app/mod.rs",
                (
                    "batch::verify_each_with_capabilities(\n"
                    "                        key,\n"
                    "                        items.into_iter().map(Arc::new).collect(),\n"
                    "                    )"
                ),
                "batch::batch_verify(key.bundled_pvk(), &[])?; Ok(Vec::new())",
                "independent deployed-family verification|legacy batch_verify",
            ),
            (
                "capability attachment binding removed",
                "crates/core/app/src/app/mod.rs",
                (
                    "VerifiedTxArtifact::take_family_capabilities("
                    "artifact, &mut capabilities)"
                ),
                "VerifiedTxArtifact::new(artifact, Vec::new())",
                "verified capability attachment",
            ),
            (
                "ProcessProposal cache downgrade removed",
                "crates/core/app/src/app/mod.rs",
                (
                    "UserTxData::VerifiedArtifact(artifact) => "
                    "Some(artifact.extracted()),"
                ),
                "panic!(\"skip independent verification\")",
                "mandatory cache re-verification",
            ),
            (
                "ProcessProposal verification removed",
                "crates/core/app/src/app/mod.rs",
                (
                    "aggregate_verify_task = Some(tokio::task::spawn(async move {\n"
                    "                    Self::verify_aggregate_bundle_for_artifacts("
                ),
                (
                    "aggregate_verify_task = Some(tokio::task::spawn(async move {\n"
                    "                    Ok(Vec::new()) /* verification removed */;\n"
                    "                    Self::verify_aggregate_bundle_for_artifacts_removed("
                ),
                "ProcessProposal exact-proof acceptance",
            ),
            (
                "PrepareProposal promotes before verification",
                "crates/core/app/src/app/mod.rs",
                "let artifact_fill_start = Instant::now();",
                (
                    "let artifact_fill_start = Instant::now();\n"
                    "            if let Some(cache) = stateless_cache {\n"
                    "                cache.insert_fully_verified(\n"
                    "                    deduped[0].bytes.as_ref(),\n"
                    "                    panic!(\"unverified\"),\n"
                    "                )?;\n"
                    "            }"
                ),
                "cache promotion can precede verification",
            ),
            (
                "fee-funding capability slot detached",
                "crates/core/app/src/action_handler/transaction.rs",
                "artifact.proof_for_slot(ProofSlot::FeeFunding)?",
                "artifact.proof_for_slot(ProofSlot::BodyAction(0))?",
                "fee-funding capability consumption|capability-gated",
            ),
            (
                "artifact capability binding neutralized",
                "crates/core/app/src/stateless_cache.rs",
                (
                    "ensure_binds(capability, location.key, "
                    "extracted.proof_item_at(location)?)"
                ),
                "let _ = (capability, location.key, extracted.proof_item_at(location)?)",
                "verified artifact capability",
            ),
            (
                "Groth16 primitive bypassed",
                "crates/crypto/proof-params/src/batch.rs",
                (
                    "Groth16::<Bls12_377, "
                    "LibsnarkReduction>::verify_with_processed_vk("
                ),
                (
                    "Groth16::<Bls12_377, "
                    "LibsnarkReduction>::verify_bypassed("
                ),
                "independent Groth16 verifier",
            ),
            (
                "fee-funding nullifier count removed",
                "crates/core/transaction/src/transaction.rs",
                "fee_funding.transfer.body.inputs.len()",
                "0usize",
                "canonical spent-nullifier count",
            ),
        )
        for label, relative, old, new, error_pattern in cases:
            with self.subTest(
                label=label
            ), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                copy_repository_surface(root)
                path = root / relative
                source = path.read_text(encoding="utf-8")
                self.assertIn(old, source)
                path.write_text(
                    source.replace(old, new, 1),
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    error_pattern,
                ):
                    CHECK.validate_proof_acceptance_repository_surface(root)

    def test_stateless_cache_architecture_mutations_fail_closed(self) -> None:
        cases = (
            (
                "raw-byte equality removed",
                "value.raw_tx.as_ref() != raw_tx",
                "false",
                "raw-byte-bound cache lookup",
            ),
            (
                "private insertion escape",
                "    fn insert(&self, raw_tx: &[u8], entry: CacheEntry)",
                (
                    "    pub(crate) fn insert("
                    "&self, raw_tx: &[u8], entry: CacheEntry)"
                ),
                "raw insertion escaped",
            ),
            (
                "artifact association removed",
                (
                    "Self::ensure_artifact_matches_raw("
                    "raw_tx, artifact.tx.as_ref())?;"
                ),
                "let _ = (raw_tx, &artifact);",
                "raw-byte-bound cache promotion",
            ),
            (
                "unreviewed promotion method",
                "    #[cfg(test)]\n    fn retained",
                (
                    "    fn promote_unreviewed(&self, raw_tx: &[u8]) {\n"
                    "        let _ = self.insert_invalid(raw_tx);\n"
                    "    }\n\n"
                    "    #[cfg(test)]\n"
                    "    fn retained"
                ),
                "production API census drifted",
            ),
            (
                "constructor limit wiring",
                (
                    "MAX_RETAINED_RAW_TX_BYTES,\n"
                    "            MAX_CACHEABLE_RAW_TX_BYTES,"
                ),
                (
                    "MAX_CACHEABLE_RAW_TX_BYTES,\n"
                    "            MAX_RETAINED_RAW_TX_BYTES,"
                ),
                "constructor fixed limit wiring",
            ),
            (
                "verified constructor visibility",
                (
                    "    pub(crate) fn new(\n"
                    "        extracted: Arc<TxArtifact>,"
                ),
                (
                    "    pub fn new(\n"
                    "        extracted: Arc<TxArtifact>,"
                ),
                "verified artifact constructor escaped",
            ),
            (
                "proof location key detached",
                "    pub key: DeployedProofKey,",
                "    pub key: usize,",
                "lacks exact proof identity",
            ),
        )
        for label, old, new, error_pattern in cases:
            with self.subTest(
                label=label
            ), tempfile.TemporaryDirectory() as directory:
                root = Path(directory)
                copy_repository_surface(root)
                path = root / "crates/core/app/src/stateless_cache.rs"
                source = path.read_text(encoding="utf-8")
                self.assertIn(old, source)
                path.write_text(
                    source.replace(old, new, 1),
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    error_pattern,
                ):
                    CHECK.validate_proof_acceptance_repository_surface(root)

    def test_runtime_policy_contract_is_independently_pinned(self) -> None:
        contract = GENERATE.runtime_policy_contract()
        self.assertEqual(
            CHECK.runtime_policy_contract_digest(contract),
            CHECK.RUNTIME_POLICY_CONTRACT_SHA256,
        )
        CHECK.validate_runtime_policy_contract(
            ROOT,
            contract,
            repository_sources=False,
        )

        statement_mutation = deepcopy(contract)
        statement_mutation["policies"][0]["statement"] += " mutated"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "including normative statements",
        ):
            CHECK.validate_runtime_policy_contract(
                ROOT,
                statement_mutation,
                repository_sources=False,
            )

        for policy_id in sorted(CHECK.RUNTIME_POLICY_BASELINE):
            with self.subTest(policy_id=policy_id):
                parameter_mutation = deepcopy(contract)
                policy = next(
                    row
                    for row in parameter_mutation["policies"]
                    if row["id"] == policy_id
                )
                parameter = next(iter(policy["parameters"]))
                policy["parameters"][parameter] += 1
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "runtime policy drifted from the independent baseline",
                ):
                    CHECK.validate_runtime_policy_contract(
                        ROOT,
                        parameter_mutation,
                        repository_sources=False,
                    )

        empty_evidence = deepcopy(contract)
        empty_evidence["policies"][0]["test_ids"] = []
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "test_ids must be a non-empty array",
        ):
            CHECK.validate_runtime_policy_contract(
                ROOT,
                empty_evidence,
                repository_sources=False,
            )

        missing_policy = deepcopy(contract)
        missing_policy["policies"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "runtime policy census drifted",
        ):
            CHECK.validate_runtime_policy_contract(
                ROOT,
                missing_policy,
                repository_sources=False,
            )

        missing_test = deepcopy(contract)
        missing_test["tests"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "unknown runtime tests|test ownership is incomplete",
        ):
            CHECK.validate_runtime_policy_contract(
                ROOT,
                missing_test,
                repository_sources=False,
            )

    def test_property_and_artifact_test_contracts_are_closed_and_pinned(
        self,
    ) -> None:
        contracts = (
            (
                "property test contract",
                "PROPERTY",
                GENERATE.property_test_contract(),
                CHECK.PROPERTY_TEST_CONTRACT_BASELINE,
                CHECK.PROPERTY_TEST_SOURCE_CENSUS,
                CHECK.PROPERTY_TEST_CONTRACT_SHA256,
            ),
            (
                "artifact test contract",
                "ARTIFACT",
                GENERATE.artifact_test_contract(),
                CHECK.ARTIFACT_TEST_CONTRACT_BASELINE,
                CHECK.ARTIFACT_TEST_SOURCE_CENSUS,
                CHECK.ARTIFACT_TEST_CONTRACT_SHA256,
            ),
        )
        for (
            label,
            prefix,
            contract,
            owner_baseline,
            source_baseline,
            digest_baseline,
        ) in contracts:
            with self.subTest(label=label):
                self.assertEqual(
                    CHECK.owned_test_contract_digest(contract),
                    digest_baseline,
                )
                CHECK.validate_owned_test_contract(
                    ROOT,
                    contract,
                    label=label,
                    test_id_prefix=prefix,
                    owner_baseline=owner_baseline,
                    source_baseline=source_baseline,
                    digest_baseline=digest_baseline,
                    repository_sources=True,
                )

                source_mutation = deepcopy(contract)
                source_mutation["source_census"].pop()
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "source census drifted",
                ):
                    CHECK.validate_owned_test_contract(
                        ROOT,
                        source_mutation,
                        label=label,
                        test_id_prefix=prefix,
                        owner_baseline=owner_baseline,
                        source_baseline=source_baseline,
                        digest_baseline=digest_baseline,
                        repository_sources=False,
                    )

                owner_mutation = deepcopy(contract)
                owner_mutation["owners"][0]["test_ids"].pop()
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "ownership drifted",
                ):
                    CHECK.validate_owned_test_contract(
                        ROOT,
                        owner_mutation,
                        label=label,
                        test_id_prefix=prefix,
                        owner_baseline=owner_baseline,
                        source_baseline=source_baseline,
                        digest_baseline=digest_baseline,
                        repository_sources=False,
                    )

                test_mutation = deepcopy(contract)
                removed = test_mutation["tests"].pop()
                for owner in test_mutation["owners"]:
                    if removed["id"] in owner["test_ids"]:
                        owner["test_ids"].remove(removed["id"])
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "ownership drifted|drifted \\(expected=",
                ):
                    CHECK.validate_owned_test_contract(
                        ROOT,
                        test_mutation,
                        label=label,
                        test_id_prefix=prefix,
                        owner_baseline=owner_baseline,
                        source_baseline=source_baseline,
                        digest_baseline=digest_baseline,
                        repository_sources=False,
                    )

    def test_property_and_artifact_source_censuses_reject_new_tests(
        self,
    ) -> None:
        value = matrix()
        tests = {
            row["id"]: row for row in CHECK.execution_tests(value)
        }
        cases = (
            (
                "property test contract",
                "crates/core/component/shielded-pool/src/gnark/binary.rs",
                "\n#[test]\nfn uncensused_property_regression() {}\n",
            ),
            (
                "property test contract",
                "tools/gnark/internal/abi/binary_shared_test.go",
                (
                    "\nfunc TestUncensusedPropertyRegression("
                    "t *testing.T) {}\n"
                ),
            ),
            (
                "artifact test contract",
                "crates/crypto/proof-params/src/lib.rs",
                "\n#[test]\nfn uncensused_artifact_regression() {}\n",
            ),
            (
                "artifact test contract",
                "tools/gnark/internal/artifacts/json_test.go",
                (
                    "\nfunc TestUncensusedArtifactRegression("
                    "t *testing.T) {}\n"
                ),
            ),
        )
        for label, relative, addition in cases:
            with self.subTest(relative=relative):
                with tempfile.TemporaryDirectory() as directory:
                    root = Path(directory)
                    path = root / relative
                    path.parent.mkdir(parents=True, exist_ok=True)
                    shutil.copyfile(ROOT / relative, path)
                    path.write_text(
                        path.read_text(encoding="utf-8") + addition,
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "source census drifted",
                    ):
                        CHECK.validate_closed_test_source_census(
                            root,
                            (relative,),
                            tests,
                            label,
                        )

    def test_closed_owner_censuses_accept_only_reviewed_exclusions(
        self,
    ) -> None:
        value = matrix()
        tests = {
            row["id"]: row
            for rows in (
                value["tests"],
                value["runtime_policy_contract"]["tests"],
                value["property_test_contract"]["tests"],
                value["artifact_test_contract"]["tests"],
            )
            for row in rows
        }
        exclusions = {
            (row["path"], row["symbol"])
            for row in value["reviewed_test_census"]["exclusions"]
        }
        for label, source_census in (
            ("property test contract", CHECK.PROPERTY_TEST_SOURCE_CENSUS),
            ("artifact test contract", CHECK.ARTIFACT_TEST_SOURCE_CENSUS),
        ):
            with self.subTest(label=label):
                CHECK.validate_closed_test_source_census(
                    ROOT,
                    source_census,
                    tests,
                    label,
                    allowed_exclusions=exclusions,
                )

    def test_reviewed_test_census_is_the_exact_four_ledger_union(self) -> None:
        value = matrix()
        ledger_tests = tuple(
            {row["id"]: row for row in rows}
            for rows in (
                value["tests"],
                value["runtime_policy_contract"]["tests"],
                value["property_test_contract"]["tests"],
                value["artifact_test_contract"]["tests"],
            )
        )
        validated = CHECK.validate_reviewed_test_census(
            ROOT,
            value["reviewed_test_census"],
            ledger_tests,
            repository_sources=True,
        )
        expected = {
            (row["path"], row["symbol"])
            for tests in ledger_tests
            for row in tests.values()
        }
        self.assertEqual(validated["selected"], expected)
        self.assertFalse(
            validated["selected"] & validated["exclusions"]
        )
        self.assertEqual(
            CHECK.reviewed_test_exclusions_digest(
                value["reviewed_test_census"]["exclusions"]
            ),
            CHECK.REVIEWED_TEST_EXCLUSIONS_SHA256,
        )

    def test_reviewed_test_census_mutations_fail_closed(self) -> None:
        value = matrix()
        ledger_tests = tuple(
            {row["id"]: row for row in rows}
            for rows in (
                value["tests"],
                value["runtime_policy_contract"]["tests"],
                value["property_test_contract"]["tests"],
                value["artifact_test_contract"]["tests"],
            )
        )

        missing_source = deepcopy(value["reviewed_test_census"])
        missing_source["source_census"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "source census drifted",
        ):
            CHECK.validate_reviewed_test_census(
                ROOT,
                missing_source,
                ledger_tests,
                repository_sources=False,
            )

        missing_selected = deepcopy(value["reviewed_test_census"])
        missing_selected["selected"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "four-ledger union",
        ):
            CHECK.validate_reviewed_test_census(
                ROOT,
                missing_selected,
                ledger_tests,
                repository_sources=False,
            )

        overlap = deepcopy(value["reviewed_test_census"])
        selected = overlap["selected"][0]
        overlap["exclusions"].append(
            {
                **selected,
                "reason": "supporting_regression_not_claim_evidence",
            }
        )
        overlap["exclusions"].sort(
            key=lambda row: (row["path"], row["symbol"])
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "both selected and excluded",
        ):
            CHECK.validate_reviewed_test_census(
                ROOT,
                overlap,
                ledger_tests,
                repository_sources=False,
            )

        missing_exclusion = deepcopy(value["reviewed_test_census"])
        missing_exclusion["exclusions"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exclusions drifted",
        ):
            CHECK.validate_reviewed_test_census(
                ROOT,
                missing_exclusion,
                ledger_tests,
                repository_sources=False,
            )

        unknown_reason = deepcopy(value["reviewed_test_census"])
        unknown_reason["exclusions"][0]["reason"] = "unreviewed"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "unknown typed reason",
        ):
            CHECK.validate_reviewed_test_census(
                ROOT,
                unknown_reason,
                ledger_tests,
                repository_sources=False,
            )

    def test_reviewed_test_census_allows_exclusion_only_sources(self) -> None:
        selected = {
            "SELECTED": {
                "path": "tests/selected.rs",
                "symbol": "selected",
            }
        }
        census = {
            "source_census": [
                "tests/excluded_test.go",
                "tests/other_test.go",
                "tests/selected.rs",
            ],
            "selected": [
                {
                    "path": "tests/selected.rs",
                    "symbol": "selected",
                }
            ],
            "exclusions": [
                {
                    "path": "tests/excluded_test.go",
                    "symbol": "TestExcluded",
                    "reason": (
                        "supporting_regression_not_claim_evidence"
                    ),
                },
                {
                    "path": "tests/other_test.go",
                    "symbol": "TestOther",
                    "reason": (
                        "supporting_regression_not_claim_evidence"
                    ),
                }
            ],
        }
        digest = CHECK.reviewed_test_exclusions_digest(
            census["exclusions"]
        )
        with (
            patch.object(
                CHECK,
                "REVIEWED_TEST_SOURCE_CENSUS",
                tuple(census["source_census"]),
            ),
            patch.object(
                CHECK,
                "REVIEWED_TEST_EXCLUSIONS_SHA256",
                digest,
            ),
        ):
            validated = CHECK.validate_reviewed_test_census(
                ROOT,
                census,
                (selected,),
                repository_sources=False,
            )
            self.assertEqual(
                validated["exclusions"],
                {
                    ("tests/excluded_test.go", "TestExcluded"),
                    ("tests/other_test.go", "TestOther"),
                },
            )

    def test_reviewed_test_census_allows_helper_only_test_sources(
        self,
    ) -> None:
        selected = {
            "SELECTED": {
                "path": "tests/selected.rs",
                "symbol": "selected",
            }
        }
        census = {
            "source_census": [
                "tests/excluded_test.go",
                "tests/helpers_test.go",
                "tests/selected.rs",
            ],
            "selected": [
                {
                    "path": "tests/selected.rs",
                    "symbol": "selected",
                }
            ],
            "exclusions": [
                {
                    "path": "tests/excluded_test.go",
                    "symbol": "TestExcluded",
                    "reason": (
                        "supporting_regression_not_claim_evidence"
                    ),
                }
            ],
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for relative, source in (
                (
                    "tests/selected.rs",
                    "#[test]\nfn selected() {}\n",
                ),
                (
                    "tests/excluded_test.go",
                    (
                        "package reviewed\n"
                        "func TestExcluded(t *testing.T) {}\n"
                    ),
                ),
                (
                    "tests/helpers_test.go",
                    "package reviewed\nfunc helper() {}\n",
                ),
            ):
                path = root / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(source, encoding="utf-8")
            with (
                patch.object(
                    CHECK,
                    "REVIEWED_TEST_SOURCE_CENSUS",
                    tuple(census["source_census"]),
                ),
                patch.object(
                    CHECK,
                    "REVIEWED_TEST_DISCOVERY_ROOTS",
                    (("tests", "*_test.go"),),
                ),
                patch.object(
                    CHECK,
                    "REVIEWED_TEST_EXCLUSIONS_SHA256",
                    CHECK.reviewed_test_exclusions_digest(
                        census["exclusions"]
                    ),
                ),
            ):
                CHECK.validate_reviewed_test_census(
                    root,
                    census,
                    (selected,),
                    repository_sources=True,
                )

    def test_reviewed_test_source_coverage_rejects_new_and_stale_tests(
        self,
    ) -> None:
        relative = "tests/reviewed.rs"
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / relative
            path.parent.mkdir(parents=True)
            path.write_text(
                "#[test]\nfn selected() {}\n"
                "#[test]\nfn excluded() {}\n",
                encoding="utf-8",
            )
            CHECK.validate_reviewed_test_source_coverage(
                root,
                (relative,),
                {(relative, "selected")},
                {(relative, "excluded")},
            )
            path.write_text(
                path.read_text(encoding="utf-8")
                + "#[test]\nfn undeclared() {}\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "undeclared=.*undeclared",
            ):
                CHECK.validate_reviewed_test_source_coverage(
                    root,
                    (relative,),
                    {(relative, "selected")},
                    {(relative, "excluded")},
                )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "stale=.*missing",
            ):
                CHECK.validate_reviewed_test_source_coverage(
                    root,
                    (relative,),
                    {
                        (relative, "selected"),
                        (relative, "undeclared"),
                    },
                    {
                        (relative, "excluded"),
                        (relative, "missing"),
                    },
                )

    def test_reviewed_test_security_roots_discover_every_test_file(
        self,
    ) -> None:
        self.assertEqual(
            CHECK.REVIEWED_TEST_DISCOVERY_ROOTS,
            (
                ("crates/bin/orbis-audit/src", "*.rs"),
                ("crates/bin/orbis-integration/src", "*.rs"),
                ("crates/bin/pcli/src", "*.rs"),
                ("crates/bin/pcli/tests", "*.rs"),
                ("crates/bin/pd/src", "*.rs"),
                ("crates/bin/shieldd/src", "*.rs"),
                ("crates/core/app-tests/tests", "*.rs"),
                ("crates/core/app/src", "*.rs"),
                ("crates/core/asset/src", "*.rs"),
                ("crates/core/component/compliance/src", "*.rs"),
                ("crates/core/component/governance/src", "*.rs"),
                ("crates/core/component/ibc/src", "*.rs"),
                ("crates/core/component/sct/src", "*.rs"),
                (
                    "crates/core/component/shielded-pool/src",
                    "*.rs",
                ),
                ("crates/core/component/stake/src", "*.rs"),
                ("crates/core/keys/src", "*.rs"),
                ("crates/core/num/src", "*.rs"),
                ("crates/core/transaction/src", "*.rs"),
                ("crates/core/transaction/tests", "*.rs"),
                ("crates/crypto/constraint-coverage/src", "*.rs"),
                ("crates/crypto/proof-aggregation/src", "*.rs"),
                ("crates/crypto/proof-params/src", "*.rs"),
                ("crates/crypto/tct/src", "*.rs"),
                ("crates/custody/src", "*.rs"),
                ("crates/test/mock-client/src", "*.rs"),
                ("crates/util/orbis-client/src", "*.rs"),
                ("crates/view/src", "*.rs"),
                ("tools/gnark", "*_test.go"),
            ),
        )

        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            discovery_roots = (
                ("rust", "*.rs"),
                ("tools/gnark", "*_test.go"),
            )
            sources = {
                "rust/existing.rs": "#[test]\nfn existing() {}\n",
                "rust/helper.rs": "fn helper() {}\n",
                (
                    "rust/ignored.rs"
                ): '#[test]\n#[ignore = "manual"]\nfn ignored() {}\n',
                "tools/gnark/helpers_test.go": (
                    "package reviewed\nfunc helper() {}\n"
                ),
            }
            for relative, source in sources.items():
                path = root / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(source, encoding="utf-8")
            source_census = (
                "rust/existing.rs",
                "tools/gnark/helpers_test.go",
            )

            with patch.object(
                CHECK,
                "REVIEWED_TEST_DISCOVERY_ROOTS",
                discovery_roots,
            ):
                CHECK.validate_reviewed_test_source_discovery(
                    root,
                    source_census,
                )

                new_rust = root / "rust/nested/new.rs"
                new_rust.parent.mkdir(parents=True)
                new_rust.write_text(
                    "#[test]\nfn newly_runnable() {}\n",
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "unregistered=.*new.rs",
                ):
                    CHECK.validate_reviewed_test_source_discovery(
                        root,
                        source_census,
                    )
                new_rust.unlink()

                feature_rust = root / "rust/feature.rs"
                feature_rust.write_text(
                    '#[cfg(feature = "optional")]\n'
                    "#[test]\nfn feature_only() {}\n",
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "unregistered=.*feature.rs",
                ):
                    CHECK.validate_reviewed_test_source_discovery(
                        root,
                        source_census,
                    )
                feature_rust.unlink()

                ignored_rust = root / "rust/new_ignored.rs"
                ignored_rust.write_text(
                    '#[test]\n#[ignore = "manual"]\n'
                    "fn ignored_only() {}\n",
                    encoding="utf-8",
                )
                CHECK.validate_reviewed_test_source_discovery(
                    root,
                    source_census,
                )

                new_go = root / "tools/gnark/new/helpers_test.go"
                new_go.parent.mkdir(parents=True)
                new_go.write_text(
                    "package nested\nfunc helper() {}\n",
                    encoding="utf-8",
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "unregistered=.*helpers_test.go",
                ):
                    CHECK.validate_reviewed_test_source_discovery(
                        root,
                        source_census,
                    )
                new_go.unlink()

                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "missing=.*missing.rs",
                ):
                    CHECK.validate_reviewed_test_source_discovery(
                        root,
                        (*source_census, "rust/missing.rs"),
                    )

    def test_multiline_go_test_declarations_are_in_the_census(self) -> None:
        source = (
            "func TestMultiline(\n"
            "    t *testing.T,\n"
            ") {}\n"
        )
        self.assertEqual(
            CHECK._runnable_go_test_symbols(source),
            {"TestMultiline"},
        )

    def test_reviewed_test_schema_mutations_fail_closed(self) -> None:
        schema = json.loads(
            CHECK.MATRIX_SCHEMA.read_text(encoding="utf-8")
        )
        mutations = []
        missing_contract = deepcopy(schema)
        missing_contract["required"].remove("reviewed_test_census")
        mutations.append((missing_contract, "does not require"))
        open_contract = deepcopy(schema)
        open_contract["$defs"]["reviewedTestCensus"][
            "additionalProperties"
        ] = True
        mutations.append((open_contract, "schema is not closed"))
        unknown_reason = deepcopy(schema)
        unknown_reason["$defs"]["reviewedTestExclusion"]["properties"][
            "reason"
        ]["enum"].append("unreviewed")
        mutations.append((unknown_reason, "reason vocabulary drifted"))
        for value, error in mutations:
            with self.subTest(error=error):
                with tempfile.TemporaryDirectory() as directory:
                    path = Path(directory) / "schema.json"
                    path.write_text(
                        json.dumps(value, indent=2) + "\n",
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        error,
                    ):
                        CHECK.validate_schema_source(path)

    def test_execution_plan_contains_all_four_evidence_ledgers(self) -> None:
        value = matrix()
        execution_ids = {
            row["id"] for row in CHECK.execution_tests(value)
        }
        expected = {
            row["id"]
            for row in (
                *value["tests"],
                *value["runtime_policy_contract"]["tests"],
                *value["property_test_contract"]["tests"],
                *value["artifact_test_contract"]["tests"],
            )
        }
        self.assertEqual(execution_ids, expected)
        self.assertEqual(len(execution_ids), 919)

    def test_application_test_selection_is_the_exact_evidence_union(self) -> None:
        value = matrix()
        application, _, _ = application_for(
            value, "EXT-PROOF-VERIFICATION", "transfer"
        )
        application["test_ids"].remove("TRANSFER-RUNTIME-INTEGRATION")
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exact test join drifted",
        ):
            validate(value)

        value = matrix()
        application, _, _ = application_for(
            value, "EXT-PROOF-VERIFICATION", "transfer"
        )
        application["test_ids"].append("TRANSFER-PUBLIC-PROJECTION")
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "tests are not owned|exact test join drifted",
        ):
            validate(value)

        value = matrix()
        predicate(value, "NOTE-SPEND-NULLIFIER-DERIVATION")[
            "security_objectives"
        ].append("FV-PROFILE-COMPLETENESS")
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exact real-property objective join drifted",
        ):
            validate(value)

        value = matrix()
        no_double_spend = next(
            row
            for row in value["property_contract"]
            if row["id"] == "NO-DOUBLE-SPEND"
        )
        no_double_spend["predicate_ids"].remove(
            "NOTE-SPEND-NULLIFIER-DERIVATION"
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "code-owned security property contract drifted",
        ):
            validate(value)

            path.write_text('{"schema": 1}', encoding="utf-8")
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "not canonical",
            ):
                CHECK.load_strict_json(path, "test", canonical=True)

    def test_extractor_golden_helper_fails_closed(self) -> None:
        relative = (
            "tools/gnark/third_party/gnark-lean-extractor/"
            "extractor/test/utils_test.go"
        )
        canonical = (
            "package extractor_test\n"
            "func checkOutput(t *testing.T, testOutput string) {\n"
            "  if _, err := os.Stat(filename); err != nil {\n"
            "    t.Fatalf(\"required extractor golden %s is missing or unreadable:\")\n"
            "  }\n"
            "  bytes.Equal(correctHash, testResultHash)\n"
            "}\n"
        )
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            path = root / relative
            path.parent.mkdir(parents=True)
            path.write_text(canonical, encoding="utf-8")
            CHECK.validate_extractor_golden_contract(root)
            path.write_text(
                canonical.replace(
                    "os.Stat(filename)",
                    "os.Create(filename)",
                ),
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "create a missing oracle",
            ):
                CHECK.validate_extractor_golden_contract(root)

    def test_canonical_repo_path_rejects_file_and_component_symlinks(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / "target.txt"
            target.write_text("target\n", encoding="utf-8")
            direct = root / "direct.txt"
            direct.symlink_to(target.name)
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "symlinked path component",
            ):
                CHECK.canonical_repo_path(root, "direct.txt", "direct source")

            real_directory = root / "real"
            real_directory.mkdir()
            (real_directory / "source.txt").write_text(
                "source\n", encoding="utf-8"
            )
            linked_directory = root / "linked"
            linked_directory.symlink_to(real_directory.name, target_is_directory=True)
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "symlinked path component",
            ):
                CHECK.canonical_repo_path(
                    root,
                    "linked/source.txt",
                    "component source",
                )

    def test_semantic_bundle_rejects_resolved_source_aliases(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            target = root / "target.txt"
            target.write_text("target\n", encoding="utf-8")
            with (
                patch.object(
                    CHECK,
                    "SEMANTIC_BASE_FILES",
                    ("first.txt", "second.txt"),
                ),
                patch.object(CHECK, "SEMANTIC_DISCOVERY_ROOTS", ()),
                patch.object(CHECK, "SEMANTIC_EXACT_INPUT_ROSTERS", {}),
                patch.object(CHECK, "SEMANTIC_IMPLEMENTATION_ROOTS", ()),
                patch.object(
                    CHECK, "semantic_relation_blob_paths", return_value=()
                ),
                patch.object(CHECK, "EXPECTED_CONSEQUENCE_ROSTER_PATHS", {}),
                patch.object(CHECK, "DEPLOYED_ACCEPTANCE_CONSEQUENCES", {}),
                patch.object(
                    CHECK, "GENERATED_TRANSACTION_REFINEMENT_ROOTS", {}
                ),
                patch.object(
                    CHECK,
                    "canonical_repo_path",
                    return_value=target.resolve(),
                ),
            ):
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "aliases one physical source",
                ):
                    CHECK.semantic_bundle_paths(root)

    def test_semantic_bundle_rejects_nested_directory_symlink(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source_root = root / "semantic"
            source_root.mkdir()
            target = root / "target"
            target.mkdir()
            (target / "Source.lean").write_text("", encoding="utf-8")
            (source_root / "linked").symlink_to(
                target, target_is_directory=True
            )
            (root / "tools/gnark/lean").mkdir(parents=True)
            with (
                patch.object(CHECK, "SEMANTIC_BASE_FILES", ()),
                patch.object(
                    CHECK, "SEMANTIC_DISCOVERY_ROOTS", ("semantic",)
                ),
                patch.object(CHECK, "SEMANTIC_EXACT_DISCOVERY_FILES", {}),
                patch.object(CHECK, "SEMANTIC_EXACT_INPUT_ROSTERS", {}),
                patch.object(CHECK, "SEMANTIC_IMPLEMENTATION_ROOTS", ()),
                patch.object(
                    CHECK, "semantic_relation_blob_paths", return_value=()
                ),
                patch.object(CHECK, "EXPECTED_CONSEQUENCE_ROSTER_PATHS", {}),
                patch.object(CHECK, "DEPLOYED_ACCEPTANCE_CONSEQUENCES", {}),
                patch.object(
                    CHECK, "GENERATED_TRANSACTION_REFINEMENT_ROOTS", {}
                ),
            ):
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "symlinked directory",
                ):
                    CHECK.semantic_bundle_paths(root)

    def test_semantic_bundle_rejects_hardlink_alias(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            first = root / "first.txt"
            first.write_text("same\n", encoding="utf-8")
            os.link(first, root / "second.txt")
            (root / "tools/gnark/lean").mkdir(parents=True)
            with (
                patch.object(
                    CHECK,
                    "SEMANTIC_BASE_FILES",
                    ("first.txt", "second.txt"),
                ),
                patch.object(CHECK, "SEMANTIC_DISCOVERY_ROOTS", ()),
                patch.object(CHECK, "SEMANTIC_EXACT_INPUT_ROSTERS", {}),
                patch.object(CHECK, "SEMANTIC_IMPLEMENTATION_ROOTS", ()),
                patch.object(
                    CHECK, "semantic_relation_blob_paths", return_value=()
                ),
                patch.object(CHECK, "EXPECTED_CONSEQUENCE_ROSTER_PATHS", {}),
                patch.object(CHECK, "DEPLOYED_ACCEPTANCE_CONSEQUENCES", {}),
                patch.object(
                    CHECK, "GENERATED_TRANSACTION_REFINEMENT_ROOTS", {}
                ),
            ):
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "hard-link aliases",
                ):
                    CHECK.semantic_bundle_paths(root)

    def test_semantic_exact_input_roster_rejects_new_generator_data(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            input_root = root / "inputs"
            input_root.mkdir()
            (input_root / "owned_gendata.json").write_text(
                "{}\n", encoding="utf-8"
            )
            (root / "tools/gnark/lean").mkdir(parents=True)
            with (
                patch.object(CHECK, "SEMANTIC_BASE_FILES", ()),
                patch.object(CHECK, "SEMANTIC_DISCOVERY_ROOTS", ()),
                patch.object(
                    CHECK,
                    "SEMANTIC_EXACT_INPUT_ROSTERS",
                    {
                        "inputs": (
                            (".json",),
                            ("owned_gendata.json",),
                        )
                    },
                ),
                patch.object(CHECK, "SEMANTIC_IMPLEMENTATION_ROOTS", ()),
                patch.object(
                    CHECK, "semantic_relation_blob_paths", return_value=()
                ),
                patch.object(CHECK, "EXPECTED_CONSEQUENCE_ROSTER_PATHS", {}),
                patch.object(CHECK, "DEPLOYED_ACCEPTANCE_CONSEQUENCES", {}),
                patch.object(
                    CHECK, "GENERATED_TRANSACTION_REFINEMENT_ROOTS", {}
                ),
            ):
                CHECK.semantic_bundle_paths(root)
                (input_root / "unowned_gendata.json").write_text(
                    "{}\n", encoding="utf-8"
                )
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "semantic exact-input roster drifted",
                ):
                    CHECK.semantic_bundle_paths(root)

    def test_semantic_digest_binds_registry_closed_relation_blob(
        self,
    ) -> None:
        digest = "a" * 64
        registry_relative = (
            "tools/gnark/artifacts/proof-template-registry.json"
        )
        relation_relative = (
            "tools/gnark/artifacts/proof-template-relations/"
            f"{digest}.sr1cs.gz"
        )
        registry = {
            "schema": "test.proof-template-registry.v1",
            "field_modulus": "1",
            "templates": [
                {
                    "canonical_relation_sha256_hex": digest,
                    "canonical_relation_file": (
                        f"proof-template-relations/{digest}.sr1cs.gz"
                    ),
                }
            ],
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            registry_path = root / registry_relative
            registry_path.parent.mkdir(parents=True)
            registry_path.write_text(
                json.dumps(registry, indent=2) + "\n",
                encoding="utf-8",
            )
            relation_path = root / relation_relative
            relation_path.parent.mkdir(parents=True)
            relation_path.write_bytes(b"canonical relation")
            (root / "tools/gnark/lean").mkdir(parents=True)
            with (
                patch.object(
                    CHECK,
                    "SEMANTIC_BASE_FILES",
                    (registry_relative,),
                ),
                patch.object(CHECK, "SEMANTIC_DISCOVERY_ROOTS", ()),
                patch.object(CHECK, "SEMANTIC_EXACT_INPUT_ROSTERS", {}),
                patch.object(CHECK, "SEMANTIC_IMPLEMENTATION_ROOTS", ()),
                patch.object(CHECK, "EXPECTED_CONSEQUENCE_ROSTER_PATHS", {}),
                patch.object(CHECK, "DEPLOYED_ACCEPTANCE_CONSEQUENCES", {}),
                patch.object(
                    CHECK, "GENERATED_TRANSACTION_REFINEMENT_ROOTS", {}
                ),
            ):
                before = CHECK.semantic_bundle_digest(root)
                relation_path.write_bytes(b"canonical relatioN")
                after = CHECK.semantic_bundle_digest(root)
                self.assertNotEqual(before, after)

    def test_semantic_digest_binds_matrix_census_and_discovered_sources(
        self,
    ) -> None:
        with (
            tempfile.TemporaryDirectory() as directory,
            patch.object(
                CHECK, "semantic_relation_blob_paths", return_value=()
            ),
        ):
            root = Path(directory)
            for relative in CHECK.SEMANTIC_BASE_FILES:
                path = root / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(f"{relative}\n", encoding="utf-8")
            for relative in CHECK.SEMANTIC_DISCOVERY_ROOTS:
                expected = CHECK.SEMANTIC_EXACT_DISCOVERY_FILES.get(
                    relative,
                    ("Source.lean",),
                )
                for filename in expected:
                    source = root / relative / filename
                    source.parent.mkdir(parents=True, exist_ok=True)
                    source.write_text(f"{relative}/{filename}\n", encoding="utf-8")
            for relative, (_, expected) in (
                CHECK.SEMANTIC_EXACT_INPUT_ROSTERS.items()
            ):
                for filename in expected:
                    source = root / relative / filename
                    source.parent.mkdir(parents=True, exist_ok=True)
                    source.write_text(
                        f"{relative}/{filename}\n",
                        encoding="utf-8",
                    )
            for relative, suffixes in CHECK.SEMANTIC_IMPLEMENTATION_ROOTS:
                source = root / relative / f"Source{suffixes[0]}"
                source.parent.mkdir(parents=True, exist_ok=True)
                source.write_text(f"{relative}\n", encoding="utf-8")
            closure_helpers = (
                root
                / "tools/gnark/third_party/gnark-lean-extractor/"
                "extractor/extractor.go",
                root / "tools/gnark/lean/gen/generator.py",
                root / "crates/cnidarium-component/src/action_handler.rs",
                root / "crates/core/component/ibc/src/Source.rs",
            )
            for helper in closure_helpers:
                helper.parent.mkdir(parents=True, exist_ok=True)
                helper.write_text(
                    f"{helper.relative_to(root).as_posix()}\n",
                    encoding="utf-8",
                )
            deployed_seeds = {
                *CHECK.EXPECTED_CONSEQUENCE_ROSTER_PATHS.values(),
                *(
                    path
                    for path, _ in (
                        CHECK.DEPLOYED_ACCEPTANCE_CONSEQUENCES.values()
                    )
                ),
                *(
                    path
                    for path, _ in (
                        CHECK.GENERATED_TRANSACTION_REFINEMENT_ROOTS.values()
                    )
                ),
            }
            for relative in deployed_seeds:
                source = root / relative
                source.parent.mkdir(parents=True, exist_ok=True)
                source.write_text(f"{relative}\n", encoding="utf-8")
            imported_modules = (
                "Test.Semantic.Indented",
                "Test.Semantic.Multi",
                "Test.Semantic.Commented",
            )
            imported_helpers = tuple(
                root
                / "tools/gnark/lean"
                / (module.replace(".", "/") + ".lean")
                for module in imported_modules
            )
            for helper in imported_helpers:
                helper.parent.mkdir(parents=True, exist_ok=True)
                helper.write_text(
                    f"{helper.relative_to(root).as_posix()}\n",
                    encoding="utf-8",
                )
            seed = root / min(deployed_seeds)
            seed.write_text(
                "  import Test.Semantic.Indented Test.Semantic.Multi "
                "-- multiple modules and comment\n"
                "\timport Test.Semantic.Commented -- indented comment\n",
                encoding="utf-8",
            )
            closure_helpers = (*closure_helpers, *imported_helpers)
            digest = CHECK.semantic_bundle_digest(root)
            pin = root / "pin.sha256"
            pin.write_text(digest + "\n", encoding="ascii")
            self.assertEqual(CHECK.validate_semantic_digest(root, pin), digest)

            exact_root = next(iter(CHECK.SEMANTIC_EXACT_DISCOVERY_FILES))
            unexpected = root / exact_root / "Unexpected.lean"
            unexpected.write_text("unexpected golden\n", encoding="utf-8")
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "semantic source roster drifted",
            ):
                CHECK.semantic_bundle_digest(root)
            unexpected.unlink()

            matrix_path = (
                root
                / "crates/core/component/shielded-pool/formal"
                / "fv-specification-predicate-matrix.json"
            )
            matrix_path.write_text("changed\n", encoding="utf-8")
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "semantic specification bundle changed",
            ):
                CHECK.validate_semantic_digest(root, pin)

            matrix_path.write_text(
                "crates/core/component/shielded-pool/formal/"
                "fv-specification-predicate-matrix.json\n",
                encoding="utf-8",
            )
            for helper in closure_helpers:
                with self.subTest(helper=helper.relative_to(root).as_posix()):
                    original = helper.read_text(encoding="utf-8")
                    helper.write_text("weakened helper\n", encoding="utf-8")
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "semantic specification bundle changed",
                    ):
                        CHECK.validate_semantic_digest(root, pin)
                    helper.write_text(original, encoding="utf-8")

    def test_lean_import_parser_accepts_all_ordinary_forms(self) -> None:
        self.assertEqual(
            CHECK.lean_import_modules(
                "import Alpha.One\n"
                "  import Beta.Two Gamma.Three\n"
                "\timport Delta.Four -- trailing comment\n"
                "/-\n"
                "import Ignored.Block\n"
                "/- import Ignored.NestedBlock -/\n"
                "-/\n"
                "import Epsilon.Five /- import Ignored.Inline -/\n"
                "-- import Ignored.Comment\n"
                "def importShadow := \"import Ignored.String\"\n"
            ),
            (
                "Alpha.One",
                "Beta.Two",
                "Gamma.Three",
                "Delta.Four",
                "Epsilon.Five",
            ),
        )

    def test_lean_import_parser_rejects_multiline_import_bypass(self) -> None:
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "one-line ASCII module roster",
        ):
            CHECK.lean_import_modules(
                "import\n"
                "  ShielddGnarkFormal.Protocol.Hidden\n"
            )

    def test_semantic_bundle_contains_representative_source_closure(
        self,
    ) -> None:
        paths = {
            relative
            for relative, _ in CHECK.semantic_bundle_paths(ROOT)
        }
        expected = {
            ".github/workflows/formal.yml",
            ".github/workflows/rust.yml",
            "Cargo.lock",
            "Cargo.toml",
            "ci/gates/soundness-formal.json",
            "crates/cnidarium-component/src/action_handler.rs",
            "crates/core/app/src/app/mod.rs",
            "crates/core/asset/src/lib.rs",
            "crates/core/component/ibc/src/component/state_key.rs",
            "crates/core/transaction/src/transaction.rs",
            "crates/crypto/constraint-coverage/src/lib.rs",
            "crates/crypto/decaf377-ka/src/lib.rs",
            "crates/crypto/tct/src/lib.rs",
            "crates/proto/src/lib.rs",
            "proto/shieldd/shieldd/core/transaction/v1/transaction.proto",
            "scripts/fv_certification.py",
            "tools/gnark/fv_certification_backends.json",
            "tools/gnark/fv_profiles.json",
            "tools/gnark/go.mod",
            "tools/gnark/go.sum",
            "tools/gnark/lean/ShielddGnarkFormal.lean",
            "tools/gnark/lean/lake-manifest.json",
            "tools/gnark/lean/lakefile.lean",
            "tools/gnark/lean/lean-toolchain",
            "tools/gnark/third_party/gnark-lean-extractor/"
            "extractor/extractor.go",
            "tools/gnark/third_party/gnark-lean-extractor/"
            "test/TestMyCircuit.lean",
            "tools/gnark/third_party/gnark-lean-extractor/go.mod",
            "tools/gnark/third_party/gnark-lean-extractor/go.sum",
        }
        self.assertEqual(expected - paths, set())

        gate = json.loads(
            (ROOT / "ci/gates/soundness-formal.json").read_text(
                encoding="utf-8"
            )
        )
        build_entries = [
            entry
            for entry in gate["explicit_inputs"]
            if entry["reason"]
            == "workspace, toolchain, image, workflow, or classifier input"
        ]
        self.assertEqual(len(build_entries), 1)
        patterns = set(build_entries[0]["patterns"])
        scoped_workflow_exclusions = {
            ".github/workflows/formal-scheduled.yml",
            ".github/workflows/soundness-provers.yml",
            ".github/workflows/fv-toolchain-image.yml",
        }
        self.assertEqual(
            patterns & set(CHECK.SEMANTIC_SCOPE_EXCLUSIONS),
            scoped_workflow_exclusions,
        )
        gate_inputs: set[str] = set()
        for pattern in sorted(patterns - scoped_workflow_exclusions):
            if pattern.endswith("/**"):
                prefix = pattern.removesuffix("/**")
                gate_inputs.update(
                    path.relative_to(ROOT).as_posix()
                    for path in (ROOT / prefix).rglob("*")
                    if path.is_file()
                )
            else:
                self.assertIsNone(
                    re.search(r"[*?\[]", pattern),
                    f"unhandled build-input glob {pattern}",
                )
                gate_inputs.add(pattern)
        self.assertEqual(gate_inputs - paths, set())

    def test_all_normative_markdown_inputs_are_semantic_sources(self) -> None:
        expected = {
            (
                "crates/core/component/shielded-pool/formal/"
                "certified-circuit-obligation-ledger.md"
            ),
            "crates/core/component/compliance/formal/assumption-ledger.md",
            (
                "crates/core/component/shielded-pool/formal/"
                "circuit-soundness-properties.md"
            ),
            "crates/core/component/compliance/formal/soundness-properties.md",
            (
                "crates/core/component/shielded-pool/formal/"
                "external-check-map.md"
            ),
            (
                "crates/core/component/shielded-pool/formal/"
                "circuit-soundness-findings.md"
            ),
            "docs/soundness/fv.md",
        }
        self.assertEqual(set(CHECK.NORMATIVE_MARKDOWN_INPUTS), expected)
        self.assertEqual(
            expected - set(CHECK.SEMANTIC_BASE_FILES),
            set(),
        )

    def test_non_source_semantic_input_rosters_are_closed(self) -> None:
        expected_build_inputs = {
            ".cargo/config.toml",
            ".github/actions/setup-nix-rust/action.yml",
            "flake.lock",
            "flake.nix",
            "rust-toolchain.toml",
        }
        expected_gnark_contracts = {
            "tools/gnark/note_reshape_families.json",
            "tools/gnark/transfer_families.json",
            "tools/gnark/shielded_ics20_withdrawal_families.json",
            "tools/gnark/internal/primitives/vectors/phase05_vectors.json",
            "tools/gnark/artifacts/proof-template-registry.json",
            "tools/gnark/artifacts/certified-template-inventory.json",
            "tools/gnark/artifacts/proof-template-ownership.json",
            "tools/gnark/artifacts/note-reshape-witness-roles.json",
        }
        self.assertEqual(
            set(CHECK.SEMANTIC_BUILD_EVIDENCE_INPUTS),
            expected_build_inputs,
        )
        self.assertEqual(
            set(CHECK.SEMANTIC_SCOPE_EXCLUSIONS),
            {
                ".github/workflows/formal-scheduled.yml",
                ".github/workflows/soundness-provers.yml",
                ".github/workflows/fv-toolchain-image.yml",
                "deny.toml",
                "justfile",
            },
        )
        self.assertEqual(
            set(CHECK.SEMANTIC_GNARK_CONTRACT_INPUTS),
            expected_gnark_contracts,
        )
        self.assertEqual(
            (expected_build_inputs | expected_gnark_contracts)
            - set(CHECK.SEMANTIC_BASE_FILES),
            set(),
        )

        generator_data = {
            "dtk_ivk_gendata.json",
            "gendata.json",
            "net_balance_gendata.json",
            "nullifier_gendata.json",
            "state_commitment_leaf_gendata.json",
            "statement_hash_gendata.json",
            *(
                f"state_commitment_node{level}_gendata.json"
                for level in range(24)
            ),
        }
        self.assertEqual(
            set(
                CHECK.SEMANTIC_EXACT_INPUT_ROSTERS[
                    "tools/gnark/lean/gen"
                ][1]
            ),
            generator_data,
        )
        self.assertEqual(
            CHECK.SEMANTIC_EXACT_INPUT_ROSTERS[
                "tools/gnark/lean/gen/templates"
            ][1],
            ("NoteReshapeCanonicalAddress.lean.tmpl",),
        )
        self.assertEqual(
            set(
                CHECK.SEMANTIC_EXACT_INPUT_ROSTERS[
                    "tools/gnark/rust-vectors"
                ][1]
            ),
            {"Cargo.lock", "Cargo.toml", "src/main.rs"},
        )

    def test_closed_predicate_or_profile_roster_cannot_be_reduced(self) -> None:
        value = matrix()
        value["predicates"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "closed predicate baseline mismatch",
        ):
            validate(value)

        value = matrix()
        value["profiles"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "roster mismatch",
        ):
            validate(value)

    def test_every_declared_trace_must_be_selected_by_an_atom(self) -> None:
        value = matrix()
        trace = deepcopy(evidence(value, "NR-CIRCUIT")["trace_instances"][0])
        trace["id"] = "UNOWNED-TRACE"
        trace["role"] += ".unowned"
        evidence(value, "NR-CIRCUIT")["trace_instances"].append(trace)

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "constraint-trace/application census mismatch",
        ):
            validate(value)

    def test_deleting_declared_trace_but_leaving_trace_op_fails(self) -> None:
        value = matrix()
        target = evidence(value, "NR-CIRCUIT")
        removed = target["trace_instances"].pop()
        self.assertIn(removed["op"], target["trace_ops"])

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "trace instances are not owned|trace_ops must exactly",
        ):
            validate(value)

    def test_deleting_nonidentity_role_fails_exact_application_join(self) -> None:
        value = matrix()
        application, _, _ = application_for(
            value,
            "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
            "note_reshape8x1",
        )
        application["trace_instance_ids"].remove(
            next(
                trace_id
                for trace_id in application["trace_instance_ids"]
                if trace_id.startswith("NOTE-RESHAPE8X1-")
            )
        )

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "must be a non-empty array|exact semantic role/trace join drifted",
        ):
            validate(value)

    def test_deleting_ordinary_output_role_fails_exact_application_join(
        self,
    ) -> None:
        value = matrix()
        application, _, _ = application_for(
            value,
            "NOTE-OUTPUT-COMMITMENT",
            "note_reshape1x8",
        )
        trace_by_id = {
            trace["id"]: trace
            for trace in evidence(value, "NR-CIRCUIT")["trace_instances"]
        }
        application["trace_instance_ids"].remove(
            next(
                trace_id
                for trace_id in application["trace_instance_ids"]
                if trace_by_id[trace_id]["profile"] == "note_reshape1x8"
            )
        )

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exact semantic role/trace join drifted|"
            "executable bound-variable census drifted",
        ):
            validate(value)

    def test_deleting_composite_compliance_role_fails_exact_join(self) -> None:
        value = matrix()
        application, _, _ = application_for(
            value,
            "COMPLIANCE-METADATA-BINDING",
            "transfer",
        )
        application["trace_instance_ids"].pop()

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exact semantic role/trace join drifted|"
            "executable bound-variable census drifted",
        ):
            validate(value)

    def test_duplicate_ordinary_role_is_rejected(self) -> None:
        value = matrix()
        _, _, profile_role = application_for(
            value,
            "NOTE-SPEND-COMMITMENT",
            "transfer",
        )
        profile_role["roles"].append(profile_role["roles"][0])
        profile_role["multiplicity"] += 1

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "roles contains duplicates",
        ):
            validate(value)

    def test_deleting_whole_trace_op_is_rejected(self) -> None:
        value = matrix()
        target = evidence(value, "TRANSFER-CIRCUIT")
        target["trace_ops"].remove("gadget.poseidon_encryption.amount")

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "trace_ops must exactly index trace_instances",
        ):
            validate(value)

    def test_formal_facts_and_ledger_rows_have_one_owner(self) -> None:
        value = matrix()
        nr = evidence(value, "NR-CIRCUIT")
        transfer = evidence(value, "TRANSFER-CIRCUIT")
        transfer["formal_fact_ids"].append(nr["formal_fact_ids"][0])
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "formal facts must have exactly one",
        ):
            validate(value, repository_sources=True)

        value = matrix()
        nr = evidence(value, "NR-CIRCUIT")
        transfer = evidence(value, "TRANSFER-CIRCUIT")
        transfer["ledger_ids"].append(nr["ledger_ids"][0])
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "ledger rows must have exactly one",
        ):
            validate(value, repository_sources=True)

    def test_deleting_formal_fact_or_ledger_row_is_rejected(self) -> None:
        value = matrix()
        evidence(value, "NR-CIRCUIT")["formal_fact_ids"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "formal fact census mismatch",
        ):
            validate(value, repository_sources=True)

    def test_application_fact_ledger_and_consequence_selections_are_exact(
        self,
    ) -> None:
        value = matrix()
        for profile in CHECK.NR_PROFILES:
            application, _, _ = application_for(
                value, "EXT-PROOF-VERIFICATION", profile
            )
            application["formal_fact_ids"] = [
                "NoteReshape.ConsensusStateFacts.proofFamilyKeySelected"
            ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "formal-fact/application census mismatch|"
            "executable bound-variable census drifted",
        ):
            validate(value)

        value = matrix()
        proof_row = predicate(value, "EXT-PROOF-VERIFICATION")
        proof_row["reference_evidence"]["symbols"].remove(
            "`CERT-PROOF-VERIFICATION`"
        )
        for application in proof_row["applications"]:
            application["ledger_ids"].remove(
                "CERT-PROOF-VERIFICATION"
            )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "obligation-ledger/application census mismatch",
        ):
            validate(value)

        value = matrix()
        application, _, _ = application_for(
            value, "PUBLIC-STATEMENT-BINDING", "transfer"
        )
        application["consequence_evidence"][0]["symbols"] = [
            "theorem consensusAccepted_atomicSecurityConsequences"
        ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "consequence theorem join drifted",
        ):
            validate(value)

    def test_concrete_semantics_assumptions_and_references_are_pinned(
        self,
    ) -> None:
        value = matrix()
        predicate(value, "NOTE-SPEND-COMMITMENT")["statement"] += (
            " Mutated."
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "matrix statement .* != independent requirement|"
            "reviewed predicate semantics changed|"
            "executable bound-variable census drifted",
        ):
            validate(value)

        value = matrix()
        predicate(value, "NOTE-SPEND-COMMITMENT")["assumptions"] = [
            "none"
        ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "reviewed predicate semantics changed|"
            "executable bound-variable census drifted",
        ):
            validate(value)

        value = matrix()
        predicate(value, "NOTE-SPEND-COMMITMENT")["assumptions"] = [
            "ZK-ASSUME-AMOUNT-RANGE"
        ]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "discharged rows are not residual assumptions",
        ):
            validate(value)

        value = matrix()
        row = predicate(value, "ADDRESS-CANONICAL-PACKING")
        row["reference_evidence"]["symbols"] = ["`T-SHAPE`"]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "obligation-ledger reference/application join drifted",
        ):
            validate(value)

    def test_false_amount_range_trace_attribution_is_rejected(self) -> None:
        value = matrix()
        application, _, profile_role = application_for(
            value, "VALUE-AMOUNT-128-RANGE", "transfer"
        )
        traces = {
            trace["id"]: trace
            for trace in evidence(
                value, "TRANSFER-CIRCUIT"
            )["trace_instances"]
        }
        false_trace = next(
            trace
            for trace in traces.values()
            if trace["profile"] == "transfer"
            and trace["op"] == "gadget.note_commitment"
        )
        application["trace_instance_ids"] = [false_trace["id"]]
        profile_role["roles"] = [false_trace["role"]]
        profile_role["multiplicity"] = 1

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "reviewed predicate semantics changed|"
            "executable bound-variable census drifted",
        ):
            validate(value)

    def test_withdrawal_user_d_range_false_attribution_is_rejected(
        self,
    ) -> None:
        value = matrix()
        source_application, _, _ = application_for(
            value,
            "USER-COMPLIANCE-LEAF-HASH",
            "shielded_ics20_withdrawal",
        )
        row = predicate(value, "FIELD-USER-DERIVATION-RANGE")
        row["applications"].append(deepcopy(source_application))
        row["not_applicable_profiles"].remove(
            "shielded_ics20_withdrawal"
        )
        row["reference_evidence"]["symbols"].append(
            "`W-USER-REGISTRY`"
        )

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "exact test join drifted|application roster differs from reviewed baseline|"
            "application binding_mode differs",
        ):
            validate(value)

    def test_authorization_encoding_cannot_collapse_into_nonidentity(
        self,
    ) -> None:
        value = matrix()
        application, _, profile_role = application_for(
            value, "DEC-AUTHORIZATION-KEY-ENCODING", "transfer"
        )
        traces = {
            trace["id"]: trace
            for trace in evidence(
                value, "TRANSFER-CIRCUIT"
            )["trace_instances"]
        }
        false_trace = next(
            trace
            for trace in traces.values()
            if trace["profile"] == "transfer"
            and trace["op"] == "assert.decaf_non_identity"
            and "point=auth.ak" in trace["args"]
        )
        application["trace_instance_ids"] = [false_trace["id"]]
        profile_role["roles"] = [false_trace["role"]]
        profile_role["multiplicity"] = 1

        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "reviewed predicate semantics changed|"
            "executable bound-variable census drifted",
        ):
            validate(value)

    def test_identity_guard_trace_classification_is_role_exact(self) -> None:
        cases = (
            (
                {
                    "op": "assert.decaf_non_identity",
                    "args": ["point=auth.ak"],
                },
                {"DEC-AUTHORIZATION-KEY-NONIDENTITY"},
            ),
            (
                {
                    "op": "assert.decaf_non_identity",
                    "args": ["point=sender.transmission.computed"],
                },
                {"DEC-TRANSMISSION-KEY-NONIDENTITY"},
            ),
            (
                {
                    "op": "assert.decaf_non_identity",
                    "args": ["point=sender.div_gen"],
                },
                {"DEC-DIVERSIFIED-GENERATOR-NONIDENTITY"},
            ),
            (
                {
                    "op": "assert.ne",
                    "args": ["lhs=auth.ivk_reduced", "rhs=0"],
                },
                {"DEC-INCOMING-VIEWING-KEY-NONZERO"},
            ),
        )
        for segment, expected in cases:
            with self.subTest(segment=segment):
                self.assertEqual(
                    GENERATE.trace_predicates("transfer", segment),
                    expected,
                )

        self.assertEqual(
            CHECK.REQUIRED_TEST_KINDS[
                "DEC-INCOMING-VIEWING-KEY-NONZERO"
            ],
            frozenset({"boundary_negative", "full_circuit_negative"}),
        )
        self.assertEqual(
            CHECK.REQUIRED_TEST_KINDS[
                "DEC-TRANSMISSION-KEY-NONIDENTITY"
            ],
            frozenset({"boundary_negative"}),
        )

    def test_ivk_provenance_and_proof_verification_atoms_cannot_be_omitted(
        self,
    ) -> None:
        for predicate_id in (
            "DEC-INCOMING-VIEWING-KEY-DERIVATION",
            "DEC-INCOMING-VIEWING-KEY-NONZERO",
            "DEC-TRANSMISSION-KEY-NONIDENTITY",
            "EXT-PROOF-VERIFICATION",
        ):
            with self.subTest(predicate_id=predicate_id):
                value = matrix()
                value["predicates"] = [
                    row
                    for row in value["predicates"]
                    if row["id"] != predicate_id
                ]
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "closed predicate baseline mismatch",
                ):
                    validate(value)

        value = matrix()
        evidence(value, "NR-CIRCUIT")["ledger_ids"].pop()
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "obligation-ledger census mismatch",
        ):
            validate(value, repository_sources=True)

    def test_required_identity_test_kind_profile_and_predicate_joins(
        self,
    ) -> None:
        value = matrix()
        boundary = next(
            test
            for test in value["tests"]
            if test["id"] == "DECAF-IDENTITY-CLASS-BOUNDARY"
        )
        boundary["kind"] = "negative"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "DEC-AUTHORIZATION-KEY-NONIDENTITY/.*"
            "boundary_negative",
        ):
            validate(value)

        value = matrix()
        attack = next(
            test
            for test in value["tests"]
            if test["id"] == "TRANSFER-IDENTITY-OWNERSHIP-ATTACK"
        )
        attack["kind"] = "negative"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY/transfer.*"
            "attack_reproduction",
        ):
            validate(value)

        value = matrix()
        binding_attack = next(
            test
            for test in value["tests"]
            if test["id"]
            == "TRANSACTION-PROOF-BEARING-IDENTITY-BINDING-ATTACK"
        )
        binding_attack["kind"] = "negative"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "EXT-TRANSACTION-BINDING-SIGNATURE/.*"
            "attack_reproduction",
        ):
            validate(value)

        value = matrix()
        full = next(
            test
            for test in value["tests"]
            if test["id"] == "WITHDRAWAL-IDENTITY-FULL-CIRCUIT"
        )
        full["kind"] = "negative"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "DEC-AUTHORIZATION-KEY-NONIDENTITY/"
            "shielded_ics20_withdrawal.*full_circuit_negative",
        ):
            validate(value)

    def test_unresolved_assumption_marker_is_rejected(self) -> None:
        value = matrix()
        value["predicates"][0]["assumptions"] = ["TBD"]
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "unknown assumption-ledger IDs",
        ):
            validate(value)

    def test_exact_manifest_mutations_fail_for_every_role_class(self) -> None:
        validated = validate(matrix(), repository_sources=True)
        cases = (
            (
                "note_reshape8x1",
                lambda segment: segment["op"] == "assert.decaf_non_identity"
                and "point=auth.ak" in segment["args"],
            ),
            (
                "note_reshape1x8",
                lambda segment: segment["op"] == "gadget.note_commitment"
                and any("output0" in arg for arg in segment["args"]),
            ),
            (
                "transfer",
                lambda segment: segment["op"]
                == "gadget.poseidon_encryption.amount",
            ),
        )
        with tempfile.TemporaryDirectory() as directory:
            for profile, selector in cases:
                with self.subTest(profile=profile):
                    path = (
                        ROOT
                        / "tools/gnark/artifacts"
                        / profile
                        / f"{profile}-manifest.json"
                    )
                    payload = json.loads(path.read_text(encoding="utf-8"))
                    index = next(
                        index
                        for index, segment in enumerate(payload["segments"])
                        if selector(segment)
                    )
                    payload["segments"].pop(index)
                    mutated = Path(directory) / f"{profile}.json"
                    mutated.write_text(json.dumps(payload), encoding="utf-8")
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "exact constraint-trace census drifted",
                    ):
                        CHECK.validate_manifest(
                            mutated,
                            profile,
                            validated["contracts"][profile],
                        )

    def test_manifest_rejects_whole_op_deletion_and_bad_counts(self) -> None:
        profile = "shielded_ics20_withdrawal"
        validated = validate(matrix(), repository_sources=True)
        path = (
            ROOT
            / "tools/gnark/artifacts"
            / profile
            / f"{profile}-manifest.json"
        )
        original = json.loads(path.read_text(encoding="utf-8"))
        with tempfile.TemporaryDirectory() as directory:
            mutated = Path(directory) / "manifest.json"
            payload = deepcopy(original)
            payload["segments"] = [
                segment
                for segment in payload["segments"]
                if segment["op"] != "statement.hash"
            ]
            mutated.write_text(json.dumps(payload), encoding="utf-8")
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "exact constraint-trace census drifted",
            ):
                CHECK.validate_manifest(
                    mutated, profile, validated["contracts"][profile]
                )

            for bad_count in (True, -1, "1"):
                with self.subTest(bad_count=bad_count):
                    payload = deepcopy(original)
                    payload["segments"][0]["constraint_count"] = bad_count
                    mutated.write_text(json.dumps(payload), encoding="utf-8")
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "invalid constraint_count",
                    ):
                        CHECK.validate_manifest(
                            mutated,
                            profile,
                            validated["contracts"][profile],
                        )

    def test_native_census_is_a_deliberate_subset_of_complete_baseline(
        self,
    ) -> None:
        census_path = (
            ROOT
            / "crates/core/component/shielded-pool/formal"
            / "native-circuit-predicate-census.json"
        )
        rows = CHECK.validate_native_census(
            ROOT, census_path, set(CHECK.PREDICATE_BASELINE)
        )
        self.assertEqual(
            set(rows),
            {
                "DEC-AUTHORIZATION-KEY-NONIDENTITY",
                "DEC-DIVERSIFIED-GENERATOR-NONIDENTITY",
                "DEC-INCOMING-VIEWING-KEY-NONZERO",
                "DEC-TRANSMISSION-KEY-NONIDENTITY",
            },
        )
        census = json.loads(census_path.read_text(encoding="utf-8"))
        self.assertEqual(census["schema_version"], 3)
        self.assertEqual(
            set(census["assumption_ids"]),
            CHECK.REQUIRED_NATIVE_CENSUS_ASSUMPTION_IDS,
        )
        for row in census["predicates"]:
            self.assertEqual(
                set(row),
                {
                    "predicate_id",
                    "domain_enforcement",
                    "r1cs_enforcement",
                },
            )
            for side in ("domain_enforcement", "r1cs_enforcement"):
                self.assertEqual(
                    row[side]["test_execution"],
                    CHECK.expected_test_execution(
                        (
                            f"NATIVE-PARITY-{row['predicate_id']}-"
                            f"{side}"
                        ),
                        row[side]["test_file"],
                        row[side]["test_symbol"],
                    ),
                )
        self.assertEqual(
            CHECK.assumption_ledger_statuses(ROOT)[
                "ZK-ASSUME-DIVERSIFIER-HASH-TO-GENERATOR-NONIDENTITY"
            ],
            "assumed",
        )
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "absent from the complete baseline",
        ):
            CHECK.validate_native_census(
                ROOT,
                census_path,
                {"DEC-AUTHORIZATION-KEY-NONIDENTITY"},
            )

        with tempfile.TemporaryDirectory() as directory:
            census["assumption_ids"] = []
            mutated = Path(directory) / "native-census.json"
            mutated.write_text(
                json.dumps(census, indent=2, ensure_ascii=False) + "\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(
                CHECK.SpecificationCompletenessError,
                "native type-parity assumption census mismatch",
            ):
                CHECK.validate_native_census(
                    ROOT, mutated, set(CHECK.PREDICATE_BASELINE)
                )

    def test_native_census_evidence_mutations_fail_closed_on_both_sides(
        self,
    ) -> None:
        census_relative = (
            "crates/core/component/shielded-pool/formal/"
            "native-circuit-predicate-census.json"
        )
        assumption_relative = (
            "crates/core/component/compliance/formal/"
            "assumption-ledger.md"
        )
        census = json.loads(
            (ROOT / census_relative).read_text(encoding="utf-8")
        )
        evidence_files = {
            evidence[key]
            for row in census["predicates"]
            for side in ("domain_enforcement", "r1cs_enforcement")
            for evidence in (row[side],)
            for key in ("source_file", "test_file")
        }
        fixture_files = {
            census_relative,
            assumption_relative,
            "crates/core/keys/Cargo.toml",
            *evidence_files,
        }

        def restore_fixture(fixture_root: Path) -> None:
            for relative in fixture_files:
                destination = fixture_root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative, destination)

        def declaration(
            path: Path,
            symbol: str,
        ) -> tuple[str, dict[str, object]]:
            source = path.read_text(encoding="utf-8")
            function = CHECK._one_rust_function(
                CHECK._rust_function_declarations(source),
                symbol,
                "mutation fixture",
            )
            return source, function

        def delete_declaration(path: Path, symbol: str) -> None:
            source, function = declaration(path, symbol)
            path.write_text(
                source[: function["start"]] + source[function["end"] :],
                encoding="utf-8",
            )

        def rename_declaration(path: Path, symbol: str) -> None:
            source, function = declaration(path, symbol)
            scrubbed = CHECK._without_source_comments(source)
            header = scrubbed[
                function["start"] : function["body_start"]
            ]
            match = re.search(
                rf"\bfn\s+(?P<name>{re.escape(symbol)})\b",
                header,
            )
            self.assertIsNotNone(match)
            assert match is not None
            start = function["start"] + match.start("name")
            end = function["start"] + match.end("name")
            path.write_text(
                source[:start] + f"renamed_{symbol}" + source[end:],
                encoding="utf-8",
            )

        def add_attribute(
            path: Path,
            symbol: str,
            attribute: str,
        ) -> None:
            source, function = declaration(path, symbol)
            path.write_text(
                source[: function["start"]]
                + attribute
                + "\n"
                + source[function["start"] :],
                encoding="utf-8",
            )

        def replace_with_comment(
            path: Path,
            symbol: str,
            declaration_kind: str,
        ) -> None:
            delete_declaration(path, symbol)
            prefix = "#[test]\n// " if declaration_kind == "test" else ""
            path.write_text(
                path.read_text(encoding="utf-8")
                + f"\n// {prefix}fn {symbol}() {{}}\n",
                encoding="utf-8",
            )

        mutations = (
            (
                "deleted_source",
                "source_file",
                "source_symbol",
                delete_declaration,
                "source: Rust function .* found 0",
            ),
            (
                "comment_only_source",
                "source_file",
                "source_symbol",
                lambda path, symbol: replace_with_comment(
                    path,
                    symbol,
                    "source",
                ),
                "source: Rust function .* found 0",
            ),
            (
                "renamed_source",
                "source_file",
                "source_symbol",
                rename_declaration,
                "source: Rust function .* found 0",
            ),
            (
                "deleted_test",
                "test_file",
                "test_symbol",
                delete_declaration,
                "concrete Rust test declaration, found 0",
            ),
            (
                "comment_only_test",
                "test_file",
                "test_symbol",
                lambda path, symbol: replace_with_comment(
                    path,
                    symbol,
                    "test",
                ),
                "concrete Rust test declaration, found 0",
            ),
            (
                "renamed_test",
                "test_file",
                "test_symbol",
                rename_declaration,
                "concrete Rust test declaration, found 0",
            ),
            (
                "ignored_test",
                "test_file",
                "test_symbol",
                lambda path, symbol: add_attribute(
                    path, symbol, "#[ignore]"
                ),
                "ignored and cannot be evidence",
            ),
            (
                "cfg_disabled_test",
                "test_file",
                "test_symbol",
                lambda path, symbol: add_attribute(
                    path, symbol, "#[cfg(any())]"
                ),
                "cfg-disabled under its exact test execution",
            ),
        )

        with tempfile.TemporaryDirectory() as directory:
            fixture_root = Path(directory)
            restore_fixture(fixture_root)
            CHECK.validate_native_census(
                fixture_root,
                fixture_root / census_relative,
                set(CHECK.PREDICATE_BASELINE),
            )
            for row in census["predicates"]:
                for side in ("domain_enforcement", "r1cs_enforcement"):
                    evidence = row[side]
                    for (
                        mutation_name,
                        path_key,
                        symbol_key,
                        mutation,
                        expected_error,
                    ) in mutations:
                        with self.subTest(
                            predicate=row["predicate_id"],
                            side=side,
                            mutation=mutation_name,
                        ):
                            restore_fixture(fixture_root)
                            mutation(
                                fixture_root / evidence[path_key],
                                evidence[symbol_key],
                            )
                            with self.assertRaisesRegex(
                                CHECK.SpecificationCompletenessError,
                                expected_error,
                            ):
                                CHECK.validate_native_census(
                                    fixture_root,
                                    fixture_root / census_relative,
                                    set(CHECK.PREDICATE_BASELINE),
                                )

    def test_native_census_rejects_host_only_r1cs_rejection_evidence(
        self,
    ) -> None:
        census_relative = (
            "crates/core/component/shielded-pool/formal/"
            "native-circuit-predicate-census.json"
        )
        assumption_relative = (
            "crates/core/component/compliance/formal/"
            "assumption-ledger.md"
        )
        census = json.loads(
            (ROOT / census_relative).read_text(encoding="utf-8")
        )
        evidence_files = {
            evidence[key]
            for row in census["predicates"]
            for side in ("domain_enforcement", "r1cs_enforcement")
            for evidence in (row[side],)
            for key in ("source_file", "test_file")
        }
        fixture_files = {
            census_relative,
            assumption_relative,
            "crates/core/keys/Cargo.toml",
            *evidence_files,
        }

        def restore_fixture(fixture_root: Path) -> None:
            for relative in fixture_files:
                destination = fixture_root / relative
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT / relative, destination)

        with tempfile.TemporaryDirectory() as directory:
            fixture_root = Path(directory)
            for row in census["predicates"]:
                predicate_id = row["predicate_id"]
                evidence = row["r1cs_enforcement"]

                with self.subTest(
                    predicate=predicate_id,
                    mutation="host_only_source_rejection",
                ):
                    restore_fixture(fixture_root)
                    source_path = fixture_root / evidence["source_file"]
                    source = source_path.read_text(encoding="utf-8")
                    function = CHECK._one_rust_function(
                        CHECK._rust_function_declarations(source),
                        evidence["source_symbol"],
                        "host-only source mutation",
                    )
                    source_path.write_text(
                        source[: function["body_start"]]
                        + "{\n    Err(SynthesisError::Unsatisfiable)\n}"
                        + source[function["end"] :],
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        "missing required algebraic constraint operations",
                    ):
                        CHECK.validate_native_census(
                            fixture_root,
                            fixture_root / census_relative,
                            set(CHECK.PREDICATE_BASELINE),
                        )

                with self.subTest(
                    predicate=predicate_id,
                    mutation="test_accepts_synthesis_rejection",
                ):
                    restore_fixture(fixture_root)
                    test_path = fixture_root / evidence["test_file"]
                    source = test_path.read_text(encoding="utf-8")
                    function = CHECK._one_rust_function(
                        CHECK._rust_function_declarations(source),
                        evidence["test_symbol"],
                        "host-only test mutation",
                    )
                    body = source[
                        function["body_start"] : function["end"]
                    ]
                    pattern = re.compile(
                        rf"(\b{re.escape(evidence['source_symbol'])}"
                        r"\s*\([^;]*\)\s*)\.expect\s*\("
                    )
                    mutated_body, count = pattern.subn(
                        r"\1.expect_err(",
                        body,
                    )
                    expected_error = (
                        "must directly invoke the named enforcement function "
                        "and require successful synthesis"
                    )
                    if count == 0:
                        pattern = re.compile(
                            rf"(\b{re.escape(evidence['native_type'])}"
                            r"\s*::\s*new_witness\s*\([^;]*\)\s*)"
                            r"\.expect\s*\("
                        )
                        mutated_body, count = pattern.subn(
                            r"\1.expect_err(",
                            body,
                        )
                        expected_error = (
                            "must invoke the named enforcement function "
                            "directly or allocate the enforced native type "
                            "and require successful synthesis"
                        )
                    self.assertGreaterEqual(
                        count,
                        1,
                        "the canonical R1CS test must require successful "
                        "predicate synthesis through its reviewed path",
                    )
                    test_path.write_text(
                        source[: function["body_start"]]
                        + mutated_body
                        + source[function["end"] :],
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        expected_error,
                    ):
                        CHECK.validate_native_census(
                            fixture_root,
                            fixture_root / census_relative,
                            set(CHECK.PREDICATE_BASELINE),
                        )

    def test_native_census_schema_mutations_fail_closed(self) -> None:
        census_path = (
            ROOT
            / "crates/core/component/shielded-pool/formal"
            / "native-circuit-predicate-census.json"
        )
        census = json.loads(census_path.read_text(encoding="utf-8"))
        mutations: list[tuple[str, dict[str, object], str]] = []

        legacy_schema = deepcopy(census)
        legacy_schema["schema_version"] = 2
        mutations.append(
            ("legacy_schema", legacy_schema, "unsupported native type-parity census")
        )

        missing_side = deepcopy(census)
        del missing_side["predicates"][0]["domain_enforcement"]
        mutations.append(
            ("missing_side", missing_side, "native predicate\\[0\\] fields")
        )

        missing_predicate = deepcopy(census)
        missing_predicate["predicates"].pop()
        mutations.append(
            (
                "missing_predicate",
                missing_predicate,
                "native type-parity predicate census mismatch",
            )
        )

        wrong_type = deepcopy(census)
        wrong_type["predicates"][0]["domain_enforcement"][
            "native_type"
        ] = "UncheckedViewingKey"
        mutations.append(
            ("wrong_type", wrong_type, "type drifted from the independent baseline")
        )

        stale_selector = deepcopy(census)
        stale_selector["predicates"][0]["domain_enforcement"][
            "test_execution"
        ]["selector"] = "renamed_test"
        mutations.append(
            (
                "stale_selector",
                stale_selector,
                "test execution drifted from the code-owned exact Cargo selector",
            )
        )

        reused_evidence = deepcopy(census)
        first = reused_evidence["predicates"][0]
        first["r1cs_enforcement"] = deepcopy(first["domain_enforcement"])
        first["r1cs_enforcement"]["native_type"] = "AuthorizationKeyVar"
        mutations.append(
            (
                "reused_evidence",
                reused_evidence,
                "domain and R1CS enforcement reuse one source function",
            )
        )

        duplicate_predicate = deepcopy(census)
        duplicate_predicate["predicates"].insert(
            1,
            deepcopy(duplicate_predicate["predicates"][0]),
        )
        mutations.append(
            (
                "duplicate_predicate",
                duplicate_predicate,
                "native type-parity census duplicates",
            )
        )

        with tempfile.TemporaryDirectory() as directory:
            mutated = Path(directory) / "native-census.json"
            for name, payload, expected_error in mutations:
                with self.subTest(mutation=name):
                    mutated.write_text(
                        json.dumps(payload, indent=2, ensure_ascii=False)
                        + "\n",
                        encoding="utf-8",
                    )
                    with self.assertRaisesRegex(
                        CHECK.SpecificationCompletenessError,
                        expected_error,
                    ):
                        CHECK.validate_native_census(
                            ROOT,
                            mutated,
                            set(CHECK.PREDICATE_BASELINE),
                        )

    def test_certified_profile_requires_closed_and_mapped_status(self) -> None:
        catalog = list(profiles())
        statuses = [
            {
                "profile": profile["label"],
                "coverage_status": "coverage_closed",
                "specification_status": "specification_closed",
                "computed_status": "specification_closed",
                "relation_evidence": "mapped",
                "setup_trust_status": CHECK.SETUP_TRUST_STATUS,
                "setup_trust_assumption_ids": list(
                    CHECK.SETUP_TRUST_ASSUMPTION_IDS
                ),
            }
            for profile in catalog
        ]
        CHECK.validate_profile_certification_join(catalog, statuses)

        setup_drift = deepcopy(statuses)
        setup_drift[0]["setup_trust_status"] = "verified"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "obscures the conditional Groth16 setup trust",
        ):
            CHECK.validate_profile_certification_join(
                catalog, setup_drift
            )

        certified = next(
            profile for profile in catalog if profile["status"] == "certified"
        )
        next(
            status
            for status in statuses
            if status["profile"] == certified["label"]
        )["computed_status"] = "draft"
        with self.assertRaisesRegex(
            CHECK.SpecificationCompletenessError,
            "certified FV profile lacks a closed specification",
        ):
            CHECK.validate_profile_certification_join(catalog, statuses)

        next(
            status
            for status in statuses
            if status["profile"] == certified["label"]
        )["computed_status"] = "specification_closed"
        for relation_evidence in ("not_evaluated", "missing", "stale", None):
            with self.subTest(relation_evidence=relation_evidence):
                candidate_statuses = deepcopy(statuses)
                target = next(
                    status
                    for status in candidate_statuses
                    if status["profile"] == certified["label"]
                )
                if relation_evidence is None:
                    target.pop("relation_evidence")
                else:
                    target["relation_evidence"] = relation_evidence
                with self.assertRaisesRegex(
                    CHECK.SpecificationCompletenessError,
                    "lacks current mapped relation evidence",
                ):
                    CHECK.validate_profile_certification_join(
                        catalog, candidate_statuses
                    )


if __name__ == "__main__":
    unittest.main()
