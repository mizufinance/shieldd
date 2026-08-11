from __future__ import annotations

import io
import re
import unittest
from dataclasses import replace
from pathlib import Path
from unittest.mock import patch

import gen_note_reshape_nb_semantics as gen


class NoteReshapeNbSemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = gen.generated_nb_semantic_files(Path("/semantic-out"))

    def test_exact_provider_registry_and_shape_pins(self) -> None:
        self.assertEqual(
            [template.key for template in gen.NB_TEMPLATES],
            [
                "decaf.conservation_net_balance_commitment@91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3",
                "decaf.conservation_net_balance_commitment@b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a",
                "decaf.conservation_net_balance_commitment2@236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6",
            ],
        )
        for template in gen.NB_TEMPLATES:
            self.assertEqual(
                template.constraint_count,
                template.amount_count * 129 + 1 + 251 + 1 + 149 * 5 + 101 * 8,
            )
            self.assertEqual(template.blind_wire, template.amount_count * 129 + 252)
            self.assertEqual(len(template.amount_blocks), template.amount_count)

    def test_recovery_pins_partitions_and_endpoint_wires(self) -> None:
        for template in gen.NB_TEMPLATES:
            seating = gen.recover(template)
            self.assertEqual(len(seating["rows"]), template.constraint_count)
            self.assertEqual(seating["blind_rows"], (
                template.conservation_row + 1,
                template.conservation_row + 251,
            ))
            self.assertEqual(len(seating["blind_accumulators"]), 250)
            self.assertEqual(
                seating["blind_accumulators"][-1],
                (template.constraint_count - 2, template.constraint_count - 1),
            )
            conservation = seating["rows"][template.conservation_row]
            self.assertEqual(conservation[1], {wire: 1 for wire in template.input_wires})
            self.assertEqual(conservation[2], {wire: 1 for wire in template.output_wires})

    def test_generated_file_set_and_bytes_are_pinned(self) -> None:
        self.assertEqual(len(self.outputs), 197)
        provider_names = {
            gen.default_template_name(template.key) + ".lean"
            for template in gen.NB_TEMPLATES
        }
        self.assertEqual(
            {path.name for path in self.outputs if path.name in provider_names},
            provider_names,
        )
        self.assertIn(gen.CONSERVATION2_BRIDGE, self.outputs)

    def test_generated_semantics_are_non_identity_and_kernel_only(self) -> None:
        combined = "\n".join(self.outputs.values())
        for forbidden in (
            "fun _ h => h",
            "spec (rho : Nat -> F) : Prop :=\n  relation rho",
            "axiom ",
            "native_decide",
        ):
            self.assertNotIn(forbidden, combined)
        self.assertIn("scalarMulLE 251", combined)
        self.assertIn("ChoiceFreeBinary.range_of_to_binary", combined)
        self.assertNotIn(
            "ConservationNetBalanceCommitmentBridge.range_of_to_binary",
            combined,
        )
        self.assertIn("ScalarMulBridge.pow128_lt_order", combined)
        self.assertIn("open Shieldd.GnarkFormal.ScalarMulBridge", combined)
        self.assertIn("nb_conservation", combined)
        self.assertIn("NetBalanceChoiceFree.fixedTrace_to_scalarMulLE", combined)
        self.assertIn("RvkToBinaryChoiceFree.to_binary_of_deployed", combined)
        for template in gen.NB_TEMPLATES:
            provider = self.outputs[
                Path("/semantic-out")
                / f"{gen.default_template_name(template.key)}.lean"
            ]
            self.assertIn(
                f"(rho {template.blind_wire}).val < 2 ^ 251",
                provider,
            )
            self.assertIn("hBlindRange", provider)
        self.assertNotIn("NetBalance.fixedTrace_to_nbLadderK", combined)
        self.assertNotIn("NetBalanceCommitmentBridge.nbLadder", combined)

    def test_every_nb_vector_getter_unfolds_bounded_indexing(self) -> None:
        combined = "\n".join(self.outputs.values())
        getters = re.findall(
            r"theorem (nb(?:In|Out|Blind)\d*Bits_get).*? := by\n"
            r"(.*?)(?=\n\n)",
            combined,
            re.DOTALL,
        )
        expected = sum(
            template.amount_count + 1
            for template in gen.NB_TEMPLATES
        )
        self.assertEqual(len(getters), expected)
        for name, body in getters:
            with self.subTest(getter=name):
                self.assertIn("getElem!_pos", body)
                self.assertIn(
                    "conv_lhs => rw [List.Vector.getElem_def]",
                    body,
                )
                self.assertIn("List.Vector.toList_ofFn", body)
                self.assertIn("List.getElem_ofFn", body)
                self.assertNotEqual(body.strip(), "rfl")

    def test_withdrawal_bridge_is_exactly_two_input_two_output(self) -> None:
        bridge = self.outputs[gen.CONSERVATION2_BRIDGE]
        self.assertIn("def ConservationNetBalanceCommitment2Spec", bridge)
        self.assertIn("required + optional = change + withdrawal", bridge)
        self.assertEqual(bridge.count(".val < 2 ^ 128"), 4)
        self.assertIn("balanceBlinding.val < 2 ^ 251", bridge)
        self.assertIn("scalarMulLE 251", bridge)
        self.assertIn(
            "theorem decaf377_conservationNetBalanceCommitment2_sound",
            bridge,
        )
        self.assertNotIn("rho 129 + rho 258 = rho 387 ∧", bridge)

    def test_choice_free_shared_certificates_are_generated(self) -> None:
        literal = self.outputs[gen.FIXED_BASE_LITERAL_CHOICE_FREE]
        fixed_gen = self.outputs[gen.FIXED_GEN_CHOICE_FREE]
        self.assertIn(
            "namespace Shieldd.GnarkFormal.NbFixedBaseLiteralChoiceFree",
            literal,
        )
        self.assertIn(
            "open Shieldd.GnarkFormal.Deployed.NetBalanceChoiceFree",
            literal,
        )
        self.assertIn(
            "namespace Shieldd.GnarkFormal.NbFixedGenSeg46ChoiceFree",
            fixed_gen,
        )
        self.assertIn(
            "open Shieldd.GnarkFormal.NbFixedBaseLiteralChoiceFree",
            fixed_gen,
        )
        self.assertNotIn(
            "open Shieldd.GnarkFormal.Deployed.NetBalance (",
            literal + fixed_gen,
        )

    def test_registry_drift_fails_closed(self) -> None:
        template = replace(gen.NB_TEMPLATES[0], key="decaf.conservation_net_balance_commitment@deadbeef")
        with self.assertRaisesRegex(ValueError, "expected one deployed instance"):
            gen.recover(template)

    def test_canonical_payload_digest_drift_fails_closed(self) -> None:
        template = gen.NB_TEMPLATE_BY_KEY[gen.CONSERVATION2_KEY]
        with patch.object(gen.gzip, "open", return_value=io.BytesIO(b"mutated\n")):
            with self.assertRaisesRegex(ValueError, "canonical relation digest drift"):
                gen.normalized_rows(template)

    def test_conservation_pin_drift_fails_closed(self) -> None:
        template = gen.NB_TEMPLATES[0]
        rows = gen.normalized_rows(template)
        rows[template.conservation_row] = ({0: 1}, {template.input_wires[0]: 1}, {template.output_wires[0]: 1})
        with patch.object(gen, "normalized_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "conservation row drift"):
                gen.recover(template)

    def test_segment_namespace_rewrite_is_token_bounded(self) -> None:
        template = gen.NB_TEMPLATES[0]
        source = (
            "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n\n"
            "apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung141_wide\n"
            "exact Seg46.relationRow0\n"
            "\nend Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1\n"
        )
        rewritten = gen._rewrite(
            source,
            template,
            "TemplateNb",
            "Template.Namespace",
            "Template.Relation",
        )
        self.assertIn("NbFixedGenSeg46ChoiceFree.rung141_wide", rewritten)
        self.assertIn("Template.Relation.relationRow0", rewritten)
        self.assertNotIn("NbFixedGenTemplate.Relation", rewritten)


if __name__ == "__main__":
    unittest.main()
