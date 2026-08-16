#!/usr/bin/env python3

from __future__ import annotations

from pathlib import Path
import unittest
from unittest import mock

import gen_transfer_threshold_semantics as threshold


class TransferThresholdSemanticsTest(unittest.TestCase):
    def test_lc_dependencies_unfold_wrappers_before_parts(self) -> None:
        definitions = {
            "relationRow128": "relationLc0 rho",
            "relationLc0": "relationLc0Part0 rho + relationLc0Part1 rho",
            "relationLc0Part0": "rho 1",
            "relationLc0Part1": "rho 2",
        }
        self.assertEqual(
            threshold._dependency_closure(definitions, "relationRow128"),
            ("relationLc0", "relationLc0Part0", "relationLc0Part1"),
        )
        self.assertEqual(
            threshold._unfold_rows((128,), definitions),
            [
                "  unfold "
                + threshold.REL
                + ".relationRow128 "
                + threshold.REL
                + ".relationLc0 "
                + threshold.REL
                + ".relationLc0Part0 "
                + threshold.REL
                + ".relationLc0Part1 at r128"
            ],
        )

    def test_less_shapes_follow_normalized_relation(self) -> None:
        rows, _ = threshold.recover()
        source = threshold.common._relation_source(threshold.NAME)
        threshold._validate_relation(source, rows)
        definitions = threshold._definitions(source)
        threshold._validate_less_shapes(definitions)
        self.assertEqual(
            definitions["relationLc2"].strip(),
            threshold._structured_less_body(16),
        )

        mutated = dict(definitions)
        mutated["relationLc2"] = mutated["relationLc2"].replace(
            ", 5, 16⟩", ", 5, 15⟩", 1
        )
        with self.assertRaisesRegex(ValueError, "less count 16"):
            threshold._validate_less_shapes(mutated)

    def test_bit_lookup_transport_precedes_tail_rewrite(self) -> None:
        kernel = (
            Path(threshold.FORMAL)
            / "ThresholdFlagLadder.lean"
        ).read_text()
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
            kernel.split("def Step", 1)[0],
        )
        transport = "rw [hA, hB, pe_update, il_update] at heq"
        rewrite_tail = "rw [heq.1, heq.2] at htail"
        self.assertIn(transport, kernel)
        self.assertIn(rewrite_tail, kernel)
        self.assertLess(kernel.index(transport), kernel.index(rewrite_tail))

    def test_generated_ladders_close_less_representation_seam(self) -> None:
        files = threshold.generated_files()
        ladders = "\n".join(
            source
            for path, source in files.items()
            if "Ladder" in path.name
        )
        for bit_index in range(111):
            before = bit_index + 1
            before_count = 126 - bit_index
            self.assertIn(
                f"· unfold less{before} lessState",
                ladders,
            )
            self.assertIn(
                f"(lessState_succ rho {before_count})",
                ladders,
            )
        self.assertIn(
            "· unfold less112\n"
            "      linear_combination r337",
            ladders,
        )
        self.assertIn(
            "· unfold less111 lessState less112",
            ladders,
        )
        self.assertEqual(
            ladders.count("simp only [Nat.reduceAdd]"),
            128,
        )
        self.assertEqual(
            ladders.count("    unfold prefix127\n"),
            2,
        )
        self.assertIn("· unfold less128; ring", ladders)
        self.assertIn("· unfold less127 less128; ring", ladders)

    def test_exact_canonical_recovery(self) -> None:
        rows, output = threshold.recover()
        self.assertEqual(len(rows), threshold.ROW_COUNT)
        self.assertEqual(threshold.ROW_COUNT, 896)
        self.assertEqual(threshold.PART_COUNT, 180)
        self.assertEqual(len(output), 256)
        self.assertEqual(output[0], 1)
        self.assertNotIn(895, output)
        self.assertNotIn(896, output)
        self.assertNotIn(897, output)
        self.assertEqual(output[259], threshold.common.ORDER - 1)
        self.assertEqual(output[892], threshold.common.ORDER - 1)
        self.assertEqual(output[893], 1)
        self.assertEqual(
            rows[895],
            (
                {896: 1},
                output,
                {897: 1},
            ),
        )

    def test_row_mutation_fails_closed(self) -> None:
        rows, _ = threshold.recover()
        mutated = list(rows)
        left, right, out = mutated[894]
        mutated[894] = (left, right, {895: 2})
        with mock.patch.object(
            threshold.common, "_canonical_rows", return_value=tuple(mutated)
        ):
            with self.assertRaisesRegex(ValueError, "row 894"):
                threshold.recover()

    def test_threshold_gate_role_mutations_fail_closed(self) -> None:
        rows, _ = threshold.recover()
        for label, replacement in (
            ("is-regulated", ({895: 1}, rows[895][1], {897: 1})),
            ("output", ({896: 1}, rows[895][1], {896: 1})),
        ):
            with self.subTest(label=label):
                mutated = (*rows[:895], replacement)
                with mock.patch.object(
                    threshold.common,
                    "_canonical_rows",
                    return_value=mutated,
                ):
                    with self.assertRaisesRegex(ValueError, "row 895"):
                        threshold.recover()

    def test_legacy_ungated_relation_is_rejected(self) -> None:
        rows, _ = threshold.recover()
        with mock.patch.object(
            threshold.common,
            "_canonical_rows",
            return_value=rows[:895],
        ):
            with self.assertRaisesRegex(
                ValueError,
                "ungated threshold relation is not a semantic provider",
            ):
                threshold.recover()

    def test_normalized_part_mutation_fails_closed(self) -> None:
        rows, _ = threshold.recover()
        source = threshold.common._relation_source(threshold.NAME)
        mutated = source.replace(
            "relationRow894 rho\n\ndef relationPart179",
            "relationRow893 rho\n\ndef relationPart179",
            1,
        )
        self.assertNotEqual(source, mutated)
        with self.assertRaisesRegex(ValueError, "part 178"):
            threshold._validate_relation(mutated, rows)

    def test_single_row_final_part_is_unpacked_without_fake_conjunction(self) -> None:
        lines = threshold._unpack_relation(
            (179,), hypothesis="hFlagRows"
        )
        self.assertIn(
            f"  unfold {threshold.REL}.relation at hFlagRows",
            lines,
        )
        self.assertIn("  have r895 := p179", lines)
        self.assertNotIn("  rcases p179 with ⟨r895⟩", lines)

    def test_generated_provider_is_direct_and_exhaustive(self) -> None:
        files = threshold.generated_files()
        self.assertEqual(len(files), 12)
        main = files[threshold.OUT / f"{threshold.NAME}.lean"]
        combined = "\n".join(files.values())
        self.assertIn(
            "ThresholdRegulatedBridge.ThresholdFlagSpec", combined
        )
        self.assertIn(
            "(rho 896) (rho 129) (rho 258) (rho 897)",
            combined,
        )
        self.assertNotIn(
            "(rho 129) (rho 258) (finalFlag rho)",
            combined,
        )
        self.assertIn(
            "have hFlagRow : rho 896 * finalFlag rho = rho 897",
            combined,
        )
        self.assertIn(
            "ThresholdFlagCircuit\n"
            "        (rho 896) (rho 129) (rho 258) (rho 897)",
            combined,
        )
        self.assertIn("ThresholdFlagLadder.run_sound", combined)
        self.assertIn("finalFlag_eq", combined)
        self.assertIn("theorem orderSubOne_eq_negOne", combined)
        self.assertNotIn(
            "orderSubOne_eq_negOne", main
        )
        self.assertIn(
            "instance thresholdPoseidonFactPrime : "
            "Fact (Nat.Prime Poseidon377.P)",
            combined,
        )
        self.assertIn("theorem lessState_succ", combined)
        self.assertIn(
            "unfold less111 lessState less112",
            combined,
        )
        self.assertIn(
            "simpa only [less110, less111] using",
            combined,
        )
        self.assertNotIn(
            "less127 rho + rho 262 - rho 263",
            combined,
        )
        self.assertIn(
            "local instance thresholdEdwardsFactPrime",
            combined,
        )
        self.assertIn(
            "(rho 129) (amountBits rho) ?_ hrec",
            combined,
        )
        self.assertEqual(combined.count("have key' :"), 2)
        for vector in ("amountBits", "thresholdBits"):
            self.assertIn(
                f"rw [← getElem!_pos ({vector} rho) i "
                "(by simpa using hi)]",
                combined,
            )
        self.assertEqual(combined.count("exact key' ▸ hgoal"), 2)
        self.assertNotIn("· exact hrec", combined)
        self.assertNotIn("rho 895) : Prop", combined)
        self.assertNotIn("representativeRho", combined)
        self.assertNotIn("representativeSeating", combined)
        self.assertNotIn("Contracts.Transfer", combined)
        self.assertNotIn("axiom ", combined)
        self.assertNotIn("sorry", combined)
        self.assertNotIn("\\n", combined)
        referenced = {
            int(index)
            for index in __import__("re").findall(
                r"\.relationRow(\d+)", combined
            )
        }
        self.assertEqual(referenced, set(range(threshold.ROW_COUNT)))

    def test_checked_in_outputs_are_fresh(self) -> None:
        for path, expected in threshold.generated_files().items():
            self.assertTrue(path.is_file(), path)
            self.assertEqual(path.read_text(), expected, path)


if __name__ == "__main__":
    unittest.main()
