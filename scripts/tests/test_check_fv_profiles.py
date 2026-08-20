import importlib.util
import json
import os
import tempfile
import unittest
from copy import deepcopy
from pathlib import Path
from unittest import mock


SCRIPT = Path(__file__).resolve().parents[1] / "check-fv-profiles.py"
SPEC = importlib.util.spec_from_file_location("check_fv_profiles", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
CHECK = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(CHECK)


def transfer_profile() -> dict[str, object]:
    witness_version, proof_witnesses = CHECK.PROFILE_ABI["transfer"]
    return {
        "label": "transfer",
        "kind": "transfer",
        "n_in": 2,
        "n_out": 2,
        "witness_format_version": witness_version,
        "proof_witnesses": [
            {"case": proof_case, "path": witness_path}
            for proof_case, witness_path in proof_witnesses
        ],
        "artifact_dir": "artifacts/transfer",
        "manifest": "artifacts/transfer/transfer-manifest.json",
        "status": "candidate",
        "theorem_root": None,
        "coverage_report": None,
    }


class ProfilePromotionTests(unittest.TestCase):
    def test_certified_profile_requires_computed_specification_closure(
        self,
    ) -> None:
        profiles = deepcopy(CHECK.load_profiles())
        profiles[0]["status"] = "certified"
        statuses = tuple(
            {
                "profile": profile["label"],
                "coverage_status": "coverage_closed",
                "specification_status": "specification_closed",
                "computed_status": (
                    "draft"
                    if profile["status"] == "certified"
                    else "specification_closed"
                ),
                "relation_evidence": "mapped",
                "setup_trust_status": "conditional_unverified_ceremony",
                "setup_trust_assumption_ids": [
                    "ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE"
                ],
            }
            for profile in profiles
        )
        with mock.patch.object(
            CHECK,
            "load_specification_completeness",
            return_value=statuses,
        ):
            with self.assertRaisesRegex(
                SystemExit,
                "certified FV profile lacks a closed specification",
            ):
                CHECK.validate_specification_completeness(profiles)

    def test_specification_closure_does_not_self_promote_candidate(
        self,
    ) -> None:
        profiles = deepcopy(CHECK.load_profiles())
        for profile in profiles:
            profile["status"] = "candidate"
        statuses = tuple(
            {
                "profile": profile["label"],
                "computed_status": "specification_closed",
                "setup_trust_status": "conditional_unverified_ceremony",
                "setup_trust_assumption_ids": [
                    "ZK-ASSUME-GROTH16-SETUP-TOXIC-WASTE"
                ],
            }
            for profile in profiles
        )
        with mock.patch.object(
            CHECK,
            "load_specification_completeness",
            return_value=statuses,
        ):
            CHECK.validate_specification_completeness(profiles)
        self.assertTrue(
            all(profile["status"] == "candidate" for profile in profiles)
        )

    def test_code_owned_identities_pin_one_statement_public_input(self) -> None:
        self.assertTrue(CHECK.CERTIFICATION_IDENTITIES)
        for label, identity in CHECK.CERTIFICATION_IDENTITIES.items():
            with self.subTest(label=label):
                # gnark includes the constant wire in nb_public_variables.
                self.assertEqual(identity.public_variable_count, 2)

    def test_deployed_family_action_and_theorem_namespaces_are_distinct(self) -> None:
        for label in ("transfer", "shielded_ics20_withdrawal"):
            identity = CHECK.CERTIFICATION_IDENTITIES[label]
            with self.subTest(label=label):
                self.assertTrue(identity.action_namespace.endswith(".C"))
                self.assertFalse(identity.theorem_namespace.endswith(".C"))
                self.assertTrue(
                    identity.transaction_declaration.startswith(
                        identity.theorem_namespace + "."
                    )
                )

    def test_manifest_rejects_unconstrained_witness_wires(self) -> None:
        wires = [
            {
                "wire_id": 1,
                "path": "ClaimedStatementHash",
                "visibility": "public",
                "constraint_rows": 0,
            }
        ]
        with self.assertRaisesRegex(SystemExit, "influences no constraints"):
            CHECK.validate_manifest_witness_wires(
                "transfer",
                wires,
                public_variables=2,
                secret_variables=0,
            )

    def test_every_certified_profile_has_an_exact_backend(self) -> None:
        profiles = CHECK.load_profiles()
        certified = {
            profile["label"]
            for profile in profiles
            if profile["status"] == "certified"
        }
        backends = CHECK.load_certification_backends()
        self.assertLessEqual(certified, set(backends))
        for label in certified:
            backend = backends[label]
            self.assertIn(backend["theorem_root"], backend["build_modules"], label)
            self.assertTrue(backend["axiom_targets"], label)
            self.assertEqual(
                CHECK.backend_identity_errors(backend),
                [],
                label,
            )

    def test_backend_cannot_redirect_a_family_to_another_final_theorem(
        self,
    ) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["note_reshape8x1"]
        )
        backend["label"] = "transfer"

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(
            any("contract_module" in error for error in errors), errors
        )
        self.assertTrue(any("theorem_root" in error for error in errors), errors)
        self.assertTrue(
            any(
                "noncanonical consensusAccepted_of_deployedRelation" in error
                for error in errors
            ),
            errors,
        )

    def test_versioned_label_cannot_bypass_code_owned_identity(self) -> None:
        profile = transfer_profile()
        profile["label"] = "transfer_v_next"
        runtime = {"transfer_v_next": ("transfer", 2, 2)}

        with self.assertRaisesRegex(
            SystemExit, "no code-owned certification identity"
        ):
            CHECK.validate_profile(profile, runtime)

    def test_backend_cannot_substitute_a_same_suffix_final_declaration(
        self,
    ) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["note_reshape8x1"]
        )
        identity = CHECK.CERTIFICATION_IDENTITIES["note_reshape8x1"]
        target = next(
            target
            for target in backend["axiom_targets"]
            if identity.final_declaration in target["declarations"]
        )
        target["declarations"] = [
            (
                "Shieldd.GnarkFormal.Deployed.Unrelated.C."
                "consensusAccepted_of_deployedRelation"
                if declaration == identity.final_declaration
                else declaration
            )
            for declaration in target["declarations"]
        ]

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(
            any(identity.final_declaration in error for error in errors), errors
        )
        self.assertTrue(
            any(
                "noncanonical consensusAccepted_of_deployedRelation" in error
                for error in errors
            ),
            errors,
        )

    def test_backend_final_and_refinement_must_be_audited_from_canonical_root(
        self,
    ) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["note_reshape8x1"]
        )
        identity = CHECK.CERTIFICATION_IDENTITIES["note_reshape8x1"]
        target = next(
            target
            for target in backend["axiom_targets"]
            if identity.final_declaration in target["declarations"]
        )
        target["root_module"] = "ShielddGnarkFormal.Deployed.PrimeOrderCertificate"

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(
            any(
                identity.final_declaration in error
                and identity.theorem_root in error
                for error in errors
            ),
            errors,
        )
        self.assertTrue(
            any(
                identity.refinement_declaration in error
                and identity.theorem_root in error
                for error in errors
            ),
            errors,
        )

    def test_backend_security_consequence_must_be_built_and_audited(self) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["note_reshape8x1"]
        )
        identity = CHECK.CERTIFICATION_IDENTITIES["note_reshape8x1"]
        backend["build_modules"].remove(identity.security_root)
        backend["axiom_targets"] = [
            target
            for target in backend["axiom_targets"]
            if identity.security_declaration not in target["declarations"]
        ]

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(
            any(identity.security_root in error for error in errors), errors
        )
        self.assertTrue(
            any(identity.security_declaration in error for error in errors),
            errors,
        )

    def test_backend_transaction_consequence_must_be_audited(self) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["note_reshape8x1"]
        )
        identity = CHECK.CERTIFICATION_IDENTITIES["note_reshape8x1"]
        backend["axiom_targets"] = [
            {
                **target,
                "declarations": [
                    declaration
                    for declaration in target["declarations"]
                    if declaration != identity.transaction_declaration
                ],
            }
            for target in backend["axiom_targets"]
        ]

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(
            any(identity.transaction_declaration in error for error in errors),
            errors,
        )

    def test_every_predicate_consequence_is_built_and_audited_exactly(self) -> None:
        backends = CHECK.load_certification_backends()
        expected = CHECK.predicate_consequence_declarations()
        for label, backend in backends.items():
            identity = CHECK.CERTIFICATION_IDENTITIES[label]
            with self.subTest(label=label):
                self.assertIn(
                    identity.specification_root,
                    backend["build_modules"],
                )
                target = next(
                    item
                    for item in backend["axiom_targets"]
                    if item["root_module"] == identity.specification_root
                )
                self.assertEqual(
                    tuple(target["declarations"]),
                    expected[label],
                )

    def test_backend_rejects_one_missing_predicate_consequence(self) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["transfer"]
        )
        identity = CHECK.CERTIFICATION_IDENTITIES["transfer"]
        target = next(
            item
            for item in backend["axiom_targets"]
            if item["root_module"] == identity.specification_root
        )
        missing = target["declarations"].pop()

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(any(missing in error for error in errors), errors)

    def test_backend_cannot_redirect_security_consequence(self) -> None:
        backend = deepcopy(
            CHECK.load_certification_backends()["note_reshape8x1"]
        )
        identity = CHECK.CERTIFICATION_IDENTITIES["note_reshape8x1"]
        target = next(
            target
            for target in backend["axiom_targets"]
            if identity.security_declaration in target["declarations"]
        )
        target["root_module"] = "ShielddGnarkFormal.Deployed.PrimeOrderCertificate"

        errors = CHECK.backend_identity_errors(backend)

        self.assertTrue(
            any(
                identity.security_declaration in error
                and identity.security_root in error
                for error in errors
            ),
            errors,
        )

    def test_generated_lean_checks_pin_transfer_and_withdrawal_types(
        self,
    ) -> None:
        source = CHECK.render_lean_certification_checks(
            ["transfer", "shielded_ics20_withdrawal"]
        )

        for expected in (
            "Contracts.Transfer.relationAll rho",
            "Protocol.Transfer.CircuitFacts",
            "Protocol.Transfer.ConsensusAccepted",
            "Protocol.Transfer.TransactionAccepted",
            "Protocol.Transfer.AtomicSecurityConsequences",
            "TransferRefinement.C.action rho",
            "TransferRefinement.transactionAccepted_of_deployedRelation",
            "Contracts.ShieldedIcs20Withdrawal.relationAll rho",
            "Protocol.ShieldedIcs20Withdrawal.CircuitFacts",
            "Protocol.ShieldedIcs20Withdrawal.ConsensusAccepted",
            "Protocol.ShieldedIcs20Withdrawal.TransactionAccepted",
            "Protocol.ShieldedIcs20Withdrawal.AtomicSecurityConsequences",
            "ShieldedIcs20WithdrawalRefinement.C.action rho",
            "ShieldedIcs20WithdrawalRefinement."
            "transactionAccepted_of_deployedRelation",
            "CommittedWithdrawalEffects",
        ):
            self.assertIn(expected, source)
        self.assertEqual(
            source.count(
                "checks before delta after payload rho h external"
            ),
            2,
        )
        self.assertNotIn(
            "checks before delta after rho h payload external",
            source,
        )

    def test_candidate_manifest_accepts_explicit_unclassified_bucket(self) -> None:
        segments = [
            {
                "index": 1,
                "op": "candidate.unmodeled",
                "args": ["reason=semantic_trace_pending"],
                "kind": "unclassified",
                "start": 0,
                "end": 67_014,
                "constraint_count": 67_014,
                "classification_note": "candidate coverage pending",
            }
        ]
        breakdown = {
            "total_constraints": 67_014,
            "constraints_by_kind": {"unclassified": 67_014},
            "segments_by_kind": {"unclassified": 1},
            "unclassified_constraints": 67_014,
            "unclassified_segments": 1,
        }

        CHECK.validate_manifest_segments(
            "shielded_ics20_withdrawal", segments, breakdown, 67_014
        )

    def test_manifest_recomputes_segment_and_unclassified_totals(self) -> None:
        segments = [
            {
                "index": 1,
                "op": "candidate.unmodeled",
                "kind": "unclassified",
                "start": 0,
                "end": 3,
                "constraint_count": 3,
            }
        ]
        breakdown = {
            "total_constraints": 3,
            "constraints_by_kind": {"unclassified": 2},
            "segments_by_kind": {"unclassified": 1},
            "unclassified_constraints": 3,
            "unclassified_segments": 1,
        }
        with self.assertRaisesRegex(SystemExit, "constraint total"):
            CHECK.validate_manifest_segments("candidate", segments, breakdown, 3)

        breakdown["constraints_by_kind"]["unclassified"] = 3
        breakdown["unclassified_constraints"] = 0
        with self.assertRaisesRegex(SystemExit, "unclassified constraint total"):
            CHECK.validate_manifest_segments("candidate", segments, breakdown, 3)

    def test_transfer_cannot_self_promote_without_an_exact_backend(self) -> None:
        profile = transfer_profile()
        profile["status"] = "certified"
        profile["theorem_root"] = (
            CHECK.CERTIFICATION_IDENTITIES["transfer"].theorem_root
        )
        profile["coverage_report"] = (
            "crates/core/component/shielded-pool/formal/"
            "transfer-constraint-coverage-report.json"
        )

        backends = {
            label: backend
            for label, backend in CHECK.load_certification_backends().items()
            if label != "transfer"
        }
        with mock.patch.object(
            CHECK, "load_certification_backends", return_value=backends
        ):
            with self.assertRaisesRegex(
                SystemExit, "no exact certification backend"
            ):
                CHECK.validate_profile(profile)

    def test_candidate_cannot_publish_partial_certification_roots(self) -> None:
        profile = transfer_profile()
        profile["coverage_report"] = (
            "crates/core/component/shielded-pool/formal/"
            "note_reshape8x1-constraint-coverage-report.json"
        )

        with self.assertRaisesRegex(
            SystemExit, "must have null theorem and coverage roots"
        ):
            CHECK.validate_profile(profile)

    def test_profile_cannot_redirect_or_relabel_the_canonical_witness_matrix(
        self,
    ) -> None:
        profile = transfer_profile()
        profile["proof_witnesses"][0]["path"] = (
            "internal/testfixtures/vectors/shielded_ics20_withdrawal_witness_v7.bin"
        )
        with self.assertRaisesRegex(SystemExit, "proof witness matrix"):
            CHECK.validate_profile(profile)

        profile = transfer_profile()
        profile["witness_format_version"] = 11
        with self.assertRaisesRegex(SystemExit, "witness format version"):
            CHECK.validate_profile(profile)

    def test_profile_paths_reject_lexical_aliases(self) -> None:
        with self.assertRaisesRegex(SystemExit, "normalized relative path"):
            CHECK.profile_path(
                "transfer",
                "witness",
                "internal/testfixtures/../testfixtures/vectors/transfer_witness_v19.bin",
                base=CHECK.GNARK,
                expected_kind="file",
            )

    def test_authenticated_paths_reject_every_filesystem_alias(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            workspace = Path(directory)
            root = workspace / "root"
            root.mkdir()
            ordinary = root / "ordinary.bin"
            ordinary.write_bytes(b"ordinary")
            self.assertEqual(
                CHECK.authenticated_path(
                    ordinary,
                    "ordinary",
                    root=root,
                    expected_kind="file",
                ),
                ordinary.resolve(),
            )

            root_alias = workspace / "root-alias"
            root_alias.symlink_to(root, target_is_directory=True)
            with self.assertRaisesRegex(SystemExit, "root is symlinked"):
                CHECK.authenticated_path(
                    root_alias / ordinary.name,
                    "root alias",
                    root=root_alias,
                    expected_kind="file",
                )

            real_directory = root / "real"
            real_directory.mkdir()
            nested = real_directory / "nested.bin"
            nested.write_bytes(b"nested")
            component_alias = root / "component-alias"
            component_alias.symlink_to(
                real_directory, target_is_directory=True
            )
            with self.assertRaisesRegex(SystemExit, "symlinked path component"):
                CHECK.authenticated_path(
                    component_alias / nested.name,
                    "component alias",
                    root=root,
                    expected_kind="file",
                )

            leaf_alias = root / "leaf-alias.bin"
            leaf_alias.symlink_to(ordinary.name)
            with self.assertRaisesRegex(SystemExit, "symlinked path component"):
                CHECK.authenticated_path(
                    leaf_alias,
                    "leaf alias",
                    root=root,
                    expected_kind="file",
                )

            hardlink = root / "hardlink.bin"
            os.link(ordinary, hardlink)
            with self.assertRaisesRegex(SystemExit, "physical aliases"):
                CHECK.authenticated_path(
                    ordinary,
                    "hardlink source",
                    root=root,
                    expected_kind="file",
                )
            with self.assertRaisesRegex(SystemExit, "physical aliases"):
                CHECK.authenticated_path(
                    hardlink,
                    "hardlink alias",
                    root=root,
                    expected_kind="file",
                )

    def test_authenticated_paths_require_exact_filesystem_kind(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            file_path = root / "file"
            file_path.write_bytes(b"x")
            directory_path = root / "directory"
            directory_path.mkdir()
            with self.assertRaisesRegex(SystemExit, "not a regular file"):
                CHECK.authenticated_path(
                    directory_path,
                    "directory as file",
                    root=root,
                    expected_kind="file",
                )
            with self.assertRaisesRegex(SystemExit, "not a directory"):
                CHECK.authenticated_path(
                    file_path,
                    "file as directory",
                    root=root,
                    expected_kind="directory",
                )

    def test_profile_path_uses_an_explicit_base_and_rejects_parent_hops(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "nested").mkdir()
            expected = root / "nested" / "evidence.json"
            expected.write_text("{}\n", encoding="utf-8")
            self.assertEqual(
                CHECK.profile_path(
                    "profile",
                    "evidence",
                    "nested/evidence.json",
                    base=root,
                    expected_kind="file",
                ),
                expected.resolve(),
            )
            with self.assertRaisesRegex(
                SystemExit, "normalized relative path"
            ):
                CHECK.profile_path(
                    "profile",
                    "coverage_report",
                    "../evidence.json",
                    base=root,
                    expected_kind="file",
                )

    def test_strict_json_rejects_ambiguous_values(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "input.json"
            cases = (
                ('{"schema": 1, "schema": 2}', "duplicate JSON key 'schema'"),
                ('{"schema": 1e10000}', "non-finite JSON number"),
                ('{"schema": "\\ud800"}', "unpaired Unicode surrogate"),
            )
            for source, message in cases:
                with self.subTest(message=message):
                    path.write_text(source, encoding="utf-8")
                    with self.assertRaisesRegex(SystemExit, message):
                        CHECK.load_json(path, "test")

    def test_semantic_binding_metadata_is_exact_at_every_level(self) -> None:
        binding = {
            "name": "value",
            "expressions": [
                {
                    "constant": "0",
                    "terms": [{"wire_id": 1, "coefficient": "1"}],
                }
            ],
        }
        CHECK.validate_manifest_semantic_bindings("test", [binding], 1)
        for target in (
            binding,
            binding["expressions"][0],
            binding["expressions"][0]["terms"][0],
        ):
            mutated = json.loads(json.dumps(binding))
            if target is binding:
                mutated["ignored"] = True
            elif target is binding["expressions"][0]:
                mutated["expressions"][0]["ignored"] = True
            else:
                mutated["expressions"][0]["terms"][0]["ignored"] = True
            with self.assertRaisesRegex(SystemExit, "unexpected field set"):
                CHECK.validate_manifest_semantic_bindings(
                    "test", [mutated], 1
                )

    def test_metadata_rejects_formatting_aliases(self) -> None:
        metadata = {
            "schema": "shieldd.gnark.circuit_metadata.v2",
            "curve": "bls12-377",
            "circuit": "transfer",
            "proving_key_size_bytes": 1,
            "verifying_key_size_bytes": 1,
            "nb_constraints": 1,
            "nb_public_variables": 2,
            "nb_secret_variables": 1,
            "sr1cs_sha256_hex": "0" * 64,
            "setup_provenance_sha256_hex": "4" * 64,
            "proving_key_sha256_hex": "1" * 64,
            "verifying_key_binary_sha256_hex": "2" * 64,
            "verifying_key_json_sha256_hex": "3" * 64,
        }
        canonical = (
            json.dumps(
                {
                    field: metadata[field]
                    for field in CHECK.METADATA_FIELD_ORDER
                },
                indent=2,
                allow_nan=False,
            )
            + "\n"
        )
        CHECK.validate_canonical_metadata_json(
            metadata,
            canonical,
            "transfer",
        )
        with self.assertRaisesRegex(SystemExit, "not canonical"):
            CHECK.validate_canonical_metadata_json(
                metadata,
                json.dumps(metadata),
                "transfer",
            )

    def test_witness_header_rejects_noncanonical_magic_and_length(self) -> None:
        canonical = b"PTWG" + (11).to_bytes(4, "little") + (12).to_bytes(
            4, "little"
        )
        CHECK.validate_witness_header("transfer", "transfer", 11, canonical)

        with self.assertRaisesRegex(SystemExit, "witness magic"):
            CHECK.validate_witness_header(
                "transfer", "transfer", 11, b"XXXX" + canonical[4:]
            )
        with self.assertRaisesRegex(SystemExit, "witness header length"):
            CHECK.validate_witness_header(
                "transfer",
                "transfer",
                11,
                canonical[:8] + (13).to_bytes(4, "little"),
            )

    def test_new_generated_runtime_family_requires_an_fv_profile(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            registry = Path(directory) / "transfer_families_generated.go"
            registry.write_text(
                """package generated

var TransferFamilies = []TransferFamilySpec{
    {Label: "transfer", NIn: 2, NOut: 2},
    {Label: "transfer3x3", NIn: 3, NOut: 3},
}
""",
                encoding="utf-8",
            )
            runtime = CHECK.parse_generated_go_registry(
                registry,
                "TransferFamilies",
                "transfer",
                root=Path(directory),
            )
            abi = {
                "transfer": (
                    11,
                    (
                        (
                            "regulated_unflagged",
                            "internal/testfixtures/vectors/"
                            "transfer_witness_v19.bin",
                        ),
                    ),
                ),
                "transfer3x3": (
                    11,
                    (
                        (
                            "regulated_unflagged",
                            "internal/testfixtures/vectors/"
                            "transfer3x3_witness_v19.bin",
                        ),
                    ),
                ),
            }
            with self.assertRaisesRegex(
                SystemExit,
                r"catalog/runtime registry mismatch: missing=\['transfer3x3'\]",
            ):
                CHECK.validate_registry_completeness(
                    {"transfer"}, runtime, profile_abi=abi
                )

    def test_runtime_registry_shapes_match_current_profile_abi(self) -> None:
        runtime = CHECK.load_runtime_profiles()
        self.assertEqual(set(runtime), set(CHECK.PROFILE_ABI))
        self.assertEqual(runtime["transfer"], ("transfer", 2, 2))
        self.assertEqual(
            runtime["shielded_ics20_withdrawal"],
            ("shielded_ics20_withdrawal", 2, 1),
        )

    def test_transfer_profile_pins_all_security_branch_witnesses(self) -> None:
        _, proof_witnesses = CHECK.PROFILE_ABI["transfer"]
        self.assertEqual(
            tuple(proof_case for proof_case, _ in proof_witnesses),
            (
                "regulated_unflagged",
                "regulated_flagged_hidden",
                "unregulated_hidden",
            ),
        )

    def test_withdrawal_profile_pins_optional_and_regulation_branches(
        self,
    ) -> None:
        version, proof_witnesses = CHECK.PROFILE_ABI[
            "shielded_ics20_withdrawal"
        ]
        self.assertEqual(version, 10)
        self.assertEqual(
            tuple(proof_case for proof_case, _ in proof_witnesses),
            ("regulated_optional_real", "unregulated_optional_dummy"),
        )

    def test_profile_rejects_duplicate_proof_case_or_path(self) -> None:
        profile = transfer_profile()
        profile["proof_witnesses"][1]["case"] = profile["proof_witnesses"][0][
            "case"
        ]
        with self.assertRaisesRegex(SystemExit, "duplicate proof witness case"):
            CHECK.validate_profile(profile)

        profile = transfer_profile()
        profile["proof_witnesses"][1]["path"] = profile["proof_witnesses"][0][
            "path"
        ]
        with self.assertRaisesRegex(SystemExit, "duplicate proof witness path"):
            CHECK.validate_profile(profile)

    def test_setup_provenance_pins_mode_and_every_canonical_case(self) -> None:
        version, proof_witnesses = CHECK.PROFILE_ABI["transfer"]
        witness_hashes = {
            witness_path: str(index + 1) * 64
            for index, (_, witness_path) in enumerate(proof_witnesses)
        }
        artifact_hashes = {
            "transfer.sr1cs": "a" * 64,
            "proving_key.bin": "b" * 64,
            "verifying_key.bin": "c" * 64,
            "verifying_key.json": "d" * 64,
        }

        def fake_sha256(path: Path) -> str:
            path_text = path.as_posix()
            for witness_path, digest in witness_hashes.items():
                if path_text.endswith(witness_path):
                    return digest
            return artifact_hashes[path.name]

        provenance = {
            "schema": "shieldd.gnark.setup_provenance.v2",
            "curve": "bls12-377",
            "circuit": "transfer",
            "mode": "fresh_setup",
            "sr1cs_sha256_hex": artifact_hashes["transfer.sr1cs"],
            "proving_key_sha256_hex": artifact_hashes["proving_key.bin"],
            "verifying_key_binary_sha256_hex": artifact_hashes[
                "verifying_key.bin"
            ],
            "verifying_key_json_sha256_hex": artifact_hashes[
                "verifying_key.json"
            ],
            "generation_self_tests": [
                {
                    "proof_case": proof_case,
                    "witness_format_version": version,
                    "witness_sha256_hex": witness_hashes[witness_path],
                    "proved_and_verified_in_process": True,
                }
                for proof_case, witness_path in proof_witnesses
            ],
            "setup_transcript": "not_recorded",
            "toxic_waste_erasure": "not_mechanically_verified",
        }
        raw = json.dumps(provenance, indent=2, allow_nan=False) + "\n"
        with mock.patch.object(CHECK, "sha256", side_effect=fake_sha256):
            CHECK.validate_setup_provenance(
                "transfer",
                provenance,
                raw,
                proof_witnesses,
                version,
                Path("/artifacts/transfer"),
            )

            wrong_mode = deepcopy(provenance)
            wrong_mode["mode"] = "reused_existing_keys"
            with self.assertRaisesRegex(SystemExit, "setup provenance mode"):
                CHECK.validate_setup_provenance(
                    "transfer",
                    wrong_mode,
                    json.dumps(wrong_mode, indent=2) + "\n",
                    proof_witnesses,
                    version,
                    Path("/artifacts/transfer"),
                )

            missing_case = deepcopy(provenance)
            missing_case["generation_self_tests"].pop()
            with self.assertRaisesRegex(
                SystemExit, "canonical profile cases"
            ):
                CHECK.validate_setup_provenance(
                    "transfer",
                    missing_case,
                    json.dumps(missing_case, indent=2) + "\n",
                    proof_witnesses,
                    version,
                    Path("/artifacts/transfer"),
                )

            legacy_proof_digest = deepcopy(provenance)
            legacy_proof_digest["generation_self_tests"][0][
                "proof_sha256" + "_hex"
            ] = "4" * 64
            with self.assertRaisesRegex(
                SystemExit, "generation self-test 0.*unexpected field set"
            ):
                CHECK.validate_setup_provenance(
                    "transfer",
                    legacy_proof_digest,
                    json.dumps(legacy_proof_digest, indent=2) + "\n",
                    proof_witnesses,
                    version,
                    Path("/artifacts/transfer"),
                )

    def test_deployed_artifact_directory_has_an_exact_roster(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            artifact_dir = Path(directory)
            for name in CHECK.deployed_artifact_roster("transfer"):
                (artifact_dir / name).write_bytes(b"canonical")

            CHECK.validate_deployed_artifact_roster(
                "transfer", artifact_dir
            )

            extra = artifact_dir / "setup-proof.bin"
            extra.write_bytes(b"not durable evidence")
            with self.assertRaisesRegex(
                SystemExit,
                r"deployed artifact directory roster mismatch: .*"
                r"extra=\['setup-proof\.bin'\]",
            ):
                CHECK.validate_deployed_artifact_roster(
                    "transfer", artifact_dir
                )

            extra.unlink()
            (artifact_dir / "verifying_key.json").unlink()
            with self.assertRaisesRegex(
                SystemExit,
                r"deployed artifact directory roster mismatch: "
                r"missing=\['verifying_key\.json'\]",
            ):
                CHECK.validate_deployed_artifact_roster(
                    "transfer", artifact_dir
                )


if __name__ == "__main__":
    unittest.main()
