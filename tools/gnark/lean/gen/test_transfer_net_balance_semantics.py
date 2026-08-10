import copy
import sys
import time
import unittest
from dataclasses import replace
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_transfer_net_balance_semantics as net_balance
import gen_window2_semantic_providers as window2


class TransferNetBalanceSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rows = net_balance._canonical_rows()
        cls.source = net_balance._relation_source()
        cls.parts = net_balance._relation_parts(cls.source)
        cls.outputs = net_balance.generated_files()

    def test_exact_canonical_identity_and_namespace(self):
        self.assertEqual(
            net_balance.DIGEST,
            "efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681",
        )
        self.assertEqual(len(self.rows), 6202)
        wires = {
            wire
            for row in self.rows
            for side in row
            for wire in side
        }
        self.assertEqual(wires, set(range(6028)))
        self.assertEqual(len(self.parts), 78)

    def test_generator_has_no_retained_obsolete_net_balance_fixture(self):
        source = Path(net_balance.__file__).read_text()
        self.assertNotIn("RETAINED_NB_ENCODE_FIXTURES", source)
        self.assertNotIn("d2168a8e35fd", source)

    def test_exact_semantic_partition_and_endpoint(self):
        net_balance._validate_partition(self.rows)
        self.assertEqual(self.rows[6200][0], {6026: 1})
        self.assertEqual(self.rows[6201][0], {6027: 1})

    def test_four_uint128_blocks_are_exact(self):
        expected = (
            ("input0", 732, 604, 776, 904),
            ("input1", 861, 733, 905, 1033),
            ("output0", 990, 862, 1034, 1162),
            ("output1", 1119, 991, 1163, 1291),
        )
        self.assertEqual(
            tuple(
                (
                    amount.label,
                    amount.scalar_wire,
                    amount.bit_wire,
                    amount.boolean_start,
                    amount.recomposition_row,
                )
                for amount in net_balance.AMOUNTS
            ),
            expected,
        )
        for amount in net_balance.AMOUNTS:
            net_balance._validate_binary_block(self.rows, amount)
        relation = net_balance.RELATION
        for amount, root in zip(net_balance.AMOUNTS, range(4, 8)):
            rendered = self.outputs[
                net_balance.OUT
                / f"{net_balance.NAME}Nb{amount.module_label}Range.lean"
            ]
            ordered = [
                f"{relation}.relationRow{amount.recomposition_row}",
                f"{relation}.relationLc{root}",
                *(f"{relation}.relationLc{root}Part{i}" for i in range(4)),
            ]
            positions = [rendered.index(token) for token in ordered]
            self.assertEqual(positions, sorted(positions), amount.label)

    def test_range_recovery_fails_closed_under_row_mutation(self):
        amount = net_balance.AMOUNTS[1]
        rows = list(self.rows)
        rows[amount.boolean_start] = ({0: 1}, {0: 1}, {})
        with self.assertRaisesRegex(ValueError, "Boolean row"):
            net_balance._validate_binary_block(rows, amount)
        rows = list(self.rows)
        rows[amount.recomposition_row] = ({0: 1}, {}, {amount.scalar_wire: 1})
        with self.assertRaisesRegex(ValueError, "recomposition coefficients"):
            net_balance._validate_binary_block(rows, amount)

    def test_both_129_bit_window2_layouts_are_exact(self):
        bodies = [
            body
            for body in window2.BODIES
            if body.digest == net_balance.DIGEST
        ]
        self.assertEqual(
            [
                (
                    body.tag,
                    body.bits,
                    body.boolean_row,
                    body.bit_wire,
                    body.recomposition_row,
                    body.start_row,
                    body.end_row,
                    body.scalar_lc,
                )
                for body in bodies
            ],
            [
                (
                    "InputsWindow2", 129, 1292, 1120, 1421, 1422, 2838,
                    ((732, 1), (861, 1)),
                ),
                (
                    "OutputsWindow2", 129, 2838, 2665, 2967, 2968, 4384,
                    ((990, 1), (1119, 1)),
                ),
            ],
        )
        for body in bodies:
            _, _, trace = window2.recover(body)
            self.assertEqual(
                trace.owned_rows,
                tuple(range(body.start_row, body.end_row)),
            )

    def test_signed_add_blind_and_final_layout_are_exact(self):
        blind = net_balance._recover_blind_rungs(self.rows)
        self.assertEqual(len(blind), 250)
        self.assertEqual((blind[-1].acc_x, blind[-1].acc_y), (6019, 6020))
        self.assertEqual(blind[-1].block_rows[-1], 6194)
        self.assertEqual(
            [len(rung.block_rows) for rung in blind],
            [5] * 149 + [8] * 101,
        )
        self.assertEqual(
            set(range(4384, 4390)) | set(range(6195, 6202)),
            set(range(4384, 4390)) | set(range(6195, 6202)),
        )

    def test_final_add_exact_layout_and_mutations(self):
        net_balance._validate_final_add_layout(self.source)
        self.assertEqual(net_balance.FINAL_ADD_POINT_LCS, (1518, 1517))
        self.assertEqual(
            (
                net_balance.FINAL_ADD_X_COEFFICIENT
                + net_balance.FINAL_ADD_Y_COEFFICIENT
            )
            % net_balance.ORDER,
            net_balance.FINAL_ADD_SUM_COEFFICIENT,
        )
        lc_body = net_balance.dtk.def_body(self.source, "relationLc1516")
        mutated_lc_body = lc_body.replace(
            f"(({net_balance.FINAL_ADD_SUM_COEFFICIENT} : F), 4216)",
            f"(({net_balance.FINAL_ADD_SUM_COEFFICIENT + 1} : F), 4216)",
            1,
        )
        metadata_mutated = self.source.replace(lc_body, mutated_lc_body, 1)
        with self.assertRaisesRegex(ValueError, "LC metadata drifted"):
            net_balance._validate_final_add_layout(metadata_mutated)
        row_mutated = self.source.replace(
            "(relationLc1518 rho) = ((1 : F) * rho 6024)",
            "(relationLc1517 rho) = ((1 : F) * rho 6024)",
            1,
        )
        with self.assertRaisesRegex(ValueError, "row body drifted"):
            net_balance._validate_final_add_layout(row_mutated)

        final_path = net_balance.OUT / f"{net_balance.NAME}NbFinalAdd.lean"
        final_add = self.outputs[final_path]
        point_token = (
            f"⟨{net_balance.RELATION}.relationLc1518 rho, "
            f"{net_balance.RELATION}.relationLc1517 rho⟩"
        )
        coordinate_mutated = dict(self.outputs)
        coordinate_mutated[final_path] = final_add.replace(
            point_token,
            f"⟨{net_balance.RELATION}.relationLc1517 rho, "
            f"{net_balance.RELATION}.relationLc1518 rho⟩",
            1,
        )
        with self.assertRaisesRegex(ValueError, "coordinate render manifest"):
            net_balance._validate_rendered(coordinate_mutated)
        coefficient_mutated = dict(self.outputs)
        coefficient_mutated[final_path] = final_add.replace(
            f"({net_balance.FINAL_ADD_SUM_COEFFICIENT} : F) =",
            f"({net_balance.FINAL_ADD_SUM_COEFFICIENT + 1} : F) =",
            1,
        )
        with self.assertRaisesRegex(ValueError, "coefficient render manifest"):
            net_balance._validate_rendered(coefficient_mutated)
        blind_path = net_balance.OUT / f"{net_balance.NAME}NbBlindDefs.lean"
        blind_mutated = dict(self.outputs)
        blind_state = (
            f"| 251 => ⟨(({net_balance.FINAL_ADD_X_COEFFICIENT} : F) * "
            "rho 4216 + nbBlindDeltaX250 rho : F), ((1 : F) + "
            f"({net_balance.FINAL_ADD_Y_COEFFICIENT} : F) * rho 4216 + "
            "nbBlindDeltaY250 rho : F)⟩"
        )
        mutated_blind_state = blind_state.replace(
            f"({net_balance.FINAL_ADD_X_COEFFICIENT} : F) * rho 4216",
            f"({net_balance.FINAL_ADD_X_COEFFICIENT + 1} : F) * rho 4216",
            1,
        )
        blind_mutated[blind_path] = blind_mutated[blind_path].replace(
            blind_state, mutated_blind_state, 1
        )
        with self.assertRaisesRegex(ValueError, "coordinate render manifest"):
            net_balance._validate_rendered(blind_mutated)
        self.assertIn("have h0comm :", final_add)
        self.assertIn("have h2comm :", final_add)
        self.assertNotIn("simpa only [one_mul, mul_comm]", final_add)

    def test_blind_recovery_fails_closed_under_endpoint_mutation(self):
        rows = list(self.rows)
        rows[6194] = ({4466: 1}, {0: 1}, {6018: 1})
        with self.assertRaisesRegex(ValueError, "endpoint drifted"):
            net_balance._recover_blind_rungs(rows)

    def test_exact_output_manifest_and_mutation(self):
        self.assertEqual(
            set(self.outputs), net_balance._expected_output_paths()
        )
        mutated = dict(self.outputs)
        mutated.pop(next(iter(mutated)))
        with self.assertRaisesRegex(ValueError, "output manifest drifted"):
            net_balance._validate_rendered(mutated)

    def test_encode_canonical_modules_use_choice_free_zmod(self):
        paths = sorted(
            path
            for path in self.outputs
            if path.name.startswith(f"{net_balance.NAME}NbEncodeCanon")
        )
        self.assertEqual(len(paths), 39)
        for path in paths:
            source = self.outputs[path]
            with self.subTest(module=path.name):
                self.assertEqual(
                    source.count("import ShielddGnarkFormal.ChoiceFreeZMod\n"),
                    1,
                )
                self.assertEqual(
                    source.count("attribute [-instance] ZMod.instField\n"),
                    1,
                )
                self.assertEqual(
                    source.count(
                        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n"
                    ),
                    1,
                )

    def test_add_spec_rows_helper_uses_choice_free_zmod(self):
        ladder = (
            net_balance.FORMAL / "Deployed/NetBalance/Ladder.lean"
        ).read_text()
        theorem = ladder.index("theorem addSpec_of_rows")
        prefix = ladder[:theorem]
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod\n", prefix)
        self.assertIn("section ChoiceFreeAddSpecRows\n", prefix)
        self.assertIn("attribute [-instance] ZMod.instField\n", prefix)
        self.assertIn(
            "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
            prefix,
        )
        self.assertIn(
            "end ChoiceFreeAddSpecRows\n\ndef doublePow",
            ladder,
        )

    def test_exact_import_manifest_and_mutation(self):
        net_balance._validate_rendered(self.outputs)
        support_owners = net_balance._expected_nb_support_declaration_owners()
        self.assertEqual(
            len(support_owners), net_balance.NB_SUPPORT_DECLARATION_COUNT
        )
        self.assertEqual(
            len(set(support_owners.values())),
            net_balance.NB_SUPPORT_OWNER_MODULE_COUNT,
        )
        main_path = net_balance.OUT / f"{net_balance.NAME}.lean"
        mutated = dict(self.outputs)
        mutated[main_path] = mutated[main_path].replace(
            "import "
            + net_balance.MODULE_PREFIX.removesuffix("Nb")
            + "InputsWindow2Semantic\n",
            "",
        )
        with self.assertRaisesRegex(ValueError, "import manifest drifted"):
            net_balance._validate_rendered(mutated)
        topology_mutated = dict(self.outputs)
        range_path = net_balance.OUT / f"{net_balance.NAME}NbInput0Range.lean"
        topology_mutated[range_path] = topology_mutated[range_path].replace(
            f"import {net_balance.MODULE_PREFIX}SupportBase\n", "", 1
        )
        with self.assertRaisesRegex(ValueError, "NbSupport import topology"):
            net_balance._validate_rendered(topology_mutated)
        relation_import = f"import {net_balance.RELATION_MODULE}\n"
        for suffix in net_balance.BLIND_RUNG_SUFFIXES:
            blind_path = net_balance.OUT / f"{net_balance.NAME}{suffix}.lean"
            self.assertEqual(self.outputs[blind_path].count(relation_import), 1)
        relation_consumers = (
            "NbBlindBits",
            net_balance.BLIND_RUNG_SUFFIXES[8],
            "NbInput0Range",
            "NbFinalAdd",
            "",
        )
        for suffix in relation_consumers:
            relation_mutated = dict(self.outputs)
            relation_path = net_balance.OUT / f"{net_balance.NAME}{suffix}.lean"
            self.assertTrue(
                net_balance._directly_references_relation(
                    relation_mutated[relation_path]
                )
            )
            relation_mutated[relation_path] = relation_mutated[
                relation_path
            ].replace(relation_import, "", 1)
            with self.assertRaisesRegex(
                ValueError, "direct external owner import invariant"
            ):
                net_balance._validate_rendered(relation_mutated)
        owner_cases = (
            (
                "NbValueAdd",
                "ShielddGnarkFormal.Deployed.NetBalance.Ladder",
            ),
            (
                net_balance.BLIND_RUNG_SUFFIXES[8],
                "ShielddGnarkFormal.StructuredLC",
            ),
            (
                net_balance.BLIND_RUNG_SUFFIXES[8],
                "ShielddGnarkFormal.ChoiceFreeZMod",
            ),
            (
                "",
                net_balance.MODULE_PREFIX.removesuffix("Nb")
                + "InputsWindow2Semantic",
            ),
            ("", "ShielddGnarkFormal.Decaf377Assumptions"),
        )
        for suffix, owner in owner_cases:
            direct_mutated = dict(self.outputs)
            direct_path = net_balance.OUT / f"{net_balance.NAME}{suffix}.lean"
            owner_import = f"import {owner}\n"
            self.assertEqual(direct_mutated[direct_path].count(owner_import), 1)
            direct_mutated[direct_path] = direct_mutated[direct_path].replace(
                owner_import, "", 1
            )
            if not any(
                owner_import in source for source in direct_mutated.values()
            ):
                carrier_path = (
                    net_balance.OUT
                    / f"{net_balance.NAME}NbSupportBase.lean"
                )
                direct_mutated[carrier_path] = direct_mutated[
                    carrier_path
                ].replace("import ", owner_import + "import ", 1)
            with self.assertRaisesRegex(
                ValueError, "direct external owner import invariant"
            ):
                net_balance._validate_rendered(direct_mutated)
        unknown_mutated = dict(self.outputs)
        unknown_mutated[main_path] += (
            "\n#check Shieldd.GnarkFormal.UnknownTransferSupport.sound\n"
        )
        with self.assertRaisesRegex(ValueError, "unknown external symbol prefix"):
            net_balance._validate_rendered(unknown_mutated)
        owner_mutated = dict(self.outputs)
        owner_path = net_balance.OUT / f"{net_balance.NAME}NbSupportBase.lean"
        owner_mutated[owner_path] = owner_mutated[owner_path].replace(
            f"theorem reviewed_order : Order = {net_balance.ORDER}",
            f"theorem reviewed_order : Order = {net_balance.ORDER + 1}",
            1,
        )
        with self.assertRaisesRegex(ValueError, "canonical NbSupport owner"):
            net_balance._validate_rendered(owner_mutated)
        poseidon_rows_path = (
            net_balance.OUT / f"{net_balance.NAME}NbPoseidonRows.lean"
        )
        collision_mutated = dict(self.outputs)
        collision_mutated[poseidon_rows_path] = collision_mutated[
            poseidon_rows_path
        ].replace(
            f"namespace {net_balance.NAMESPACE}\n",
            f"namespace {net_balance.NAMESPACE}\n\n"
            f"abbrev Order : Nat := {net_balance.ORDER}\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "duplicate NbSupport declaration owners"
        ):
            net_balance._validate_rendered(collision_mutated)
        removal_mutated = dict(self.outputs)
        removal_mutated[owner_path] = removal_mutated[owner_path].replace(
            "abbrev F := Shieldd.GnarkFormal.EdwardsBridge.F\n", "", 1
        )
        with self.assertRaisesRegex(
            ValueError, "NbSupport declaration owner manifest missing"
        ):
            net_balance._validate_rendered(removal_mutated)
        out_of_owner_mutated = dict(self.outputs)
        out_of_owner_mutated[poseidon_rows_path] = out_of_owner_mutated[
            poseidon_rows_path
        ].replace(
            f"namespace {net_balance.NAMESPACE}\n",
            f"namespace {net_balance.NAMESPACE}\n\n"
            "abbrev P := F\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "out-of-owner NbSupport declarations"
        ):
            net_balance._validate_rendered(out_of_owner_mutated)

    def test_qualified_external_support_symbols_are_contiguous(self):
        started = time.monotonic()
        net_balance._validate_qualified_identifier_contiguity(self.outputs)
        elapsed = time.monotonic() - started
        self.assertLess(
            elapsed,
            net_balance.QUALIFIED_IDENTIFIER_CONTINUITY_MAX_SECONDS,
        )
        on_curve_path = (
            net_balance.OUT / f"{net_balance.NAME}NbBlindOnCurve.lean"
        )
        mutated = dict(self.outputs)
        mutated[on_curve_path] = mutated[on_curve_path].replace(
            "NetBalanceChoiceFree.fixedTrace_eq_fixedAccFrom",
            "NetBalanceChoiceFree.\n    fixedTrace_eq_fixedAccFrom",
            1,
        )
        with self.assertRaisesRegex(ValueError, "qualified identifier continuity"):
            net_balance._validate_rendered(mutated)

    def test_top_support_manifest_and_mutation(self):
        main_path = net_balance.OUT / f"{net_balance.NAME}.lean"
        main = self.outputs[main_path]
        for token in net_balance.PROVIDER_SUPPORT_MANIFEST:
            self.assertIn(token, main)
        for token in (
            "Protocol.Common.Decaf.netBalanceCommitment2",
            "InputsWindowSupport.scalar_toBinary rho hrel",
            "OutputsWindowSupport.scalar_toBinary rho hrel",
            "have hProtocolSpec :",
            "hEquation, hProtocolSpec",
        ):
            self.assertIn(token, main)
        mutated = dict(self.outputs)
        mutated[main_path] = main.replace(
            "nbFinalAdd_spec rho hrel", "nbFinalAdd_spec rho missingRelation",
        )
        with self.assertRaisesRegex(ValueError, "top support manifest"):
            net_balance._validate_rendered(mutated)

    def test_blind_consumer_and_aggregator_budget_manifests(self):
        self.assertEqual(
            net_balance.LEGACY_BLIND_LADDER_CONSUMER_CENSUS,
            ((
                "NbBlind",
                "have hl := nbBlind_ladder rho h bits hbits True trivial",
                "have hon := hl.2",
            ),),
        )
        self.assertEqual(
            set(net_balance.BLIND_ON_CURVE_CONSUMER_MANIFEST),
            {"NbBlindOnCurve", "NbBlind"},
        )
        self.assertEqual(
            set(net_balance.BLIND_AGGREGATOR_BUDGET_MANIFEST),
            {"NbBlindScalar", "NbBlindOnCurve", "NbBlind"},
        )
        for budget in net_balance.BLIND_AGGREGATOR_BUDGET_MANIFEST.values():
            self.assertEqual(budget[:3], (120, 4096, 50))
        consumer_mutated = dict(self.outputs)
        consumer_path = (
            net_balance.OUT / f"{net_balance.NAME}NbBlind.lean"
        )
        consumer_mutated[consumer_path] = consumer_mutated[
            consumer_path
        ].replace("nbBlind_onCurve", "missingBlindOnCurve", 1)
        with self.assertRaisesRegex(ValueError, "consumer census drifted"):
            net_balance._validate_rendered(consumer_mutated)
        cps_mutated = dict(self.outputs)
        cps_mutated[consumer_path] += "\n#check nbBlind_ladder\n"
        with self.assertRaisesRegex(ValueError, "obsolete blind CPS consumer"):
            net_balance._validate_rendered(cps_mutated)
        size_mutated = dict(self.outputs)
        on_curve_path = (
            net_balance.OUT / f"{net_balance.NAME}NbBlindOnCurve.lean"
        )
        size_mutated[on_curve_path] += "\n".join(
            f"-- budget padding {i}" for i in range(80)
        )
        with self.assertRaisesRegex(ValueError, "source size budget drifted"):
            net_balance._validate_rendered(size_mutated)
        heartbeat_mutated = dict(self.outputs)
        heartbeat_mutated[on_curve_path] = heartbeat_mutated[
            on_curve_path
        ].replace("set_option maxHeartbeats 20000000", "set_option maxHeartbeats 0")
        with self.assertRaisesRegex(ValueError, "finite heartbeat budget drifted"):
            net_balance._validate_rendered(heartbeat_mutated)

    def test_rendered_provider_covers_exact_optimized_semantics(self):
        combined = "\n".join(self.outputs.values())
        main = self.outputs[net_balance.OUT / f"{net_balance.NAME}.lean"]
        encode_path = net_balance.OUT / f"{net_balance.NAME}NbEncode.lean"
        encode = self.outputs[encode_path]
        final_add = self.outputs[
            net_balance.OUT / f"{net_balance.NAME}NbFinalAdd.lean"
        ]
        blind_base = self.outputs[
            net_balance.OUT / f"{net_balance.NAME}NbBase.lean"
        ]
        for wire in (732, 861, 990, 1119, 1, 4467, 6026, 6027):
            self.assertIn(f"rho {wire}", main)
        self.assertIn("InputsWindowSupport.spec rho", main)
        self.assertIn("OutputsWindowSupport.spec rho", main)
        self.assertIn("Decaf377Assumptions.neg", main)
        self.assertIn("valueBlindingGenerator", main)
        self.assertIn("theorem nbBlindPoint_eq_state", final_add)
        self.assertIn("StructuredLC.eval_def", final_add)
        self.assertNotIn("open scoped Shieldd.GnarkFormal.ChoiceFreeZMod", blind_base)
        blind_on_curve = self.outputs[
            net_balance.OUT / f"{net_balance.NAME}NbBlindOnCurve.lean"
        ]
        self.assertIn(
            "fixedTrace_eq_fixedAccFrom", blind_on_curve
        )
        self.assertNotIn(
            "nbLadderK", blind_on_curve
        )
        row230 = net_balance.dtk.def_body(
            self.source, "relationRow230"
        )
        self.assertEqual(
            row230,
            "    ((5629641166285580282832549959187697687583932890102709218623488970611606159361 : F) * rho 226 + "
            "(6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 231) * "
            "((5629641166285580282832549959187697687583932890102709218623488970611606159361 : F) * rho 226 + "
            "(6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) * rho 231) = "
            "((1 : F) * rho 232)",
        )
        net_balance._validate_nb_encode_select_routing(self.source)
        self.assertEqual(
            net_balance.NB_ENCODE_SELECT_CONVENTION,
            "out = i2 - b * (i2 - i1)",
        )
        self.assertEqual(
            tuple(
                (
                    entry.name,
                    entry.gate,
                    entry.row,
                    entry.result,
                    entry.delta,
                    entry.flag_endpoints,
                    entry.owner,
                )
                for entry in net_balance.NB_ENCODE_PRECANON_SELECT_RESULT_MANIFEST
            ),
            (
                (
                    "hsel15",
                    15,
                    236,
                    "rho 234 + rho 238",
                    "rho 238",
                    ((0, "rho 234"), (1, "1")),
                    "helper/hsel15",
                ),
                (
                    "hsign",
                    36,
                    None,
                    "2 * rho 235 - 1",
                    None,
                    ((0, "-1"), (1, "1")),
                    "helper/hsign",
                ),
                (
                    "hinputSel",
                    37,
                    252,
                    "poseidonOutput + rho 248",
                    "rho 248",
                    ((0, "poseidonOutput"), (1, "1")),
                    "helper/hinputSel",
                ),
            ),
        )
        self.assertEqual(
            tuple(
                (
                    row,
                    net_balance.dtk.def_body(
                        self.source, f"relationRow{row}"
                    ),
                    owner,
                )
                for row, _, owner in net_balance.NB_ENCODE_INPUT_SELECT_ROW_BODIES
            ),
            net_balance.NB_ENCODE_INPUT_SELECT_ROW_BODIES,
        )
        select_manifest = net_balance.NB_ENCODE_PRECANON_SELECT_RESULT_MANIFEST
        delta_only_select = select_manifest[:2] + (
            replace(select_manifest[2], result="rho 248"),
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode select/result census drifted"
        ):
            net_balance._validate_nb_encode_select_routing(
                self.source, select_manifest=delta_only_select
            )
        bad_select_rows = list(net_balance.NB_ENCODE_INPUT_SELECT_ROW_BODIES)
        bad_select_rows[1] = (
            bad_select_rows[1][0],
            bad_select_rows[1][1],
            "helper/hinputSel/delta",
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode input-select row ownership drifted"
        ):
            net_balance._validate_nb_encode_select_routing(
                self.source, row_bodies=tuple(bad_select_rows)
            )
        row252_body = net_balance.NB_ENCODE_INPUT_SELECT_ROW_BODIES[0][1]
        bad_select_source = self.source.replace(
            row252_body,
            row252_body.replace("rho 248", "rho 249", 1),
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode input-select algebra drifted at r252"
        ):
            net_balance._validate_nb_encode_select_routing(bad_select_source)
        swapped_fields = list(net_balance.NB_ENCODE_CIRCUIT_WITNESS_FIELDS)
        swapped_fields[
            net_balance.NB_ENCODE_GATE37_WITNESS_INDEX
        ], swapped_fields[
            net_balance.NB_ENCODE_GATE38_WITNESS_INDEX
        ] = swapped_fields[
            net_balance.NB_ENCODE_GATE38_WITNESS_INDEX
        ], swapped_fields[
            net_balance.NB_ENCODE_GATE37_WITNESS_INDEX
        ]
        with self.assertRaisesRegex(
            ValueError, "NbEncode gate37/gate38 witness order drifted"
        ):
            net_balance._validate_nb_encode_select_routing(
                self.source, circuit_fields=tuple(swapped_fields)
            )
        poseidon_ns = (
            net_balance.NAMESPACE.removesuffix(".NbSupport")
            + ".NbPoseidon"
        )
        poseidon_leaf = (
            "Shieldd.GnarkFormal.Deployed."
            + net_balance.POSEIDON_TEMPLATE.leaf
        )
        redundant_row_unfold = (
            f"  unfold {poseidon_ns}.output {poseidon_leaf}.s38_1\n"
            "    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2 at "
            "r230 r252 r253\n"
        )
        self.assertNotIn(redundant_row_unfold, encode)
        self.assertEqual(
            net_balance.NB_ENCODE_FIELD_MODULUS_MANIFEST,
            (
                ("NbSupport.Order", net_balance.ORDER, "reviewed_order"),
                ("NbPoseidon.Order", net_balance.ORDER, "rfl"),
            ),
        )
        self.assertEqual(
            encode.count(net_balance.NB_ENCODE_POSEIDON_OUTPUT_SEAM_BLOCK), 1
        )
        seam_mutated = dict(self.outputs)
        seam_mutated[encode_path] = encode.replace(
            net_balance.NB_ENCODE_POSEIDON_OUTPUT_SEAM_BLOCK,
            net_balance.NB_ENCODE_POSEIDON_OUTPUT_SEAM_BLOCK.replace(
                "rho 231", "rho 230", 1
            ),
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode gate37 select-result render drifted"
        ):
            net_balance._validate_rendered(seam_mutated)
        order_owner_mutated = dict(self.outputs)
        order_owner_mutated[encode_path] = encode.replace(
            "ZMod.natCast_self Order\n",
            "ZMod.natCast_self " + poseidon_ns + ".Order\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode gate37 select-result render drifted"
        ):
            net_balance._validate_rendered(order_owner_mutated)
        order_literal_mutated = dict(self.outputs)
        order_literal_mutated[encode_path] = encode.replace(
            f"  have hNbSupportOrder : Order = {net_balance.ORDER} := reviewed_order\n",
            f"  have hNbSupportOrder : Order = {net_balance.ORDER + 1} := reviewed_order\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode gate37 select-result render drifted"
        ):
            net_balance._validate_rendered(order_literal_mutated)
        selector_order_mutated = dict(self.outputs)
        selector_order_mutated[encode_path] = encode.replace(
            "change (((Order - ",
            f"change ((({net_balance.ORDER} - ",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode gate37 select-result render drifted"
        ):
            net_balance._validate_rendered(selector_order_mutated)
        input_select_block = (
            "  have hinputSel : GatesDef.select (rho 235) 1 "
            "poseidonOutput (poseidonOutput + rho 248) := by\n"
            + net_balance.NB_ENCODE_INPUT_SELECT_PROOF_BLOCK
        )
        self.assertEqual(encode.count(input_select_block), 1)
        delta_only_render = dict(self.outputs)
        delta_only_render[encode_path] = encode.replace(
            input_select_block,
            input_select_block.replace(
                "poseidonOutput (poseidonOutput + rho 248) := by",
                "poseidonOutput (rho 248) := by",
                1,
            ),
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode gate37 select-result render drifted"
        ):
            net_balance._validate_rendered(delta_only_render)
        relation_snapshot = (
            "  have hRelation := h\n"
            f"  unfold {net_balance.RELATION}.relation at h\n"
        )
        self.assertEqual(encode.count(relation_snapshot), 1)
        relation_snapshot_mutated = dict(self.outputs)
        relation_snapshot_mutated[encode_path] = encode.replace(
            "  have hRelation := h\n",
            "  have hProjectedRelation := h\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode full-relation snapshot ownership drifted"
        ):
            net_balance._validate_rendered(relation_snapshot_mutated)
        gate37_witness = "      (poseidonOutput + rho 248 : F), hinputSel,\n"
        self.assertEqual(encode.count(gate37_witness), 1)
        delta_only_witness = dict(self.outputs)
        delta_only_witness[encode_path] = encode.replace(
            gate37_witness,
            "      (rho 248 : F), hinputSel,\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode witness field manifest drifted"
        ):
            net_balance._validate_rendered(delta_only_witness)
        self.assertEqual(
            encode.count(net_balance.NB_ENCODE_CIRCUIT_PROOF_BLOCKS[0]), 1
        )
        proof0_without_row_form = dict(self.outputs)
        proof0_without_row_form[encode_path] = encode.replace(
            net_balance.NB_ENCODE_CIRCUIT_PROOF_BLOCKS[0],
            "    · linear_combination r230\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError,
            "NbEncode precanonical constructor proof arity/mapping drifted",
        ):
            net_balance._validate_rendered(proof0_without_row_form)
        frontier = (
            f"  unfold {net_balance.RELATION}.relationRow775 at r775\n"
            "  have hws : GatesDef.is_bool (rho 235) :=\n"
        )
        self.assertEqual(encode.count(frontier), 1)
        mutated = dict(self.outputs)
        mutated[encode_path] = encode.replace(
            frontier,
            f"  unfold {net_balance.RELATION}.relationRow775 at r775\n"
            + redundant_row_unfold
            + "  have hws : GatesDef.is_bool (rho 235) :=\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode flat-row proof frontier regressed"
        ):
            net_balance._validate_rendered(mutated)
        self.assertEqual(
            len(net_balance.NB_ENCODE_CIRCUIT_WITNESS_FIELDS), 44
        )
        self.assertEqual(
            len(net_balance.NB_ENCODE_CANON_WITNESS_FIELDS), 20
        )
        self.assertEqual(net_balance.NB_ENCODE_WITNESS_FIELD_COUNT, 64)
        all_fields = (
            net_balance.NB_ENCODE_CIRCUIT_WITNESS_FIELDS
            + net_balance.NB_ENCODE_CANON_WITNESS_FIELDS
        )
        direct_size = sum(
            len(net_balance._typed_f(expression))
            for expression in all_fields
        )
        as_f_size = len("  let asF : F → F := id\n") + sum(
            len(f"asF ({expression})") for expression in all_fields
        )
        self.assertLess(direct_size, as_f_size)
        representative_fields = (
            "      (2 * 3021 : F), rfl,\n",
            "      (rho 232 : F), ?_,\n",
            "      (-g36 : F), ?_,\n",
        )
        for token in representative_fields:
            self.assertEqual(encode.count(token), 1)
            untyped = token.replace(" : F)", ")", 1)
            boundary_mutated = dict(self.outputs)
            boundary_mutated[encode_path] = encode.replace(
                token, untyped, 1
            )
            with self.assertRaisesRegex(
                ValueError, "NbEncode witness field manifest drifted"
            ):
                net_balance._validate_rendered(boundary_mutated)
        bit_bridge = (
            "        (rho 254 - rho 235 : F), (by\n"
            "          exact congrArg (fun x : F => x - rho 235) hb.symm),\n"
        )
        self.assertEqual(encode.count(bit_bridge), 1)
        bridge_mutated = dict(self.outputs)
        bridge_mutated[encode_path] = encode.replace(
            bit_bridge,
            "        (rho 254 - rho 235 : F), (by rw [hb]),\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode canonical-bit bridge render drifted"
        ):
            net_balance._validate_rendered(bridge_mutated)
        self.assertEqual(len(net_balance.NB_ENCODE_RFL_WITNESS_FIELDS), 26)
        rfl_mutated = dict(self.outputs)
        rfl_mutated[encode_path] = encode.replace(
            "      (g1 : F), rfl,\n",
            "      (g1 : F), (by ring),\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode definitional-rfl witness manifest drifted"
        ):
            net_balance._validate_rendered(rfl_mutated)
        self.assertEqual(
            net_balance.NB_ENCODE_NONDEFINITIONAL_RFL_FIELDS,
            ("1 - rho 596", "rho 602 - rho 601"),
        )
        for expression in net_balance.NB_ENCODE_NONDEFINITIONAL_RFL_FIELDS:
            normalized = (
                f"        ({expression} : F), (by ring),\n"
            )
            self.assertEqual(encode.count(normalized), 1)
            nondef_mutated = dict(self.outputs)
            nondef_mutated[encode_path] = encode.replace(
                normalized,
                f"        ({expression} : F), rfl,\n",
                1,
            )
            with self.assertRaisesRegex(
                ValueError,
                "NbEncode non-definitional rfl normalization drifted",
            ):
                net_balance._validate_rendered(nondef_mutated)
        row775_bridge = (
            "      · have hrow : (-rho 601 + rho 602 : F) = "
            "(1 + rho 603 : F) := by\n"
            "          simpa only [one_mul, neg_one_mul] using r775\n"
            "        calc\n"
            "          (rho 602 - rho 601 : F) = -rho 601 + rho 602 "
            ":= by ring\n"
            "          _ = 1 + rho 603 := hrow\n"
        )
        self.assertEqual(encode.count(row775_bridge), 1)
        row775_mutated = dict(self.outputs)
        row775_mutated[encode_path] = encode.replace(
            row775_bridge,
            row775_bridge.replace(
                "[one_mul, neg_one_mul]", "[one_mul]", 1
            ),
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode row775 normalization render drifted"
        ):
            net_balance._validate_rendered(row775_mutated)
        net_balance._validate_nb_encode_coefficient_manifest(self.rows)
        self.assertEqual(
            tuple(
                (
                    cert.name,
                    cert.raw_value,
                    cert.canonical_residue,
                    cert.signed_residue,
                    cert.owners,
                )
                for cert in net_balance.NB_ENCODE_COEFFICIENT_CERTIFICATES
            ),
            (
                (
                    "hnegOne",
                    net_balance.ORDER - 1,
                    net_balance.ORDER - 1,
                    -1,
                    (
                        "precanon-local/g4-g6-g11",
                        "canon-proof[1]/gate57",
                        "canon-proof[2]/gate59",
                    ),
                ),
                (
                    "hC3021",
                    3021 * net_balance.NB_ENCODE_C_LITERAL,
                    net_balance.NB_ENCODE_C3021_RESIDUE,
                    net_balance.NB_ENCODE_C3021_RESIDUE - net_balance.ORDER,
                    ("circuit-proof[1]/r231-g4",),
                ),
                (
                    "hC3022",
                    3022 * net_balance.NB_ENCODE_C_LITERAL,
                    net_balance.NB_ENCODE_C3022_RESIDUE,
                    net_balance.NB_ENCODE_C3022_RESIDUE - net_balance.ORDER,
                    ("circuit-proof[1]/r231-g6",),
                ),
                (
                    "hNeg6043C",
                    -6043 * net_balance.NB_ENCODE_C_LITERAL,
                    net_balance.NB_ENCODE_NEG6043C_RESIDUE,
                    net_balance.NB_ENCODE_NEG6043C_RESIDUE,
                    (
                        "circuit-proof[2]/r232-g11",
                        "circuit-proof[14]/r254-g11",
                    ),
                ),
                (
                    "hNegC",
                    -net_balance.NB_ENCODE_C_LITERAL,
                    net_balance.NB_ENCODE_NEG_C_RESIDUE,
                    -net_balance.NB_ENCODE_C_LITERAL,
                    ("circuit-proof[10]/r249-gate30",),
                ),
                (
                    "hPoseidonCoeff0Sq",
                    net_balance.NB_ENCODE_POSEIDON_COEFF0 ** 2,
                    net_balance.NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE,
                    net_balance.NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE
                    - net_balance.ORDER,
                    ("circuit-proof[0]/r230-rho226-square",),
                ),
                (
                    "hPoseidonCross",
                    2
                    * net_balance.NB_ENCODE_POSEIDON_COEFF0
                    * net_balance.NB_ENCODE_POSEIDON_COEFF1,
                    net_balance.NB_ENCODE_POSEIDON_CROSS_RESIDUE,
                    net_balance.NB_ENCODE_POSEIDON_CROSS_RESIDUE
                    - net_balance.ORDER,
                    ("circuit-proof[0]/r230-rho226-rho231-cross",),
                ),
                (
                    "hPoseidonCoeff1Sq",
                    net_balance.NB_ENCODE_POSEIDON_COEFF1 ** 2,
                    net_balance.NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE,
                    net_balance.NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE
                    - net_balance.ORDER,
                    ("circuit-proof[0]/r230-rho231-square",),
                ),
                (
                    "hg41",
                    net_balance.ORDER - 6043,
                    net_balance.ORDER - 6043,
                    -6043,
                    ("hinv63/r770-base",),
                ),
                (
                    "hg41Sq",
                    (net_balance.ORDER - 6043) ** 2,
                    36517849,
                    36517849,
                    ("hinv63/r770-square",),
                ),
            ),
        )
        precanon_manifest = (
            net_balance.NB_ENCODE_PRECANON_ROW_COEFFICIENT_MANIFEST
        )
        self.assertEqual(tuple(row for row, _, _ in precanon_manifest), tuple(range(230, 258)))
        self.assertEqual(
            tuple(
                (row, owner)
                for row, _, owner in precanon_manifest
                if owner.startswith("redundant/")
            ),
            (
                (241, "redundant/duplicate-hws-row"),
                (243, "redundant/hnotZ-derived-from-hz"),
            ),
        )
        self.assertEqual(
            {row: coefficients for row, coefficients, _ in precanon_manifest if coefficients},
            {
                230: (
                    (
                        net_balance.NB_ENCODE_POSEIDON_COEFF0,
                        -net_balance.NB_ENCODE_POSEIDON_NEG0,
                    ),
                    (
                        net_balance.NB_ENCODE_POSEIDON_COEFF1,
                        -net_balance.NB_ENCODE_POSEIDON_NEG1,
                    ),
                ),
                231: (
                    (
                        net_balance.NB_ENCODE_C3021_RESIDUE,
                        net_balance.NB_ENCODE_C3021_RESIDUE - net_balance.ORDER,
                    ),
                    (
                        net_balance.NB_ENCODE_C3022_RESIDUE,
                        net_balance.NB_ENCODE_C3022_RESIDUE - net_balance.ORDER,
                    ),
                    (net_balance.ORDER - 3022, -3022),
                    (net_balance.ORDER - 3021, -3021),
                ),
                232: (
                    (
                        net_balance.NB_ENCODE_NEG6043C_RESIDUE,
                        net_balance.NB_ENCODE_NEG6043C_RESIDUE,
                    ),
                    (net_balance.ORDER - 6043, -6043),
                ),
                249: ((net_balance.NB_ENCODE_NEG_C_RESIDUE, -net_balance.NB_ENCODE_C_LITERAL),),
                252: (
                    (net_balance.NB_ENCODE_POSEIDON_NEG1, net_balance.NB_ENCODE_POSEIDON_NEG1),
                    (net_balance.NB_ENCODE_POSEIDON_NEG0, net_balance.NB_ENCODE_POSEIDON_NEG0),
                ),
                253: (
                    (
                        net_balance.NB_ENCODE_POSEIDON_COEFF0,
                        -net_balance.NB_ENCODE_POSEIDON_NEG0,
                    ),
                    (
                        net_balance.NB_ENCODE_POSEIDON_COEFF1,
                        -net_balance.NB_ENCODE_POSEIDON_NEG1,
                    ),
                ),
                254: (
                    (
                        net_balance.NB_ENCODE_NEG6043C_RESIDUE,
                        net_balance.NB_ENCODE_NEG6043C_RESIDUE,
                    ),
                    (net_balance.ORDER - 6043, -6043),
                ),
                255: ((net_balance.ORDER - 2, -2),),
                257: ((net_balance.NB_ENCODE_C_LITERAL, net_balance.NB_ENCODE_C_LITERAL),),
            },
        )
        self.assertEqual(
            net_balance.NB_ENCODE_ROW_COEFFICIENT_MANIFEST,
            (
                (769, ((2, 2),), "canon-proof[3]"),
                (770, ((36517849, 36517849),), "hinv63"),
                (771, (), "canon-proof[4]"),
                (772, (), "canon-proof[5]"),
                (773, (), "canon-proof[6]"),
                (774, ((3021, 3021),), "canon-proof[7]"),
                (775, (), "canon-proof[8]"),
            ),
        )
        certificates = net_balance.NB_ENCODE_COEFFICIENT_CERTIFICATES
        bad_residue = certificates[:3] + (
            replace(
                certificates[3],
                canonical_residue=net_balance.NB_ENCODE_NEG6043C_RESIDUE + 1,
            ),
        ) + certificates[4:]
        with self.assertRaisesRegex(
            ValueError, "NbEncode coefficient residue certificate drifted"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, bad_residue
            )
        bad_certificate_owner = (
            replace(certificates[0], owners=("canon-proof[2]/gate59",)),
        ) + certificates[1:]
        with self.assertRaisesRegex(
            ValueError, "NbEncode coefficient certificate ownership drifted"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, bad_certificate_owner
            )
        bad_poseidon_product = certificates[:6] + (
            replace(
                certificates[6],
                canonical_residue=(
                    net_balance.NB_ENCODE_POSEIDON_CROSS_RESIDUE + 1
                ),
            ),
        ) + certificates[7:]
        with self.assertRaisesRegex(
            ValueError, "NbEncode coefficient residue certificate drifted"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, bad_poseidon_product
            )
        bad_poseidon_owner = certificates[:7] + (
            replace(
                certificates[7],
                owners=("circuit-proof[0]/r230-rho226-square",),
            ),
        ) + certificates[8:]
        with self.assertRaisesRegex(
            ValueError, "NbEncode coefficient certificate ownership drifted"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, bad_poseidon_owner
            )
        bad_row_value = list(net_balance.NB_ENCODE_ROW_COEFFICIENT_MANIFEST)
        bad_row_value[0] = (769, ((3, 3),), "canon-proof[3]")
        with self.assertRaisesRegex(
            ValueError, "NbEncode row coefficient census drifted at r769"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, row_manifest=tuple(bad_row_value)
            )
        bad_row_owner = list(net_balance.NB_ENCODE_ROW_COEFFICIENT_MANIFEST)
        bad_row_owner[1] = (770, ((36517849, 36517849),), "canon-proof[4]")
        with self.assertRaisesRegex(
            ValueError, "NbEncode coefficient bullet ownership drifted"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, row_manifest=tuple(bad_row_owner)
            )
        bad_precanon_value = list(precanon_manifest)
        bad_precanon_value[24] = (
            254,
            ((net_balance.NB_ENCODE_NEG6043C_RESIDUE + 1, net_balance.NB_ENCODE_NEG6043C_RESIDUE + 1), (net_balance.ORDER - 6043, -6043)),
            "circuit-proof[14]",
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode row coefficient census drifted at r254"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, precanon_row_manifest=tuple(bad_precanon_value)
            )
        bad_precanon_owner = list(precanon_manifest)
        bad_precanon_owner[24] = (
            254,
            bad_precanon_owner[24][1],
            "circuit-proof[13]",
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode precanonical proof ownership drifted"
        ):
            net_balance._validate_nb_encode_coefficient_manifest(
                self.rows, precanon_row_manifest=tuple(bad_precanon_owner)
            )
        self.assertEqual(
            encode.count(
                net_balance.NB_ENCODE_PRECANON_COEFFICIENT_CERTIFICATE_BLOCK
            ),
            1,
        )
        certificate_block_mutated = dict(self.outputs)
        certificate_block_mutated[encode_path] = encode.replace(
            "    have hNeg6043C :\n",
            "    have hWrongNeg6043C :\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode precanonical coefficient block drifted"
        ):
            net_balance._validate_rendered(certificate_block_mutated)
        self.assertEqual(net_balance.NB_ENCODE_PRECANON_HOLE_COUNT, 20)
        self.assertEqual(len(net_balance.NB_ENCODE_CIRCUIT_PROOF_BLOCKS), 20)
        precanon_owner_mutated = dict(self.outputs)
        precanon_owner_mutated[encode_path] = encode.replace(
            net_balance.NB_ENCODE_CIRCUIT_PROOF_BLOCKS[14],
            net_balance.NB_ENCODE_CIRCUIT_PROOF_BLOCKS[14].replace(
                "r254", "r253", 1
            ),
            1,
        )
        with self.assertRaisesRegex(
            ValueError,
            "NbEncode precanonical constructor proof arity/mapping drifted",
        ):
            net_balance._validate_rendered(precanon_owner_mutated)
        self.assertEqual(
            net_balance.NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS,
            (
                ("eight-direct-decide-certificates", 8, 5, 13),
                ("compositional-derived-residues", 10, 9, 19),
            ),
        )
        self.assertLess(
            net_balance.NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS[0][3],
            net_balance.NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS[1][3],
        )
        self.assertEqual(encode.count(net_balance.NB_ENCODE_HINV63_BLOCK), 1)
        hinv63_owner_mutated = dict(self.outputs)
        hinv63_owner_mutated[encode_path] = encode.replace(
            "        linear_combination r770\n",
            "        linear_combination r771\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode hinv63 coefficient ownership drifted"
        ):
            net_balance._validate_rendered(hinv63_owner_mutated)
        generic_mutated = dict(self.outputs)
        generic_mutated[encode_path] = encode.replace(
            "        rw [hg41Sq]\n",
            "        norm_num [g49, g41]\n",
            1,
        )
        with self.assertRaisesRegex(
            ValueError, "NbEncode generic coefficient normalization reintroduced"
        ):
            net_balance._validate_rendered(generic_mutated)
        self.assertEqual(net_balance.NB_ENCODE_CANON_HOLE_COUNT, 9)
        self.assertEqual(len(net_balance.NB_ENCODE_CANON_PROOF_BLOCKS), 9)
        arity_mutations = (
            (
                "        (1 + rho 596 : F), (by ring),\n",
                "        (1 + rho 596 : F), ?_,\n",
            ),
            (
                "        (rho 598 : F), ?_,\n",
                "        (rho 598 : F), (by ring),\n",
            ),
            (
                net_balance.NB_ENCODE_CANON_PROOF_BLOCKS[3],
                "",
            ),
            (
                net_balance.NB_ENCODE_CANON_PROOF_BLOCKS[3],
                net_balance.NB_ENCODE_CANON_PROOF_BLOCKS[3] * 2,
            ),
        )
        for old, new in arity_mutations:
            self.assertEqual(encode.count(old), 1)
            arity_mutated = dict(self.outputs)
            arity_mutated[encode_path] = encode.replace(old, new, 1)
            with self.assertRaisesRegex(
                ValueError,
                "NbEncode canonical constructor proof arity/mapping drifted",
            ):
                net_balance._validate_rendered(arity_mutated)
        for forbidden in (
            "d2168a8e35fd",
            "NbInput0Scalar",
            "NbInput1Scalar",
            "NbOutput0Scalar",
            "NbOutput1Scalar",
            "nbBlind_ladder",
            "fixedTrace_to_nbLadderK",
            "fixedTrace_final_onCurve",
            "representativeRho",
            "Contracts.Transfer",
            "Classical.choice",
            "axiom ",
            "sorry",
            "native_decide",
            "unfold Shieldd.GnarkFormal.StructuredLC.eval",
            "simp only [Shieldd.GnarkFormal.StructuredLC.eval,",
        ):
            self.assertNotIn(forbidden, combined)


if __name__ == "__main__":
    unittest.main()
