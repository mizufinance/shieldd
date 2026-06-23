import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 400000

/-! PROTOTYPE — validate the witness-reconstruction that every deployed Poseidon
segment bridge will use. The deployed flat slice constant-folds the round-constant
add into the S-box squaring (`(i+c)*(i+c) = v0`), eliminating the structured
`g0 = add State[i] Consts[i]` wire. This file proves that one deployed S-box's
flat rows imply the *structured* `poseidonFullRound_7_7` gate sequence
(`g0 = i+c ∧ g1 = g0*g0 ∧ … ∧ g5 = g4*g0`) by re-introducing `g0 := i+c`
existentially. If this discharges cleanly, the generic segmented generator only
has to emit this shape per S-box. -/

namespace Shieldd.GnarkFormal.Deployed.PoseidonSegmentProto

variable {F : Type} [Field F]

/-- The deployed flat first-S-box rows (rows 0–4 of the note_commitment slice),
constant `c` left abstract. -/
def deployedSBox (c i v0 v1 v2 v3 v4 : F) : Prop :=
  (c + i) * (c + i) = v0 ∧
  v0 * v0 = v1 ∧
  v1 * v1 = v2 ∧
  v2 * v2 = v3 ∧
  v3 * (c + i) = v4

/-- The structured `poseidonFullRound_7_7` S-box gate sequence (g0…g5). -/
def structuredSBox (c i : F) (k : F → F → F → F → F → F → Prop) : Prop :=
  ∃ g0, g0 = c + i ∧
  ∃ g1, g1 = g0 * g0 ∧
  ∃ g2, g2 = g1 * g1 ∧
  ∃ g3, g3 = g2 * g2 ∧
  ∃ g4, g4 = g3 * g3 ∧
  ∃ g5, g5 = g4 * g0 ∧ k g0 g1 g2 g3 g4 g5

/-- Witness reconstruction: the deployed flat S-box implies the structured gate
sequence, with the S-box output `v4` threaded to the continuation as `g5`. -/
theorem sbox_reconstruct (c i v0 v1 v2 v3 v4 : F)
    (k : F → F → F → F → F → F → Prop)
    (h : deployedSBox c i v0 v1 v2 v3 v4)
    (hk : k (c + i) v0 v1 v2 v3 v4) :
    structuredSBox c i k := by
  obtain ⟨r0, r1, r2, r3, r4⟩ := h
  exact ⟨c + i, rfl, v0, r0.symm, v1, r1.symm, v2, r2.symm, v3, r3.symm, v4, r4.symm, hk⟩

end Shieldd.GnarkFormal.Deployed.PoseidonSegmentProto
