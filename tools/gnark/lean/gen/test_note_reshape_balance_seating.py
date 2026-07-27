from __future__ import annotations

import re
import tempfile
import unittest
from pathlib import Path

import gen_note_reshape_balance_seating as balance


class NoteReshapeBalanceSeatingTests(unittest.TestCase):
    def test_render_uses_only_kernel_decisions_and_is_idempotent(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "Balance.lean"
            source.write_text(
                "have h : True := by decide\n"
                "example : True := by\n"
                "  decide\n"
                "have k : True := by decide +kernel\n"
            )
            rendered = balance.render(source, balance.CONFIGS[0])

        self.assertIsNone(re.search(r"\bdecide\b(?! \+kernel)", rendered))
        self.assertNotIn("+kernel +kernel", rendered)


if __name__ == "__main__":
    unittest.main()
