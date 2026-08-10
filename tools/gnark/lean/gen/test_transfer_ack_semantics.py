#!/usr/bin/env python3

import copy
import json
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_transfer_ack_semantics as subject
import window2_recovery as window2


class TransferAckSemanticsTest(unittest.TestCase):
    def test_exact_window2_shape_and_row_ownership(self) -> None:
        rows = subject._canonical_rows()
        boundary = subject._recover_boundary(rows)
        trace = subject._recover_window2(rows, boundary)
        self.assertEqual(len(rows), 3010)
        self.assertEqual(boundary["scalar"], 252)
        self.assertEqual(trace.start_row, 252)
        self.assertEqual(trace.end_row, 3010)
        self.assertEqual(len(trace.windows), 124)
        self.assertEqual(trace.windows[0].high_index, 248)
        self.assertEqual(trace.windows[-1].high_index, 2)
        self.assertEqual(trace.tail.select_rows, (3008, 3009))
        self.assertEqual(trace.owned_rows, tuple(range(252, 3010)))

    def test_affine_output_is_recovered_not_last_delta_wires(self) -> None:
        rows = subject._canonical_rows()
        boundary = subject._recover_boundary(rows)
        trace = subject._recover_window2(rows, boundary)
        self.assertEqual(
            trace.output,
            window2.PointLC.of(
                {3003: 1, 3011: 1}, {3004: 1, 3012: 1}
            ),
        )
        self.assertEqual(
            window2.render_point(trace.output, order=subject.ORDER),
            "⟨rho 3003 + rho 3011, rho 3004 + rho 3012⟩",
        )

    def test_generated_layout_is_exact_and_deterministic(self) -> None:
        first = subject.generated_research_files()
        second = subject.generated_research_files()
        self.assertEqual(first, second)
        self.assertEqual(len(first), 29)
        sources = "\n".join(first.values())
        names = {path.name for path in first}
        self.assertIn(f"{subject.NAME}AckWindow2Body.lean", names)
        self.assertIn(f"{subject.NAME}AckWindow2Windows20.lean", names)
        self.assertIn(f"{subject.NAME}.lean", names)
        self.assertIn("AckBridge.AckWindow2BodySpec", sources)
        self.assertIn("Window2ScalarMulBridge.BodyRel251", sources)
        self.assertIn("theorem body_relation", sources)
        self.assertIn("theorem relation_sound", sources)
        self.assertIn("(252, 3010, 124", sources)
        self.assertIn("rho 3003 + rho 3011", sources)
        self.assertIn("linear_combination -r3008", sources)
        self.assertIn("linear_combination -r3009", sources)
        self.assertNotIn("DtkBridge.dtkLadderK", sources)
        self.assertNotIn("axiom", sources)
        self.assertNotIn("sorry", sources)
        self.assertNotIn("(by omega)", sources)
        self.assertIn("(by decide +kernel)", sources)
        self.assertNotIn("simpa [scalarBits_get]", sources)
        self.assertNotIn("simpa using rho_bit_of_map", sources)
        defs = first[
            subject.OUT / f"{subject.NAME}AckWindow2Defs.lean"
        ]
        self.assertIn("attribute [-instance] ZMod.instField", defs)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", defs
        )

    def test_each_window_has_exact_generated_proof(self) -> None:
        outputs = subject.generated_research_files()
        sources = "\n".join(outputs.values())
        for index in range(124):
            self.assertIn(f"theorem window{index} ", sources)
            self.assertIn(f"hwindow{index}", sources)
        self.assertEqual(sources.count("theorem window"), 124)

    def test_mutated_boolean_row_fails_closed(self) -> None:
        rows = copy.deepcopy(subject._canonical_rows())
        rows[17] = (rows[17][0], rows[18][1], rows[17][2])
        with self.assertRaisesRegex(ValueError, "Boolean row 17 drifted"):
            subject._recover_boundary(rows)

    def test_mutated_lookup_row_fails_closed(self) -> None:
        rows = copy.deepcopy(subject._canonical_rows())
        boundary = subject._recover_boundary(rows)
        rows[263] = ({}, {}, {})
        with self.assertRaisesRegex(ValueError, "lookup x"):
            subject._recover_window2(rows, boundary)

    def test_mutated_middle_window_cannot_be_dropped(self) -> None:
        rows = copy.deepcopy(subject._canonical_rows())
        boundary = subject._recover_boundary(rows)
        rows[1700] = ({}, {}, {})
        with self.assertRaises(ValueError):
            subject._recover_window2(rows, boundary)

    def test_mutated_tail_select_fails_closed(self) -> None:
        rows = copy.deepcopy(subject._canonical_rows())
        boundary = subject._recover_boundary(rows)
        rows[3009] = ({}, {}, {})
        with self.assertRaisesRegex(ValueError, "tail select y"):
            subject._recover_window2(rows, boundary)

    def test_removed_inventory_key_drops_deployed_support(self) -> None:
        inventory = {
            "schema": "shieldd.gnark.normalized_template_inventory.v1",
            "circuits": [],
            "template_count": 0,
            "constraint_segment_count": 0,
            "templates": [],
        }
        with tempfile.TemporaryDirectory(dir=HERE) as directory:
            path = Path(directory) / "inventory.json"
            path.write_text(json.dumps(inventory, indent=2) + "\n")
            with mock.patch.object(subject, "INVENTORY", path):
                self.assertEqual(subject.generated_files(), {})

    def test_bridge_endpoint_is_nontrivial_window2_semantics(self) -> None:
        bridge = (
            subject.LEAN / "ShielddGnarkFormal" / "AckBridge.lean"
        ).read_text()
        body = bridge[bridge.index("theorem ack_window2_body_sound") :]
        self.assertIn("bodyRel251_semantic", body)
        self.assertIn("scalarMulWindow2 251", body)
        self.assertIn("AckWindow2Spec", bridge)
        self.assertNotIn("axiom", body)
        self.assertNotIn("sorry", body)


if __name__ == "__main__":
    unittest.main()
