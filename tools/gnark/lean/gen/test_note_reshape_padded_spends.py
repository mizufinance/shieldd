#!/usr/bin/env python3
"""Regression tests for generated NoteReshape padded-spend refinements."""

from __future__ import annotations

import re
import unittest

import gen_note_reshape_padded_spends as generator


class PaddedSpendGeneratorTests(unittest.TestCase):
    def test_branch_proofs_unfold_helpers_and_orient_mux_equalities(self) -> None:
        for config in generator.CONFIGS:
            for slot in range(config.slots):
                with self.subTest(circuit=config.circuit, slot=slot):
                    rendered = generator.render_slot(config, slot)
                    anchor_start = rendered.index("theorem anchorAsserted")
                    anchor = rendered[
                        anchor_start :
                        rendered.index("\ntheorem member", anchor_start)
                    ]
                    amount_start = rendered.index("theorem dummyAmountZero")
                    amount = rendered[
                        amount_start :
                        rendered.index("\ntheorem dummyNullifier", amount_start)
                    ]
                    cross_ratio_start = rendered.index("theorem crossRatio")
                    cross_ratio = rendered[
                        cross_ratio_start :
                        rendered.index("\ntheorem randomizedKey", cross_ratio_start)
                    ]

                    self.assertIn(".guard,", anchor)
                    self.assertIn(".residual,", anchor)
                    self.assertIn("have hOneZero : (1 : DeployedF) = 0", anchor)
                    self.assertIn("hzeroOne hOneZero.symm", anchor)
                    self.assertIn(".guard,", amount)
                    self.assertIn(".residual,", amount)
                    self.assertIn(".guard,", cross_ratio)
                    self.assertIn(".leftCrossProduct,", cross_ratio)
                    self.assertIn(".rightCrossProduct,", cross_ratio)
                    self.assertIn("rcases h.2 with disabled | equal", cross_ratio)
                    self.assertEqual(
                        rendered.count("linear_combination -he + hm.1 + hm.2"),
                        2,
                    )
                    self.assertIn("] using h.symm", rendered)

    def test_refinement_paths_track_discovered_membership_segments(self) -> None:
        for config in generator.CONFIGS:
            source = (
                generator.DEPLOYED / f"{config.module}Refinement.lean"
            ).read_text()
            model = generator.load(config)
            for slot in range(config.slots):
                with self.subTest(circuit=config.circuit, slot=slot):
                    match = re.search(
                        rf"def path{slot} .*?segmentPath \(Seg(\d+)\.localRho rho\)",
                        source,
                        re.DOTALL,
                    )
                    self.assertIsNotNone(match)
                    expected = generator.spend(model, slot).state["index"]
                    self.assertEqual(int(match.group(1)), expected)

    def test_every_slot_exports_range_from_exact_rvk_spec(self) -> None:
        for config in generator.CONFIGS:
            for slot in range(config.slots):
                with self.subTest(circuit=config.circuit, slot=slot):
                    rendered = generator.render_slot(config, slot)
                    self.assertIn("theorem randomizerCanonical", rendered)
                    self.assertIn("] using h.1", rendered)
                    self.assertIn("have hr := h.2 (by", rendered)
                    self.assertNotIn("have hr := h (by", rendered)

    def test_range_uses_the_slot_specific_randomizer_role(self) -> None:
        for config in generator.CONFIGS:
            for slot in range(config.slots):
                with self.subTest(circuit=config.circuit, slot=slot):
                    rendered = generator.render_slot(config, slot)
                    role = f"syntheticSpends{slot}AuthRandomizer"
                    theorem_start = rendered.index("theorem randomizerCanonical")
                    theorem_end = rendered.index("\ntheorem rvk", theorem_start)
                    theorem = rendered[theorem_start:theorem_end]
                    self.assertIn(f"({role} rho).val < 2 ^ 251", theorem)
                    self.assertIn(f"    {role},", theorem)

    def test_handwritten_spend_joins_consume_the_empty_list_tail(self) -> None:
        for config in generator.CONFIGS:
            source = (
                generator.DEPLOYED / f"{config.module}Spend.lean"
            ).read_text()
            theorem_start = source.index("theorem actionRandomizersCanonical")
            theorem_end = source.index(
                "\ntheorem actionDummySlotIndicesCanonical", theorem_start
            )
            theorem = source[theorem_start:theorem_end]
            alternatives = " | ".join(["rfl"] * config.slots + ["hinput"])
            self.assertIn(f"rcases hinput with {alternatives}", theorem)
            self.assertIn("· contradiction", theorem)


if __name__ == "__main__":
    unittest.main()
