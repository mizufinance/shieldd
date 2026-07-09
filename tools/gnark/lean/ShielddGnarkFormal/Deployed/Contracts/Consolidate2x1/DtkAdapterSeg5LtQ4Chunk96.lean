import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step96L (rho : Nat -> Seg5.F) (r2536 : Seg5.relationRow2536 rho) :
    rho 2233 = seg5Q4Pe97 rho * (1 - rho 1283) := by
  unfold Seg5.relationRow2536 at r2536
  unfold seg5Q4Pe97
  linear_combination -r2536

theorem seg5Q4Step96IlMul (rho : Nat -> Seg5.F) (r2537 : Seg5.relationRow2537 rho) :
    rho 2234 = seg5Q4Il97 rho * (rho 2233) := by
  unfold Seg5.relationRow2537 at r2537
  rw [seg5Q4Step96IlLc rho] at r2537
  linear_combination -r2537

theorem seg5Q4Step96Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il96 rho = seg5Q4Il97 rho + (rho 2233) - (rho 2234) := by
  have hstate : seg5Q4Il96 rho = seg5Q4Il97 rho + seg5Q4IlAtom19 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom19
  ring

theorem seg5Q4Step96Pe (rho : Nat -> Seg5.F) (r2538 : Seg5.relationRow2538 rho) :
    seg5Q4Pe96 rho = seg5Q4Pe97 rho * rho 1283 := by
  unfold Seg5.relationRow2538 at r2538
  unfold seg5Q4Pe96 seg5Q4Pe97
  linear_combination -r2538

theorem seg5Q4Step96 (rho : Nat -> Seg5.F) (r2536 : Seg5.relationRow2536 rho) (r2537 : Seg5.relationRow2537 rho) (r2538 : Seg5.relationRow2538 rho) :
    seg5Q4Pe96 rho = seg5Q4Pe97 rho * rho 1283 ∧
    seg5Q4Il96 rho = seg5Q4Il97 rho + seg5Q4Pe97 rho * (1 - rho 1283) -
      seg5Q4Il97 rho * (seg5Q4Pe97 rho * (1 - rho 1283)) := by
  constructor
  · exact seg5Q4Step96Pe rho r2538
  · rw [seg5Q4Step96Acc rho, seg5Q4Step96L rho r2536, seg5Q4Step96IlMul rho r2537, seg5Q4Step96L rho r2536]

theorem seg5_q4_chunk96 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 97 (seg5Q4PeState rho 97) (seg5Q4IlState rho 97) := by
  have htail := seg5_q4_chunk95 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2536, r2537, r2538, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step96 rho r2536 r2537 r2538
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
