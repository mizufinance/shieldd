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
            "shielded_ics20_withdrawal",
        ])
        self.assertEqual([tuple(block.row_count for block in provider.blocks) for provider in providers], [
            (470, 470, 460),
            (470,) * 5,
            (470,) * 7 + (460,),
            (470,),
            (470,),
            (470,),
            (450,),
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
            [17, 31, 47, 7, 7, 7, 6],
        )

    def test_transfer_family_geometry_is_exact(self) -> None:
        transfer = next(
            family for family in subject.FAMILIES
            if family.circuit == "transfer"
        )
        self.assertEqual(transfer.statement_label, "transfer")
        self.assertEqual(transfer.statement_version, "v6")
        self.assertEqual(
            transfer.digest,
            "0e54d8ea5fc5d0d95e113695b4b0340e4b6bab4d5abb13df4d51436c93755a86",
        )
        self.assertEqual(transfer.field_count, 47)
        self.assertEqual(transfer.block_rows, (470,) * 7 + (460,))
        self.assertEqual(sum(transfer.block_rows), transfer.rows)
        self.assertEqual(transfer.final_pins[-1], transfer.wires - 1)
        self.assertEqual(subject._managed_file_count(transfer), 3611)

    def test_all_families_share_one_validated_poseidon_schedule(self) -> None:
        schedule = subject._poseidon_schedule()
        self.assertEqual(schedule.round_count, 39)
        self.assertEqual(schedule.width, 8)
        self.assertEqual(schedule.kinds[:4], ("full",) * 4)
        self.assertEqual(schedule.kinds[4:35], ("partial",) * 31)
        self.assertEqual(schedule.kinds[35:], ("full",) * 4)
        self.assertEqual(
            tuple(
                round_
                for start, stop in schedule.ranges
                for round_ in range(start, stop + 1)
            ),
            tuple(range(schedule.round_count)),
        )
        for family in subject.FAMILIES:
            plans = subject._sponge_block_plans(family)
            self.assertEqual(len(plans), len(family.block_rows))
            self.assertEqual(sum(plan.field_count for plan in plans), family.field_count)
            self.assertFalse(plans[0].chained)
            self.assertTrue(all(plan.chained for plan in plans[1:]))

    def test_withdrawal_tail_geometry_has_the_continuation_pad_phase(self) -> None:
        families = subject.FAMILIES[-4:]
        self.assertEqual(
            [family.digest for family in families],
            [
                "67a3df11145400695d1528410a7903b2252ede68702e91a980098b8499e5b5d4",
                "0092421009be06b66aa764b1a88f289569cb79dda85cba9c19428c04336af9a4",
                "5804cb48cce27e24aa8fa559e9e23e995c25c83d8af6b4ef440384b01de85476",
                "19301faada329781da94b45e73c6963e9c85b971e364be5e52987753c670f898",
            ],
        )
        self.assertTrue(
            all(family.statement_version == "v4" for family in families)
        )
        self.assertEqual(
            [(family.rows, family.wires) for family in families],
            [(470, 480), (470, 486), (470, 485), (450, 461)],
        )
        self.assertEqual(
            [family.first_block_pad_offset for family in families],
            [0, 0, 0, 1],
        )
        provider = subject.recover_provider(families[-1])
        tail = provider.blocks[0].inputs
        self.assertEqual(
            tail[-4:],
            (
                subject.LC.make(provider.pad0),
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
            8083011558212890722062585281830291178644145861330407768425969219879481653955,
        )

    def test_tail_constants_are_pinned_to_go_padding_order(self) -> None:
        one_to_eight = subject.recover_provider(subject.FAMILIES[0])
        tail = one_to_eight.blocks[-1].inputs
        self.assertEqual(tail[0], one_to_eight.blocks[-2].output)
        self.assertTrue(all(value.terms for value in tail[1:5]))
        self.assertEqual(
            tail[5:],
            (
                subject.LC.make(one_to_eight.pad0),
                subject.LC.make(one_to_eight.pad1),
            ),
        )
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
        self.assertEqual(len(first), 9047)
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
        self.assertEqual(len(subject.benchmark_candidates()), 38)

    def test_scalar_lane_uses_compact_vector_mds_bridge(self) -> None:
        outputs = subject.generated_files()
        family = subject.FAMILIES[1]
        lane = outputs[subject.OUT / f"{family.name}Block0Round0Lane0.lean"]
        self.assertIn("Poseidon7Bridge.row8v vec![", lane)
        self.assertNotIn("def endpoint (rho : Nat → F) : F :=\n  Shieldd.GnarkFormal.Poseidon7Bridge.row8 ", lane)
        self.assertNotIn("fr_eq8", lane)
        self.assertNotIn("pr_eq8", lane)
        self.assertNotIn("congrArg", lane)
        self.assertIn("Poseidon7Bridge.row8v_congr", lane)
        self.assertIn("ring_nf at hInput0", lane)
        self.assertIn(f"{family.name}.Trace.Order", lane)
        self.assertGreaterEqual(lane.count("Shieldd.GnarkFormal.Poseidon7Bridge.p17"), 8)
        self.assertIn("Fixed.b0l0), (rho ", lane)
        self.assertNotIn("Fixed.b0l0 rho", lane)
        self.assertIn("ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq", lane)
        fixed = outputs[subject.OUT / f"{family.name}Fixed.lean"]
        self.assertIn("ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq", fixed)
        self.assertNotIn("ZMod.natCast_eq_natCast_iff'", lane + fixed)
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
            if family.digest.startswith("67a3df111454")
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
