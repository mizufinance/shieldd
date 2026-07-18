from __future__ import annotations

import unittest

import gen_note_reshape_poseidon_representatives as poseidon


class NoteReshapePoseidonRepresentativesTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.outputs = poseidon.generated_files()

    def test_provider_and_benchmark_set(self) -> None:
        self.assertEqual(len(self.outputs), 91)
        self.assertEqual(sum(path.parent == poseidon.OUT for path in self.outputs), 89)
        self.assertEqual(sum(path.parent == poseidon.BENCH for path in self.outputs), 2)
        note = poseidon.NAMES[poseidon.NOTE_KEY]
        self.assertIn(poseidon.OUT / f"{note}Base.lean", self.outputs)
        self.assertEqual(
            sum(path.name.startswith(f"{note}Part") for path in self.outputs),
            86,
        )
        self.assertIn(f"{note}Part85", self.outputs[poseidon.OUT / f"{note}.lean"])

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
        self.assertIn("NoteCommitment.spec38", note)
        self.assertIn("permSpec3", nullifier)
        self.assertNotIn("def spec (rho : Nat -> F) : Prop :=\n  relation rho", note + nullifier)


if __name__ == "__main__":
    unittest.main()
