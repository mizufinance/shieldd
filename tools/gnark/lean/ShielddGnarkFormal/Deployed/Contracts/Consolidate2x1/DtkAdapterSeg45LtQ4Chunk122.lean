import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk121

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step122L (rho : Nat -> Seg45.F) (r2476 : Seg45.relationRow2476 rho) :
    rho 40706 = seg45Q4Pe123 rho * (1 - rho 39842) := by
  unfold Seg45.relationRow2476 at r2476
  unfold seg45Q4Pe123
  linear_combination -r2476

theorem seg45Q4Step122IlMul (rho : Nat -> Seg45.F) (r2477 : Seg45.relationRow2477 rho) :
    rho 40707 = seg45Q4Il123 rho * (rho 40706) := by
  unfold Seg45.relationRow2477 at r2477
  rw [seg45Q4Il123Atoms rho]
  unfold seg45Q4IlAtom0
  linear_combination -r2477

theorem seg45Q4Step122Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il122 rho = seg45Q4Il123 rho + (rho 40706) - (rho 40707) := by
  have hstate : seg45Q4Il122 rho = seg45Q4Il123 rho + seg45Q4IlAtom1 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom1
  ring

theorem seg45Q4Step122Pe (rho : Nat -> Seg45.F) (r2478 : Seg45.relationRow2478 rho) :
    seg45Q4Pe122 rho = seg45Q4Pe123 rho * rho 39842 := by
  unfold Seg45.relationRow2478 at r2478
  unfold seg45Q4Pe122 seg45Q4Pe123
  linear_combination -r2478

theorem seg45Q4Step122 (rho : Nat -> Seg45.F) (r2476 : Seg45.relationRow2476 rho) (r2477 : Seg45.relationRow2477 rho) (r2478 : Seg45.relationRow2478 rho) :
    seg45Q4Pe122 rho = seg45Q4Pe123 rho * rho 39842 ∧
    seg45Q4Il122 rho = seg45Q4Il123 rho + seg45Q4Pe123 rho * (1 - rho 39842) -
      seg45Q4Il123 rho * (seg45Q4Pe123 rho * (1 - rho 39842)) := by
  constructor
  · exact seg45Q4Step122Pe rho r2478
  · rw [seg45Q4Step122Acc rho, seg45Q4Step122L rho r2476, seg45Q4Step122IlMul rho r2477, seg45Q4Step122L rho r2476]

theorem seg45_q4_chunk122 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 123 (seg45Q4PeState rho 123) (seg45Q4IlState rho 123) := by
  have htail := seg45_q4_chunk121 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2476, r2477, r2478, _⟩
  have hsteps : ∀ n, 122 ≤ n → n < 123 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 122 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step122 rho r2476 r2477 r2478
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 122 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
