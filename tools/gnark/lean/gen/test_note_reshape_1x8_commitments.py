from __future__ import annotations

import copy
import unittest

import gen_note_reshape_1x8_commitments as commitments
from note_reshape_adapter_model import Deployment


class NoteReshape1x8CommitmentTests(unittest.TestCase):
    def test_discovers_fresh_exact_roles(self) -> None:
        notes = commitments.note_segments(commitments.deployment())
        self.assertEqual(
            [
                (note.hash_segment["index"], note.assert_segment["index"])
                for note in notes
            ],
            [
                (29, 30),
                (40, 41),
                (44, 45),
                (48, 49),
                (52, 53),
                (56, 57),
                (60, 61),
                (64, 65),
                (68, 69),
            ],
        )

    def test_rejects_output_role_alias_mutation(self) -> None:
        original = commitments.deployment()
        manifest = copy.deepcopy(original.manifest)
        ir = copy.deepcopy(original.ir)
        output1_index = commitments.note_segments(original)[2].hash_segment[
            "index"
        ]
        output1 = next(
            segment
            for segment in manifest["segments"]
            if segment["index"] == output1_index
        )
        output1["args"][-1] = "out=output0.note.commitment.computed"
        mutated = Deployment.from_data(
            "note_reshape1x8",
            "NoteReshape1x8",
            (1, 8),
            manifest,
            ir,
        )
        with self.assertRaisesRegex(ValueError, "output1.*found 0"):
            commitments.note_segments(mutated)

    def test_rejects_note_input_role_mutation(self) -> None:
        original = commitments.deployment()
        manifest = copy.deepcopy(original.manifest)
        ir = copy.deepcopy(original.ir)
        spend_index = commitments.note_segments(original)[0].hash_segment[
            "index"
        ]
        segment = next(
            segment
            for segment in ir["segments"]
            if segment["index"] == spend_index
        )
        wire = segment["wire_roles"]["input"].pop()
        segment["wire_roles"]["internal"].append(wire)
        segment["wire_roles"]["internal"].sort()
        mutated = Deployment.from_data(
            "note_reshape1x8",
            "NoteReshape1x8",
            (1, 8),
            manifest,
            ir,
        )
        with self.assertRaisesRegex(ValueError, "note_commitment.inputs"):
            commitments.note_segments(mutated)


if __name__ == "__main__":
    unittest.main()
