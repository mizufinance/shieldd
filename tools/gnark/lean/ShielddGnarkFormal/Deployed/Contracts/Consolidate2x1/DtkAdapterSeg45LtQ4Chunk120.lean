import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk119

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step120L (rho : Nat -> Seg45.F) (r2482 : Seg45.relationRow2482 rho) :
    rho 40712 = seg45Q4Pe121 rho * (1 - rho 39840) := by
  unfold Seg45.relationRow2482 at r2482
  unfold seg45Q4Pe121
  linear_combination -r2482

theorem seg45Q4Step120IlMul (rho : Nat -> Seg45.F) (r2483 : Seg45.relationRow2483 rho) :
    rho 40713 = seg45Q4Il121 rho * (rho 40712) := by
  unfold Seg45.relationRow2483 at r2483
  rw [seg45Q4Il121Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2
  linear_combination -r2483

theorem seg45Q4Step120Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il120 rho = seg45Q4Il121 rho + (rho 40712) - (rho 40713) := by
  have hstate : seg45Q4Il120 rho = seg45Q4Il121 rho + seg45Q4IlAtom3 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom3
  ring

theorem seg45Q4Step120Pe (rho : Nat -> Seg45.F) (r2484 : Seg45.relationRow2484 rho) :
    seg45Q4Pe120 rho = seg45Q4Pe121 rho * rho 39840 := by
  unfold Seg45.relationRow2484 at r2484
  unfold seg45Q4Pe120 seg45Q4Pe121
  linear_combination -r2484

theorem seg45Q4Step120 (rho : Nat -> Seg45.F) (r2482 : Seg45.relationRow2482 rho) (r2483 : Seg45.relationRow2483 rho) (r2484 : Seg45.relationRow2484 rho) :
    seg45Q4Pe120 rho = seg45Q4Pe121 rho * rho 39840 ∧
    seg45Q4Il120 rho = seg45Q4Il121 rho + seg45Q4Pe121 rho * (1 - rho 39840) -
      seg45Q4Il121 rho * (seg45Q4Pe121 rho * (1 - rho 39840)) := by
  constructor
  · exact seg45Q4Step120Pe rho r2484
  · rw [seg45Q4Step120Acc rho, seg45Q4Step120L rho r2482, seg45Q4Step120IlMul rho r2483, seg45Q4Step120L rho r2482]

theorem seg45_q4_chunk120 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 121 (seg45Q4PeState rho 121) (seg45Q4IlState rho 121) := by
  have htail := seg45_q4_chunk119 rho h k hk
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
  rcases p31 with ⟨_, _, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 120 ≤ n → n < 121 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 120 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step120 rho r2482 r2483 r2484
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 120 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
