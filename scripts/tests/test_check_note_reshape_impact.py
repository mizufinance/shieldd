from __future__ import annotations

import importlib.util
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "check-note-reshape-impact.py"
SPEC = importlib.util.spec_from_file_location("check_note_reshape_impact", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
impact = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(impact)


class ImpactPolicyTests(unittest.TestCase):
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
                        "clean", "note_reshape2x1", set(impact.FAMILIES), [signal]
                    )
                )

    def test_scoped_policy_allows_only_selected_family_drift(self) -> None:
        affected = {"note_reshape2x1"}
        self.assertFalse(
            impact.change_is_failure(
                "scoped", "note_reshape2x1", affected, ["sr1cs"]
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
                    policy, "note_reshape2x1", {"note_reshape2x1"}, []
                )
            )


if __name__ == "__main__":
    unittest.main()
