import pathlib
import tempfile
import unittest

from lean_zmod_instances import INSTANCE_BLOCK, normalize_choice_free_zmod, normalize_choice_free_zmod_file


class ChoiceFreeZModTests(unittest.TestCase):
    def test_inserts_after_typed_abbreviation_and_is_idempotent(self) -> None:
        source = "namespace N\nabbrev F : Type := ZMod 17\ndef relation (x : F) := x + 1\n"
        normalized = normalize_choice_free_zmod(source)
        self.assertEqual(normalized.count(INSTANCE_BLOCK), 1)
        self.assertLess(normalized.index("abbrev F"), normalized.index(INSTANCE_BLOCK))
        self.assertLess(normalized.index(INSTANCE_BLOCK), normalized.index("def relation"))
        self.assertEqual(normalize_choice_free_zmod(normalized), normalized)

    def test_file_update_preserves_equations(self) -> None:
        source = "abbrev F := ZMod 17\ndef relation (x : F) := x * x = 1\n"
        with tempfile.TemporaryDirectory() as tmp:
            path = pathlib.Path(tmp) / "Relation.lean"
            path.write_text(source)
            self.assertTrue(normalize_choice_free_zmod_file(path))
            self.assertFalse(normalize_choice_free_zmod_file(path))
            self.assertIn("def relation (x : F) := x * x = 1", path.read_text())

    def test_missing_field_alias_fails_closed(self) -> None:
        with self.assertRaisesRegex(ValueError, "no F abbreviation"):
            normalize_choice_free_zmod("namespace N\ndef relation := True\n")


if __name__ == "__main__":
    unittest.main()
