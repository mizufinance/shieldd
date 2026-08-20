from __future__ import annotations

import hashlib
import re
import tempfile
import unittest
from pathlib import Path

import gen_note_reshape_balance_seating as balance


class NoteReshapeBalanceSeatingTests(unittest.TestCase):
    def test_normalization_uses_only_kernel_decisions(self) -> None:
        roles = balance.discover(
            "note_reshape1x8", "NoteReshape1x8", (1, 8)
        )
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "Balance.lean"
            rendered = balance.normalize_source(
                source,
                "have h : True := by decide\n"
                "example : True := by\n"
                "  decide\n"
                "have k : True := by decide +kernel\n",
                roles,
            )

        self.assertIsNone(re.search(r"\bdecide\b(?! \+kernel)", rendered))
        self.assertNotIn("+kernel +kernel", rendered)

    def test_discovers_fresh_balance_roles(self) -> None:
        expected = {
            "note_reshape1x8": (
                (4, 76, 77, 78),
                (1162, 1417, 1418, 2165, 2166),
                (43046, 43300, 43301, 44048, 44049, 45214, 45554),
            ),
            "note_reshape8x1": (
                (14, 166, 167, 168),
                (1162, 1417, 1418, 2165, 2166),
                (129355, 129609, 129610, 130357, 130358, 131523, 131863),
            ),
        }
        cases = (
            ("note_reshape1x8", "NoteReshape1x8", (1, 8)),
            ("note_reshape8x1", "NoteReshape8x1", (8, 1)),
        )
        for circuit, module, shape in cases:
            roles = balance.discover(circuit, module, shape)
            with self.subTest(circuit=circuit):
                self.assertEqual(
                    (
                        roles.on_curve["index"],
                        roles.balance["index"],
                        roles.equivalent["index"],
                        roles.compress["index"],
                    ),
                    expected[circuit][0],
                )
                self.assertEqual(roles.local_roles, expected[circuit][1])
                self.assertEqual(roles.global_roles, expected[circuit][2])

    def test_reviewed_main_rejects_theorem_body_mutation(self) -> None:
        source = (
            balance.DEPLOYED / "NoteReshape8x1Balance.lean"
        ).read_text()
        expected_digest = hashlib.sha256(source.encode()).hexdigest()
        self.assertEqual(
            expected_digest,
            balance.REVIEWED_TEMPLATE_DIGESTS[
                "NoteReshape8x1Balance.lean"
            ],
        )
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "NoteReshape8x1Balance.lean"
            path.write_text(source)
            self.assertEqual(balance.reviewed_template(path), source)
            path.write_text(
                source.replace(
                    "theorem computedX_eq_gadget",
                    "theorem computedX_eq_gadget_mutated",
                    1,
                )
            )
            with self.assertRaisesRegex(ValueError, "digest drifted"):
                balance.reviewed_template(path)

    def test_exact_check_rejects_generated_theorem_body_mutation(self) -> None:
        source = (
            balance.DEPLOYED / "NoteReshape1x8BalanceRunX0.lean"
        )
        expected = balance.render(source, balance.CONFIGS[0])
        mutated = expected.replace(
            "theorem seated", "theorem seated_mutated", 1
        )
        self.assertNotEqual(expected, mutated)
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "GeneratedBalance.lean"
            path.write_text(mutated)
            with self.assertRaisesRegex(SystemExit, "generated file is stale"):
                balance.check_generated(path, expected)


if __name__ == "__main__":
    unittest.main()
