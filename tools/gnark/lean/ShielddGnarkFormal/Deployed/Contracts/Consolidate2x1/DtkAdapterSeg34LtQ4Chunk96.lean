import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step96L (rho : Nat -> Seg34.F) (r2536 : Seg34.relationRow2536 rho) :
    rho 33810 = seg34Q4Pe97 rho * (1 - rho 32860) := by
  unfold Seg34.relationRow2536 at r2536
  unfold seg34Q4Pe97
  linear_combination -r2536

theorem seg34Q4Step96IlMul (rho : Nat -> Seg34.F) (r2537 : Seg34.relationRow2537 rho) :
    rho 33811 = seg34Q4Il97 rho * (rho 33810) := by
  unfold Seg34.relationRow2537 at r2537
  rw [seg34Q4Step96IlLc rho] at r2537
  linear_combination -r2537

theorem seg34Q4Step96Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il96 rho = seg34Q4Il97 rho + (rho 33810) - (rho 33811) := by
  have hstate : seg34Q4Il96 rho = seg34Q4Il97 rho + seg34Q4IlAtom19 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom19
  ring

theorem seg34Q4Step96Pe (rho : Nat -> Seg34.F) (r2538 : Seg34.relationRow2538 rho) :
    seg34Q4Pe96 rho = seg34Q4Pe97 rho * rho 32860 := by
  unfold Seg34.relationRow2538 at r2538
  unfold seg34Q4Pe96 seg34Q4Pe97
  linear_combination -r2538

theorem seg34Q4Step96 (rho : Nat -> Seg34.F) (r2536 : Seg34.relationRow2536 rho) (r2537 : Seg34.relationRow2537 rho) (r2538 : Seg34.relationRow2538 rho) :
    seg34Q4Pe96 rho = seg34Q4Pe97 rho * rho 32860 ∧
    seg34Q4Il96 rho = seg34Q4Il97 rho + seg34Q4Pe97 rho * (1 - rho 32860) -
      seg34Q4Il97 rho * (seg34Q4Pe97 rho * (1 - rho 32860)) := by
  constructor
  · exact seg34Q4Step96Pe rho r2538
  · rw [seg34Q4Step96Acc rho, seg34Q4Step96L rho r2536, seg34Q4Step96IlMul rho r2537, seg34Q4Step96L rho r2536]

theorem seg34_q4_chunk96 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 97 (seg34Q4PeState rho 97) (seg34Q4IlState rho 97) := by
  have htail := seg34_q4_chunk95 rho h k hk
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2536, r2537, r2538, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step96 rho r2536 r2537 r2538
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
