from __future__ import annotations

import copy
import importlib.util
import json
import sys
import tempfile
import unittest
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch


SCRIPT = Path(__file__).with_name("extractions.py")
sys.path.insert(0, str(SCRIPT.parent))
SPEC = importlib.util.spec_from_file_location("extractions", SCRIPT)
assert SPEC and SPEC.loader
EXTRACTIONS = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = EXTRACTIONS
SPEC.loader.exec_module(EXTRACTIONS)


class ExtractionManifestTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.manifest = EXTRACTIONS.load_manifest()

    def validate(self, manifest, *, verify_files: bool = False) -> None:
        EXTRACTIONS.validate_manifest(manifest, verify_files=verify_files)

    def assert_invalid(self, manifest, needle: str, *, verify_files: bool = False) -> None:
        with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
            self.validate(manifest, verify_files=verify_files)
        self.assertIn(needle, str(raised.exception))

    def test_real_manifest_schema_hashes_and_exact_coverage(self):
        self.validate(self.manifest, verify_files=True)
        outputs = [graph["output"] for graph in self.manifest["graphs"]]
        self.assertEqual(len(outputs), 32)
        self.assertEqual(len(set(outputs)), 32)
        self.assertEqual(
            {Path(output).name for output in outputs},
            {
                path.name
                for path in (
                    EXTRACTIONS.REPO_ROOT
                    / "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted"
                ).glob("*Generated.lean")
            },
        )

    def test_canonical_pretty_json_is_enforced(self):
        with tempfile.TemporaryDirectory(prefix="extractions-test-") as directory:
            path = Path(directory) / "manifest.json"
            path.write_text(json.dumps(self.manifest), encoding="utf-8")
            with self.assertRaises(EXTRACTIONS.ManifestError) as raised:
                EXTRACTIONS.load_manifest(path)
            self.assertIn("canonical pretty JSON", str(raised.exception))

    def test_unknown_and_missing_fields_are_rejected_at_each_level(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["unknown"] = True
        self.assert_invalid(manifest, "unknown unknown")

        manifest = copy.deepcopy(self.manifest)
        del manifest["toolchains"]["lean"]
        self.assert_invalid(manifest, "missing lean")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["unknown"] = True
        self.assert_invalid(manifest, "unknown unknown")

        manifest = copy.deepcopy(self.manifest)
        del manifest["graphs"][0]["inputs"][0]["sha256"]
        self.assert_invalid(manifest, "missing sha256")

    def test_null_or_non_commit_tool_revisions_are_rejected(self):
        for key, value in (
            ("hax_commit", None),
            ("charon_commit", "unknown"),
            ("aeneas_commit", "e0a1596"),
        ):
            with self.subTest(key=key):
                manifest = copy.deepcopy(self.manifest)
                manifest["toolchains"][key] = value
                self.assert_invalid(manifest, f"toolchains.{key}")

    def test_duplicate_ids_and_outputs_are_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["id"] = manifest["graphs"][0]["id"]
        self.assert_invalid(manifest, "duplicate graph id")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][1]["output"] = manifest["graphs"][0]["output"]
        self.assert_invalid(manifest, "duplicate output")

    def test_absolute_backslash_and_parent_paths_are_rejected(self):
        for path in (
            "/tmp/Generated.lean",
            r"C:\tmp\Generated.lean",
            "../Ipp/Extracted/FooGenerated.lean",
        ):
            with self.subTest(path=path):
                manifest = copy.deepcopy(self.manifest)
                manifest["graphs"][0]["output"] = path
                self.assert_invalid(manifest, "output")

    def test_roots_and_features_must_be_sorted(self):
        manifest = copy.deepcopy(self.manifest)
        graph = next(graph for graph in manifest["graphs"] if len(graph["roots"]) > 1)
        graph["roots"] = list(reversed(graph["roots"]))
        self.assert_invalid(manifest, "expected sorted array")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["features"] = ["z", "a"]
        self.assert_invalid(manifest, "expected sorted array")

    def test_source_hash_mismatch_is_rejected(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["inputs"][0]["sha256"] = "f" * 64
        self.assert_invalid(manifest, "stale", verify_files=True)

    def test_raw_hash_count_and_output_normalized_hash_must_match(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["raw_sha256"].pop()
        self.assert_invalid(manifest, "expected 2")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["normalization"]["normalized_sha256"] = "f" * 64
        self.assert_invalid(manifest, "do not match")

    def test_generated_output_shape_and_32_record_coverage_are_required(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"].pop()
        self.assert_invalid(manifest, "expected 32 records")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["output"] = (
            "crates/crypto/proof-aggregation/formal/lean-ipp/Ipp/Extracted/"
            "AeneasRuntime.lean"
        )
        self.assert_invalid(manifest, "expected Ipp/Extracted/*Generated.lean")

    def test_extraction_command_shape_and_parity_command_are_pinned(self):
        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["extractions"][0]["argv"] = ["cargo", "hax"]
        self.assert_invalid(manifest, "expected cargo hax into")

        manifest = copy.deepcopy(self.manifest)
        manifest["graphs"][0]["parity"][0]["argv"] = ["cargo", "check"]
        self.assert_invalid(manifest, "expected cargo test")

    def test_shared_runtime_change_affects_every_graph(self):
        changed = SimpleNamespace(stdout=f"{EXTRACTIONS.RUNTIME_REPO_PATH}\n")
        with patch.object(EXTRACTIONS, "_git", return_value=changed):
            self.assertEqual(
                EXTRACTIONS.affected_graph_ids(self.manifest, "base"),
                sorted(graph["id"] for graph in self.manifest["graphs"]),
            )


if __name__ == "__main__":
    unittest.main()
