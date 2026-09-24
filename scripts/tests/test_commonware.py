import importlib.util
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest.mock import patch

spec = importlib.util.spec_from_file_location("commonware", Path(__file__).parents[1] / "commonware.py")
commonware = importlib.util.module_from_spec(spec)
spec.loader.exec_module(commonware)

class SourceValidationTest(unittest.TestCase):
    def test_only_exact_clean_checkout_can_supply_pinned_sources(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            def git(*args):
                return subprocess.check_output(["git", *args], cwd=root, text=True).strip()
            git("init", "-q")
            git("config", "user.email", "test@example.invalid")
            git("config", "user.name", "Test")
            (root / "Cargo.toml").write_text("source")
            git("add", ".")
            git("commit", "-qm", "source")
            revision = git("rev-parse", "HEAD")
            with patch.object(commonware, "REVISION", revision):
                commonware.validate_source(root)
                (root / "Cargo.toml").write_text("modified")
                with self.assertRaises(SystemExit): commonware.validate_source(root)
                git("checkout", "--", "Cargo.toml")
                (root / "extra").write_text("untracked")
                with self.assertRaises(SystemExit): commonware.validate_source(root)
                (root / "extra").unlink()
            with self.assertRaises(SystemExit): commonware.validate_source(root)

if __name__ == "__main__": unittest.main()
