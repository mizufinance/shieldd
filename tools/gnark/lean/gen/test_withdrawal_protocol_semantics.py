from __future__ import annotations

import hashlib
import re
import unittest
from pathlib import Path


CONCRETE = (
    Path(__file__).resolve().parents[1]
    / "ShielddGnarkFormal"
    / "Protocol"
    / "ShieldedIcs20Withdrawal"
    / "Concrete.lean"
)
COMMON = (
    Path(__file__).resolve().parents[1]
    / "ShielddGnarkFormal"
    / "Protocol"
    / "Common.lean"
)


class WithdrawalProtocolSemanticsTests(unittest.TestCase):
    def setUp(self) -> None:
        self.concrete = CONCRETE.read_text()

    def definition(self, name: str) -> int:
        match = re.search(
            rf"def {name} : F :=\n  (\d+)",
            self.concrete,
        )
        self.assertIsNotNone(match, name)
        return int(match.group(1))

    @staticmethod
    def label_value(suffix: str) -> int:
        label = (
            "shieldd.shielded_pool.shielded_ics20_withdrawal."
            f"public_input_hash.{suffix}"
        ).encode()
        return int.from_bytes(
            hashlib.blake2b(label, digest_size=64).digest(),
            "little",
        )

    def test_statement_domain_and_shape_match_v2(self) -> None:
        self.assertEqual(
            self.definition("statementDomain"),
            self.label_value("v2"),
        )
        self.assertEqual(
            self.definition("statementPad0"),
            self.label_value("pad0"),
        )
        self.assertEqual(
            self.definition("statementPad1"),
            self.label_value("pad1"),
        )
        self.assertIn(
            "(statementFields action).length = 16",
            self.concrete,
        )

    def test_statement_fields_are_the_exact_deployed_projection(self) -> None:
        block = self.concrete[
            self.concrete.index("def statementFields") :
            self.concrete.index("theorem statementFields_length")
        ]
        normalized = " ".join(block.split())
        expected = (
            "[action.anchor, action.change.commitment, "
            "action.balanceCommitmentEncoding, action.required.nullifier, "
            "action.required.randomizedVerificationKeyEncoding, "
            "action.optional.nullifier, action.optional.rkEncoding, "
            "action.assetAnchor, action.complianceAnchor, "
            "action.targetTimestamp, action.withdrawal.outboundAssetId, "
            "action.withdrawal.outboundAmount, "
            "action.withdrawal.effectHashLimbs 0, "
            "action.withdrawal.effectHashLimbs 1, "
            "action.withdrawal.effectHashLimbs 2, "
            "action.withdrawal.effectHashLimbs 3]"
        )
        self.assertIn(expected, normalized)

    def test_native_identity_and_registry_exclusions_are_explicit(self) -> None:
        common = COMMON.read_text()
        self.assertIn(
            "def nonIdentity (point : Point F) : Prop :=\n"
            "  point.x ≠ 0",
            common,
        )

        address = self.concrete[
            self.concrete.index("def addressEncoded") :
            self.concrete.index("def canonicalSender")
        ]
        sender = self.concrete[
            self.concrete.index("def canonicalSender") :
            self.concrete.index("def noteCommitment")
        ]
        registry = self.concrete[
            self.concrete.index("def assetRegistry") :
            self.concrete.index("def complianceLeafHash")
        ]
        self.assertIn(
            "Common.Decaf.nonIdentity address.diversifiedGenerator",
            address,
        )
        self.assertIn(
            "Common.Decaf.nonIdentity "
            "action.authorization.authorizationKey",
            sender,
        )
        self.assertIn("addressEncoded action.sender", sender)
        self.assertIn(
            "action.withdrawal.outboundAssetId ≠ 0",
            registry,
        )
        self.assertIn(
            "Common.boolean action.assetProof.isRegulated",
            registry,
        )


if __name__ == "__main__":
    unittest.main()
