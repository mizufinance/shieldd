from __future__ import annotations

import tempfile
import unittest
from pathlib import Path

from scripts import fv_strict_json


class FvStrictJsonTests(unittest.TestCase):
    def test_rejects_ambiguous_or_invalid_sources(self) -> None:
        cases = (
            (b'{"x":1,"x":2}', "duplicate JSON key"),
            (b'{"x":NaN}', "non-finite JSON number"),
            (b'{"x":1e10000}', "non-finite JSON number"),
            (b"\xff", "invalid UTF-8 JSON"),
            (b'{"x":"\\ud800"}', "unpaired Unicode surrogate"),
            (b'{"\\udfff":1}', "unpaired Unicode surrogate"),
            (b"{", "invalid JSON"),
        )
        for source, message in cases:
            with self.subTest(message=message):
                with self.assertRaisesRegex(
                    fv_strict_json.StrictJsonError, message
                ):
                    fv_strict_json.loads(source, "fixture")

    def test_load_preserves_unique_finite_values(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "fixture.json"
            path.write_text('{"x":[1,2],"nested":{"ok":true}}')
            self.assertEqual(
                fv_strict_json.load(path, "fixture"),
                {"x": [1, 2], "nested": {"ok": True}},
            )


if __name__ == "__main__":
    unittest.main()
