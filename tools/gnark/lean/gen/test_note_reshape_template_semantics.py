from __future__ import annotations

import hashlib
import json
import re
import unittest

import gen_note_reshape_template_semantics as gen


class NoteReshapeTemplateSemanticsTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = gen.generated_files()

    def test_generated_file_set_and_bytes_are_pinned(self) -> None:
        self.assertEqual(len(self.outputs), 12699)
        digest = hashlib.sha256()
        for path in sorted(self.outputs, key=lambda item: str(item)):
            digest.update(str(path.relative_to(gen.LEAN)).encode())
            digest.update(b"\0")
            digest.update(self.outputs[path].encode())
            digest.update(b"\0")
        self.assertEqual(
            digest.hexdigest(),
            "056659f703e9a68e54cec83ef34dd1ee9005512068d974337422aea0a52d5c11",
        )

    def test_every_inventory_template_has_one_direct_provider_main(self) -> None:
        inventory = json.loads(gen.INVENTORY.read_text())
        expected = {
            gen.OUT / f"{gen.template_name(template['template_key'])}.lean"
            for template in inventory["templates"]
        }
        actual = expected & self.outputs.keys()
        self.assertEqual(len(expected), 48)
        self.assertEqual(actual, expected)

    def test_generated_family_filenames_use_note_reshape_vocabulary(self) -> None:
        legacy_direction = "con" + "solidate"
        for path in self.outputs:
            relative = str(path.relative_to(gen.LEAN)).lower()
            self.assertNotIn(legacy_direction, relative)
            self.assertNotIn("split1x", relative)

    def test_shared_scalar_trace_is_sharded_one_round_per_module(self) -> None:
        shared = {
            path.name: text
            for path, text in self.outputs.items()
            if path.name.startswith("Poseidon3")
        }
        self.assertEqual(len(shared), 40)
        self.assertIn("Poseidon3Trace.lean", shared)
        self.assertIn("Poseidon3ScalarBase.lean", shared)
        for gate in range(1, 39):
            name = f"Poseidon3ScalarRound{gate:02d}.lean"
            text = shared[name]
            previous = (
                "Poseidon3ScalarBase"
                if gate == 1
                else f"Poseidon3ScalarRound{gate - 1:02d}"
            )
            scalar_imports = re.findall(
                r"^import .*\.(Poseidon3Scalar(?:Base|Round\d+))$", text, re.M
            )
            self.assertEqual(scalar_imports, [previous], name)
            self.assertIn("import ShielddGnarkFormal.Deployed.Poseidon3Link", text)
            self.assertEqual(len(re.findall(r"^def state\d+Lane[0-3] ", text, re.M)), 4)
            for other_gate in range(39):
                if other_gate != gate:
                    self.assertNotRegex(text, rf"^def state{other_gate}Lane", name)
            self.assertIn("theorem state_eq_trace", text)
            self.assertEqual("theorem output_eq_permSpec3" in text, gate == 38)

    def test_round38_rewrites_the_trace_predecessor_without_vector_congruence(self) -> None:
        text = gen.render_poseidon3_scalar_round(38)
        self.assertNotIn("congrArg (fun state : List.Vector", text)
        self.assertEqual(
            text.count(
                "unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics."
                "Poseidon3Trace.state38"
            ),
            2,
        )
        self.assertEqual(
            text.count(
                "rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics."
                "Poseidon3ScalarRound37.state_eq_trace]"
            ),
            2,
        )

    def test_all_synthetic_slots_have_fixed_synthetic_round_zero(self) -> None:
        fixed = {
            path.name: text
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name
            and path.name.endswith("Fixed.lean")
        }
        self.assertEqual(len(fixed), 8)
        for name, text in fixed.items():
            self.assertIn("import ShielddGnarkFormal.Deployed.Poseidon3Link", text)
            self.assertIn("syntheticDummyNullifierDomainLit", text)
            self.assertIn("def domainLane", text)
            self.assertIn("def slotLane", text)
            for lane in range(4):
                self.assertIn(f"def s0_{lane} ", text)
                self.assertIn(f"theorem s0_{lane}_sound", text)
            self.assertNotIn("Shieldd.GnarkFormal.Deployed.Nullifier.s0_", text)
            self.assertNotIn("Shieldd.GnarkFormal.Deployed.Nullifier.arg1_", text)

    def test_every_synthetic_lane_uses_the_exact_normalized_relation(self) -> None:
        lane_pattern = re.compile(
            r"TGadgetSyntheticDummyNullifier_[0-9a-f]+Round(\d+)Lane([0-3])\.lean$"
        )
        lanes = []
        for path, text in self.outputs.items():
            match = lane_pattern.fullmatch(path.name)
            if match is not None:
                lanes.append((path.name, int(match.group(1)), int(match.group(2)), text))
        self.assertEqual(len(lanes), 8 * 39 * 4)
        self.assertEqual({gate for _, gate, _, _ in lanes}, set(range(39)))
        self.assertEqual({lane for _, _, lane, _ in lanes}, set(range(4)))
        for name, gate, lane, text in lanes:
            scalar_module = (
                "Poseidon3ScalarBase"
                if gate == 0
                else f"Poseidon3ScalarRound{gate:02d}"
            )
            self.assertIn(f".{scalar_module}.state{gate}Lane{lane}", text, name)
            self.assertIn("syntheticDummyNullifierDomainLit", text, name)
            self.assertRegex(text, r"\.relationPart\d+ rho", name)
            self.assertRegex(text, r"\.Part\d+\.sound rho p\d+", name)
            self.assertNotIn("fr_lane", text, name)
            self.assertNotRegex(text, r"Poseidon3Trace\.state\d+", name)
            if gate == 1:
                self.assertNotIn(
                    "Shieldd.GnarkFormal.Deployed.Nullifier.s0_", text, name
                )
                self.assertNotIn(
                    "Shieldd.GnarkFormal.Deployed.Nullifier.arg1_", text, name
                )

    def test_synthetic_part_inputs_qualify_relation_atoms(self) -> None:
        parts = [
            (path.name, text)
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name and "Part" in path.name
        ]
        self.assertEqual(len(parts), 8 * 61)
        for name, text in parts:
            self.assertNotRegex(text, r"(?<!\.)\brelationLc\d+\b", name)

    def test_synthetic_lane_closers_do_not_depend_on_redundant_rfl(self) -> None:
        key = next(iter(gen.SYNTHETIC_DUMMY_NULLIFIER))
        name = gen.template_name(key)
        gate1 = self.outputs[gen.OUT / f"{name}Round1Lane0.lean"]
        self.assertIn("ZMod.natCast_eq_natCast_iff'", gate1)
        self.assertIn("linear_combination hc", gate1)
        self.assertRegex(gate1, r"  rw \[ha0, ha1, ha2, ha3\]\n\nend ")
        self.assertNotRegex(gate1, r"rw \[ha0, ha1, ha2, ha3\]\n\s+rfl")

        gate2 = self.outputs[gen.OUT / f"{name}Round2Lane0.lean"]
        self.assertRegex(gate2, r"  rw \[← ha0, ← ha1, ← ha2, ← ha3\]\n\nend ")
        self.assertNotRegex(gate2, r"rw \[[^\n]+\]\n\s+rfl")

    def test_synthetic_aggregation_shape_is_exact(self) -> None:
        synthetic = [
            path.name
            for path in self.outputs
            if "SyntheticDummyNullifier" in path.name
        ]
        self.assertEqual(len([name for name in synthetic if "Part" in name]), 8 * 61)
        self.assertEqual(len([name for name in synthetic if "Round" in name]), 8 * 39 * 4)
        self.assertEqual(len([name for name in synthetic if "Range" in name]), 8 * 9)
        self.assertEqual(len([name for name in synthetic if name.endswith("Fixed.lean")]), 8)
        mains = [
            name
            for name in synthetic
            if not any(marker in name for marker in ("Part", "Round", "Range", "Fixed"))
        ]
        self.assertEqual(len(mains), 8)

    def test_synthetic_aggregators_install_the_prime_instance(self) -> None:
        synthetic_aggregators = {
            path.name: text
            for path, text in self.outputs.items()
            if "SyntheticDummyNullifier" in path.name
            and (
                "Range" in path.name
                or not any(
                    marker in path.name
                    for marker in ("Part", "Round", "Fixed")
                )
            )
        }
        self.assertEqual(len(synthetic_aggregators), 8 * 9 + 8)
        for name, text in synthetic_aggregators.items():
            self.assertIn(
                "import ShielddGnarkFormal.Deployed.PrimeOrderCertificate",
                text,
                name,
            )
            self.assertIn("abbrev Order : Nat :=", text, name)
            self.assertIn(
                "local instance : Fact (Nat.Prime Order) :=", text, name
            )
            self.assertIn("decaf377ScalarFieldPrime", text, name)
            if "Range" not in name:
                self.assertIn(
                    "  unfold spec\n  rw [← ", text, name
                )


if __name__ == "__main__":
    unittest.main()
