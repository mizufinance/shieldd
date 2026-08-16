from __future__ import annotations

import importlib.util
import sys
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "check-certified-circuit-impact.py"
sys.path.insert(0, str(SCRIPT.parent))
SPEC = importlib.util.spec_from_file_location(
    "check_certified_circuit_impact",
    SCRIPT,
)
assert SPEC is not None and SPEC.loader is not None
impact = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(impact)


class ImpactPolicyTests(unittest.TestCase):
    def test_family_and_contract_module_selection_comes_from_backends(self) -> None:
        self.assertEqual(impact.MODULES, impact.certified_modules())
        self.assertEqual(set(impact.FAMILIES), set(impact.MODULES))

    def test_contract_inventory_includes_every_generated_lean_artifact(
        self,
    ) -> None:
        self.assertEqual(
            impact.contract_patterns("note_reshape8x1"),
            ("**/*.lean",),
        )

    def test_clean_policy_rejects_every_drift_signal(self) -> None:
        for signal in (
            "sr1cs",
            "manifest",
            "public_statement",
            "relations",
            "contracts",
            "templates",
        ):
            with self.subTest(signal=signal):
                self.assertTrue(
                    impact.change_is_failure(
                        "clean", "note_reshape8x1", set(impact.FAMILIES), [signal]
                    )
                )

    def test_scoped_policy_allows_only_selected_family_drift(self) -> None:
        affected = {"note_reshape8x1"}
        self.assertFalse(
            impact.change_is_failure(
                "scoped", "note_reshape8x1", affected, ["sr1cs"]
            )
        )
        self.assertTrue(
            impact.change_is_failure(
                "scoped", "note_reshape1x8", affected, ["sr1cs"]
            )
        )

    def test_unchanged_family_is_clean_under_both_policies(self) -> None:
        for policy in ("clean", "scoped"):
            self.assertFalse(
                impact.change_is_failure(
                    policy, "note_reshape8x1", {"note_reshape8x1"}, []
                )
            )


if __name__ == "__main__":
    unittest.main()
