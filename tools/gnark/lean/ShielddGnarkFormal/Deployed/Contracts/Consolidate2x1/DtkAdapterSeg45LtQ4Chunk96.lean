import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step96L (rho : Nat -> Seg45.F) (r2536 : Seg45.relationRow2536 rho) :
    rho 40766 = seg45Q4Pe97 rho * (1 - rho 39816) := by
  unfold Seg45.relationRow2536 at r2536
  unfold seg45Q4Pe97
  linear_combination -r2536

theorem seg45Q4Step96IlMul (rho : Nat -> Seg45.F) (r2537 : Seg45.relationRow2537 rho) :
    rho 40767 = seg45Q4Il97 rho * (rho 40766) := by
  unfold Seg45.relationRow2537 at r2537
  rw [seg45Q4Step96IlLc rho] at r2537
  linear_combination -r2537

theorem seg45Q4Step96Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il96 rho = seg45Q4Il97 rho + (rho 40766) - (rho 40767) := by
  have hstate : seg45Q4Il96 rho = seg45Q4Il97 rho + seg45Q4IlAtom19 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom19
  ring

theorem seg45Q4Step96Pe (rho : Nat -> Seg45.F) (r2538 : Seg45.relationRow2538 rho) :
    seg45Q4Pe96 rho = seg45Q4Pe97 rho * rho 39816 := by
  unfold Seg45.relationRow2538 at r2538
  unfold seg45Q4Pe96 seg45Q4Pe97
  linear_combination -r2538

theorem seg45Q4Step96 (rho : Nat -> Seg45.F) (r2536 : Seg45.relationRow2536 rho) (r2537 : Seg45.relationRow2537 rho) (r2538 : Seg45.relationRow2538 rho) :
    seg45Q4Pe96 rho = seg45Q4Pe97 rho * rho 39816 ∧
    seg45Q4Il96 rho = seg45Q4Il97 rho + seg45Q4Pe97 rho * (1 - rho 39816) -
      seg45Q4Il97 rho * (seg45Q4Pe97 rho * (1 - rho 39816)) := by
  constructor
  · exact seg45Q4Step96Pe rho r2538
  · rw [seg45Q4Step96Acc rho, seg45Q4Step96L rho r2536, seg45Q4Step96IlMul rho r2537, seg45Q4Step96L rho r2536]

theorem seg45_q4_chunk96 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 97 (seg45Q4PeState rho 97) (seg45Q4IlState rho 97) := by
  have htail := seg45_q4_chunk95 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2536, r2537, r2538, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step96 rho r2536 r2537 r2538
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
