from __future__ import annotations

import copy
import json
import tempfile
import unittest
from pathlib import Path

import gen_template_inventory as inventory
import gen_template_ownership as ownership


class CertifiedTemplateInventoryTests(unittest.TestCase):
    def test_committed_inventory_is_exactly_the_certified_ir_union(self) -> None:
        irs = [
            inventory.load_ir(path)
            for path in ownership.certified_ir_paths()
        ]
        rendered = inventory.inventory(irs)
        committed = json.loads(
            (
                ownership.ROOT
                / "tools/gnark/artifacts/certified-template-inventory.json"
            ).read_text()
        )
        self.assertEqual(rendered, committed)
        self.assertEqual(
            {circuit["circuit"] for circuit in rendered["circuits"]},
            {ir["circuit"] for ir in irs},
        )
        self.assertEqual(
            sum(
                len(template["instances"])
                for template in rendered["templates"]
            ),
            rendered["constraint_segment_count"],
        )

    def test_ir_loader_rejects_noncanonical_json_and_schema_drift(self) -> None:
        source_path = ownership.certified_ir_paths()[0]
        source = inventory.load_ir(source_path)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            duplicate = root / source_path.name
            duplicate.write_text(
                '{"schema":"shieldd.gnark.deployed_slice_ir.v3",'
                '"schema":"shieldd.gnark.deployed_slice_ir.v3"}',
                encoding="utf-8",
            )
            with self.assertRaisesRegex(ValueError, "duplicate JSON key"):
                inventory.load_ir(duplicate)

            nonfinite = root / source_path.name
            nonfinite.write_text(
                '{"schema":"shieldd.gnark.deployed_slice_ir.v3",'
                '"circuit":"note_reshape1x8","nb_constraints":NaN}',
                encoding="utf-8",
            )
            with self.assertRaisesRegex(ValueError, "non-finite JSON"):
                inventory.load_ir(nonfinite)

            drifted = copy.deepcopy(source)
            drifted["segments"][1]["template_equivalence_witness"][
                "row_transforms"
            ] = [{"kind": "unreviewed"}]
            nonfinite.write_text(
                json.dumps(drifted, indent=2) + "\n",
                encoding="utf-8",
            )
            with self.assertRaisesRegex(ValueError, "row transforms"):
                inventory.load_ir(nonfinite)


if __name__ == "__main__":
    unittest.main()
