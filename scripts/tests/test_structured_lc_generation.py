import subprocess
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
CHECK = ROOT / "scripts/check-structured-lc-generation.sh"


class StructuredLcGenerationGateTests(unittest.TestCase):
    def test_candidate_may_live_after_the_first_definition_shard(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            relations = Path(directory) / "Relations"
            relations.mkdir()
            (relations / "TExampleDefs0.lean").write_text(
                "def prelude := True\n", encoding="utf-8"
            )
            expected = relations / "TExampleDefs4.lean"
            expected.write_text(
                "-- the earliest matching shard is deliberately larger\n"
                "def relation := StructuredLC.eval []\n",
                encoding="utf-8",
            )
            (relations / "TExampleDefs9.lean").write_text(
                "def relation := StructuredLC.eval []\n",
                encoding="utf-8",
            )
            (relations / "NotAShard.lean").write_text(
                "StructuredLC.eval []\n", encoding="utf-8"
            )

            result = subprocess.run(
                ["bash", str(CHECK), "--select-candidate", str(relations)],
                cwd=ROOT,
                capture_output=True,
                text=True,
                check=False,
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(Path(result.stdout.strip()), expected)

    def test_candidate_selection_fails_closed_without_structured_lc(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            relations = Path(directory) / "Relations"
            relations.mkdir()
            (relations / "TExampleDefs0.lean").write_text(
                "def prelude := True\n", encoding="utf-8"
            )

            result = subprocess.run(
                ["bash", str(CHECK), "--select-candidate", str(relations)],
                cwd=ROOT,
                capture_output=True,
                text=True,
                check=False,
            )

            self.assertNotEqual(result.returncode, 0)
            self.assertIn(
                "generator emitted no StructuredLC normalized relation shard",
                result.stderr,
            )


if __name__ == "__main__":
    unittest.main()
