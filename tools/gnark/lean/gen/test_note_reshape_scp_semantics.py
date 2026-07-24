#!/usr/bin/env python3

import sys
import unittest
from pathlib import Path


HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

import gen_note_reshape_scp_semantics as scp
import gen_note_reshape_direct_representatives as direct


class NormalizedScpSemanticsTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.outputs = scp.generated_files()

    def test_emits_exact_sharded_provider_and_benchmarks(self):
        self.assertEqual(len(self.outputs), 233)
        self.assertEqual(sum(path.parent == scp.OUT for path in self.outputs), 221)
        self.assertEqual(sum(path.parent == scp.BENCH for path in self.outputs), 12)

    def test_provider_has_no_deployed_relation_transport(self):
        text = "\n".join(self.outputs.values())
        self.assertNotIn("NoteReshape2x1", text)
        self.assertNotIn("representativeRho", text)
        self.assertNotIn("representativeSeating", text)
        self.assertNotIn("relation_transport", text)

    def test_exact_normalized_relation_is_the_soundness_input(self):
        main = self.outputs[scp.OUT / f"{scp.NAME}.lean"]
        self.assertIn(f"(h : {scp.EXACT}.relation rho)", main)
        self.assertIn("theorem sound", main)
        self.assertIn("def spec", main)

    def test_local_wire_metadata_is_used(self):
        base = self.outputs[scp.OUT / f"{scp.NAME}ScpBase.lean"]
        self.assertIn("rho 226", base)
        self.assertIn("rho 8972", base)
        self.assertNotIn("rho 12783", base)

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
        path = direct.OUT / f"{direct.default_template_name(key)}.lean"
        text = outputs[path]
        self.assertIn("Templates.Relations.TAssertEq_2f18", text)
        self.assertNotIn("representativeRho", text)
        self.assertNotIn("NoteReshape2x1", text)
        self.assertIn("exact h.1.symm", text)


if __name__ == "__main__":
    unittest.main()
