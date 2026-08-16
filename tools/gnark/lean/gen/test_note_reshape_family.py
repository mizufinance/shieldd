from __future__ import annotations

import ast
import copy
import json
import re
import unittest

import gen_note_reshape_family as family


class NoteReshapeFamilyTests(unittest.TestCase):
    RETAINED = ("note_reshape1x8", "note_reshape8x1")

    @classmethod
    def setUpClass(cls) -> None:
        root = family.Path(__file__).resolve().parents[4]
        cls.root = root
        cls.irs = [
            json.loads(
                (
                    root
                    / "crates/core/component/shielded-pool/formal"
                    / f"{circuit}-deployed-slice-ir.json"
                ).read_text()
            )
            for circuit in cls.RETAINED
        ]
        cls.constraint_manifests = {
            circuit: json.loads(
                (
                    root
                    / "tools/gnark/artifacts"
                    / circuit
                    / f"{circuit}-manifest.json"
                ).read_text()
            )
            for circuit in cls.RETAINED
        }

    def test_both_families_use_one_complete_role_partition(self) -> None:
        self.assertEqual(len(self.irs), 2)
        for ir in self.irs:
            groups = family.phase_groups(ir)
            expected = {
                segment["index"] for segment in family.constraint_segments(ir)
            }
            actual = {
                segment["index"]
                for segments in groups.values()
                for segment in segments
            }
            self.assertEqual(actual, expected, ir["circuit"])
            source = family.render_circuit_facts(ir)
            self.assertIn("ControlCircuitFacts", source)
            self.assertIn("TranscriptCircuitFacts", source)
            self.assertIn("(h : relationAll rho)", source)
            self.assertNotIn("rows : relationAll rho", source)
            fact_files = family.render_circuit_fact_files(ir)
            self.assertIn("Facts/Control.lean", fact_files)
            self.assertIn("Facts/Transcript.lean", fact_files)
            for group, segments in groups.items():
                group_source = fact_files[f"Facts/{family.camel(group)}.lean"]
                for segment in segments:
                    self.assertIn(
                        f"Seg{segment['index']}.contract.spec rho",
                        group_source,
                    )
                self.assertNotIn(".Capstone", group_source)

    def test_8x1_refinement_supports_two_through_eight_real_inputs(self) -> None:
        source = (
            self.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "NoteReshape8x1Refinement.lean"
        ).read_text()
        current_active_range = (
            "TAssertActiveRange_"
            "20f60cd1d2731f356241de975318b0d5af7d0d8f6c6c620b7e11711c4f10405b"
        )
        retired_active_range = (
            "TAssertActiveRange_"
            "486bb61d926bd1688072104ae23c98ba7bcac3614cb3a0c6b005c31b6b4b4861"
        )
        self.assertIn(current_active_range, source)
        self.assertNotIn(retired_active_range, source)
        self.assertEqual(
            source.count(
                "selectorFacts rho facts with s | s | s | s | s | s | s"
            ),
            3,
        )
        self.assertIn("change (5040 : DeployedF) ≠ 0", source)
        spend_source = (
            self.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "NoteReshape8x1Spend.lean"
        ).read_text()
        self.assertEqual(
            spend_source.count(
                "selectorFacts rho facts with s | s | s | s | s | s | s"
            ),
            2,
        )
        spend_1x8_source = (
            self.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "NoteReshape1x8Spend.lean"
        ).read_text()
        for current_wire in (20860, 29773, 31603, 31969, 32309):
            self.assertIn(f"= {current_wire} := by decide", spend_1x8_source)
        for retired_wire in (7219, 16132, 17962, 18328, 18668):
            self.assertNotIn(f"= {retired_wire} := by decide", spend_1x8_source)
        ir = next(ir for ir in self.irs if ir["circuit"] == "note_reshape8x1")
        consequences = family.render_specification_consequences(ir)
        self.assertIn(
            "rcases selectorFacts with "
            "selected | selected | selected | selected | selected | selected | selected",
            consequences,
        )
        self.assertIn(
            "(Witness.syntheticSpends0IsDummy rho = 0 ∨ "
            "Witness.syntheticSpends0IsDummy rho = 1)",
            consequences,
        )

    def test_equivalent_seating_change_does_not_regenerate_composition(self) -> None:
        ir = self.irs[0]
        mutated = copy.deepcopy(ir)
        witnesses = (
            segment["template_equivalence_witness"]
            for segment in mutated["segments"]
            if segment["constraint_count"] > 0
        )
        witness = next(
            witness
            for witness in witnesses
            if len(witness["canonical_local_to_deployed_wire_seating"]) >= 3
        )
        seating = witness["canonical_local_to_deployed_wire_seating"]
        seating[1], seating[2] = seating[2], seating[1]
        for renderer in (
            family.render_bounds,
            family.render_capstone,
            family.render_circuit_facts,
        ):
            self.assertEqual(renderer(mutated), renderer(ir))

    def test_bounds_import_every_referenced_template_once(self) -> None:
        for ir in self.irs:
            source = family.render_bounds(ir)
            names = {
                family.template_name(
                    family.SegmentTemplate.parse(segment).proof_template_id
                )
                for segment in family.constraint_segments(ir)
            }
            for name in names:
                self.assertEqual(
                    source.count(
                        "import ShielddGnarkFormal.Deployed.Templates.Generated."
                        + name
                        + "\n"
                    ),
                    1,
                    name,
                )

    def test_every_family_composition_artifact_declares_generator_ownership(
        self,
    ) -> None:
        roster = family.predicate_consequence_roster()
        expected_counts = {
            "note_reshape1x8": 29,
            "note_reshape8x1": 33,
        }
        for ir in self.irs:
            for renderer in (
                family.render_bounds,
                family.render_capstone,
                family.render_circuit_facts,
            ):
                self.assertIn(
                    "GENERATED by gen_note_reshape_family.py — do not edit by hand.",
                    renderer(ir),
                    (ir["circuit"], renderer.__name__),
                )
            self.assertIn(
                "GENERATED by gen_note_reshape_family.py — do not edit by hand.",
                family.render_role_bindings(
                    ir, self.constraint_manifests[ir["circuit"]]
                ),
            )
            self.assertIn(
                "GENERATED by gen_note_reshape_family.py — do not edit by hand.",
                family.render_semantic_bindings(
                    ir, self.constraint_manifests[ir["circuit"]]
                ),
            )
            self.assertIn(
                "GENERATED by gen_note_reshape_family.py — do not edit by hand.",
                family.render_semantic_seams(
                    ir, self.constraint_manifests[ir["circuit"]]
                ),
            )
            consequences = family.render_specification_consequences(ir, roster)
            self.assertIn(
                "GENERATED by gen_note_reshape_family.py — do not edit by hand.",
                consequences,
            )
            self.assertEqual(
                consequences.count("\ntheorem specification_"),
                expected_counts[ir["circuit"]],
            )

    def test_specification_consequences_match_the_canonical_roster(self) -> None:
        roster = family.predicate_consequence_roster()
        for ir in self.irs:
            circuit = ir["circuit"]
            source = family.render_specification_consequences(ir, roster)
            _, consequences = roster[circuit]
            for predicate, declaration in consequences:
                self.assertEqual(source.count(declaration), 1, predicate)
            for forbidden in ("axiom ", "sorry", "admit"):
                self.assertNotIn(forbidden, source)
            self.assertIn("theorem circuitFacts_of_relationAll", source)
            self.assertIn("Concrete.circuitPrimitives", source)
            self.assertNotIn(
                "consensusAccepted_atomicSecurityConsequences",
                source,
            )

    def test_asset_and_routing_consequences_name_every_exact_segment(self) -> None:
        for ir in self.irs:
            source = family.render_specification_consequences(ir)
            for predicate in family.EXACT_SHARED_PREDICATES:
                for segment in family._segments_for_exact_predicate(ir, predicate):
                    field = f"{family.camel(segment['op'])}Seg{segment['index']}"
                    self.assertIn(field, source, (ir["circuit"], predicate, field))
            for predicate in ("ROUTING-PARAMETERS", "ROUTING-TAG-DERIVATION"):
                theorem = family.specification_theorem_name(predicate)
                start = source.index(f"theorem {theorem}")
                end = source.find("\n/--", start)
                declaration = source[start : None if end == -1 else end]
                self.assertNotIn("noteCommitment", declaration)

    def test_specification_consequences_fail_closed_on_roster_drift(self) -> None:
        ir = self.irs[0]
        circuit = ir["circuit"]
        roster = family.predicate_consequence_roster()
        path, consequences = roster[circuit]

        missing = dict(roster)
        missing.pop(circuit)
        with self.assertRaisesRegex(ValueError, "roster entry missing"):
            family.render_specification_consequences(ir, missing)

        unknown = dict(roster)
        unknown[circuit] = (
            path,
            (*consequences, ("UNKNOWN-PREDICATE", "theorem specification_unknown_predicate")),
        )
        with self.assertRaisesRegex(ValueError, "no exact consequence renderer"):
            family.render_specification_consequences(ir, unknown)

        wrong_path = dict(roster)
        wrong_path[circuit] = ("wrong/SpecificationConsequences.lean", consequences)
        with self.assertRaisesRegex(ValueError, "does not match"):
            family.render_specification_consequences(ir, wrong_path)

    def test_semantic_seams_do_not_redeclare_capstone_field_alias(self) -> None:
        for ir in self.irs:
            source = family.render_semantic_seams(
                ir, self.constraint_manifests[ir["circuit"]]
            )
            self.assertIn("(rho : Nat → SemanticF)", source)
            self.assertNotIn("abbrev SeamF", source)
            self.assertNotIn("DeployedF", source)

    def test_capstone_exposes_each_exact_segment_relation(self) -> None:
        for ir in self.irs:
            source = family.render_capstone(ir)
            for segment in family.constraint_segments(ir):
                index = segment["index"]
                self.assertIn(
                    f"theorem relationOf{index} ",
                    source,
                    (ir["circuit"], index),
                )

    def test_role_bindings_cover_every_compiler_witness_wire_once(self) -> None:
        for ir in self.irs:
            manifest = self.constraint_manifests[ir["circuit"]]
            wires = family.witness_wires(manifest, ir)
            source = family.render_role_bindings(ir, manifest)
            self.assertEqual(
                len(wires),
                manifest["nb_public_variables"] - 1
                + manifest["nb_secret_variables"],
            )
            for wire in wires:
                self.assertEqual(
                    source.count(f"rho {wire['wire_id']}\n"),
                    1,
                    (ir["circuit"], wire["path"]),
                )
            self.assertIn("namespace Witness", source)
            self.assertIn("end Witness", source)

    def test_role_and_semantic_bindings_can_share_a_family_namespace(self) -> None:
        for ir in self.irs:
            manifest = self.constraint_manifests[ir["circuit"]]
            roles = family.render_role_bindings(ir, manifest)
            semantics = family.render_semantic_bindings(ir, manifest)
            semantic_names = {
                match.group(1)
                for match in re.finditer(r"^def ([A-Za-z0-9_]+)", semantics, re.M)
            }
            role_names = {
                match.group(1)
                for match in re.finditer(r"^def ([A-Za-z0-9_]+)", roles, re.M)
            }
            self.assertTrue(semantic_names & role_names)
            self.assertIn("namespace Witness", roles)

    def test_role_bindings_fail_closed_on_missing_or_renumbered_map(self) -> None:
        ir = self.irs[0]
        manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
        manifest["witness_wires"] = []
        with self.assertRaisesRegex(ValueError, "no witness_wires"):
            family.render_role_bindings(ir, manifest)
        manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
        manifest["witness_wires"][0]["wire_id"] = 2
        with self.assertRaisesRegex(ValueError, "not contiguous"):
            family.render_role_bindings(ir, manifest)

    def test_semantic_bindings_are_typed_exact_lcs_and_fail_closed(self) -> None:
        for ir in self.irs:
            manifest = self.constraint_manifests[ir["circuit"]]
            bindings = family.semantic_bindings(manifest, ir)
            source = family.render_semantic_bindings(ir, manifest)
            self.assertGreater(len(bindings), 20)
            self.assertIn("def sharedTransmissionComputed0", source)
            self.assertIn("def sharedTransmissionComputed1", source)
            self.assertIn("def statementFields0", source)

        ir = self.irs[0]
        manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
        manifest["semantic_bindings"] = []
        with self.assertRaisesRegex(ValueError, "no semantic_bindings"):
            family.render_semantic_bindings(ir, manifest)

        manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
        manifest["semantic_bindings"][0]["name"] = manifest[
            "semantic_bindings"
        ][1]["name"]
        with self.assertRaisesRegex(ValueError, "not unique"):
            family.render_semantic_bindings(ir, manifest)

        for path in ("binding", "expression", "term"):
            manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
            binding = manifest["semantic_bindings"][0]
            if path == "binding":
                target = binding
            elif path == "expression":
                target = binding["expressions"][0]
            else:
                target = binding["expressions"][0]["terms"][0]
            target["ignored_metadata"] = "must fail closed"
            with self.assertRaisesRegex(ValueError, "unexpected field set"):
                family.render_semantic_bindings(ir, manifest)

    def test_non_identity_rows_bind_exact_point_x_wires(self) -> None:
        for original in self.irs:
            ir = copy.deepcopy(original)
            manifest = self.constraint_manifests[ir["circuit"]]

            seams = family.validate_non_identity_seams(
                ir,
                manifest,
                family.NOTE_RESHAPE_NON_IDENTITY_BINDINGS,
            )
            self.assertEqual(len(seams), 3)
            source = family.render_non_identity_seams(
                ir,
                manifest,
                family.NOTE_RESHAPE_NON_IDENTITY_BINDINGS,
                ("auth.ivk_reduced",),
            )
            self.assertIn("theorem authAkNonIdentity_of_exact", source)
            self.assertIn("theorem sharedDivGenNonIdentity_of_exact", source)
            self.assertIn(
                "theorem sharedTransmissionComputedNonIdentity_of_exact",
                source,
            )
            self.assertIn(
                "theorem authIvkReducedNonzero_of_exact",
                source,
            )

            bad = copy.deepcopy(ir)
            bad_segment = next(
                segment
                for segment in bad["segments"]
                if segment.get("op") == "assert.decaf_non_identity"
            )
            bad_segment["wire_roles"]["internal"] = [900003]
            with self.assertRaisesRegex(ValueError, "wire roles drifted"):
                family.validate_non_identity_seams(
                    bad,
                    manifest,
                    family.NOTE_RESHAPE_NON_IDENTITY_BINDINGS,
                )

    def test_semantic_seams_bind_dtk_to_the_following_compression(self) -> None:
        for ir in self.irs:
            divgen, dtk, transmission = family.shared_crypto_segments(ir)
            source = family.render_semantic_seams(
                ir, self.constraint_manifests[ir["circuit"]]
            )
            self.assertIn(
                f"Seg{dtk['index']}.localRho",
                source,
            )
            self.assertIn(
                f"Seg{transmission['index']}.localRho",
                source,
            )
            self.assertIn(
                f"Seg{divgen['index']}.localRho",
                source,
            )
            self.assertIn(
                "theorem dtkOutX_eq_transmissionCompressInputX",
                source,
            )
            self.assertIn(
                "theorem dtkOutY_eq_transmissionCompressInputY",
                source,
            )

        mutated = copy.deepcopy(self.irs[0])
        dtk = next(
            segment
            for segment in mutated["segments"]
            if segment["op"] == "decaf.diversified_transmission_key"
        )
        dtk["op"] = "decaf.changed"
        with self.assertRaisesRegex(ValueError, "expected one shared DTK"):
            family.render_semantic_seams(
                mutated, self.constraint_manifests[mutated["circuit"]]
            )

    def test_window2_transmission_seam_is_exact_and_fails_closed(self) -> None:
        expected = {
            "note_reshape1x8": ((5853, 5861), (5854, 5862)),
            "note_reshape8x1": ((6428, 6436), (6429, 6437)),
        }
        for ir in self.irs:
            manifest = self.constraint_manifests[ir["circuit"]]
            binding = next(
                binding for binding in family.semantic_bindings(manifest, ir)
                if binding["name"] == "shared.transmission.computed"
            )
            actual = tuple(
                tuple(term["wire_id"] for term in expression["terms"])
                for expression in binding["expressions"]
            )
            self.assertEqual(actual, expected[ir["circuit"]])
            source = family.render_semantic_seams(ir, manifest)
            self.assertIn("wireSeating 4961", source)
            self.assertIn("wireSeating 4969", source)
            self.assertIn("wireSeating 1", source)
            self.assertIn("wireSeating 2", source)
            self.assertNotIn("List.range 251", source)

        ir = self.irs[0]
        manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
        binding = next(binding for binding in manifest["semantic_bindings"]
                       if binding["name"] == "shared.transmission.computed")
        binding["expressions"][0]["constant"] = "1"
        with self.assertRaisesRegex(ValueError, "Window2 two-term form"):
            family.render_semantic_seams(ir, manifest)

        manifest = copy.deepcopy(self.constraint_manifests[ir["circuit"]])
        binding = next(binding for binding in manifest["semantic_bindings"]
                       if binding["name"] == "shared.transmission.computed")
        binding["expressions"][0]["terms"][0]["wire_id"] -= 1
        with self.assertRaisesRegex(ValueError, "DTK Window2 output"):
            family.render_semantic_seams(ir, manifest)

        changed_ir = copy.deepcopy(ir)
        dtk = next(segment for segment in changed_ir["segments"]
                   if segment.get("op") == "decaf.diversified_transmission_key")
        seating = dtk["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[4960], seating[4961] = seating[4961], seating[4960]
        with self.assertRaisesRegex(ValueError, "DTK Window2 output"):
            family.render_semantic_seams(
                changed_ir, self.constraint_manifests[ir["circuit"]]
            )

        changed_ir = copy.deepcopy(ir)
        _, _, transmission = family.shared_crypto_segments(changed_ir)
        seating = transmission["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[1], seating[3] = seating[3], seating[1]
        with self.assertRaisesRegex(ValueError, "compression input"):
            family.render_semantic_seams(
                changed_ir, self.constraint_manifests[ir["circuit"]]
            )

    def test_semantic_seams_accept_explicit_authenticated_crypto_roles(
        self,
    ) -> None:
        ir = copy.deepcopy(self.irs[0])
        manifest = copy.deepcopy(
            self.constraint_manifests[ir["circuit"]]
        )
        old_divgen, old_dtk, old_transmission = (
            family.shared_crypto_segments(ir)
        )
        by_index = {
            segment["index"]: segment
            for segment in family.constraint_segments(ir)
        }
        divgen = by_index[old_divgen["index"]]
        dtk = by_index[old_dtk["index"]]
        transmission = by_index[old_transmission["index"]]

        # An explicit caller does not rely on adjacency. The three exact roles
        # remain authenticated IR objects and are rendered without mutating
        # the input.
        predecessor = next(
            segment
            for segment in ir["segments"]
            if segment["index"] == divgen["index"] - 1
        )
        predecessor["op"] = "assert.boolean"
        before = copy.deepcopy(ir)
        renames = {
            "shared.transmission.computed":
                "sender.transmission.computed",
            "shared.div_gen_fq": "sender.div_gen_fq",
            "shared.transmission.fq": "sender.transmission_fq",
        }
        for binding in manifest["semantic_bindings"]:
            if binding["name"] in renames:
                binding["name"] = renames[binding["name"]]
        names = family.SharedCryptoBindings(
            transmission_computed="sender.transmission.computed",
            divgen_fq="sender.div_gen_fq",
            transmission_fq="sender.transmission_fq",
            transmission_computed_accessor="senderTransmissionComputed",
            divgen_fq_accessor="senderDivGenFq",
            transmission_fq_accessor="senderTransmissionFq",
        )
        source = family.render_semantic_seams(
            ir,
            manifest,
            crypto_segments=(divgen, dtk, transmission),
            bindings=names,
            seating_module=(
                "Shieldd.GnarkFormal.Deployed."
                "SyntheticWithdrawalDtkSeating"
            ),
            generator="gen_deployed_family.py",
        )
        self.assertEqual(ir, before)
        self.assertIn(
            "theorem senderTransmissionComputed0_eq_dtkOutX", source
        )
        self.assertIn(
            "theorem senderDivGenFq_eq_compressOutput", source
        )
        self.assertIn(
            "theorem senderTransmissionFq_eq_compressOutput", source
        )
        self.assertIn(
            "import ShielddGnarkFormal.Deployed."
            "SyntheticWithdrawalDtkSeating",
            source,
        )
        self.assertIn(
            "GENERATED by gen_deployed_family.py — do not edit by hand.",
            source,
        )
        self.assertNotIn("sharedTransmissionComputed0 rho", source)
        wrapper, _ = family.split_semantic_seams(
            ir, source, generator="gen_deployed_family.py"
        )
        self.assertIn(
            "GENERATED by gen_deployed_family.py — do not edit by hand.",
            wrapper,
        )

        invalid = copy.deepcopy(divgen)
        invalid["op"] = "assert.boolean"
        with self.assertRaisesRegex(
            ValueError, "unexpected operations"
        ):
            family.render_semantic_seams(
                ir,
                manifest,
                crypto_segments=(invalid, dtk, transmission),
                bindings=names,
            )
        with self.assertRaisesRegex(
            ValueError, "not distinct exact IR segments"
        ):
            family.render_semantic_seams(
                ir,
                manifest,
                crypto_segments=(divgen, dtk, divgen),
                bindings=names,
            )

    def test_compression_seams_use_constructive_proposition_decisions(self) -> None:
        for ir in self.irs:
            combined = family.render_semantic_seams(
                ir, self.constraint_manifests[ir["circuit"]]
            )
            self.assertIsNone(
                re.search(r"\bdecide\b(?! \+kernel)", combined),
                ir["circuit"],
            )
            _, parts = family.split_semantic_seams(ir, combined)
            for name, source in parts.items():
                if name in {
                    "SemanticSeamDivGenFq.lean",
                    "SemanticSeamTransmissionFq.lean",
                }:
                    self.assertIn(
                        "import ShielddGnarkFormal.ChoiceFreeZMod",
                        source,
                    )
                    self.assertIn(
                        "attribute [-instance] ZMod.instField",
                        source,
                    )
                    self.assertNotIn("by omega", source)
                else:
                    self.assertNotIn(
                        "choiceFreeSemanticSeam",
                        source,
                    )

    def test_semantic_lc_compaction_is_an_exact_partition(self) -> None:
        for manifest in self.constraint_manifests.values():
            for binding in manifest["semantic_bindings"]:
                for expression in binding["expressions"]:
                    runs, residual = family.compact_semantic_expression(expression)
                    rebuilt = {
                        (run["coefficient"], run["start"] + offset * run["stride"])
                        for run in runs
                        for offset in range(run["count"])
                    }
                    rebuilt.update(
                        (term["coefficient"], term["wire_id"])
                        for term in residual
                    )
                    expected = {
                        (term["coefficient"], term["wire_id"])
                        for term in expression["terms"]
                    }
                    self.assertEqual(rebuilt, expected, binding["name"])

    def test_template_change_impacts_consuming_bounds_only(self) -> None:
        ir = self.irs[0]
        mutated = copy.deepcopy(ir)
        segment = next(
            segment
            for segment in mutated["segments"]
            if segment["constraint_count"] > 0
        )
        segment["proof_template_id"] = "assert.changed@" + "0" * 64
        segment["template_equivalence_witness"]["proof_template_id"] = (
            segment["proof_template_id"]
        )
        self.assertNotEqual(family.render_bounds(mutated), family.render_bounds(ir))
        self.assertEqual(family.render_capstone(mutated), family.render_capstone(ir))
        self.assertEqual(
            family.render_circuit_facts(mutated), family.render_circuit_facts(ir)
        )

    def test_8x1_statement_bridges_track_generated_transcript_seating(
        self,
    ) -> None:
        deployed = self.root / "tools/gnark/lean/ShielddGnarkFormal/Deployed"
        contract = deployed / "Contracts/NoteReshape8x1"
        facts = (contract / "Facts/Transcript.lean").read_text()
        match = re.search(
            r"structure TranscriptCircuitFacts .*? where\n"
            r"  StatementHashSeg(\d+) .*?\n"
            r"  AssertEqSeg(\d+) ",
            facts,
        )
        self.assertIsNotNone(match)
        statement_segment, assertion_segment = match.groups()

        segment_source = (contract / f"Seg{statement_segment}.lean").read_text()
        table_match = re.search(
            r"wireSeatingTable : List Nat := (\[[^\n]+\])",
            segment_source,
        )
        self.assertIsNotNone(table_match)
        seating = ast.literal_eval(table_match.group(1))

        for filename in (
            "NoteReshape8x1StatementFirst.lean",
            "NoteReshape8x1StatementSecond.lean",
            "NoteReshape8x1StatementThird.lean",
            "NoteReshape8x1StatementFourth.lean",
            "NoteReshape8x1StatementFifth.lean",
            "NoteReshape8x1StatementOutput.lean",
        ):
            source = (deployed / filename).read_text()
            cited_segments = set(
                re.findall(r"Seg(\d+)\.(?:localRho|wireSeating)", source)
            )
            self.assertEqual(cited_segments, {statement_segment}, filename)
            claims = re.findall(
                rf"Seg{statement_segment}\.wireSeating (\d+) = (\d+)",
                source,
            )
            self.assertTrue(claims, filename)
            for local_wire, claimed_wire in claims:
                self.assertEqual(
                    seating[int(local_wire)],
                    int(claimed_wire),
                    (filename, local_wire),
                )

        aggregator_name = "NoteReshape8x1TranscriptSeams.lean"
        aggregator = (deployed / aggregator_name).read_text()
        fact_references = re.findall(
            r"facts\.transcript\.(StatementHash|AssertEq)Seg(\d+)",
            aggregator,
        )
        self.assertEqual(
            fact_references,
            [
                ("StatementHash", statement_segment),
                ("AssertEq", assertion_segment),
            ],
        )
        cited_segments = set(
            re.findall(r"Seg(\d+)\.(?:localRho|wireSeating)", aggregator)
        )
        self.assertEqual(
            cited_segments,
            {statement_segment, assertion_segment},
            aggregator_name,
        )

        assertion_source = (
            contract / f"Seg{assertion_segment}.lean"
        ).read_text()
        assertion_table_match = re.search(
            r"wireSeatingTable : List Nat := (\[[^\n]+\])",
            assertion_source,
        )
        self.assertIsNotNone(assertion_table_match)
        assertion_seating = ast.literal_eval(assertion_table_match.group(1))
        assertion_claims = re.findall(
            rf"Seg{assertion_segment}\.wireSeating (\d+) = (\d+)",
            aggregator,
        )
        self.assertTrue(assertion_claims, aggregator_name)
        for local_wire, claimed_wire in assertion_claims:
            self.assertEqual(
                assertion_seating[int(local_wire)],
                int(claimed_wire),
                (aggregator_name, local_wire),
            )

    def test_1x8_spend_bridge_tracks_generated_fact_segments(self) -> None:
        deployed = self.root / "tools/gnark/lean/ShielddGnarkFormal/Deployed"
        contract = deployed / "Contracts/NoteReshape1x8"
        facts = (contract / "Facts/Spend0.lean").read_text()
        spend = (deployed / "NoteReshape1x8Spend.lean").read_text()
        refinement = (deployed / "NoteReshape1x8Refinement.lean").read_text()

        spend0_match = re.search(
            r"structure Spend0CircuitFacts .*? where\n(.*?)\n\n",
            facts,
            re.S,
        )
        self.assertIsNotNone(spend0_match)
        spend0_fields = {
            name: segment
            for name, segment in re.findall(
                r"^  ([A-Za-z0-9_]+Seg(\d+)) :", spend0_match.group(1), re.M
            )
        }

        expected_prefixes = (
            "GadgetNullifier",
            "AssertEq",
            "GadgetStateCommitmentPath",
            "DecafRandomizedVerificationKey",
            "DecafAssertEquivalent",
            "DecafCompressToField",
        )
        for prefix in expected_prefixes:
            matching = {
                name: segment
                for name, segment in spend0_fields.items()
                if name.startswith(prefix)
            }
            self.assertTrue(matching, prefix)
            self.assertTrue(
                any(f"facts.spend0.{name}" in spend for name in matching),
                prefix,
            )

        cited_fields = set(re.findall(r"facts\.spend0\.([A-Za-z0-9_]+Seg\d+)", spend))
        self.assertTrue(cited_fields)
        self.assertLessEqual(cited_fields, spend0_fields.keys())

        membership_segment = spend0_fields[
            next(
                name
                for name in spend0_fields
                if name.startswith("GadgetStateCommitmentPath")
            )
        ]
        self.assertIn(
            f"segmentPath (Seg{membership_segment}.localRho rho)",
            refinement,
        )


if __name__ == "__main__":
    unittest.main()
