from __future__ import annotations

import copy
import tempfile
import unittest
from pathlib import Path

import manifest_discovery
from note_reshape_adapter_model import Deployment


class AdapterModelTests(unittest.TestCase):
    def setUp(self) -> None:
        self.model = Deployment.load(
            "note_reshape1x8", "NoteReshape1x8", (1, 8)
        )

    def rebuild(self, manifest: dict, ir: dict) -> Deployment:
        return Deployment.from_data(
            "note_reshape1x8",
            "NoteReshape1x8",
            (1, 8),
            manifest,
            ir,
        )

    def test_rejects_manifest_ir_digest_mismatch(self) -> None:
        manifest = copy.deepcopy(self.model.manifest)
        ir = copy.deepcopy(self.model.ir)
        manifest["sr1cs_sha256_hex"] = "0" * 64
        with self.assertRaisesRegex(ValueError, "sr1cs_sha256_hex mismatch"):
            self.rebuild(manifest, ir)

    def test_rejects_segment_roster_mismatch(self) -> None:
        manifest = copy.deepcopy(self.model.manifest)
        ir = copy.deepcopy(self.model.ir)
        ir["segments"][10]["op"] = "assert.eq"
        with self.assertRaisesRegex(
            ValueError, "segment 11.*(?:mismatch|class key)"
        ):
            self.rebuild(manifest, ir)

    def test_rejects_overlapping_ir_roles(self) -> None:
        manifest = copy.deepcopy(self.model.manifest)
        ir = copy.deepcopy(self.model.ir)
        wire = ir["segments"][10]["wire_roles"]["input"][0]
        ir["segments"][10]["wire_roles"]["internal"].append(wire)
        ir["segments"][10]["wire_roles"]["internal"].sort()
        with self.assertRaisesRegex(
            ValueError, "(?:overlapping IR wire roles|wire roles overlap)"
        ):
            self.rebuild(manifest, ir)

    def test_exact_trace_roles_are_order_sensitive(self) -> None:
        segment = self.model.manifest["segments"][10]
        with self.assertRaisesRegex(ValueError, "found 0"):
            self.model.segment(
                segment["op"],
                reversed(segment["args"]),
            )

    def test_rejects_unknown_authenticated_fields(self) -> None:
        manifest = copy.deepcopy(self.model.manifest)
        manifest["ignored_security_field"] = True
        with self.assertRaisesRegex(ValueError, "top-level fields drifted"):
            self.rebuild(manifest, copy.deepcopy(self.model.ir))

    def test_rejects_template_digest_cross_field_mismatch(self) -> None:
        ir = copy.deepcopy(self.model.ir)
        ir["segments"][10][
            "deployed_normalized_relation_sha256_hex"
        ] = "0" * 64
        with self.assertRaisesRegex(ValueError, "template identity drifted"):
            self.rebuild(copy.deepcopy(self.model.manifest), ir)

    def test_strict_loader_rejects_duplicate_keys(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "manifest.json"
            path.write_text('{"schema": "one", "schema": "two"}')
            with self.assertRaisesRegex(ValueError, "duplicate JSON key"):
                manifest_discovery.read_json_object(path)

    def test_strict_loader_rejects_non_finite_numbers(self) -> None:
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "manifest.json"
            path.write_text('{"nb_constraints": NaN}')
            with self.assertRaisesRegex(ValueError, "non-finite JSON number"):
                manifest_discovery.read_json_object(path)


if __name__ == "__main__":
    unittest.main()
