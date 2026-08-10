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
                (11, 12),
                (22, 23),
                (26, 27),
                (30, 31),
                (34, 35),
                (38, 39),
                (42, 43),
                (46, 47),
                (50, 51),
            ],
        )

    def test_rejects_output_role_alias_mutation(self) -> None:
        original = commitments.deployment()
        manifest = copy.deepcopy(original.manifest)
        ir = copy.deepcopy(original.ir)
        output1 = manifest["segments"][25]
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
        segment = ir["segments"][10]
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
