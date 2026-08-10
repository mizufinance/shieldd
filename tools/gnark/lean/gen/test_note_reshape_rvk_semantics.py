from __future__ import annotations

import re
import unittest

import gen_note_reshape_rvk_semantics as rvk


class NoteReshapeRvkSemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = rvk.generated_files()

    def test_exact_output_set_and_provider_namespace(self) -> None:
        self.assertEqual(len(self.outputs), 850)
        provider = self.outputs[rvk.OUT / f"{rvk.NAME}.lean"]
        self.assertIn(f"namespace {rvk.NAMESPACE}\n", provider)
        self.assertNotIn(".RvkSupport", "\n".join(self.outputs.values()))
        self.assertIn("theorem sound ", provider)
        self.assertNotIn("theorem rvk_sound ", provider)
        base = self.outputs[rvk.OUT / f"{rvk.NAME}RvkBase.lean"]
        self.assertIn("(rho 252).val < 2 ^ 251", base)
        self.assertIn("ChoiceFreeBinary.range_of_to_binary", provider)
        self.assertIn("refine ⟨hscalarRange, ?_⟩", provider)

    def test_representative_is_an_active_deployed_profile(self) -> None:
        self.assertEqual(
            rvk.IR.name,
            "note_reshape1x8-deployed-slice-ir.json",
        )
        self.assertEqual(rvk._segment()["proof_template_id"], rvk.KEY)

    def test_recovery_discovers_monolithic_and_sharded_fixed_rungs(self) -> None:
        for inst in ("Inst0", "Inst1"):
            source = rvk.rvk.fixed_src(inst)
            self.assertIn("theorem rung1\n", source)
            self.assertIn("theorem rung149_wide\n", source)
            self.assertTrue(rvk.rvk.rung_hypothesis(inst, 1, "v2"))
            self.assertTrue(rvk.rvk.rung_hypothesis(inst, 149, "selY"))

    def test_one_rung_proof_chunks_are_exact(self) -> None:
        self.assertEqual(rvk.PROOF_RUNG_CHUNK_SIZE, 1)
        names = {path.name for path in self.outputs}
        for prefix, count in (
            ("RvkPrefixLemmas", 149),
            ("RvkPrefixSteps", 149),
            ("RvkLemmas", 101),
            ("RvkSteps", 101),
        ):
            matching = {
                name for name in names
                if name.startswith(rvk.NAME + prefix)
                and name.removeprefix(rvk.NAME + prefix).removesuffix(".lean").isdigit()
            }
            self.assertEqual(len(matching), count, prefix)

    def test_provider_calls_match_one_rung_aggregators(self) -> None:
        source = self.outputs[rvk.OUT / f"{rvk.NAME}.lean"]
        count = rvk.rvk.TOTAL_N - rvk.rvk.CONT_START + 1
        self.assertEqual(source.count("  have hsTail"), count)
        for index in range(count):
            marker = f"  have hsTail{index} := rvk_steps{index} rho"
            start = source.index(marker)
            if index + 1 < count:
                end = source.index(
                    f"  have hsTail{index + 1} :=", start
                )
            else:
                end = source.index("  have hbitAt", start)
            actual_rows = [
                int(row) for row in re.findall(r"\br(\d+)\b", source[start:end])
            ]
            aggregator = self.outputs[
                rvk.OUT / f"{rvk.NAME}RvkSteps{index}.lean"
            ]
            expected_rows = [
                int(row) for row in re.findall(r"relationRow(\d+) rho", aggregator)
            ]
            self.assertEqual(actual_rows, expected_rows)

    def test_first_middle_final_structured_lc_ids_are_pinned(self) -> None:
        expected = {
            0: tuple(range(847, 854)),
            50: tuple(range(1197, 1204)),
            100: tuple(range(1547, 1554)),
        }
        for index, lc_ids in expected.items():
            source = self.outputs[rvk.OUT / f"{rvk.NAME}RvkLemmas{index}.lean"]
            actual = tuple(
                sorted({int(value) for value in re.findall(r"relationLc(\d+)", source)})
            )
            if index == 100:
                # The final shard also proves the three tail atoms.
                self.assertEqual(actual, (*lc_ids, 1554, 1555, 1556))
            else:
                self.assertEqual(actual, lc_ids)

    def test_accumulators_use_compact_sum_aux_recurrences(self) -> None:
        for xy, index in (("X", 0), ("X", 12), ("Y", 24)):
            source = self.outputs[
                rvk.OUT / f"{rvk.NAME}RvkAcc{xy}{index}.lean"
            ]
            self.assertIn("Shieldd.GnarkFormal.StrideRun.sumAux", source)
            self.assertIn("_succ (rho", source)
            self.assertNotIn("Finset.range", source)
        for rung in (150, 200, 250):
            source = self.outputs[
                rvk.OUT / f"{rvk.NAME}RvkStep{rung}.lean"
            ]
            self.assertIn(f"rvkAccX{rung}_succ", source)
            self.assertIn(f"rvkAccY{rung}_succ", source)

    def test_short_continuation_frontier_uses_recurrence_flat_views(self) -> None:
        acc = "\n".join(
            source
            for path, source in self.outputs.items()
            if path.parent == rvk.OUT and path.name.startswith(f"{rvk.NAME}RvkAccY")
        )
        for k in range(150, 157):
            self.assertIn(f"theorem rvkAccY{k}_flat", acc)
        source = self.outputs[rvk.OUT / f"{rvk.NAME}RvkLemmas7.lean"]
        self.assertIn("rvkAccX156_flat", source)
        self.assertIn("rvkAccY156_flat", source)
        self.assertNotIn("rvkAccX156,", source)

    def test_no_flat_or_representative_transport_leaks_to_lean(self) -> None:
        forbidden = (
            "relationLcPart",
            "representativeRho",
            "representativeSeating",
            "NoteReshape2x1",
            "Seg15.",
        )
        for path, source in self.outputs.items():
            for marker in forbidden:
                self.assertNotIn(marker, source, f"{path}: {marker}")

    def test_binary_recovery_uses_choice_free_zmod_boundary(self) -> None:
        source = self.outputs[rvk.OUT / f"{rvk.NAME}RvkBits.lean"]
        self.assertIn(
            "import ShielddGnarkFormal.RvkToBinaryChoiceFree\n",
            source,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.RvkToBinaryChoiceFree.to_binary_of_deployed",
            source,
        )
        self.assertNotIn("ShielddGnarkFormal.RvkToBinary\n", source)
        self.assertNotIn(
            "Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed",
            source,
        )

    def test_generator_curve_endpoint_uses_choice_free_zmod(self) -> None:
        source = (rvk.FORMAL_ROOT / "RvkBridge.lean").read_text()
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZModCast", source
        )
        section = source.split("section ChoiceFreeGenerator", 1)[1].split(
            "end ChoiceFreeGenerator", 1
        )[0]
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", section
        )
        self.assertIn("attribute [-instance] ZMod.instField", section)
        self.assertIn("theorem orderSubOne_cast", section)
        self.assertIn("theorem generator_onCurve", section)
        self.assertIn(
            "ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq", section
        )
        self.assertNotIn("ZMod.natCast_eq_natCast_iff'", section)

    def test_entire_normalized_ladder_uses_choice_free_boundaries(self) -> None:
        generated = "\n".join(
            source
            for path, source in self.outputs.items()
            if path.parent == rvk.OUT
        )
        for marker in (
            "RvkFixedGenInst0ChoiceFree",
            "RvkFixedSplitRungChoiceFree",
            "RvkFixedBaseLiteralChoiceFree",
            "RvkFixedBaseLadderChoiceFree",
            "RvkFixedBaseConstantsChoiceFree",
            "RvkFixedRunChoiceFree",
        ):
            self.assertIn(marker, generated)
        for marker in (
            "ShielddGnarkFormal.RvkFixedGenInst0\n",
            "ShielddGnarkFormal.RvkFixedSplitRung\n",
            "ShielddGnarkFormal.RvkFixedBaseLiteral\n",
            "ShielddGnarkFormal.RvkFixedBaseLadder\n",
            "Shieldd.GnarkFormal.RvkFixedGenInst0.",
            "Shieldd.GnarkFormal.RvkFixedSplitRung.",
            "Shieldd.GnarkFormal.RvkFixedBaseLiteral.",
            "Shieldd.GnarkFormal.RvkFixedBaseLadder.",
            "Shieldd.GnarkFormal.RvkFixedBaseConstants.",
            "Shieldd.GnarkFormal.RvkFixedRun.",
            "ScalarMulBridge.toBitsLE_get!_eq_testBit",
        ):
            self.assertNotIn(marker, generated)
        literal = self.outputs[rvk.FIXED_BASE_LITERAL_CHOICE_FREE]
        self.assertIn(
            "namespace Shieldd.GnarkFormal.RvkFixedBaseLiteralChoiceFree",
            literal,
        )
        fixed_gen = {
            path.name: source
            for path, source in self.outputs.items()
            if path.parent == rvk.FIXED_GEN_CHOICE_FREE
        }
        self.assertEqual(len(fixed_gen), 31)
        self.assertIn("Base.lean", fixed_gen)
        for name, source in fixed_gen.items():
            self.assertIn(
                "namespace Shieldd.GnarkFormal.RvkFixedGenInst0ChoiceFree",
                source,
                name,
            )
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                source,
                name,
            )
        facade = self.outputs[rvk.FIXED_GEN_CHOICE_FREE_FACADE]
        self.assertEqual(facade.count("RvkFixedGenInst0ChoiceFree."), 31)
        self.assertNotIn("RvkFixedGenInst0.", facade)

    def test_benchmark_candidates_are_an_exact_importable_subset(self) -> None:
        candidates = (
            "PrefixStep1", "PrefixStep75", "PrefixStep149", "PrefixLemmas0",
            "Step150", "Step200", "Step250", "Steps20", "AccX0", "AccY24",
            "Ladder", "",
        )
        expected = {
            rvk.BENCH / (
                f"NoteReshapeTemplate{rvk.NAME if not suffix else rvk.NAME + 'Rvk' + suffix}"
                "Import.lean"
            )
            for suffix in candidates
        }
        actual = {path for path in self.outputs if path.parent == rvk.BENCH}
        self.assertEqual(actual, expected)
        for path in actual:
            match = re.fullmatch(
                r"import ShielddGnarkFormal\.Deployed\.Templates\.Semantics\.([^\n]+)\n",
                self.outputs[path],
            )
            self.assertIsNotNone(match, path)
            self.assertIn(rvk.OUT / f"{match.group(1)}.lean", self.outputs)

    def test_named_structured_lc_has_exact_flat_recovery_view(self) -> None:
        source = """def relationLc7 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3 : F), runs := [⟨(-2 : F), 10, 5, 3⟩], residual := [((7 : F), 4), ((7 : F), 9)] } : Shieldd.GnarkFormal.StructuredLC F))
"""
        parsed = rvk._structured_lcs(source)
        self.assertEqual(
            parsed[7].flat_terms(),
            ((3, 0), (-2, 10), (-2, 15), (-2, 20), (7, 4), (7, 9)),
        )
        shadow = rvk._flat_shadow(source)
        self.assertIn("def relationLc7Part0", shadow)
        self.assertIn("(-2 : F) * rho 20", shadow)

    def test_old_inline_relation_shape_fails_closed(self) -> None:
        with self.assertRaisesRegex(ValueError, "no named StructuredLC"):
            rvk._flat_shadow("def relationRow0 (rho : Nat -> F) : Prop := True\n")


if __name__ == "__main__":
    unittest.main()
