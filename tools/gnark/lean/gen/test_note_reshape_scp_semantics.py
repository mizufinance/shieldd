#!/usr/bin/env python3

import copy
import sys
import unittest
from pathlib import Path
from unittest import mock


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_note_reshape_scp_semantics as scp
import gen_note_reshape_direct_representatives as direct
import gen_poseidon_bridge as poseidon_bridge


class NormalizedScpSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.outputs = scp.generated_files()

    def test_emits_exact_sharded_provider_and_benchmarks(self):
        self.assertEqual(len(self.outputs), 454)
        self.assertEqual(sum(path.parent == scp.OUT for path in self.outputs), 442)
        self.assertEqual(sum(path.parent == scp.BENCH for path in self.outputs), 12)

    def test_generated_sources_have_canonical_whitespace(self):
        for path, source in self.outputs.items():
            self.assertTrue(source.endswith("\n"), path.name)
            self.assertFalse(source.endswith("\n\n"), path.name)
            self.assertTrue(
                all(line == line.rstrip() for line in source.splitlines()),
                path.name,
            )

    def test_provider_has_no_deployed_relation_transport(self):
        text = "\n".join(self.outputs.values())
        self.assertNotIn("NoteReshape2x1", text)
        self.assertNotIn("representativeRho", text)
        self.assertNotIn("representativeSeating", text)
        self.assertNotIn("relation_transport", text)

    def test_exact_normalized_relation_is_the_soundness_input(self):
        for name in (scp.NAME, scp.WITHDRAWAL_NAME):
            main = self.outputs[scp.OUT / f"{name}.lean"]
            exact = (
                "Shieldd.GnarkFormal.Deployed.Templates.Relations."
                f"{name}"
            )
            self.assertIn(f"(h : {exact}.relation rho)", main)
            self.assertIn("theorem sound", main)
            self.assertIn("def spec", main)

    def test_choice_free_projection_owns_the_normalized_recovery_boundary(self):
        combined = "\n".join(
            source
            for path, source in self.outputs.items()
            if path.parent == scp.OUT
        )
        self.assertIn(
            "ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree",
            combined,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recover24H",
            combined,
        )
        self.assertIn(
            "Shieldd.GnarkFormal.Deployed.StateCommitmentPathChoiceFree.recoverStep",
            combined,
        )
        self.assertNotIn(
            "Shieldd.GnarkFormal.Deployed.StateCommitmentPath.recover24H",
            combined,
        )
        self.assertNotIn(
            "Shieldd.GnarkFormal.QuadPath.recoverStep",
            combined,
        )

    def test_choice_free_zmod_owns_normalized_arithmetic(self):
        for path, source in self.outputs.items():
            if path.parent != scp.OUT:
                continue
            self.assertIn(
                "import ShielddGnarkFormal.ChoiceFreeZMod\n",
                source,
                path.name,
            )
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
                source,
                path.name,
            )

    def test_shared_state_commitment_poseidon_bridges_are_choice_free(self):
        names = ["state_commitment_leaf"] + [
            f"state_commitment_node{level}" for level in range(24)
        ]
        for name in names:
            self.assertTrue(
                poseidon_bridge.CONFIGS[name].get("choice_free_zmod"),
                name,
            )

    def test_local_wire_metadata_is_used(self):
        base = self.outputs[scp.OUT / f"{scp.NAME}ScpBase.lean"]
        self.assertIn("rho 226", base)
        self.assertIn("rho 8972", base)
        self.assertNotIn("rho 12783", base)
        withdrawal = self.outputs[
            scp.OUT / f"{scp.WITHDRAWAL_NAME}ScpBase.lean"
        ]
        self.assertIn("rho 231", withdrawal)
        self.assertIn("rho 8997", withdrawal)

    def test_import_has_no_retired_note_reshape_dependency(self):
        self.assertEqual(scp.REFERENCE_CIRCUIT, "note_reshape1x8")
        self.assertNotIn("note_reshape2x1", str(scp.REFERENCE_IR))
        self.assertNotIn("NoteReshape2x1", scp.scp.CTX)
        self.assertFalse(hasattr(scp.scp, "DEPLOYED_WIRE_SEATINGS"))
        self.assertFalse(hasattr(scp.scp, "INSTANCES"))

    def test_active_nine_instance_inventory_roster_is_exact(self):
        self.assertEqual(
            scp.DIRECT_INSTANCES,
            (
                ("note_reshape1x8", 37),
                ("note_reshape8x1", 46),
                ("note_reshape8x1", 61),
                ("note_reshape8x1", 76),
                ("note_reshape8x1", 91),
                ("note_reshape8x1", 106),
                ("note_reshape8x1", 121),
                ("note_reshape8x1", 136),
                ("note_reshape8x1", 151),
            ),
        )
        scp._validate_inventory_target(
            scp.KEY,
            local_wire_count=8993,
            instances=scp.DIRECT_INSTANCES,
            constant_vector=scp.DIRECT_CONSTANT_VECTOR,
            class_key=scp.DIRECT_CLASS_KEY,
        )

        inventory = scp.read_json_object(
            scp.INVENTORY, canonical="pretty"
        )
        mutated = copy.deepcopy(inventory)
        entry = next(
            item
            for item in mutated["templates"]
            if item["template_key"] == scp.KEY
        )
        entry["instances"][8]["segment_index"] += 1
        with mock.patch.object(
            scp, "read_json_object", return_value=mutated
        ):
            with self.assertRaisesRegex(
                SystemExit, "deployed instance 8 drifted"
            ):
                scp._validate_inventory_target(
                    scp.KEY,
                    local_wire_count=8993,
                    instances=scp.DIRECT_INSTANCES,
                    constant_vector=scp.DIRECT_CONSTANT_VECTOR,
                    class_key=scp.DIRECT_CLASS_KEY,
                )

    def test_active_reference_uses_exact_ir_wire_seating(self):
        segment = scp._reference_segment()
        self.assertEqual(segment["index"], 37)
        seating = scp.SegmentTemplate.parse(
            segment
        ).canonical_wire_seating
        self.assertEqual(len(seating), scp.REFERENCE_LOCAL_WIRE_COUNT)
        self.assertEqual(seating[0], 0)
        self.assertEqual(len(seating), len(set(seating)))

        ir = scp.read_json_object(scp.REFERENCE_IR, canonical="pretty")
        mutated = copy.deepcopy(ir)
        target = next(
            item
            for item in mutated["segments"]
            if item.get("proof_template_id") == scp.KEY
        )
        target["index"] += 1
        with mock.patch.object(
            scp, "read_json_object", return_value=mutated
        ):
            with self.assertRaisesRegex(
                SystemExit, "reference segment shape drifted"
            ):
                scp._reference_segment()

    def test_withdrawal_inline_commitment_transport_is_fail_closed(self):
        mutated = (
            (scp.WITHDRAWAL_COMMITMENT_LC[0][0] + 1, 1),
            *scp.WITHDRAWAL_COMMITMENT_LC[1:],
        )
        with mock.patch.object(scp, "WITHDRAWAL_COMMITMENT_LC", mutated):
            with self.assertRaisesRegex(
                SystemExit, "exact specialization failed at row 0"
            ):
                scp._validate_withdrawal_relation_transport()

    def test_withdrawal_spec_uses_all_inline_commitment_fields(self):
        main = self.outputs[
            scp.OUT / f"{scp.WITHDRAWAL_NAME}.lean"
        ]
        for coefficient, wire in scp.WITHDRAWAL_COMMITMENT_LC:
            self.assertIn(f"({coefficient} : F) * rho {wire}", main)

    def test_repeated_generation_is_byte_identical(self):
        self.assertEqual(self.outputs, scp.generated_files())

    def test_tactic_dependencies_are_explicit(self):
        tactic_imports = {
            "linear_combination": "Mathlib.Tactic.LinearCombination",
            "interval_cases": "Mathlib.Tactic.IntervalCases",
            "norm_num": "Mathlib.Tactic.NormNum",
        }
        for path, source in self.outputs.items():
            if path.parent != scp.OUT:
                continue
            for tactic, module in tactic_imports.items():
                if tactic in source:
                    self.assertIn(f"import {module}\n", source, path.name)


class DirectEqSemanticsTests(unittest.TestCase):
    def test_simple_prototype_uses_exact_relation(self):
        outputs = direct.generated_files()
        key = next(key for key, _, _ in direct.templates() if key.startswith("assert.eq@"))
        name = direct.default_template_name(key)
        path = direct.OUT / f"{name}.lean"
        text = outputs[path]
        self.assertIn(f"Templates.Relations.{name}", text)
        self.assertNotIn("representativeRho", text)
        self.assertNotIn("NoteReshape2x1", text)
        self.assertIn("exact h.1.symm", text)


if __name__ == "__main__":
    unittest.main()
