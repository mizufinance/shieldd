import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step39L (rho : Nat -> Seg45.F) (r2647 : Seg45.relationRow2647 rho) :
    rho 40877 = seg45Q4Pe40 rho * (1 - rho 39759) := by
  unfold Seg45.relationRow2647 at r2647
  unfold seg45Q4Pe40
  linear_combination -r2647

theorem seg45Q4Step39IlMul (rho : Nat -> Seg45.F) (r2648 : Seg45.relationRow2648 rho) :
    rho 40878 = seg45Q4Il40 rho * (rho 40877) := by
  unfold Seg45.relationRow2648 at r2648
  rw [seg45Q4Step39IlLc rho] at r2648
  linear_combination -r2648

theorem seg45Q4Step39Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il39 rho = seg45Q4Il40 rho + (rho 40877) - (rho 40878) := by
  have hstate : seg45Q4Il39 rho = seg45Q4Il40 rho + seg45Q4IlAtom47 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom47
  ring

theorem seg45Q4Step39Pe (rho : Nat -> Seg45.F) (r2649 : Seg45.relationRow2649 rho) :
    seg45Q4Pe39 rho = seg45Q4Pe40 rho * rho 39759 := by
  unfold Seg45.relationRow2649 at r2649
  unfold seg45Q4Pe39 seg45Q4Pe40
  linear_combination -r2649

theorem seg45Q4Step39 (rho : Nat -> Seg45.F) (r2647 : Seg45.relationRow2647 rho) (r2648 : Seg45.relationRow2648 rho) (r2649 : Seg45.relationRow2649 rho) :
    seg45Q4Pe39 rho = seg45Q4Pe40 rho * rho 39759 ∧
    seg45Q4Il39 rho = seg45Q4Il40 rho + seg45Q4Pe40 rho * (1 - rho 39759) -
      seg45Q4Il40 rho * (seg45Q4Pe40 rho * (1 - rho 39759)) := by
  constructor
  · exact seg45Q4Step39Pe rho r2649
  · rw [seg45Q4Step39Acc rho, seg45Q4Step39L rho r2647, seg45Q4Step39IlMul rho r2648, seg45Q4Step39L rho r2647]

theorem seg45_q4_chunk39 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 40 (seg45Q4PeState rho 40) (seg45Q4IlState rho 40) := by
  have htail := seg45_q4_chunk38 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, r2647, r2648, r2649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step39 rho r2647 r2648 r2649
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
