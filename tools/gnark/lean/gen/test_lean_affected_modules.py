from __future__ import annotations

from pathlib import Path
import os
import subprocess
import sys
import tempfile
import unittest

from lean_affected_modules import (
    affected_order,
    artifact_is_current,
    declared_imports,
    local_imports,
    module_sources,
)


class LeanAffectedModulesTest(unittest.TestCase):
    def test_module_sources_accepts_ordinary_import_tree(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            nested = root / "Nested"
            nested.mkdir()
            (root / "A.lean").write_text("import Nested.B\n")
            (nested / "B.lean").write_text("")

            sources = module_sources(root)

            self.assertEqual(set(sources), {"A", "Nested.B"})
            self.assertEqual(local_imports(sources["A"], set(sources)), ("Nested.B",))

    def test_module_sources_rejects_file_and_directory_symlinks(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            workspace = Path(directory)
            outside = workspace / "outside"
            outside.mkdir()
            (outside / "Target.lean").write_text("")

            file_root = workspace / "file-root"
            file_root.mkdir()
            (file_root / "Alias.lean").symlink_to(outside / "Target.lean")
            with self.assertRaisesRegex(ValueError, "symlinked Lean source"):
                module_sources(file_root)

            component_root = workspace / "component-root"
            component_root.mkdir()
            (component_root / "Alias").symlink_to(
                outside, target_is_directory=True
            )
            with self.assertRaisesRegex(
                ValueError, "symlinked Lean source directory component"
            ):
                module_sources(component_root)

    def test_module_sources_rejects_physical_aliases(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            source = root / "A.lean"
            source.write_text("")
            os.link(source, root / "B.lean")

            with self.assertRaisesRegex(ValueError, "physical Lean source alias"):
                module_sources(root)

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
                    str(Path(__file__).with_name("lean_affected_modules.py")),
                    "--lean-dir",
                    str(alias),
                    "--root-module",
                    "Root",
                    "--changed-module",
                    "Root",
                ],
                capture_output=True,
                text=True,
                check=False,
            )

            self.assertNotEqual(result.returncode, 0)
            self.assertIn("symlinked Lean source root", result.stderr)

    def test_local_imports_rejects_missing_repository_module(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "Root.lean"
            source.write_text(
                "import ShielddGnarkFormal.Protocol.Missing\n"
            )
            with self.assertRaisesRegex(
                ValueError, "unresolved local Lean imports"
            ):
                local_imports(source, {"Root"})

    def test_declared_imports_rejects_multiline_and_unsupported_syntax(
        self,
    ) -> None:
        cases = (
            "import\n  ShielddGnarkFormal.Protocol.Hidden\n",
            "import ShielddGnarkFormal.Protocol.Hidden,\n",
            "import ShielddGnarkFormal.Protocol.«Hidden»\n",
        )
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "Root.lean"
            for text in cases:
                with self.subTest(source=text):
                    source.write_text(text, encoding="utf-8")
                    with self.assertRaisesRegex(
                        ValueError,
                        "one-line ASCII module roster",
                    ):
                        declared_imports(source)

    def test_declared_imports_scrubs_nested_comments_and_strings(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "Root.lean"
            source.write_text(
                "/-\n"
                "import ShielddGnarkFormal.Protocol.Commented\n"
                "/- import ShielddGnarkFormal.Protocol.Nested -/\n"
                "-/\n"
                "import ShielddGnarkFormal.Protocol.Present "
                "/- import ShielddGnarkFormal.Protocol.Inline -/\n"
                'def importShadow := "import '
                'ShielddGnarkFormal.Protocol.String"\n',
                encoding="utf-8",
            )
            self.assertEqual(
                declared_imports(source),
                ("ShielddGnarkFormal.Protocol.Present",),
            )

    def test_command_words_in_header_comments_do_not_end_import_scan(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory) / "Root.lean"
            source.write_text(
                "/- namespace Hidden\nset_option pp.all true -/\n"
                "import ShielddGnarkFormal.Protocol.Present\n"
                "namespace Root\n",
                encoding="utf-8",
            )
            self.assertEqual(
                declared_imports(source),
                ("ShielddGnarkFormal.Protocol.Present",),
            )

    def test_limits_reverse_impact_to_root_closure(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            files = {
                "A.lean": "import B\nimport C\n",
                "B.lean": "import D\n",
                "C.lean": "",
                "D.lean": "",
                "E.lean": "import D\n",
            }
            for name, source in files.items():
                (root / name).write_text(source)
            self.assertEqual(
                affected_order(module_sources(root), "A", {"D"}),
                ["D", "B", "A"],
            )

    def test_rejects_local_import_cycles(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "A.lean").write_text("import B\n")
            (root / "B.lean").write_text("import A\n")
            with self.assertRaisesRegex(ValueError, "import cycle"):
                affected_order(module_sources(root), "A", {"B"})

    def test_artifact_current_requires_fresh_source_and_dependencies(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "A.lean").write_text("import B\n")
            (root / "B.lean").write_text("")
            artifact_root = root / ".lake/build/lib"
            artifact_root.mkdir(parents=True)
            (artifact_root / "A.olean").write_text("")
            (artifact_root / "B.olean").write_text("")
            sources = module_sources(root)
            known = set(sources)
            dependencies = {
                module: local_imports(path, known)
                for module, path in sources.items()
            }

            os.utime(root / "A.lean", ns=(1, 1))
            os.utime(root / "B.lean", ns=(1, 1))
            os.utime(artifact_root / "B.olean", ns=(2, 2))
            os.utime(artifact_root / "A.olean", ns=(3, 3))
            self.assertTrue(
                artifact_is_current(root, sources, dependencies, "A")
            )

            os.utime(artifact_root / "B.olean", ns=(4, 4))
            self.assertFalse(
                artifact_is_current(root, sources, dependencies, "A")
            )


if __name__ == "__main__":
    unittest.main()
