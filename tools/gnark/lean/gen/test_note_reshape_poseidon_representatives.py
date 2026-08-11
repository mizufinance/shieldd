from __future__ import annotations

import re
import unittest

import gen_note_reshape_poseidon_representatives as poseidon
import gen_poseidon_bridge as poseidon_bridge


class NoteReshapePoseidonRepresentativesTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = poseidon.generated_files()

    def test_provider_and_benchmark_set(self) -> None:
        self.assertEqual(len(self.outputs), 93)
        self.assertEqual(sum(path.parent == poseidon.OUT for path in self.outputs), 90)
        self.assertEqual(sum(path.parent == poseidon.BENCH for path in self.outputs), 3)
        note = poseidon.NAMES[poseidon.NOTE_KEY]
        self.assertIn(poseidon.OUT / f"{note}Base.lean", self.outputs)
        self.assertEqual(
            sum(path.name.startswith(f"{note}Part") for path in self.outputs),
            86,
        )
        self.assertIn(f"{note}Part85", self.outputs[poseidon.OUT / f"{note}.lean"])

    def test_representative_is_an_active_deployed_profile(self) -> None:
        self.assertEqual(
            poseidon.IR.name,
            "note_reshape1x8-deployed-slice-ir.json",
        )
        self.assertEqual(
            poseidon._segment(poseidon.NOTE_KEY, 430)["proof_template_id"],
            poseidon.NOTE_KEY,
        )

    def test_providers_use_exact_normalized_relations(self) -> None:
        combined = "\n".join(self.outputs.values())
        for marker in (
            "NoteReshape2x1", "representativeRho", "representativeSeating", "Seg9.", "Seg11.",
        ):
            self.assertNotIn(marker, combined)
        for key, name in poseidon.NAMES.items():
            source = self.outputs[poseidon.OUT / f"{name}.lean"]
            self.assertIn(f"Templates.Relations.{name}.relation rho", source, key)
            self.assertIn("theorem sound", source, key)

    def test_note_commitment_and_nullifier_specs_are_not_identity_semantics(self) -> None:
        note = self.outputs[poseidon.OUT / f"{poseidon.NAMES[poseidon.NOTE_KEY]}.lean"]
        nullifier = self.outputs[poseidon.OUT / f"{poseidon.NAMES[poseidon.NULLIFIER_KEY]}.lean"]
        transfer_nullifier = self.outputs[
            poseidon.OUT / f"{poseidon.NAMES[poseidon.TRANSFER_NULLIFIER_KEY]}.lean"
        ]
        self.assertIn("NoteCommitment.spec38", note)
        self.assertIn("permSpec3", nullifier)
        self.assertIn("permSpec3", transfer_nullifier)
        self.assertNotIn(
            "def spec (rho : Nat -> F) : Prop :=\n  relation rho",
            note + nullifier + transfer_nullifier,
        )

    def test_transfer_nullifier_recovers_the_inlined_commitment_boundary(self) -> None:
        extracted, mapping, commitment = poseidon._transfer_nullifier_context()
        self.assertEqual(len(extracted), 62)
        self.assertEqual(
            set(map(int, re.findall(r"\brho (\d+)\b", commitment))),
            set(range(7, 14)),
        )
        self.assertEqual(
            {wire: mapping[wire] for wire in (8, 23, 24, 1637, 1642, 1647, 1652)},
            {
                8: 1,
                23: "stateCommitment rho",
                24: 19,
                1637: 304,
                1642: 309,
                1647: 314,
                1652: 319,
            },
        )
        name = poseidon.NAMES[poseidon.TRANSFER_NULLIFIER_KEY]
        source = self.outputs[poseidon.OUT / f"{name}.lean"]
        self.assertIn("def stateCommitment (rho : Nat → F) : F :=", source)
        self.assertIn("(rho 1) (stateCommitment rho) (rho 19)", source)
        self.assertIn("nullifierDomainLit", source)
        self.assertEqual(
            source.count(
                "@one_mul F baseMulOneClass a"
            ),
            4,
        )
        self.assertEqual(
            source.count(
                "simpa only [stateCommitment, choiceFreeOneMul, "
                "choiceFreeAddAssoc] using h"
            ),
            4,
        )
        self.assertNotIn("stateCommitment, one_mul", source)

    def test_tactic_dependencies_are_explicit(self) -> None:
        for path, source in self.outputs.items():
            if path.parent == poseidon.OUT and "linear_combination" in source:
                self.assertIn("import Mathlib.Tactic.LinearCombination\n", source, path.name)
            if path.parent == poseidon.OUT and "ring_nf" in source:
                self.assertIn("import Mathlib.Tactic.Ring\n", source, path.name)

    def test_note_commitment_bridge_uses_only_reviewed_normalization_tactics(self) -> None:
        note = poseidon.NAMES[poseidon.NOTE_KEY]
        combined = "\n".join(
            source
            for path, source in self.outputs.items()
            if path.name.startswith(f"{note}Part")
        )
        self.assertIn("@add_assoc F part60AddSemigroup", combined)
        self.assertIn("choiceFreeAddAssoc] using h0", combined)
        self.assertNotIn("ring_nf", combined)
        linear_parts = [
            path.name
            for path, source in self.outputs.items()
            if path.name.startswith(f"{note}Part") and "linear_combination" in source
        ]
        self.assertEqual(linear_parts, [f"{note}Part4.lean"])
        part4 = self.outputs[poseidon.OUT / f"{note}Part4.lean"]
        self.assertIn("seg4 (rho 27 - rho 26)", part4)
        self.assertEqual(part4.count("linear_combination h"), 5)
        part60 = self.outputs[poseidon.OUT / f"{note}Part60.lean"]
        self.assertIn("part60AddSemigroup : AddSemigroup F :=", part60)
        part0 = self.outputs[poseidon.OUT / f"{note}Part0.lean"]
        self.assertNotIn("part0AddSemigroup : AddSemigroup F :=", part0)

    def test_generated_providers_seat_choice_free_zmod_operations(self) -> None:
        note = poseidon.NAMES[poseidon.NOTE_KEY]
        nullifier = poseidon.NAMES[poseidon.NULLIFIER_KEY]
        expected_owner = {
            poseidon.OUT / f"{note}Base.lean": "base",
            poseidon.OUT / f"{note}Part60.lean": "part60",
            poseidon.OUT / f"{note}.lean": "provider",
        }
        for path, owner in expected_owner.items():
            source = self.outputs[path]
            self.assertIn(f"{owner}CommRing : CommRing F :=", source, path.name)
            self.assertIn(f"{owner}Ring : Ring F :=", source, path.name)

        nullifier_source = self.outputs[poseidon.OUT / f"{nullifier}.lean"]
        self.assertIn("baseCommRing : CommRing F :=", nullifier_source)

    def test_shared_nullifier_poseidon_provider_is_choice_free(self) -> None:
        self.assertTrue(
            poseidon_bridge.CONFIGS["nullifier"].get("choice_free_zmod"),
        )
        extracted = (
            poseidon.LEAN
            / "ShielddGnarkFormal/Extracted/Deployed/GadgetNullifier310_6eee7c.lean"
        ).read_text()
        self.assertIn(
            "local instance (priority := 2000) : CommRing F := ZMod.commRing _",
            extracted,
        )
        for relative in (
            "Deployed/Poseidon3Link.lean",
            "Deployed/NullifierDeployedBridge.lean",
        ):
            source = (poseidon.LEAN / "ShielddGnarkFormal" / relative).read_text()
            self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod", source)
            self.assertIn(
                "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                source,
            )

        modules = sorted(
            (poseidon.LEAN / "ShielddGnarkFormal/Deployed/Nullifier").glob("*.lean")
        )
        self.assertTrue(modules)
        for path in modules:
            with self.subTest(path=path.name):
                source = path.read_text()
                self.assertIn(
                    "import ShielddGnarkFormal.ChoiceFreeZModCast",
                    source,
                )
                self.assertIn(
                    "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod",
                    source,
                )

    def test_note_commitment_shards_have_disjoint_instance_names(self) -> None:
        note = poseidon.NAMES[poseidon.NOTE_KEY]
        part0 = self.outputs[poseidon.OUT / f"{note}Part0.lean"]
        part1 = self.outputs[poseidon.OUT / f"{note}Part1.lean"]
        self.assertIn("part0Add : Add F :=", part0)
        self.assertNotIn("part1Add : Add F :=", part0)
        self.assertIn("part1Add : Add F :=", part1)
        self.assertNotIn("part0Add : Add F :=", part1)


if __name__ == "__main__":
    unittest.main()
