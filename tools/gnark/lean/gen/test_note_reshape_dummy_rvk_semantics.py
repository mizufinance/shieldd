from __future__ import annotations

import re
import unittest
from pathlib import Path
from unittest.mock import patch

import gen_note_reshape_dummy_rvk_semantics as gen


class NoteReshapeDummyRvkSemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.recovered = gen.recover()
        cls.outputs = gen.generated_dummy_rvk_semantic_files(Path("/semantic-out"))

    def test_exact_registry_and_normalized_shape_pins(self) -> None:
        self.assertEqual(gen.TEMPLATE_KEY, "decaf.randomized_verification_key.dummy@e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5")
        self.assertEqual(gen.CIRCUIT, "note_reshape4x1")
        self.assertEqual(gen._segment()["proof_template_id"], gen.TEMPLATE_KEY)
        self.assertEqual((gen.CONSTRAINT_COUNT, gen.LOCAL_WIRE_COUNT), (3618, 3619))

    def test_two_exact_fixed_base_ladders_and_native_tail(self) -> None:
        first, second = gen.LADDERS
        self.assertEqual((first.scalar_wire, first.fused_x, first.fused_y, first.split_x, first.split_y), (252, 256, 257, 1004, 1005))
        self.assertEqual((second.scalar_wire, second.fused_x, second.fused_y, second.split_x, second.split_y), (2057, 2061, 2062, 2809, 2810))
        self.assertEqual((gen.OUT_X, gen.OUT_Y, gen.TAIL_ROWS), (3617, 3618, tuple(range(3610, 3618))))
        for rungs in self.recovered["rungs"]:
            self.assertEqual((len(rungs), sum(not rung.materialized for rung in rungs), sum(rung.materialized for rung in rungs)), (250, 149, 101))

    def test_provider_is_real_equality_and_on_curve(self) -> None:
        combined = "\n".join(self.outputs.values())
        self.assertIn("Decaf377Assumptions.rvk", combined)
        self.assertIn("scalarMulLE 251", combined)
        self.assertIn("EdwardsBridge.onCurve ⟨rho 3617, rho 3618⟩", combined)
        self.assertIn("RvkDeployedRung.deployedTail_addSpec", combined)
        for forbidden in ("fun _ h => h", "axiom ", "native_decide"):
            self.assertNotIn(forbidden, combined)

    def test_native_add_is_sharded_from_row_recovery_and_lc_normalization(self) -> None:
        native_add = next(
            text
            for path, text in self.outputs.items()
            if path.name.endswith("DummyRvkNativeAdd.lean")
        )
        self.assertIn("rw [e16, e14, e15] at r3616", native_add)
        self.assertIn("rw [e16, e13, e14, e15] at r3617", native_add)
        self.assertIn("DummyRvkTailBridge.deployedTail_x_row", native_add)
        self.assertIn("DummyRvkTailBridge.deployedTail_y_row", native_add)
        self.assertNotIn("simp only [EdwardsBridge.d, EdwardsBridge.a]", native_add)
        self.assertIn("dummyRvk_tail_rows rho h", native_add)
        self.assertIn("dummyRvk_tail_products rho h", native_add)
        self.assertNotIn("dummyRvk_lc3012", native_add)
        self.assertNotIn("StructuredLC.sumRuns", native_add)
        tail_rows = next(
            text
            for path, text in self.outputs.items()
            if path.name.endswith("DummyRvkTailRows.lean")
        )
        self.assertIn("structure DummyRvkTailRows", tail_rows)
        self.assertIn("theorem dummyRvk_tail_rows", tail_rows)
        tail_products = next(
            text
            for path, text in self.outputs.items()
            if path.name.endswith("DummyRvkTailProducts.lean")
        )
        self.assertIn("structure DummyRvkTailProducts", tail_products)
        self.assertIn("dummyRvk_lc3012", tail_products)
        self.assertIn("dummyRvk_lc3017", tail_products)
        tail_lcs = next(
            text
            for path, text in self.outputs.items()
            if path.name.endswith("DummyRvkTailLcs.lean")
        )
        self.assertIn(
            f"(({gen.GEN_X} : F) + ({gen.GEN_Y_MINUS_ONE} : F)) = "
            f"{gen.GEN_XY_CANONICAL} := Shieldd.GnarkFormal.DummyRvkTailBridge.",
            tail_lcs,
        )
        self.assertEqual(tail_lcs.count("dummyRvk_genXYCoefficient :"), 1)
        for lc in range(3012, 3018):
            self.assertIn(f"theorem dummyRvk_lc{lc}", tail_lcs)
        self.assertIn("StructuredLC.sumRuns", tail_lcs)
        self.assertIn("StructuredLC.sumResidual", tail_lcs)
        self.assertNotIn("let akX : F :=", native_add)
        self.assertNotIn("change rho 3617", native_add)
        self.assertIn("apply Shieldd.GnarkFormal.DummyRvkTailBridge.deployedTail_x_row", native_add)
        self.assertIn("apply Shieldd.GnarkFormal.DummyRvkTailBridge.deployedTail_y_row", native_add)

    def test_deterministic_file_set_and_bytes(self) -> None:
        again = gen.generated_dummy_rvk_semantic_files(Path("/semantic-out"))
        self.assertEqual(self.outputs, again)
        self.assertEqual(len(self.outputs), 115)

    def test_benchmark_set_is_complete(self) -> None:
        self.assertTrue(set(gen.benchmark_candidates(Path("/semantic-out"))).issubset(self.outputs))

    def test_generated_internal_imports_are_closed(self) -> None:
        modules = {path.stem for path in self.outputs} | {"BinaryRecomposition"}
        prefix = "ShielddGnarkFormal.Deployed.Templates.Semantics."
        for path, source in self.outputs.items():
            for match in re.finditer(r"^import " + re.escape(prefix) + r"(\S+)$", source, re.MULTILINE):
                self.assertIn(match.group(1).split(".")[-1], modules, path.name)

    def test_fail_closed_on_tail_drift(self) -> None:
        rows = list(self.recovered["rows"])
        rows[3615] = (rows[3615][0], rows[3615][1], {999: 1})
        with patch.object(gen, "normalized_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "native-add row 3615"):
                gen.recover()

    def test_fail_closed_on_ladder_drift(self) -> None:
        rows = list(self.recovered["rows"])
        rows[255] = (rows[255][0], rows[255][1], {999: 1})
        with patch.object(gen, "normalized_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "DummyKey rung 1"):
                gen.recover()


if __name__ == "__main__":
    unittest.main()
