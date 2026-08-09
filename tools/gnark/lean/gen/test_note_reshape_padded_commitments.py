from __future__ import annotations

import copy
import unittest

import gen_note_reshape_padded_commitments as commitments
from note_reshape_adapter_model import Deployment


class NoteReshapePaddedCommitmentTests(unittest.TestCase):
    def test_real_spend_assertions_unfold_the_conditional_guard(self) -> None:
        guard = (
            "Deployed.Templates.Semantics."
            "TAssertEqIf_ce0e02a1deb2ef2e836cbed67d37f3678356db1d6c5cfaa61678d01652034f8f.guard,"
        )
        for config in commitments.CONFIGS:
            with self.subTest(circuit=config.circuit):
                source = commitments.render(config)
                self.assertEqual(source.count(guard), config.slots)
                self.assertEqual(source.count("have hOneZero :"), config.slots)
                self.assertEqual(
                    source.count("hzeroOne hOneZero.symm"),
                    config.slots,
                )

    def test_discovers_every_fresh_hash_assertion_pair(self) -> None:
        expected = {
            "note_reshape8x1": (
                [
                    (21, 22),
                    (35, 36),
                    (49, 50),
                    (63, 64),
                    (77, 78),
                    (91, 92),
                    (105, 106),
                    (119, 120),
                ],
                (133, 134),
            ),
        }
        for config in commitments.CONFIGS:
            model = commitments.load(config)
            pairs = []
            for slot in range(config.slots):
                prefix = f"spend{slot}"
                hashed = commitments.commitment_segment(model, prefix)
                asserted = commitments.spend_assert_segment(
                    model,
                    prefix,
                    hashed,
                    model.witness_wire(
                        f"SyntheticSpends_{slot}_IsDummy"
                    ),
                )
                pairs.append((hashed["index"], asserted["index"]))
            output_hash = commitments.commitment_segment(model, "output0")
            output_assert = commitments.output_assert_segment(
                model, output_hash
            )
            with self.subTest(circuit=config.circuit):
                self.assertEqual(pairs, expected[config.circuit][0])
                self.assertEqual(
                    (output_hash["index"], output_assert["index"]),
                    expected[config.circuit][1],
                )

    def test_rejects_output_claimed_role_reclassification(self) -> None:
        config = commitments.CONFIGS[0]
        original = commitments.load(config)
        manifest = copy.deepcopy(original.manifest)
        ir = copy.deepcopy(original.ir)
        claimed = original.binding_wires(
            "output0.note.commitment.claimed", 1
        ).pop()
        output_hash = commitments.commitment_segment(original, "output0")
        assertion_index = commitments.output_assert_segment(
            original, output_hash
        )["index"]
        assertion = next(
            segment
            for segment in ir["segments"]
            if segment["index"] == assertion_index
        )
        assertion["wire_roles"]["internal"].remove(claimed)
        assertion["wire_roles"]["input"].append(claimed)
        assertion["wire_roles"]["input"].sort()
        mutated = Deployment.from_data(
            config.circuit,
            config.module,
            (config.slots, 1),
            manifest,
            ir,
        )
        hashed = commitments.commitment_segment(mutated, "output0")
        with self.assertRaisesRegex(
            ValueError, "exact input role|claimed.*internal"
        ):
            commitments.output_assert_segment(mutated, hashed)


if __name__ == "__main__":
    unittest.main()
