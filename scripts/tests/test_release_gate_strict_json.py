from __future__ import annotations

import subprocess
import sys
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
FIELD_READER = ROOT / "scripts/fv-json-field.py"


class ReleaseGateStrictJsonTests(unittest.TestCase):
    def run_field_reader(
        self, source: str
    ) -> subprocess.CompletedProcess[str]:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "input.json"
            path.write_text(source, encoding="utf-8")
            return subprocess.run(
                [sys.executable, str(FIELD_READER), str(path), "field"],
                cwd=ROOT,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                check=False,
            )

    def test_field_reader_rejects_ambiguous_or_nonfinite_json(self) -> None:
        cases = (
            ('{"field":1,"field":2}', "duplicate JSON key"),
            ('{"field":1e10000}', "non-finite JSON number"),
            ('{"field":"\\ud800"}', "unpaired Unicode surrogate"),
        )
        for source, expected in cases:
            with self.subTest(source=source):
                result = self.run_field_reader(source)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn(expected, result.stdout)

    def test_field_reader_accepts_integer_and_string_fields(self) -> None:
        for source, expected in (
            ('{"field":123}', "123\n"),
            ('{"field":"abc"}', "abc\n"),
        ):
            with self.subTest(source=source):
                result = self.run_field_reader(source)
                self.assertEqual(result.returncode, 0, result.stdout)
                self.assertEqual(result.stdout, expected)

    def test_four_circuit_release_shells_use_shared_strict_decoder(self) -> None:
        helper_users = (
            "scripts/check-manifest-pin.sh",
            "scripts/check-lean-circuit-fv.sh",
        )
        embedded_users = (
            "scripts/check-circuit-fv.sh",
            "scripts/check-key-coherence.sh",
        )
        for relative in (*helper_users, *embedded_users):
            source = (ROOT / relative).read_text(encoding="utf-8")
            with self.subTest(path=relative):
                self.assertNotIn("json.load", source)
                self.assertNotIn("json.loads", source)
        for relative in helper_users:
            source = (ROOT / relative).read_text(encoding="utf-8")
            self.assertIn("scripts/fv-json-field.py", source)
        for relative in embedded_users:
            source = (ROOT / relative).read_text(encoding="utf-8")
            self.assertIn("from fv_strict_json import", source)


if __name__ == "__main__":
    unittest.main()
