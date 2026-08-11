from __future__ import annotations

import copy
import re
import unittest

import gen_certified_imt_gap_semantics as gap


class CertifiedImtGapSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.rows = gap.rows_for(gap.TRANSFER_PROVIDER)
        cls.outputs = gap.generated_files()

    def test_exact_relation_and_semantic_blocks_are_pinned(self) -> None:
        self.assertEqual(
            tuple(provider.circuit for provider in gap.PROVIDERS),
            ("shielded_ics20_withdrawal", "transfer"),
        )
        self.assertEqual(
            tuple(provider.segment_index for provider in gap.PROVIDERS),
            (14, 25),
        )
        gap._validate_inventory()
        self.assertEqual(len(self.rows), gap.ROW_COUNT)
        gap.validate_relation(self.rows)
        self.assertEqual(
            gap.canonical.used_wires(self.rows),
            set(range(gap.LOCAL_WIRE_COUNT)),
        )
        withdrawal_rows = gap.rows_for(gap.WITHDRAWAL_PROVIDER)
        self.assertEqual(withdrawal_rows, self.rows)
        for provider in gap.PROVIDERS:
            self.assertIn(
                gap.OUT / f"{provider.name}.lean",
                self.outputs,
            )
            base = self.outputs[
                gap.OUT / f"{provider.name}GapBase.lean"
            ]
            self.assertIn(
                "abbrev F := Shieldd.GnarkFormal.Extracted."
                "CanonicalFqBits.F",
                base,
            )
            self.assertEqual(
                base.count(
                    "List.Vector Shieldd.GnarkFormal.Extracted."
                    "CanonicalFqBits.F 253 :="
                ),
                3,
            )
            self.assertIn("instance gapCanonicalFactPrime", base)
            self.assertIn("instance gapImtFactPrime", base)
            self.assertIn(
                "def toImtF (x : F) :\n"
                "    Shieldd.GnarkFormal.Extracted.ImtGap.F :=",
                base,
            )
            self.assertIn(
                "def toImtBits (bits : List.Vector F 253)",
                base,
            )
            self.assertIn("theorem toImtF_injective", base)
            self.assertEqual(base.count("def leafBitsImt"), 1)
            lower_chunk = self.outputs[
                gap.OUT / f"{provider.name}GapLowerChunk0.lean"
            ]
            self.assertIn(
                "change Shieldd.GnarkFormal.Extracted.ImtGap.ltRec",
                lower_chunk,
            )
            self.assertNotIn("  convert tail using 1", lower_chunk)
            self.assertIn("(leafBitsImt rho) (idBitsImt rho)", lower_chunk)
            self.assertIn("using congrArg toImtF hPe", lower_chunk)
            self.assertIn("using congrArg toImtF hIl", lower_chunk)
            self.assertIn(
                "2 * ((1 + 2 * rho 1024 - rho 253 - rho 593)) "
                "* r1524",
                lower_chunk,
            )
            self.assertGreaterEqual(
                lower_chunk.count(
                    "Shieldd.GnarkFormal.StrideRun.sumAux_zero"
                ),
                2,
            )
            lower_chunk_one = self.outputs[
                gap.OUT / f"{provider.name}GapLowerChunk1.lean"
            ]
            self.assertEqual(
                lower_chunk_one.count(
                    "Shieldd.GnarkFormal.StrideRun.sumAux_zero"
                ),
                2,
            )
            self.assertEqual(gap.COMPARATOR_CHUNK, 2)
            self.assertEqual(lower_chunk.count("theorem lowerStep"), 2)
            self.assertEqual(lower_chunk.count("  have r"), 6)
            self.assertNotIn("rcases h with", lower_chunk)
            self.assertNotIn("relationPart", lower_chunk)
            last_lower_chunk = self.outputs[
                gap.OUT / f"{provider.name}GapLowerChunk126.lean"
            ]
            self.assertEqual(
                last_lower_chunk.count("theorem lowerStep"), 1
            )

    @staticmethod
    def inventory_entry(provider: gap.Provider) -> dict:
        instance = {
            "circuit": provider.circuit,
            "segment_index": provider.segment_index,
            "constraint_count": gap.ROW_COUNT,
            "constant_vector_sha256_hex": (
                provider.constant_vector_sha256_hex
            ),
            "class_key": provider.class_key,
        }
        return {
            "template_key": provider.key,
            "op": gap.OPERATION,
            "normalized_relation_sha256_hex": provider.digest,
            "constraint_count": gap.ROW_COUNT,
            "local_wire_count": gap.LOCAL_WIRE_COUNT,
            "instances": [instance],
            "circuits": [provider.circuit],
            "distinct_constant_vectors": 1,
            "representative": {
                "circuit": provider.circuit,
                "segment_index": provider.segment_index,
            },
        }

    def test_inventory_pins_both_exact_deployed_templates(self) -> None:
        entries = [
            self.inventory_entry(provider)
            for provider in gap.PROVIDERS
        ]
        gap._validate_inventory_payload({"templates": entries})

        missing = copy.deepcopy(entries)
        missing.pop()
        with self.assertRaisesRegex(ValueError, "key roster drifted"):
            gap._validate_inventory_payload({"templates": missing})

        duplicate = copy.deepcopy(entries)
        duplicate.append(copy.deepcopy(duplicate[0]))
        with self.assertRaisesRegex(ValueError, "duplicate template keys"):
            gap._validate_inventory_payload({"templates": duplicate})

        wrong_circuit = copy.deepcopy(entries)
        wrong_circuit[0]["circuits"] = ["transfer"]
        with self.assertRaisesRegex(ValueError, "circuits drifted"):
            gap._validate_inventory_payload({"templates": wrong_circuit})

        wrong_segment = copy.deepcopy(entries)
        wrong_segment[0]["instances"][0]["segment_index"] += 1
        with self.assertRaisesRegex(
            ValueError, "deployed instance segment_index drifted"
        ):
            gap._validate_inventory_payload({"templates": wrong_segment})

        wrong_vector = copy.deepcopy(entries)
        wrong_vector[1]["instances"][0][
            "constant_vector_sha256_hex"
        ] = "a" * 64
        with self.assertRaisesRegex(
            ValueError,
            "deployed instance constant_vector_sha256_hex drifted",
        ):
            gap._validate_inventory_payload({"templates": wrong_vector})

        wrong_class = copy.deepcopy(entries)
        wrong_class[1]["instances"][0]["class_key"] = (
            "gadget.asset_registry_gap@" + "c" * 16
        )
        with self.assertRaisesRegex(
            ValueError, "deployed instance class_key drifted"
        ):
            gap._validate_inventory_payload({"templates": wrong_class})

    def test_canonical_comparator_and_selector_drift_fail_closed(self) -> None:
        boolean_rows = copy.deepcopy(self.rows)
        boolean_rows[0][0][1] = 2
        with self.assertRaisesRegex(
            ValueError, "canonical block 0: boolean row 0 drifted"
        ):
            gap.validate_relation(boolean_rows)

        recomposition_rows = copy.deepcopy(self.rows)
        recomposition_rows[253][1][1] = 3
        with self.assertRaisesRegex(
            ValueError, "canonical block 0: recomposition LHS drifted"
        ):
            gap.validate_relation(recomposition_rows)

        canonical_rows = copy.deepcopy(self.rows)
        canonical_rows[253] = (
            canonical_rows[253][0],
            canonical_rows[253][1],
            {254: 2},
        )
        with self.assertRaisesRegex(
            ValueError, "Leaf: canonical input LC drifted"
        ):
            gap.validate_relation(canonical_rows)

        modulus_rows = copy.deepcopy(self.rows)
        modulus_rows[254][0][253] = 2
        with self.assertRaisesRegex(
            ValueError, "Leaf: modulus true row 254 drifted"
        ):
            gap.validate_relation(modulus_rows)

        modulus_false_rows = copy.deepcopy(self.rows)
        modulus_false_rows[340][1][0] = 2
        with self.assertRaisesRegex(
            ValueError, "Leaf: modulus false row 340 drifted"
        ):
            gap.validate_relation(modulus_false_rows)

        exact_match_rows = copy.deepcopy(self.rows)
        exact_match_rows[1518][0][1021] = 2
        with self.assertRaisesRegex(
            ValueError, "exact-match is-zero rows drifted"
        ):
            gap.validate_relation(exact_match_rows)

        comparator_rows = copy.deepcopy(self.rows)
        comparator_rows[1619][1][0] = 2
        with self.assertRaisesRegex(
            ValueError, "Lower: step .* drifted"
        ):
            gap.validate_relation(comparator_rows)

        selector_rows = copy.deepcopy(self.rows)
        selector_rows[3541] = (
            {3044: 2},
            selector_rows[3541][1],
            selector_rows[3541][2],
        )
        with self.assertRaisesRegex(
            ValueError, "algebraic selector row drifted"
        ):
            gap.validate_relation(selector_rows)

        product_rows = copy.deepcopy(self.rows)
        product_rows[3540][0][1023] = 2
        with self.assertRaisesRegex(
            ValueError, "comparison product row drifted"
        ):
            gap.validate_relation(product_rows)

    def test_exact_body_endpoint_does_not_claim_selector_booleanity(
        self,
    ) -> None:
        for provider in gap.PROVIDERS:
            base = self.outputs[
                gap.OUT / f"{provider.name}GapBase.lean"
            ]
            self.assertIn(
                "instance gapImtFactPrime : Fact (Nat.Prime "
                "Shieldd.GnarkFormal.Extracted.ImtGap.Order)",
                base,
            )

        bridge = (
            gap.FORMAL / "ImtGapBridge.lean"
        ).read_text()
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZMod", bridge
        )
        namespace_body = bridge.split(
            "namespace Shieldd.GnarkFormal.Extracted.ImtGap", 1
        )[1]
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
            namespace_body.split("theorem lexLessStep_uncps", 1)[0],
        )
        self.assertIn("section ChoiceFreeSemanticDefinitions", bridge)
        choice_free_defs = bridge.split(
            "section ChoiceFreeSemanticDefinitions", 1
        )[1].split("end ChoiceFreeSemanticDefinitions", 1)[0]
        self.assertIn(
            "attribute [-instance] ZMod.instField", choice_free_defs
        )
        self.assertIn("def BodySelectRelation", choice_free_defs)
        self.assertIn("def BodyCircuit", choice_free_defs)
        self.assertIn("def BodyRelationSpec", choice_free_defs)
        circuit_match = re.search(
            r"def BodyCircuit\b.*? :=\n(.*?)"
            r"(?=\n\n/--|\n\ntheorem)",
            bridge,
            re.S,
        )
        self.assertIsNotNone(circuit_match)
        circuit_body = circuit_match.group(1)
        self.assertIn("BodySelectRelation", circuit_body)
        self.assertNotIn("Gates.select", circuit_body)

        match = re.search(
            r"def BodyRelationSpec\b.*? :=\n(.*?)"
            r"(?=\n\n/--|\n\ntheorem)",
            bridge,
            re.S,
        )
        self.assertIsNotNone(match)
        body = match.group(1)
        self.assertIn("BodySelectRelation", body)
        self.assertNotIn("Gates.select", body)
        self.assertIn(
            "CanonicalFqBits.canonicalFqBitsGadget",
            bridge,
        )
        self.assertNotIn("theorem circuit_sound", bridge)
        body_soundness = re.search(
            r"theorem body_relation_sound\b(.*?)"
            r"(?=\n\nprivate theorem asset_spec_of_selected_eq_one)",
            bridge,
            re.S,
        )
        self.assertIsNotNone(body_soundness)
        self.assertNotIn("Gates.select", body_soundness.group(1))

        for provider in gap.PROVIDERS:
            main = self.outputs[gap.OUT / f"{provider.name}.lean"]
            self.assertIn("BodyRelationSpec", main)
            self.assertIn("BodySelectRelation", main)
            self.assertNotIn("Gates.select", main)
            self.assertIn("rw [hz] at r1518", main)
            self.assertIn("have hLowerGadget :", main)
            self.assertIn("have hUpperGadget :", main)
            self.assertNotIn("have hLowerGadget :=", main)
            self.assertIn(
                "(Shieldd.GnarkFormal.StrideRun.sumAux rho 1026 4 252 +\n"
                "      rho 1023)",
                main,
            )
            self.assertIn(
                "Shieldd.GnarkFormal.StructuredLC.sumResidual",
                main,
            )
            self.assertIn(
                "simpa only [lowerIl, upperIl, add_comm] using r3540",
                main,
            )
            self.assertIn(
                "have boolToZMod_and (a b : Bool) :",
                main,
            )
            self.assertIn(
                "change rho 3043 + rho 3045 =\n"
                "    (Bool.toZMod",
                main,
            )
            self.assertIn(
                "(Bool.toZMod (decide (rho 594 = rho 254)) : F)",
                main,
            )
            self.assertLess(
                main.index("  rw [boolToZMod_and]"),
                main.index("  rw [show Bool.toZMod"),
            )

    def test_generated_provider_is_choice_free_and_exact(self) -> None:
        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "representativeRho",
            "representativeSeating",
            "Classical.choice",
            "native_decide",
            "axiom ",
            "sorry",
            "fun _ h => h",
            "spec := relation",
            "Mathlib.Tactic.Omega",
        ):
            self.assertNotIn(forbidden, combined)
        self.assertIn("Lean.Elab.Tactic.Omega", combined)
        for provider in gap.PROVIDERS:
            main = self.outputs[gap.OUT / f"{provider.name}.lean"]
            self.assertIn("theorem exactMatch_eq", main)
            self.assertIn("theorem sound", main)
            self.assertIn("lexLess253Gadget_sound", main)
            self.assertIn("canonicalFqBitsGadget_canonical", main)


if __name__ == "__main__":
    unittest.main()
