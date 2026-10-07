import os
from pathlib import Path
from subprocess import CalledProcessError, CompletedProcess
import tempfile
import unittest
from unittest.mock import patch

from prepare_pari_registry import prepare


class RegistryCacheTests(unittest.TestCase):
    def test_valid_cache_is_checked_but_never_replaced(self):
        self.check_cache(valid=True)

    def test_invalid_cache_is_replaced_after_validation(self):
        self.check_cache(valid=False)

    def check_cache(self, valid):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            directory = root / "shieldd-pari-keys"
            directory.mkdir()
            marker = directory / "old"
            marker.write_text("cache")
            commands = []

            def run(command, **kwargs):
                commands.append(command)
                if "--validate" in command:
                    self.assertTrue(marker.exists())
                    return CompletedProcess(command, 0 if valid else 1)
                if Path(command[0]).name == "pari_setup":
                    self.assertFalse(directory.exists())
                    directory.mkdir()
                return CompletedProcess(command, 0)

            with patch.dict(os.environ, SHIELDD_PARI_KEYS=str(directory)), patch("prepare_pari_registry.subprocess.run", side_effect=run):
                prepare(root)
            self.assertEqual(len(commands), 2 if valid else 3)
            self.assertEqual(marker.exists(), valid)
            self.assertIn("--validate", commands[1])

    def test_absent_cache_is_generated_and_build_failure_keeps_cache(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            directory = root / "shieldd-pari-keys"
            with patch.dict(os.environ, SHIELDD_PARI_KEYS=str(directory)), patch("prepare_pari_registry.subprocess.run", return_value=CompletedProcess([], 0)) as run:
                prepare(root)
                self.assertEqual(run.call_count, 2)
                self.assertNotIn("--validate", str(run.call_args_list))
            directory.mkdir()
            with patch.dict(os.environ, SHIELDD_PARI_KEYS=str(directory)), patch("prepare_pari_registry.subprocess.run", side_effect=CalledProcessError(1, "cargo")):
                with self.assertRaises(CalledProcessError):
                    prepare(root)
            self.assertTrue(directory.exists())

    def test_external_directory_and_symlink_are_rejected_before_commands(self):
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            external = root / "other"
            external.mkdir()
            directory = root / "shieldd-pari-keys"
            for selected in [external, directory]:
                if selected == directory:
                    directory.symlink_to(external, target_is_directory=True)
                with patch.dict(os.environ, SHIELDD_PARI_KEYS=str(selected)), patch("prepare_pari_registry.subprocess.run") as run:
                    with self.assertRaises(ValueError):
                        prepare(root)
                    run.assert_not_called()
                self.assertTrue(external.exists())
