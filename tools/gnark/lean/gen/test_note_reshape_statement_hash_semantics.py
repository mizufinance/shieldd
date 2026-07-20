#!/usr/bin/env python3

import dataclasses
import sys
import unittest
from pathlib import Path


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_note_reshape_statement_hash_semantics as subject


class StatementHashSemanticsTest(unittest.TestCase):
    def test_exact_family_partitions_and_pins(self) -> None:
        providers = subject.providers()
        self.assertEqual([provider.family.circuit for provider in providers], [
            "note_reshape2x1", "note_reshape4x1", "note_reshape1x8", "note_reshape8x1"
        ])
        self.assertEqual([tuple(block.row_count for block in provider.blocks) for provider in providers], [
            (470,), (470, 460), (470, 465), (470, 470, 470)
        ])
        for provider in providers:
            self.assertEqual(
                tuple(box.output for box in provider.blocks[-1].rounds[-1]),
                provider.family.final_pins,
            )
            self.assertEqual(sum(block.row_count for block in provider.blocks), provider.family.rows)
            self.assertEqual(sum(len(round_) for block in provider.blocks for round_ in block.rounds), provider.family.rows // 5)
            self.assertTrue(all(len(block.rounds) == 39 for block in provider.blocks))
        self.assertEqual([provider.family.field_count for provider in providers], [7, 11, 12, 19])

    def test_two_by_one_domain_matches_authoritative_label(self) -> None:
        provider = subject.recover_provider(subject.FAMILIES[0])
        self.assertEqual(
            provider.domain,
            5079577531472816977664249278115400294401892237874490721478834552286369830267,
        )

    def test_tail_constants_are_pinned_to_go_padding_order(self) -> None:
        one_to_eight = subject.recover_provider(subject.FAMILIES[2])
        tail = one_to_eight.blocks[-1].inputs
        self.assertEqual(tail[0], one_to_eight.blocks[-2].output)
        self.assertEqual(tail[-1], subject.LC.make(one_to_eight.pad1))
        self.assertTrue(all(value.terms for value in tail[1:-1]))
        eight_to_one = subject.recover_provider(subject.FAMILIES[3])
        tail = eight_to_one.blocks[-1].inputs
        self.assertEqual(tail[0], eight_to_one.blocks[-2].output)
        self.assertTrue(all(value.terms for value in tail[1:]))

    def test_wrong_protocol_label_fails_closed(self) -> None:
        family = dataclasses.replace(subject.FAMILIES[1], statement_label="other4x1")
        with self.assertRaisesRegex(ValueError, "round 1 lane 0 input drifted"):
            subject.recover_provider(family)

    def test_wrong_final_lane_pin_fails_closed(self) -> None:
        family = dataclasses.replace(
            subject.FAMILIES[1],
            final_pins=subject.FAMILIES[1].final_pins[:-1] + (970,),
        )
        with self.assertRaisesRegex(ValueError, "final lane pins drifted"):
            subject.recover_provider(family)

    def test_generated_api_is_deterministic_and_semantic(self) -> None:
        first = subject.generated_files()
        second = subject.generated_files()
        self.assertEqual(first, second)
        self.assertEqual(len(first), 8617)
        for text in first.values():
            self.assertNotIn("native_decide", text)
            self.assertNotIn("axiom ", text)
        for family in subject.FAMILIES:
            main = first[subject.OUT / f"{family.name}.lean"]
            trace = first[subject.OUT / f"{family.name}TraceBlock0Round0.lean"]
            self.assertIn("theorem sound", main)
            self.assertIn("Poseidon7Bridge.permSpec7", trace)
            self.assertNotIn("def spec (rho : Nat → F) : Prop := relation rho", main)
        self.assertEqual(len(subject.benchmark_candidates()), 23)

    def test_scalar_lane_uses_compact_vector_mds_bridge(self) -> None:
        outputs = subject.generated_files()
        family = subject.FAMILIES[1]
        scalar = outputs[subject.OUT / f"{family.name}ScalarBlock0Round0Lane0.lean"]
        lane = outputs[subject.OUT / f"{family.name}Block0Round0Lane0.lean"]
        self.assertIn("Poseidon7Bridge.row8v vec![", scalar)
        self.assertNotIn("Poseidon7Bridge.row8 ", scalar)
        self.assertNotIn("fr_eq8", lane)
        self.assertNotIn("pr_eq8", lane)
        self.assertNotIn("congrArg", lane)
        self.assertIn("Poseidon7Bridge.row8v_congr", lane)
        self.assertIn("ring_nf at hInput0", lane)
        self.assertIn(f"{family.name}.Trace.Order", scalar)
        self.assertGreaterEqual(scalar.count("Shieldd.GnarkFormal.Poseidon7Bridge.p17"), 8)
        row = outputs[subject.OUT / f"{family.name}RowBlock0Round0Lane0.lean"]
        self.assertIn("Fixed.b0l0), (rho ", row)
        self.assertNotIn("Fixed.b0l0 rho", row)
        self.assertIn("ZMod.natCast_eq_natCast_iff'", row)
        self.assertIn("relationPart6 rho) :\n", lane)
        self.assertIn("ScalarBlock0Round0Lane0.state_eq_endpoint", lane)
        self.assertIn("RowBlock0Round0Lane0.endpoint_eq_rawState", lane)

    def test_affine_minus_one_renders_as_signed_field_coefficient(self) -> None:
        rendered = subject.LC.make(terms={7: -1, 8: 1}).render()
        self.assertEqual(rendered, "(-1 : F) * rho 7 + rho 8")
        outputs = subject.generated_files()
        family = subject.FAMILIES[0]
        self.assertIn(
            "(-1 : F) * rho",
            outputs[subject.OUT / f"{family.name}Part2.lean"],
        )
        self.assertNotIn(
            f"({subject.ORDER - 1} : F) * rho",
            outputs[subject.OUT / f"{family.name}Part2.lean"],
        )

    def test_output_validation_rejects_identity_and_missing_or_extra_mains(self) -> None:
        outputs = subject.generated_files()
        family = subject.FAMILIES[0]
        main = subject.OUT / f"{family.name}.lean"
        identity = dict(outputs)
        identity[main] += "\ndef spec (rho : Nat → F) : Prop := relation rho\n"
        with self.assertRaisesRegex(ValueError, "forbidden semantic proof marker"):
            subject._validate_outputs(identity)
        missing = dict(outputs)
        del missing[main]
        with self.assertRaisesRegex(ValueError, "managed files|provider mains drifted"):
            subject._validate_outputs(missing)
        extra = dict(outputs)
        extra[subject.OUT / f"TStatementHash_{'0' * 64}.lean"] = "theorem sound := True.intro"
        with self.assertRaisesRegex(ValueError, "provider mains drifted"):
            subject._validate_outputs(extra)


if __name__ == "__main__":
    unittest.main()
