from __future__ import annotations

import unittest

import gen_withdrawal_semantic_providers as withdrawal


class WithdrawalSemanticProvidersTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = withdrawal.generated_files()
        cls.expected_mains = {
            withdrawal.normalized.OUT
            / f"{withdrawal.normalized.template_name(key)}.lean"
            for key in withdrawal.TARGET_KEYS
        }

    def test_exact_withdrawal_provider_roster_is_pinned(self) -> None:
        self.assertEqual(len(withdrawal.TARGET_KEYS), 8)
        self.assertEqual(len(withdrawal.DIRECT_KEYS), 2)
        self.assertEqual(len(withdrawal.CONDITIONAL_KEYS), 1)
        self.assertEqual(len(withdrawal.STATEMENT_KEYS), 3)
        self.assertEqual(
            withdrawal.TARGET_KEYS,
            withdrawal.DIRECT_KEYS
            | withdrawal.CONDITIONAL_KEYS
            | {
                withdrawal.REGISTRY_GAP_KEY,
                withdrawal.SYNTHETIC_NULLIFIER_KEY,
            }
            | withdrawal.STATEMENT_KEYS,
        )

    def test_every_exact_provider_main_is_materialized(self) -> None:
        self.assertEqual(
            {path for path in self.expected_mains if path in self.outputs},
            self.expected_mains,
        )
        for path in self.expected_mains:
            source = self.outputs[path]
            self.assertIn("theorem sound", source, path.name)
            self.assertIn("relation", source, path.name)
            self.assertIn("spec", source, path.name)

    def test_outputs_are_confined_to_providers_and_import_benches(self) -> None:
        for path in self.outputs:
            in_semantics = withdrawal.normalized.OUT in path.parents
            in_bench = withdrawal.direct.BENCH in path.parents
            self.assertTrue(in_semantics or in_bench, path)

    def test_providers_use_no_trusted_shortcuts(self) -> None:
        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "axiom ",
            "sorry",
            "native_decide",
            "spec := relation",
            "fun _ h => h",
            "representativeRho",
            "representativeSeating",
            "Mathlib.Tactic.Omega",
        ):
            self.assertNotIn(forbidden, combined)

if __name__ == "__main__":
    unittest.main()
