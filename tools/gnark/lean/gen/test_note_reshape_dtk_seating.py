from __future__ import annotations

import copy
import unittest

import gen_note_reshape_dtk_seating as dtk
from note_reshape_adapter_model import Deployment


class NoteReshapeDtkSeatingTests(unittest.TestCase):
    def test_discovers_exact_window2_joins(self) -> None:
        for circuit in dtk.SUPPORTED:
            with self.subTest(circuit=circuit):
                config = dtk.load_config(circuit)
                self.assertEqual(
                    (config["dtk"], config["compress"], config["non_identity"]),
                    (7, 9, 8) if circuit.endswith("1x8") else (17, 19, 18),
                )
                self.assertNotEqual(config["x0"], config["x1"])
                self.assertNotEqual(config["y0"], config["y1"])

    def test_outputs_are_bounded_and_exact(self) -> None:
        outputs = dtk.generated_files()
        self.assertEqual(
            {path.name for path in outputs},
            {"NoteReshape1x8DtkSeating.lean", "NoteReshape8x1DtkSeating.lean"},
        )
        for source in outputs.values():
            self.assertIn("wireSeating 4961", source)
            self.assertIn("wireSeating 4969", source)
            self.assertIn("nonIdentityXWires", source)
            self.assertNotIn("List.range", source)
            self.assertNotIn("Perm", source)

    def test_rejects_changed_window2_term(self) -> None:
        model = Deployment.load("note_reshape1x8", "NoteReshape1x8", (1, 8))
        manifest = copy.deepcopy(model.manifest)
        ir = copy.deepcopy(model.ir)
        binding = next(
            item for item in manifest["semantic_bindings"]
            if item["name"] == "shared.transmission.computed"
        )
        binding["expressions"][0]["terms"][0]["coefficient"] = "2"
        changed = Deployment.from_data(
            "note_reshape1x8", "NoteReshape1x8", (1, 8), manifest, ir
        )
        with self.assertRaisesRegex(ValueError, "exact Window2 two-term"):
            dtk.config_from_model(changed)


if __name__ == "__main__":
    unittest.main()
