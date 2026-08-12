#!/usr/bin/env python3

import hashlib
import re
import sys
import unittest
from pathlib import Path
from unittest.mock import patch


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_transfer_semantics as transfer


class TransferSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.outputs = transfer.generated_files()

    def test_emits_exact_local_provider_set(self):
        expected_count = 2 + len(transfer.SALT_KEYS) * (
            2 + 2 * len(transfer.GATE_RANGES)
        )
        self.assertEqual(len(self.outputs), expected_count)
        self.assertEqual(
            transfer.GATE_RANGES,
            tuple((gate, gate) for gate in range(39)),
        )
        expected_mains = {
            transfer.OUT / f"{transfer.template_name(transfer.IS_ZERO_KEY)}.lean",
            *(
                transfer.OUT / f"TGadgetTransferSalt_{digest}.lean"
                for digest in transfer.SALT_KEYS
            ),
        }
        mains = {
            path
            for path in self.outputs
            if path in expected_mains
        }
        self.assertEqual(mains, expected_mains)

    def test_every_file_has_generator_provenance(self):
        for path, source in self.outputs.items():
            self.assertTrue(
                source.startswith(transfer.GENERATED_HEADER),
                path.name,
            )

    def test_providers_are_local_and_semantic(self):
        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "representativeRho",
            "representativeSeating",
            "Contracts.Transfer",
            "relation_transport",
            "axiom ",
            "sorry",
        ):
            self.assertNotIn(forbidden, combined)

        is_zero = self.outputs[
            transfer.OUT / f"{transfer.template_name(transfer.IS_ZERO_KEY)}.lean"
        ]
        self.assertIn("GatesDef.is_zero (rho 1) (rho 3)", is_zero)
        self.assertIn(
            "import ShielddGnarkFormal.CompressDeployedGadgets",
            is_zero,
        )
        self.assertNotIn(
            "import ShielddGnarkFormal.DeployedGadgets",
            is_zero,
        )
        self.assertIn("DeployedGadgets.is_zero_of_hint", is_zero)

        trace = self.outputs[
            transfer.OUT / "TransferPoseidon2Trace.lean"
        ]
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZMod\n",
            trace,
        )
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            trace,
        )

        for digest in transfer.SALT_KEYS:
            source = self.outputs[
                transfer.OUT / f"TGadgetTransferSalt_{digest}.lean"
            ]
            self.assertIn("TransferSaltBridge.TransferSaltSpec", source)
            self.assertIn(
                f"Relations.TGadgetTransferSalt_{digest}.relation rho",
                source,
            )

    def test_salt_recovery_covers_every_canonical_row_exactly(self):
        for digest, label in transfer.SALT_KEYS.items():
            recovery = transfer._recover_salt(digest, label)
            self.assertEqual(len(recovery.rows), 265)
            self.assertEqual(len(recovery.inputs), 53)
            self.assertEqual(len(recovery.outputs), 53)
            self.assertEqual(
                tuple(
                    part
                    for gate_parts in recovery.gate_parts
                    for part in gate_parts
                ),
                tuple(range(53)),
            )
            self.assertEqual(recovery.outputs, tuple(range(6, 267, 5)))
            self.assertEqual(
                recovery.states[-1][1],
                {
                    256: transfer.MDS[1][0],
                    261: transfer.MDS[1][1],
                    266: transfer.MDS[1][2],
                },
            )
            self.assertEqual(
                recovery.label_value,
                transfer._blake2b_field(label),
            )

    def test_salt_generation_rejects_canonical_row_mutation(self):
        digest, label = next(iter(transfer.SALT_KEYS.items()))
        rows = list(transfer._canonical_rows(digest, 265))
        left, right, output = rows[0]
        mutated_left = dict(left)
        mutated_left[1] = (mutated_left[1] + 1) % transfer.ORDER
        rows[0] = (mutated_left, right, output)

        with patch.object(transfer, "_canonical_rows", return_value=tuple(rows)):
            with self.assertRaisesRegex(ValueError, "input drifted"):
                transfer._recover_salt(digest, label)

    def test_is_zero_generation_rejects_canonical_row_mutation(self):
        digest = transfer.IS_ZERO_KEY.split("@", 1)[1]
        rows = list(transfer._canonical_rows(digest, 2))
        left, right, output = rows[1]
        mutated_output = dict(output)
        mutated_output[4] = 1
        rows[1] = (left, right, mutated_output)

        with patch.object(transfer, "_canonical_rows", return_value=tuple(rows)):
            with self.assertRaisesRegex(ValueError, "isZero rows drifted"):
                transfer._render_is_zero()

    def test_repeated_generation_is_byte_identical(self):
        self.assertEqual(self.outputs, transfer.generated_files())

    def test_tactic_dependencies_are_explicit(self):
        tactic_imports = {
            "linear_combination": "Mathlib.Tactic.LinearCombination",
            "ring_nf": "Mathlib.Tactic.Ring",
        }
        for path, source in self.outputs.items():
            for tactic, module in tactic_imports.items():
                if tactic in source:
                    self.assertIn(f"import {module}\n", source, path.name)

    def test_v13_balance_contract_has_no_deleted_claimed_point(self):
        protocol = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Semantics.lean"
        ).read_text()
        concrete = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Concrete.lean"
        ).read_text()
        facts = (
            transfer.FORMAL / "Protocol" / "Transfer" / "CircuitFacts.lean"
        ).read_text()
        refinement = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Refinement.lean"
        ).read_text()

        self.assertNotIn("balanceCommitment : Point F", protocol)
        self.assertIn(
            "balanceComputedAndCompressed : Action F Path24 Path16 → Prop",
            protocol,
        )
        balance = concrete[
            concrete.index("def balanceComputedAndCompressed") :
            concrete.index("def statementFields")
        ]
        self.assertIn("Common.Decaf.netBalanceCommitment2", balance)
        self.assertIn("action.balanceCommitmentEncoding", balance)
        self.assertIn("Common.Decaf.compressesTo", balance)
        self.assertIn("∃ balanceCommitment", balance)
        self.assertNotIn("Common.Decaf.equivalent", balance)
        self.assertNotIn("action.balanceCommitment", balance.replace(
            "action.balanceCommitmentEncoding", ""
        ))
        self.assertIn(
            "balanceComputedAndCompressed :\n"
            "    primitives.balanceComputedAndCompressed action",
            facts,
        )
        self.assertIn(
            "balanceComputedAndCompressed := facts.balanceComputedAndCompressed",
            refinement,
        )

        common = (
            transfer.FORMAL / "Protocol" / "Common.lean"
        ).read_text()
        self.assertIn("def netBalanceCommitment2", common)
        self.assertIn("∃ valueGenerator", common)
        self.assertIn("EncodeToCurve.relation", common)
        self.assertNotIn("noncomputable def point", common)
        self.assertNotIn("ShielddGnarkFormal.Extracted", common)
        self.assertNotIn("NetBalanceCommitment2Bridge", common)

    def test_v13_balance_encoding_is_bound_only_through_statement_projection(self):
        concrete = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Concrete.lean"
        ).read_text()
        semantics = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Semantics.lean"
        ).read_text()
        fields = concrete[
            concrete.index("def statementFields") :
            concrete.index("def statementBinding")
        ]
        binding = concrete[
            concrete.index("def statementBinding") :
            concrete.index("def circuitPrimitives")
        ]
        self.assertIn("action.balanceCommitmentEncoding", fields)
        self.assertIn("action.publicStatementHash", binding)
        self.assertIn("Common.statementHash", binding)
        self.assertIn("publicInputMatchesBody", semantics)

    def test_v16_matches_rust_decaf_identity_exclusions(self):
        common = (
            transfer.FORMAL / "Protocol" / "Common.lean"
        ).read_text()
        concrete = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Concrete.lean"
        ).read_text()

        self.assertIn("def nonIdentity (point : Point F) : Prop", common)
        self.assertIn("point.x ≠ 0", common)
        address = concrete[
            concrete.index("def addressEncoded") :
            concrete.index("def canonicalSender")
        ]
        sender = concrete[
            concrete.index("def canonicalSender") :
            concrete.index("def noteCommitment")
        ]
        receiver = concrete[
            concrete.index("def receiverOutput") :
            concrete.index("def changeOutput")
        ]
        self.assertIn(
            "Common.Decaf.nonIdentity address.diversifiedGenerator",
            address,
        )
        self.assertIn(
            "Common.Decaf.nonIdentity action.authorization.authorizationKey",
            sender,
        )
        self.assertIn("addressEncoded action.sender", sender)
        self.assertIn("addressEncoded action.receiver.note.owner", receiver)

    def test_boolean_relation_has_one_shared_protocol_owner(self):
        common = (
            transfer.FORMAL / "Protocol" / "Common.lean"
        ).read_text()
        concrete = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Concrete.lean"
        ).read_text()
        withdrawal = (
            transfer.FORMAL
            / "Protocol"
            / "ShieldedIcs20Withdrawal"
            / "Concrete.lean"
        ).read_text()

        self.assertEqual(
            common.count("def boolean (value : F) : Prop"),
            1,
        )
        self.assertNotIn("def boolean (value : F) : Prop", concrete)
        self.assertGreaterEqual(concrete.count("Common.boolean"), 2)
        self.assertIn(
            "Common.boolean action.assetProof.isRegulated",
            withdrawal,
        )

    def test_transfer_statement_domain_and_shape_match_v4(self):
        concrete = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Concrete.lean"
        ).read_text()

        def definition(name: str) -> int:
            match = re.search(
                rf"def {name} : F :=\n  (\d+)",
                concrete,
            )
            self.assertIsNotNone(match, name)
            return int(match.group(1))

        def label_value(suffix: str) -> int:
            label = (
                "shieldd.shielded_pool.transfer."
                f"public_input_hash.{suffix}"
            ).encode()
            return int.from_bytes(
                hashlib.blake2b(label, digest_size=64).digest(),
                "little",
            )

        self.assertEqual(definition("statementDomain"), label_value("v4"))
        self.assertEqual(definition("statementPad0"), label_value("pad0"))
        self.assertEqual(definition("statementPad1"), label_value("pad1"))
        self.assertIn(
            "(statementFields action).length = 44",
            concrete,
        )

    def test_v17_statement_fields_have_exact_deployed_indices(self):
        concrete = (
            transfer.FORMAL / "Protocol" / "Transfer" / "Concrete.lean"
        ).read_text()
        block = concrete[
            concrete.index("def statementFields") :
            concrete.index("theorem statementFields_length")
        ]
        opening = block.index("[action.")
        closing = block.index("]\n", opening)
        fields = [
            line.strip().removesuffix(",")
            for line in block[opening + 1 : closing].splitlines()
        ]

        expected = [
            "action.anchor",
            "action.receiver.note.commitment",
            "action.change.note.commitment",
            "action.balanceCommitmentEncoding",
            "action.required.nullifier",
            "action.required.randomizedVerificationKeyEncoding",
            "action.optional.nullifier",
            "action.optional.rkEncoding",
            "action.assetAnchor",
            "action.complianceAnchor",
            *(f"action.transcript.detectionCiphertext {index}" for index in range(4)),
            "action.transcript.senderCore.epkEncoding",
            "action.transcript.senderCore.c2",
            "action.transcript.senderCore.ciphertext",
            "action.transcript.senderExt.epkEncoding",
            "action.transcript.senderExt.c2",
            *(f"action.transcript.senderExt.ciphertext {index}" for index in range(3)),
            "action.transcript.outputCore.epkEncoding",
            "action.transcript.outputCore.c2",
            "action.transcript.outputCore.ciphertext",
            "action.transcript.outputExt.epkEncoding",
            "action.transcript.outputExt.c2",
            *(f"action.transcript.outputExt.ciphertext {index}" for index in range(3)),
            "action.targetTimestamp",
            "action.transcript.metadata.senderSubjectDerivation",
            "action.transcript.metadata.outputSubjectDerivation",
            "action.transcript.metadata.ringIdHash",
            "action.transcript.metadata.policyIdHash",
            "action.transcript.metadata.resourceHash",
            "action.transcript.metadata.permissionHash",
            "action.transcript.metadata.senderCoreSalt",
            "action.transcript.metadata.senderExtSalt",
            "action.transcript.metadata.outputCoreSalt",
            "action.transcript.metadata.outputExtSalt",
            "action.routingTags 0",
            "action.routingTags 1",
            "action.routingParameterSetId",
        ]
        self.assertEqual(fields, expected)
        self.assertEqual(len(fields), 44)


if __name__ == "__main__":
    unittest.main()
