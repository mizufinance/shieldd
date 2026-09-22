import contextlib
import importlib.util
import io
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch


SCRIPT = Path(__file__).resolve().parents[1] / "check_docs.py"
spec = importlib.util.spec_from_file_location("docs", SCRIPT)
docs = importlib.util.module_from_spec(spec)
spec.loader.exec_module(docs)


class DocumentationLinks(unittest.TestCase):
    def check(self, files):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for name, content in files.items():
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(content)
            errors = io.StringIO()
            with patch.object(docs, "ROOT", root), patch.object(
                docs.subprocess, "check_output", return_value="\0".join(files).encode()
            ), contextlib.redirect_stderr(errors):
                result = docs.main()
            return result, errors.getvalue()

    def test_rejects_wrong_case_filename(self):
        result, errors = self.check({"README.md": "[rules](Agents.md)", "AGENTS.md": "# Rules"})
        self.assertEqual(result, 1)
        self.assertIn("Agents.md", errors)

    def test_rejects_wrong_case_directory(self):
        result, errors = self.check({"README.md": "[map](Docs/README.md)", "docs/README.md": "# Map"})
        self.assertEqual(result, 1)
        self.assertIn("Docs/README.md", errors)

    def test_accepts_relative_skill_links_and_encoded_paths(self):
        result, errors = self.check({
            ".agents/skills/example/SKILL.md": "[map](../../../docs/README.md#map)",
            "docs/README.md": "# Map\n[space](a%20b.md)\n[external](https://example.com)",
            "docs/a b.md": "# Detail",
        })
        self.assertEqual((result, errors), (0, ""))

    def test_rejects_missing_fragment(self):
        result, errors = self.check({"README.md": "# Map\n[missing](#absent)"})
        self.assertEqual(result, 1)
        self.assertIn("missing anchor", errors)

    def test_ignores_fenced_examples(self):
        result, errors = self.check({"README.md": "```md\n[example](absent.md)\n```"})
        self.assertEqual((result, errors), (0, ""))


if __name__ == "__main__":
    unittest.main()
