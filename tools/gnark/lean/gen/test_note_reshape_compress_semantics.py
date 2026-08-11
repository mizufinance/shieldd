from __future__ import annotations

import copy
import sys
import unittest
from dataclasses import replace
from pathlib import Path
from unittest import mock

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
        simple = gen.FAMILIES[2]
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

    def test_cb894_coordinates_and_head_mapping_are_exact(self) -> None:
        family = gen.FAMILIES[1]
        source = gen._relation_source(family)
        rows = gen._rows(source)
        x, y = gen._first_operand(rows[0]), gen._first_operand(rows[1])
        self.assertEqual(
            x, "(1 : F) * rho 1 + (1 : F) * rho 2"
        )
        self.assertEqual(
            y, "(1 : F) * rho 4 + (1 : F) * rho 5"
        )
        self.assertIn(f"({x}) * ({x})", rows[0])
        self.assertIn(f"({y}) * ({y})", rows[1])
        self.assertEqual(source.count("def relationLc"), 18)
        self.assertEqual(
            family.head_mapping,
            (
                3, 6, 7, 8, 9, 10, 11, 12, 17, 14, 13,
                15, 16, 18, 19, 20, 21, 22, 23, 24, 25,
            ),
        )
        mapping = gen._wire_mapping(family)
        self.assertEqual((mapping[231], mapping[912]), (26, 707))
        base = self.outputs[gen.OUT / f"{family.name}Base.lean"]
        self.assertNotIn("flatX", base)
        self.assertNotIn("flatY", base)
        self.assertNotIn("unfold " + family.relation_namespace + ".relationLc", base)

    def test_active_key_and_instance_rosters_fail_closed(self) -> None:
        self.assertEqual(
            {family.key for family in gen.FAMILIES},
            {
                "decaf.compress_to_field@231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb",
                "decaf.compress_to_field@cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46",
                "decaf.compress_to_field@f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e",
            },
        )
        self.assertNotIn(
            "134c00a44464b5c57e98bda9d7886aa5242d948a3dfc91f0241f963fac56f4a2",
            "\n".join(family.key for family in gen.FAMILIES),
        )
        inventory = gen.read_json_object(
            gen.INVENTORY, canonical="pretty"
        )
        gen._validate_inventory_payload(inventory)

        missing = copy.deepcopy(inventory)
        missing["templates"] = [
            entry
            for entry in missing["templates"]
            if entry.get("template_key") != gen.FAMILIES[1].key
        ]
        with self.assertRaisesRegex(ValueError, "key roster drifted"):
            gen._validate_inventory_payload(missing)

        wrong_instance = copy.deepcopy(inventory)
        entry = next(
            item
            for item in wrong_instance["templates"]
            if item.get("template_key") == gen.FAMILIES[1].key
        )
        entry["instances"][2]["segment_index"] += 1
        with self.assertRaisesRegex(ValueError, "instances drifted"):
            gen._validate_inventory_payload(wrong_instance)

    def test_full_canonical_row_parity_fails_closed(self) -> None:
        gen._validate_normalized_layouts()
        original_rows = gen.canonical.rows
        cb_digest = gen.FAMILIES[1].key.split("@", 1)[1]

        def mutated_rows(digest: str):
            rows = original_rows(digest)
            if digest == cb_digest:
                rows = copy.deepcopy(rows)
                rows[1045][2][707] = 2
            return rows

        with mock.patch.object(
            gen.canonical, "rows", side_effect=mutated_rows
        ):
            with self.assertRaisesRegex(
                ValueError, "1,046-row layout drifted at row 1045"
            ):
                gen._validate_normalized_layouts()

    def test_active_ir_segment_roster_and_seating_fail_closed(self) -> None:
        family = gen.FAMILIES[1]
        representative = gen._segment(family)
        self.assertEqual(representative["index"], 9)
        seating = gen.SegmentTemplate.parse(
            representative
        ).canonical_wire_seating
        self.assertEqual(len(seating), family.local_wire_count)

        original_ir = gen._circuit_ir
        mutated = copy.deepcopy(original_ir("note_reshape1x8"))
        target = next(
            segment
            for segment in mutated["segments"]
            if segment.get("proof_template_id") == family.key
        )
        target["index"] += 1

        def circuit_ir(circuit: str):
            if circuit == "note_reshape1x8":
                return mutated
            return original_ir(circuit)

        with mock.patch.object(gen, "_circuit_ir", side_effect=circuit_ir):
            with self.assertRaisesRegex(
                ValueError, "active segment roster drifted"
            ):
                gen._segment(family)

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

    def test_embedded_family_can_separate_semantic_and_relation_modules(self) -> None:
        family = replace(
            gen.FAMILIES[0],
            semantic_name="TCompositeCompressSupport",
            relation_name="TComposite",
        )
        self.assertEqual(family.semantic_stem, "TCompositeCompressSupport")
        self.assertEqual(family.relation_stem, "TComposite")
        self.assertTrue(family.namespace.endswith(".TCompositeCompressSupport"))
        self.assertTrue(family.module.endswith(".TCompositeCompressSupport"))
        self.assertTrue(family.relation_namespace.endswith(".TComposite"))
        self.assertTrue(family.relation_module.endswith(".TComposite"))

    def test_relation_rows_selects_a_fail_closed_contiguous_window(self) -> None:
        source = "\n".join(
            f"def relationRow{index} (rho : Nat -> F) : Prop :=\n"
            f"((1 : F) * rho {index}) = ((1 : F) * rho {index})\n"
            for index in range(4)
        )
        self.assertEqual(set(gen.relation_rows(source, 1, 2)), {1, 2})
        with self.assertRaisesRegex(ValueError, "row window is incomplete"):
            gen.relation_rows(source, 3, 2)

    def test_generated_bytes_are_deterministic(self) -> None:
        self.assertEqual(self.outputs, gen.generated_files())


if __name__ == "__main__":
    unittest.main()
