from __future__ import annotations

from pathlib import Path
import os
import tempfile
import unittest

from lean_affected_modules import (
    affected_order,
    artifact_is_current,
    local_imports,
    module_sources,
)


class LeanAffectedModulesTest(unittest.TestCase):
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
