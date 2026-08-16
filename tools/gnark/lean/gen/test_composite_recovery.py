#!/usr/bin/env python3

import json
import unittest
from pathlib import Path
from unittest import mock

import composite_recovery as recovery


class CompositeRecoveryTests(unittest.TestCase):
    def test_amount_partition_and_semantic_pins(self):
        result = recovery.recover_amount()
        self.assertEqual(
            [
                *result.compress_rows,
                *result.salt_block,
                result.equality_row,
            ],
            list(range(1312)),
        )
        self.assertEqual(result.shared_fq_lc, (
            (369, recovery.ORDER - 1),
            (709, 1),
        ))
        self.assertEqual(result.c2_wire, 710)
        self.assertEqual(result.salt_slice.outputs[0], 715)
        self.assertEqual(result.salt_slice.outputs[-1], 975)
        self.assertEqual(result.ciphertext_wire, 977)
        self.assertEqual(result.amount_wire, 976)
        self.assertEqual(result.compress_extracted_affine_delta, -203)

    def test_amount_rejects_changed_plaintext_coefficient(self):
        original = recovery.rows
        amount = original(recovery.AMOUNT_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        amount[1311][1][976] = 2
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                amount if digest == recovery.AMOUNT_DIGEST else reference
            ),
        ):
            with self.assertRaisesRegex(
                ValueError,
                "amount plaintext.*coefficient-one witness",
            ):
                recovery.recover_amount()

    def test_detection_partition_and_semantic_pins(self):
        result = recovery.recover_detection()
        covered = [
            *result.sender_slot_binary.rows,
            *result.receiver_slot_binary.rows,
            *result.compress_rows,
            *result.seed_block,
            *(row for block in result.stream_blocks for row in block),
            *result.equality_rows,
        ]
        self.assertEqual(covered, list(range(2446)))
        self.assertEqual(
            result.sender_slot_binary.bit_wires,
            tuple(range(1, 33)),
        )
        self.assertEqual(
            (
                result.sender_slot_binary.recomposition_row,
                result.sender_slot_binary.value_wire,
            ),
            (32, 33),
        )
        self.assertEqual(
            result.receiver_slot_binary.bit_wires,
            tuple(range(34, 66)),
        )
        self.assertEqual(
            (
                result.receiver_slot_binary.recomposition_row,
                result.receiver_slot_binary.value_wire,
            ),
            (65, 66),
        )
        self.assertEqual(result.shared_fq_lc, (
            (433, recovery.ORDER - 1),
            (773, 1),
        ))
        self.assertEqual(result.epk_fq_lc, (
            (779, recovery.ORDER - 1),
            (780, 1),
        ))
        self.assertEqual(result.seed_slice.outputs[:2], (778, 785))
        self.assertEqual(result.seed_slice.outputs[-1], 1045)
        self.assertEqual(
            tuple(slice_.outputs[0] for slice_ in result.stream_slices),
            (1050, 1315, 1580, 1845),
        )
        self.assertEqual(
            tuple(slice_.outputs[-1] for slice_ in result.stream_slices),
            (1310, 1575, 1840, 2105),
        )
        self.assertEqual(
            result.ciphertext_wires,
            (2107, 2111, 2114, 2115),
        )
        self.assertEqual(result.asset_id_wire, 2106)
        self.assertEqual(result.flag_wire, 2113)
        self.assertEqual(result.swap_wire, 2112)
        self.assertEqual(
            result.plaintext_lcs[2],
            ((33, 1), (2112, 1 << 33), (2113, 1 << 32)),
        )
        self.assertEqual(result.compress_extracted_affine_delta, -139)

    def test_detection_raw_rows_retain_signed_seed_coefficient(self):
        raw = recovery.raw_rows(recovery.DETECTION_DIGEST)
        reduced = recovery.rows(recovery.DETECTION_DIGEST)
        self.assertEqual(raw[1112][0][433], -1)
        self.assertEqual(raw[1112][1][433], -1)
        self.assertEqual(reduced[1112][0][433], recovery.ORDER - 1)
        self.assertEqual(reduced[1112][1][433], recovery.ORDER - 1)

    def test_detection_rejects_changed_seed_input_seat(self):
        original = recovery.rows
        detection = original(recovery.DETECTION_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        detection[1117][0].pop(779)
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                detection
                if digest == recovery.DETECTION_DIGEST
                else reference
            ),
        ):
            with self.assertRaisesRegex(
                ValueError, "first-round square drifted"
            ):
                recovery.recover_detection()

    def test_detection_rejects_changed_final_equality_unit_input(self):
        original = recovery.rows
        detection = original(recovery.DETECTION_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        detection[2445][0].clear()
        detection[2445][0][2105] = 1
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                detection
                if digest == recovery.DETECTION_DIGEST
                else reference
            ),
        ):
            with self.assertRaisesRegex(ValueError, "unit input drifted"):
                recovery.recover_detection()

    def test_detection_rejects_non_boolean_sender_slot_bit(self):
        original = recovery.rows
        detection = original(recovery.DETECTION_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        detection[0][1][1] = 2
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                detection
                if digest == recovery.DETECTION_DIGEST
                else reference
            ),
        ):
            with self.assertRaisesRegex(ValueError, "exact Boolean row"):
                recovery.recover_detection()

    def test_detection_rejects_sender_slot_recomposition_drift(self):
        original = recovery.rows
        detection = original(recovery.DETECTION_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        detection[32][1][32] = (1 << 31) + 1
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                detection
                if digest == recovery.DETECTION_DIGEST
                else reference
            ),
        ):
            with self.assertRaisesRegex(
                ValueError, "exact 32-bit recomposition row drifted"
            ):
                recovery.recover_detection()

    def test_detection_rejects_sender_word_flag_coefficient_drift(self):
        original = recovery.rows
        detection = original(recovery.DETECTION_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        detection[2444][1][2113] = (1 << 32) + 1
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                detection
                if digest == recovery.DETECTION_DIGEST
                else reference
            ),
        ):
            with self.assertRaisesRegex(
                ValueError, "sender-word flag"
            ):
                recovery.recover_detection()

    def test_address_partition_and_semantic_pins(self):
        result = recovery.recover_address()
        covered = [
            *result.compress_rows,
            *result.div_block,
            *result.transmission_block,
            *result.salt_blocks[0],
            result.equality_rows[0],
            *result.salt_blocks[1],
            result.equality_rows[1],
            *result.salt_blocks[2],
            result.equality_rows[2],
        ]
        self.assertEqual(covered, list(range(2856)))
        self.assertEqual(result.div_input_lc, (963, 964))
        self.assertEqual(result.transmission_input_lc, (1304, 1305))
        self.assertEqual(result.c2_wire, 1392)
        self.assertEqual(
            result.shared_fq_lc,
            ((369, recovery.ORDER - 1), (709, 1)),
        )
        self.assertEqual(
            tuple(slice_.label for slice_ in result.salt_slices),
            (0, 1, 2),
        )
        self.assertEqual(
            tuple(slice_.rows.start for slice_ in result.salt_slices),
            (2058, 2324, 2590),
        )
        self.assertEqual(
            tuple(slice_.outputs[0] for slice_ in result.salt_slices),
            (1397, 1663, 1929),
        )
        self.assertEqual(
            tuple(slice_.outputs[-1] for slice_ in result.salt_slices),
            (1657, 1923, 2189),
        )
        self.assertEqual(
            tuple(dict(slice_.output_lc) for slice_ in result.salt_slices),
            (
                {
                    1647: 6333346312071277818186618704086159898531924501365547870951425091938056929281,
                    1652: 6755569399542696339399059951025237225100719468123251062348186764733927391233,
                    1657: 7037051457856975353540687448984622109479916112628386523279361213264507699201,
                },
                {
                    1913: 6333346312071277818186618704086159898531924501365547870951425091938056929281,
                    1918: 6755569399542696339399059951025237225100719468123251062348186764733927391233,
                    1923: 7037051457856975353540687448984622109479916112628386523279361213264507699201,
                },
                {
                    2179: 6333346312071277818186618704086159898531924501365547870951425091938056929281,
                    2184: 6755569399542696339399059951025237225100719468123251062348186764733927391233,
                    2189: 7037051457856975353540687448984622109479916112628386523279361213264507699201,
                },
            ),
        )
        self.assertEqual(result.ciphertext_wires, (1658, 1924, 2190))
        self.assertEqual(result.compress_extracted_head_mapping[0], 4)
        self.assertEqual(
            result.compress_extracted_head_mapping[1:],
            (
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                19,
                16,
                15,
                17,
                18,
                20,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
            ),
        )
        self.assertEqual(result.compress_extracted_affine_delta, -203)

    def test_address_rejects_one_changed_packing_bit(self):
        original = recovery.rows
        address = original(recovery.ADDRESS_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        address[1299][1].pop(710)
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                address if digest == recovery.ADDRESS_DIGEST else reference
            ),
        ):
            with self.assertRaisesRegex(ValueError, "recomposition LHS drifted"):
                recovery.recover_address()

    def test_address_rejects_one_changed_poseidon_round_input(self):
        original = recovery.rows
        address = original(recovery.ADDRESS_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        address[2058][0][1392] = 2
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                address if digest == recovery.ADDRESS_DIGEST else reference
            ),
        ):
            with self.assertRaisesRegex(
                ValueError, "first input square drifted"
            ):
                recovery.recover_address()

    def test_address_rejects_wrong_final_mds_lane_in_ciphertext_row(self):
        original = recovery.rows
        address = original(recovery.ADDRESS_DIGEST)
        reference = original(recovery.COMPRESS_REFERENCE_DIGEST)
        address[2323][1].pop(1647)
        with mock.patch.object(
            recovery,
            "rows",
            side_effect=lambda digest: (
                address if digest == recovery.ADDRESS_DIGEST else reference
            ),
        ):
            with self.assertRaisesRegex(
                ValueError,
                "plaintext/salt expression drifted",
            ):
                recovery.recover_address()

    def test_dleq_relation_is_retired_from_current_circuits(self):
        root = Path(__file__).resolve().parents[4]
        manifests = sorted(
            (root / "tools/gnark/artifacts").glob("*/*-manifest.json")
        )
        self.assertEqual(len(manifests), 4)
        deployed_irs = []
        for manifest in manifests:
            circuit = json.loads(manifest.read_text())["circuit"]
            deployed_irs.append(
                root
                / "crates/core/component/shielded-pool/formal"
                / f"{circuit}-deployed-slice-ir.json"
            )
        for path in (*manifests, *deployed_irs):
            source = path.read_text()
            self.assertNotIn(recovery.DLEQ_DIGEST, source, path)
            self.assertNotIn("gadget.dleq", source, path)
        transfer_ir = next(
            path for path in deployed_irs if path.name.startswith("transfer-")
        ).read_text()
        for digest in (
            recovery.ADDRESS_DIGEST,
            recovery.AMOUNT_DIGEST,
            recovery.DETECTION_DIGEST,
        ):
            self.assertIn(digest, transfer_ir)
            self.assertTrue(
                (recovery.RELATIONS / f"{digest}.sr1cs.gz").is_file()
            )
        self.assertFalse(
            (recovery.RELATIONS / f"{recovery.DLEQ_DIGEST}.sr1cs.gz")
            .exists()
        )


if __name__ == "__main__":
    unittest.main()
