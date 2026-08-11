import subprocess
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
HELPER = ROOT / "scripts/lib/soundness-symbol-cell.sh"


class SoundnessSymbolCellTests(unittest.TestCase):
    def check_cell(
        self, cell: str, *sources: Path
    ) -> subprocess.CompletedProcess[str]:
        return subprocess.run(
            [
                "bash",
                "-c",
                'source "$1"; soundness_missing_symbol "$2" "$3"',
                "soundness-symbol-cell-test",
                str(HELPER),
                cell,
                *(str(source) for source in sources),
            ],
            cwd=ROOT,
            capture_output=True,
            text=True,
            check=False,
        )

    def test_checks_each_symbol_and_expands_wildcards(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "source.rs"
            source.write_text(
                "fn exact_symbol() {}\n"
                "fn family_statement_hash_from_public() {}\n",
                encoding="utf-8",
            )

            result = self.check_cell(
                "`exact_symbol`, `*_statement_hash_from_public`", source
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(result.stdout, "")

    def test_reports_the_first_missing_symbol(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "source.rs"
            source.write_text("fn present() {}\n", encoding="utf-8")

            result = self.check_cell("`present`, `missing`", source)

            self.assertNotEqual(result.returncode, 0)
            self.assertEqual(result.stdout.strip(), "missing")

    def test_na_has_no_source_obligation(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "source.rs"
            source.write_text("", encoding="utf-8")

            result = self.check_cell("`n/a`", source)

            self.assertEqual(result.returncode, 0, result.stderr)

    def test_repository_soundness_maps_resolve(self) -> None:
        statement_map = (
            ROOT
            / "crates/core/component/shielded-pool/formal/statement-field-map.md"
        )
        statement_roots = {
            5: (
                ROOT / "crates/core/component/shielded-pool/src",
                ROOT / "crates/crypto/proof-params/src",
            ),
            6: (ROOT / "tools/gnark/internal",),
            7: (ROOT / "tools/gnark/internal/abi",),
        }
        external_map = (
            ROOT / "crates/core/component/shielded-pool/formal/external-check-map.md"
        )
        external_roots = {
            3: (ROOT / "crates/core/component", ROOT / "crates/crypto"),
            4: (ROOT / "tools/gnark",),
        }

        for path, columns in (
            (statement_map, statement_roots),
            (external_map, external_roots),
        ):
            for line in path.read_text(encoding="utf-8").splitlines():
                if not line.startswith("| `"):
                    continue
                fields = [field.strip() for field in line.split("|")]
                row_id = fields[1]
                for column, roots in columns.items():
                    result = self.check_cell(fields[column], *roots)
                    self.assertEqual(
                        result.returncode,
                        0,
                        f"{path.name} {row_id}: unresolved {result.stdout.strip()}",
                    )


if __name__ == "__main__":
    unittest.main()
