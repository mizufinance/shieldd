from __future__ import annotations

import json
import tempfile
import time
import unittest
from pathlib import Path

import gen_template_ownership as ownership
from write_if_changed import write_if_changed


class TemplateOwnershipTests(unittest.TestCase):
    def test_every_registry_template_has_exact_owned_bytes(self) -> None:
        rendered = ownership.render()
        registry = json.loads(ownership.REGISTRY.read_text())
        self.assertEqual(
            {item["proof_template_id"] for item in rendered["templates"]},
            {item["proof_template_id"] for item in registry["templates"]},
        )
        for item in rendered["templates"]:
            self.assertTrue(item["files"], item["proof_template_id"])
            self.assertEqual(
                item["template_files_sha256_hex"],
                ownership.aggregate(item["files"]),
            )

    def test_family_closure_uses_only_consumed_templates(self) -> None:
        rendered = ownership.render()
        for family in rendered["families"]:
            self.assertTrue(family["proof_template_ids"], family["circuit"])
            self.assertEqual(
                len(family["proof_template_ids"]),
                len(set(family["proof_template_ids"])),
            )

    def test_identical_manifest_write_preserves_mtime(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "ownership.json"
            source = ownership.encoded()
            self.assertTrue(write_if_changed(path, source))
            first = path.stat().st_mtime_ns
            time.sleep(0.02)
            self.assertFalse(write_if_changed(path, source))
            self.assertEqual(path.stat().st_mtime_ns, first)


if __name__ == "__main__":
    unittest.main()
