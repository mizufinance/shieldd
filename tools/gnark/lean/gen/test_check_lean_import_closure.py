from __future__ import annotations

import tempfile
import unittest
from pathlib import Path
import subprocess
import sys

from check_lean_import_closure import import_closure, missing_local_imports
from lean_affected_modules import module_sources


class LeanImportClosureTests(unittest.TestCase):
    def test_cli_rejects_symlinked_lean_root_before_resolution(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            workspace = Path(directory)
            target = workspace / "target"
            target.mkdir()
            (target / "Root.lean").write_text("")
            alias = workspace / "alias"
            alias.symlink_to(target, target_is_directory=True)

            result = subprocess.run(
                [
                    sys.executable,
                    str(
                        Path(__file__).with_name(
                            "check_lean_import_closure.py"
                        )
                    ),
                    "--lean-dir",
                    str(alias),
                    "--check-all-local-imports",
                ],
                capture_output=True,
                text=True,
                check=False,
            )

            self.assertNotEqual(result.returncode, 0)
            self.assertIn("symlinked Lean source root", result.stderr)

    def test_reports_missing_imports_in_local_namespace(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "A.lean").write_text(
                "import ShielddGnarkFormal.Present\n"
                "import ShielddGnarkFormal.Missing\n"
                "import Mathlib.Data.Nat.Basic\n"
            )
            local = root / "ShielddGnarkFormal"
            local.mkdir()
            (local / "Present.lean").write_text("")

            self.assertEqual(
                missing_local_imports(
                    module_sources(root),
                    ("ShielddGnarkFormal.",),
                ),
                [("A", "ShielddGnarkFormal.Missing")],
            )

    def test_accepts_multiple_imports_on_one_line(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            local = root / "ShielddGnarkFormal"
            local.mkdir()
            (local / "A.lean").write_text(
                "import ShielddGnarkFormal.B ShielddGnarkFormal.C\n"
            )
            (local / "B.lean").write_text("")
            (local / "C.lean").write_text("")

            self.assertEqual(
                missing_local_imports(
                    module_sources(root),
                    ("ShielddGnarkFormal.",),
                ),
                [],
            )

    def test_nested_block_comment_imports_do_not_create_false_edges(
        self,
    ) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            local = root / "ShielddGnarkFormal"
            local.mkdir()
            (local / "Root.lean").write_text(
                "/-\n"
                "import ShielddGnarkFormal.Missing\n"
                "/- import ShielddGnarkFormal.AlsoMissing -/\n"
                "-/\n"
                "import ShielddGnarkFormal.Present\n",
                encoding="utf-8",
            )
            (local / "Present.lean").write_text("", encoding="utf-8")

            self.assertEqual(
                missing_local_imports(
                    module_sources(root),
                    ("ShielddGnarkFormal.",),
                ),
                [],
            )

    def test_can_limit_missing_check_to_a_root_closure(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            local = root / "ShielddGnarkFormal"
            local.mkdir()
            (local / "Root.lean").write_text(
                "import ShielddGnarkFormal.Present\n"
            )
            (local / "Present.lean").write_text("")
            (local / "Dead.lean").write_text(
                "import ShielddGnarkFormal.Missing\n"
            )
            sources = module_sources(root)

            self.assertEqual(
                missing_local_imports(
                    sources,
                    ("ShielddGnarkFormal.",),
                    {"ShielddGnarkFormal.Root", "ShielddGnarkFormal.Present"},
                ),
                [],
            )

    def test_import_closure_ignores_unreachable_missing_imports(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            local = root / "ShielddGnarkFormal"
            local.mkdir()
            (local / "Root.lean").write_text(
                "import ShielddGnarkFormal.Present\n"
            )
            (local / "Present.lean").write_text("")
            (local / "Dead.lean").write_text(
                "import ShielddGnarkFormal.Missing\n"
            )

            self.assertEqual(
                import_closure(
                    module_sources(root),
                    ["ShielddGnarkFormal.Root"],
                ),
                {"ShielddGnarkFormal.Root", "ShielddGnarkFormal.Present"},
            )

    def test_import_closure_rejects_reachable_missing_imports(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            local = root / "ShielddGnarkFormal"
            local.mkdir()
            (local / "Root.lean").write_text(
                "import ShielddGnarkFormal.Missing\n"
            )

            with self.assertRaisesRegex(
                ValueError, "unresolved local Lean imports"
            ):
                import_closure(
                    module_sources(root),
                    ["ShielddGnarkFormal.Root"],
                )


if __name__ == "__main__":
    unittest.main()
