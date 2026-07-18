from __future__ import annotations

import hashlib
import sys
import unittest
from copy import deepcopy
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_note_reshape_compress_semantics as gen


class NoteReshapeCompressSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = gen.generated_files()

    def test_exact_provider_and_benchmark_set(self) -> None:
        self.assertEqual(len(self.outputs), 48)
        self.assertEqual(sum(path.parent == gen.OUT for path in self.outputs), 40)
        self.assertEqual(sum(path.parent == gen.BENCH for path in self.outputs), 8)
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
            base = self.outputs[gen.OUT / f"{family.name}Base.lean"]
            self.assertIn(f"def inputX (rho : Nat → F) : F :=\n  {gen._coordinate_operand(family, rows[0])}", base)
            self.assertIn(f"def inputY (rho : Nat → F) : F :=\n  {gen._coordinate_operand(family, rows[1])}", base)
            self.assertNotRegex(base, r"theorem .*flat|theorem .*structured")

    def test_large_coordinates_are_named_opaque_atoms_without_a_bridge(self) -> None:
        family = gen.FAMILIES[1]
        source = gen._relation_source(family)
        rows = gen._rows(source)
        x, y = gen._first_operand(rows[0]), gen._first_operand(rows[1])
        self.assertEqual(x, "relationLc0 rho")
        self.assertEqual(y, "relationLc1 rho")
        self.assertIn("def relationLc0 (rho : Nat -> F) : F :=\n    Shieldd.GnarkFormal.StructuredLC.eval", source)
        self.assertIn("def relationLc1 (rho : Nat -> F) : F :=\n    Shieldd.GnarkFormal.StructuredLC.eval", source)
        self.assertIn("(relationLc0 rho) * (relationLc0 rho)", rows[0])
        self.assertIn("(relationLc1 rho) * (relationLc1 rho)", rows[1])
        self.assertEqual(source.count("def relationLc"), 22)
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
            "  (recBits powSumAcc powSumAcc_eq recover_ofFn_eq_recBits)",
            source,
        )
        self.assertNotIn("CompressRows", source)

    def test_non_affine_or_unseated_internal_mapping_fails_closed(self) -> None:
        family = gen.FAMILIES[0]
        segment = deepcopy(gen._segment(family))
        segment["wire_seating"].remove(500)
        with self.assertRaisesRegex(ValueError, "extracted wire 500 is not locally seated"):
            gen._wire_mapping(family, segment)

    def test_generated_bytes_are_deterministic_and_pinned(self) -> None:
        self.assertEqual(self.outputs, gen.generated_files())
        digest = hashlib.sha256()
        for path in sorted(self.outputs, key=str):
            digest.update(str(path.relative_to(gen.LEAN)).encode())
            digest.update(b"\0")
            digest.update(self.outputs[path].encode())
            digest.update(b"\0")
        self.assertEqual(
            digest.hexdigest(),
            "dafe37e5df61d97a0b3fa5373954134e0859015d3aa2041fd013ab6d6dab5449",
        )


if __name__ == "__main__":
    unittest.main()
