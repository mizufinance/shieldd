#!/usr/bin/env python3

import dataclasses
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_certified_statement_hash_semantics as subject


class StatementHashSemanticsTest(unittest.TestCase):
    def test_legacy_gendata_bytes_are_authenticated_before_recovery(self) -> None:
        with tempfile.TemporaryDirectory(dir=subject.ROOT) as directory:
            path = Path(directory) / subject.GENDATA.name
            path.write_bytes(subject.GENDATA.read_bytes() + b" ")
            with mock.patch.object(subject, "GENDATA", path):
                with self.assertRaisesRegex(ValueError, "source digest drifted"):
                    subject._poseidon_data()

    def test_exact_family_partitions_and_pins(self) -> None:
        providers = subject.providers()
        self.assertEqual([provider.family.circuit for provider in providers], [
            "note_reshape1x8",
            "note_reshape8x1",
            "transfer",
            "shielded_ics20_withdrawal",
            "shielded_ics20_withdrawal",
            "shielded_ics20_withdrawal",
        ])
        self.assertEqual([tuple(block.row_count for block in provider.blocks) for provider in providers], [
            (470, 465),
            (470, 470, 470),
            (470,) * 6 + (460,),
            (470,),
            (470,),
            (455,),
        ])
        for provider in providers:
            self.assertEqual(
                tuple(box.output for box in provider.blocks[-1].rounds[-1]),
                provider.family.final_pins,
            )
            self.assertEqual(sum(block.row_count for block in provider.blocks), provider.family.rows)
            self.assertEqual(sum(len(round_) for block in provider.blocks for round_ in block.rounds), provider.family.rows // 5)
            self.assertTrue(all(len(block.rounds) == 39 for block in provider.blocks))
        self.assertEqual(
            [provider.family.field_count for provider in providers],
            [12, 19, 41, 7, 7, 4],
        )

    def test_transfer_family_geometry_is_exact(self) -> None:
        transfer = next(
            family for family in subject.FAMILIES
            if family.circuit == "transfer"
        )
        self.assertEqual(transfer.statement_label, "transfer")
        self.assertEqual(transfer.statement_version, "v4")
        self.assertEqual(
            transfer.digest,
            "042c03f6fbeb384ad6230b63ee320b87cd0d4f74a820f0cac6e6f7499e9350bd",
        )
        self.assertEqual(transfer.field_count, 41)
        self.assertEqual(transfer.block_rows, (470,) * 6 + (460,))
        self.assertEqual(sum(transfer.block_rows), transfer.rows)
        self.assertEqual(transfer.final_pins[-1], transfer.wires - 1)
        self.assertEqual(subject._managed_file_count(transfer), 7528)

    def test_withdrawal_tail_geometry_has_the_continuation_pad_phase(self) -> None:
        families = subject.FAMILIES[-3:]
        self.assertEqual(
            [family.digest for family in families],
            [
                "8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00",
                "6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193",
                "0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969",
            ],
        )
        self.assertTrue(
            all(family.statement_version == "v2" for family in families)
        )
        self.assertEqual(
            [(family.rows, family.wires) for family in families],
            [(470, 481), (470, 485), (455, 467)],
        )
        self.assertEqual(
            [family.first_block_pad_offset for family in families],
            [0, 0, 1],
        )
        provider = subject.recover_provider(families[-1])
        tail = provider.blocks[0].inputs
        self.assertEqual(
            tail[-3:],
            (
                subject.LC.make(provider.pad1),
                subject.LC.make(provider.pad0),
                subject.LC.make(provider.pad1),
            ),
        )

    def test_withdrawal_version_and_tail_pad_phase_fail_closed(self) -> None:
        tail = subject.FAMILIES[-1]
        with self.assertRaisesRegex(ValueError, "round 1 lane 0 input drifted"):
            subject.recover_provider(
                dataclasses.replace(tail, statement_version="v1")
            )
        with self.assertRaisesRegex(ValueError, "round 1 lane 0 input drifted"):
            subject.recover_provider(
                dataclasses.replace(tail, first_block_pad_offset=0)
            )

    def test_one_by_eight_domain_matches_authoritative_label(self) -> None:
        provider = subject.recover_provider(subject.FAMILIES[0])
        self.assertEqual(
            provider.domain,
            2598058543572663691928291801991083332834406653466399970650219017347474033401,
        )

    def test_tail_constants_are_pinned_to_go_padding_order(self) -> None:
        one_to_eight = subject.recover_provider(subject.FAMILIES[0])
        tail = one_to_eight.blocks[-1].inputs
        self.assertEqual(tail[0], one_to_eight.blocks[-2].output)
        self.assertEqual(tail[-1], subject.LC.make(one_to_eight.pad1))
        self.assertTrue(all(value.terms for value in tail[1:-1]))
        eight_to_one = subject.recover_provider(subject.FAMILIES[1])
        tail = eight_to_one.blocks[-1].inputs
        self.assertEqual(tail[0], eight_to_one.blocks[-2].output)
        self.assertTrue(all(value.terms for value in tail[1:]))

    def test_wrong_protocol_label_fails_closed(self) -> None:
        family = dataclasses.replace(subject.FAMILIES[0], statement_label="other1x8")
        with self.assertRaisesRegex(ValueError, "round 1 lane 0 input drifted"):
            subject.recover_provider(family)

    def test_wrong_final_lane_pin_fails_closed(self) -> None:
        family = dataclasses.replace(
            subject.FAMILIES[1],
            final_pins=subject.FAMILIES[1].final_pins[:-1] + (970,),
        )
        with self.assertRaisesRegex(ValueError, "final lane pins drifted"):
            subject.recover_provider(family)

    def test_wrong_local_wire_count_fails_closed(self) -> None:
        family = dataclasses.replace(
            subject.FAMILIES[0],
            wires=subject.FAMILIES[0].wires + 1,
        )
        with self.assertRaisesRegex(ValueError, "local wire set drifted"):
            subject.recover_provider(family)

    def test_generated_api_is_deterministic_and_semantic(self) -> None:
        first = subject.generated_files()
        second = subject.generated_files()
        self.assertEqual(first, second)
        self.assertEqual(len(first), 16149)
        self.assertEqual(
            len(first),
            sum(
                subject._managed_file_count(provider.family)
                for provider in subject.providers()
            ),
        )
        for text in first.values():
            self.assertTrue(text.startswith(subject.GENERATED_HEADER))
            self.assertNotIn("native_decide", text)
            self.assertNotIn("axiom ", text)
            self.assertIn(subject.CHOICE_FREE_ZMOD_IMPORT, text)
            if "\nnamespace " in text:
                self.assertIn(subject.CHOICE_FREE_ZMOD_SCOPE, text)
        for family in (provider.family for provider in subject.providers()):
            main = first[subject.OUT / f"{family.name}.lean"]
            trace = first[subject.OUT / f"{family.name}TraceBlock0Round0.lean"]
            self.assertIn("theorem sound", main)
            self.assertIn("Poseidon7Bridge.permSpec7", trace)
            self.assertNotIn("def spec (rho : Nat → F) : Prop := relation rho", main)
        self.assertEqual(len(subject.benchmark_candidates()), 33)

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
        self.assertIn("ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq", row)
        fixed = outputs[subject.OUT / f"{family.name}Fixed.lean"]
        self.assertIn("ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq", fixed)
        self.assertNotIn("ZMod.natCast_eq_natCast_iff'", row + fixed)
        self.assertIn("relationPart6 rho) :\n", lane)
        self.assertIn("ScalarBlock0Round0Lane0.state_eq_endpoint", lane)
        self.assertIn("RowBlock0Round0Lane0.endpoint_eq_rawState", lane)

    def test_poseidon_cast_bridge_is_choice_free(self) -> None:
        bridge = (subject.LEAN / "ShielddGnarkFormal/Poseidon7Bridge.lean").read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZModCast", bridge)
        self.assertIn("ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq", bridge)
        self.assertNotIn("ZMod.natCast_eq_natCast_iff'", bridge)

    def test_deployed_poseidon_link_uses_choice_free_ring(self) -> None:
        link = (
            subject.LEAN
            / "ShielddGnarkFormal/Deployed/Poseidon7Link.lean"
        ).read_text()
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", link)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            link,
        )

    def test_affine_minus_one_renders_as_signed_field_coefficient(self) -> None:
        rendered = subject.LC.make(terms={7: -1, 8: 1}).render()
        self.assertEqual(rendered, "(-1 : F) * rho 7 + rho 8")
        outputs = subject.generated_files()
        family = next(
            family
            for family in subject.FAMILIES
            if family.digest.startswith("8253f80f5233")
        )
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
