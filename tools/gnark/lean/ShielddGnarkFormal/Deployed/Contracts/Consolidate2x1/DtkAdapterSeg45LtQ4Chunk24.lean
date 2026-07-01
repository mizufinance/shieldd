import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step24L (rho : Nat -> Seg45.F) (r2678 : Seg45.relationRow2678 rho) :
    rho 40908 = seg45Q4Pe25 rho * (1 - rho 39744) := by
  unfold Seg45.relationRow2678 at r2678
  unfold seg45Q4Pe25
  linear_combination -r2678

theorem seg45Q4Step24IlMul (rho : Nat -> Seg45.F) (r2679 : Seg45.relationRow2679 rho) :
    rho 40909 = seg45Q4Il25 rho * (rho 40908) := by
  unfold Seg45.relationRow2679 at r2679
  rw [seg45Q4Step24IlLc rho] at r2679
  linear_combination -r2679

theorem seg45Q4Step24Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il24 rho = seg45Q4Il25 rho + (rho 40908) - (rho 40909) := by
  have hstate : seg45Q4Il24 rho = seg45Q4Il25 rho + seg45Q4IlAtom56 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom56
  ring

theorem seg45Q4Step24Pe (rho : Nat -> Seg45.F) (r2680 : Seg45.relationRow2680 rho) :
    seg45Q4Pe24 rho = seg45Q4Pe25 rho * rho 39744 := by
  unfold Seg45.relationRow2680 at r2680
  unfold seg45Q4Pe24 seg45Q4Pe25
  linear_combination -r2680

theorem seg45Q4Step24 (rho : Nat -> Seg45.F) (r2678 : Seg45.relationRow2678 rho) (r2679 : Seg45.relationRow2679 rho) (r2680 : Seg45.relationRow2680 rho) :
    seg45Q4Pe24 rho = seg45Q4Pe25 rho * rho 39744 ∧
    seg45Q4Il24 rho = seg45Q4Il25 rho + seg45Q4Pe25 rho * (1 - rho 39744) -
      seg45Q4Il25 rho * (seg45Q4Pe25 rho * (1 - rho 39744)) := by
  constructor
  · exact seg45Q4Step24Pe rho r2680
  · rw [seg45Q4Step24Acc rho, seg45Q4Step24L rho r2678, seg45Q4Step24IlMul rho r2679, seg45Q4Step24L rho r2678]

theorem seg45_q4_chunk24 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 25 (seg45Q4PeState rho 25) (seg45Q4IlState rho 25) := by
  have htail := seg45_q4_chunk23 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2678, r2679, r2680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 24 ≤ n → n < 25 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 24 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step24 rho r2678 r2679 r2680
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 24 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
