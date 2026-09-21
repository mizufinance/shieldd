import importlib.util
from pathlib import Path
import unittest

SPEC = importlib.util.spec_from_file_location("packages", Path(__file__).resolve().parents[1] / "rust_doc_packages.py")
packages = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(packages)


class RustDocPackagesTest(unittest.TestCase):
    def test_selection_is_sorted_and_respects_target_documentation(self):
        metadata = {"packages": [
            {"name": "z", "targets": [{"doc": True}]},
            {"name": "a", "targets": [{"doc": True}]},
            {"name": "private", "targets": [{"doc": False}]},
        ]}
        self.assertEqual(packages.workspace_package_specs(metadata), ["a", "z"])

    def test_git_specs_keep_source_identity(self):
        lock = '''[[package]]
name = "dependency"
version = "1.0.0"
source = "git+https://example.com/repo?rev=abc#abc"
'''
        self.assertEqual(list(packages.git_packages_from_lock(lock)),
                         ["git+https://example.com/repo?rev=abc#dependency@1.0.0"])
