from __future__ import annotations

import copy
import gzip
import hashlib
import unittest

import gen_history_classify_semantics as subject


class HistoryClassifySemanticsTest(unittest.TestCase):
    def test_exact_provider_roster_and_geometry(self) -> None:
        self.assertEqual(
            [
                (provider.digest, provider.rows, provider.wires, provider.gated)
                for provider in subject.PROVIDERS
            ],
            [
                (
                    "24943fd2154aa0ac8bbf9adce870214e50badfb7c18cba54c33b68fcd9222905",
                    150,
                    150,
                    False,
                ),
                (
                    "63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545",
                    151,
                    152,
                    True,
                ),
            ],
        )

    def test_generated_providers_bind_exact_relations(self) -> None:
        outputs = subject.generated_files()
        self.assertEqual(len(outputs), 8)
        for provider in subject.PROVIDERS:
            source = outputs[subject.OUT / f"{provider.name}.lean"]
            self.assertIn("theorem sound", source)
            self.assertIn("HistoryClassifyBridge.CoreCircuit", source)
            self.assertIn("ChoiceFreeBinary.range_of_to_binary", source)
            self.assertIn("(1 - 2 * rho 99) * r48", source)
            self.assertIn("(2 * rho 99 - 1) * r97 - r99 + r148", source)
            self.assertIn("have hneg16", source)
            self.assertIn("have hneg48", source)
            self.assertNotIn("native_decide", source)
            self.assertNotIn("axiom ", source)
            for label in ("Position", "Floor", "Difference"):
                helper = outputs[
                    subject.OUT / f"{provider.name}{label}.lean"
                ]
                self.assertIn("theorem bitsBoolean", helper)
                self.assertIn("theorem recover", helper)
                self.assertIn("theorem toBinary", helper)
                self.assertIn(
                    "RvkToBinaryChoiceFree.to_binary_of_deployed", helper
                )
                self.assertIn("BinaryRecomposition.powSumAcc", helper)
                self.assertEqual(
                    helper.count("simpa [sub_eq_add_neg] using r"), 48
                )
                self.assertNotIn("first |", helper)
                self.assertNotIn("native_decide", helper)
                self.assertNotIn("axiom ", helper)
        gated = outputs[
            subject.OUT / f"{subject.PROVIDERS[1].name}.lean"
        ]
        self.assertIn("HistoryClassifyBridge.gated_sound", gated)
        self.assertIn("linear_combination r150 - r149", gated)

    def test_registry_relation_digest_is_content_addressed(self) -> None:
        for provider in subject.PROVIDERS:
            entry = subject._registry_entry(provider)
            path = subject.ARTIFACTS / entry["canonical_relation_file"]
            with gzip.open(path, "rb") as source:
                self.assertEqual(
                    hashlib.sha256(source.read()).hexdigest(),
                    provider.digest,
                )

    def test_geometry_drift_fails_closed(self) -> None:
        provider = copy.copy(subject.PROVIDERS[0])
        object.__setattr__(provider, "rows", 149)
        with self.assertRaisesRegex(ValueError, "registry row_count drifted"):
            subject._registry_entry(provider)


if __name__ == "__main__":
    unittest.main()
