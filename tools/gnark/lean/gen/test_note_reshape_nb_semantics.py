from __future__ import annotations

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
                "decaf.conservation_net_balance_commitment@9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6",
                "decaf.conservation_net_balance_commitment@f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79",
                "decaf.conservation_net_balance_commitment@91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3",
                "decaf.conservation_net_balance_commitment@b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a",
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
        self.assertEqual(len(self.outputs), 255)
        provider_names = {
            gen.default_template_name(template.key) + ".lean"
            for template in gen.NB_TEMPLATES
        }
        self.assertEqual(
            {path.name for path in self.outputs if path.name in provider_names},
            provider_names,
        )

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
        self.assertIn("range_of_to_binary", combined)
        self.assertIn("ScalarMulBridge.pow128_lt_order", combined)
        self.assertIn("open Shieldd.GnarkFormal.ScalarMulBridge", combined)
        self.assertIn("nb_conservation", combined)

    def test_registry_drift_fails_closed(self) -> None:
        template = replace(gen.NB_TEMPLATES[0], key="decaf.conservation_net_balance_commitment@deadbeef")
        with self.assertRaisesRegex(ValueError, "expected one deployed instance"):
            gen.recover(template)

    def test_conservation_pin_drift_fails_closed(self) -> None:
        template = gen.NB_TEMPLATES[0]
        rows = gen.normalized_rows(template)
        rows[template.conservation_row] = ({0: 1}, {template.input_wires[0]: 1}, {template.output_wires[0]: 1})
        with patch.object(gen, "normalized_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "conservation row drift"):
                gen.recover(template)

    def test_segment_namespace_rewrite_is_token_bounded(self) -> None:
        template = gen.NB_TEMPLATES[0]
        source = "apply Shieldd.GnarkFormal.NbFixedGenSeg46.rung141_wide\nexact Seg46.relationRow0\n"
        rewritten = gen._rewrite(
            source,
            template,
            "TemplateNb",
            "Template.Namespace",
            "Template.Relation",
        )
        self.assertIn("NbFixedGenSeg46.rung141_wide", rewritten)
        self.assertIn("Template.Relation.relationRow0", rewritten)
        self.assertNotIn("NbFixedGenTemplate.Relation", rewritten)


if __name__ == "__main__":
    unittest.main()
