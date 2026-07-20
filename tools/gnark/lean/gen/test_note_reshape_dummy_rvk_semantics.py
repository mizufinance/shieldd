from __future__ import annotations

import hashlib
import re
import unittest
from pathlib import Path
from unittest.mock import patch

import gen_note_reshape_dummy_rvk_semantics as gen


class NoteReshapeDummyRvkSemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.recovered = gen.recover()
        cls.outputs = gen.generated_dummy_rvk_semantic_files(Path("/semantic-out"))

    def test_exact_registry_and_normalized_shape_pins(self) -> None:
        self.assertEqual(gen.TEMPLATE_KEY, "decaf.randomized_verification_key.dummy@e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5")
        self.assertEqual((gen.CIRCUIT, gen.SEGMENT), ("note_reshape4x1", 24))
        self.assertEqual((gen.CONSTRAINT_COUNT, gen.LOCAL_WIRE_COUNT), (3618, 3619))

    def test_two_exact_fixed_base_ladders_and_native_tail(self) -> None:
        first, second = gen.LADDERS
        self.assertEqual((first.scalar_wire, first.fused_x, first.fused_y, first.split_x, first.split_y), (252, 256, 257, 1004, 1005))
        self.assertEqual((second.scalar_wire, second.fused_x, second.fused_y, second.split_x, second.split_y), (2057, 2061, 2062, 2809, 2810))
        self.assertEqual((gen.OUT_X, gen.OUT_Y, gen.TAIL_ROWS), (3617, 3618, tuple(range(3610, 3618))))
        for rungs in self.recovered["rungs"]:
            self.assertEqual((len(rungs), sum(not rung.materialized for rung in rungs), sum(rung.materialized for rung in rungs)), (250, 149, 101))

    def test_provider_is_real_equality_and_on_curve(self) -> None:
        combined = "\n".join(self.outputs.values())
        self.assertIn("Decaf377Assumptions.rvk", combined)
        self.assertIn("scalarMulLE 251", combined)
        self.assertIn("EdwardsBridge.onCurve ⟨rho 3617, rho 3618⟩", combined)
        self.assertIn("RvkDeployedRung.deployedTail_addSpec", combined)
        for forbidden in ("fun _ h => h", "axiom ", "native_decide"):
            self.assertNotIn(forbidden, combined)

    def test_deterministic_file_set_and_bytes(self) -> None:
        again = gen.generated_dummy_rvk_semantic_files(Path("/semantic-out"))
        self.assertEqual(self.outputs, again)
        self.assertEqual(len(self.outputs), 111)
        digest = hashlib.sha256()
        for path in sorted(self.outputs, key=str):
            digest.update(path.name.encode())
            digest.update(b"\0")
            digest.update(self.outputs[path].encode())
            digest.update(b"\0")
        self.assertEqual(digest.hexdigest(), "9b394e3e34227ab5daef9788862679e612e30e5338a4a19c95eb5e130585a11f")

    def test_benchmark_set_is_complete(self) -> None:
        self.assertTrue(set(gen.benchmark_candidates(Path("/semantic-out"))).issubset(self.outputs))

    def test_generated_internal_imports_are_closed(self) -> None:
        modules = {path.stem for path in self.outputs}
        prefix = "ShielddGnarkFormal.Deployed.Templates.Semantics."
        for path, source in self.outputs.items():
            for match in re.finditer(r"^import " + re.escape(prefix) + r"(\S+)$", source, re.MULTILINE):
                self.assertIn(match.group(1).split(".")[-1], modules, path.name)

    def test_fail_closed_on_tail_drift(self) -> None:
        rows = list(self.recovered["rows"])
        rows[3615] = (rows[3615][0], rows[3615][1], {999: 1})
        with patch.object(gen, "normalized_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "native-add row 3615"):
                gen.recover()

    def test_fail_closed_on_ladder_drift(self) -> None:
        rows = list(self.recovered["rows"])
        rows[255] = (rows[255][0], rows[255][1], {999: 1})
        with patch.object(gen, "normalized_rows", return_value=rows):
            with self.assertRaisesRegex(ValueError, "DummyKey rung 1"):
                gen.recover()


if __name__ == "__main__":
    unittest.main()
