from __future__ import annotations

import sys
import unittest
from dataclasses import replace
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_note_reshape_compress_semantics as gen
from lean_zmod_instances import named_instance_block


class NoteReshapeCompressSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = gen.generated_files()

    def test_exact_provider_and_benchmark_set(self) -> None:
        self.assertEqual(len(self.outputs), 74)
        self.assertEqual(sum(path.parent == gen.OUT for path in self.outputs), 62)
        self.assertEqual(sum(path.parent == gen.BENCH for path in self.outputs), 12)
        self.assertTrue(set(gen.benchmark_candidates()).issubset(self.outputs))
        for family in gen.FAMILIES:
            self.assertIn(gen.OUT / f"{family.name}.lean", self.outputs)

    def test_providers_are_direct_and_local(self) -> None:
        combined = "\n".join(
            source for path, source in self.outputs.items() if path.parent == gen.OUT
        )
        for forbidden in (
            "NoteReshape2x1",
            "representativeRho",
            "representativeSeating",
            "seg48_flat",
            "seg5_flat",
            "LC_COORDS",
        ):
            self.assertNotIn(forbidden, combined)
        for family in gen.FAMILIES:
            main = self.outputs[gen.OUT / f"{family.name}.lean"]
            self.assertIn(f"(h : {family.relation_namespace}.relation rho)", main)
            self.assertIn("theorem sound", main)

    def test_coordinate_inputs_are_the_exact_normalized_row_operands(self) -> None:
        for family in gen.FAMILIES:
            source = gen._relation_source(family)
            rows = gen._rows(source)
            base = self.outputs[gen.OUT / f"{family.name}Chunks.lean"]
            self.assertIn(f"def inputX (rho : Nat → F) : F :=\n  {gen._coordinate_operand(family, rows[0])}", base)
            self.assertIn(f"def inputY (rho : Nat → F) : F :=\n  {gen._coordinate_operand(family, rows[1])}", base)
            self.assertIn("| 0 => commonOne.one", base)
            self.assertNotRegex(base, r"theorem .*flat|theorem .*structured")
        simple = gen.FAMILIES[0]
        simple_rows = gen._rows(gen._relation_source(simple))
        self.assertEqual(
            gen._coordinate_operand(simple, simple_rows[0]),
            f"{simple.relation_namespace}.relationLc0 rho",
        )
        self.assertEqual(
            gen._coordinate_operand(simple, simple_rows[1]),
            f"{simple.relation_namespace}.relationLc1 rho",
        )

    def test_coordinate_operations_use_choice_free_ring_instances(self) -> None:
        common = self.outputs[gen.OUT / "CompressToFieldCommon.lean"]
        self.assertIn("commonCommRing : CommRing F :=", common)
        self.assertIn("commonAddSemigroup : AddSemigroup F :=", common)
        self.assertIn("theorem common_one_mul", common)
        self.assertIn("@one_mul F commonMulOneClass", common)
        for family in gen.FAMILIES:
            chunks = self.outputs[gen.OUT / f"{family.name}Chunks.lean"]
            self.assertIn(f"import {gen.COMMON_MODULE}", chunks)
            self.assertIn("chunksCommRing : CommRing F :=", chunks)
            self.assertIn("chunksMul : Mul F :=", chunks)
            self.assertIn("chunksRing : Ring F :=", chunks)
            self.assertIn(
                "section ChoiceFreeProof\n"
                "attribute [-instance] ZMod.instField\n\n"
                "def inputX",
                chunks,
            )
            self.assertIn("\nend ChoiceFreeProof\n", chunks)
            rows0 = self.outputs[gen.OUT / f"{family.name}Rows0.lean"]
            self.assertIn("rows0CommRing : CommRing F :=", rows0)
            self.assertIn("rows0AddSemigroup : AddSemigroup F :=", rows0)
            self.assertIn("[templateRho, common_one_mul, inputX, inputY", rows0)

    def test_named_instances_put_priority_before_the_name(self) -> None:
        block = named_instance_block("owner", include_add_semigroup=True)
        self.assertIn(
            "local instance (priority := 3000) ownerOne : One F :=", block
        )
        self.assertIn(
            "local instance (priority := 3000) ownerAddSemigroup : AddSemigroup F :=",
            block,
        )
        self.assertNotIn("ownerOne (priority :=", block)

    def test_row_proofs_disable_field_inference_in_a_scoped_section(self) -> None:
        for family in gen.FAMILIES:
            rows0 = self.outputs[gen.OUT / f"{family.name}Rows0.lean"]
            self.assertIn(
                "section ChoiceFreeProof\n"
                "attribute [-instance] ZMod.instField\n\n"
                "theorem rows0",
                rows0,
            )
            self.assertIn("\nend ChoiceFreeProof\n", rows0)

    def test_large_coordinates_use_exact_normalized_operands_without_a_bridge(self) -> None:
        family = gen.FAMILIES[1]
        source = gen._relation_source(family)
        rows = gen._rows(source)
        x, y = gen._first_operand(rows[0]), gen._first_operand(rows[1])
        self.assertEqual(x, "(1 : F) * rho 1")
        self.assertEqual(y, "(1 : F) * rho 3")
        self.assertIn("((1 : F) * rho 1) * ((1 : F) * rho 1)", rows[0])
        self.assertIn("((1 : F) * rho 3) * ((1 : F) * rho 3)", rows[1])
        self.assertEqual(source.count("def relationLc"), 18)
        base = self.outputs[gen.OUT / f"{family.name}Base.lean"]
        self.assertNotIn("flatX", base)
        self.assertNotIn("flatY", base)
        self.assertNotIn("unfold " + family.relation_namespace + ".relationLc", base)

    def test_binary_recomposition_is_family_neutral(self) -> None:
        path = gen.OUT / "BinaryRecomposition.lean"
        source = self.outputs[path]
        self.assertIn(f"namespace {gen.BINARY_NAMESPACE}", source)
        for declaration in (
            "def recBits",
            "def powSumAcc",
            "theorem powSumAcc_eq",
            "theorem recover_ofFn_eq_recBits",
        ):
            self.assertIn(declaration, source)
        self.assertIn(
            "export BinaryRecomposition\n"
            "  (recBits powSumAcc weightedSum powSumAcc_eq powSumAcc_eq_weightedSum "
            "powSumAcc_add_acc powSumAcc_append powSumAcc_split32 recover_ofFn_eq_recBits)",
            source,
        )
        self.assertNotIn("CompressRows", source)

    def test_invalid_reviewed_mapping_fails_closed(self) -> None:
        family = gen.FAMILIES[0]
        broken = replace(family, head_mapping=(2,) * 21)
        with self.assertRaisesRegex(ValueError, "not injective"):
            gen._wire_mapping(broken)

    def test_generated_bytes_are_deterministic(self) -> None:
        self.assertEqual(self.outputs, gen.generated_files())


if __name__ == "__main__":
    unittest.main()
