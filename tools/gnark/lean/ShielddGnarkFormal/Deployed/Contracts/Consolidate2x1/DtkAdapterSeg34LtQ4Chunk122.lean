import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk121

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step122L (rho : Nat -> Seg34.F) (r2476 : Seg34.relationRow2476 rho) :
    rho 33750 = seg34Q4Pe123 rho * (1 - rho 32886) := by
  unfold Seg34.relationRow2476 at r2476
  unfold seg34Q4Pe123
  linear_combination -r2476

theorem seg34Q4Step122IlMul (rho : Nat -> Seg34.F) (r2477 : Seg34.relationRow2477 rho) :
    rho 33751 = seg34Q4Il123 rho * (rho 33750) := by
  unfold Seg34.relationRow2477 at r2477
  rw [seg34Q4Il123Atoms rho]
  unfold seg34Q4IlAtom0
  linear_combination -r2477

theorem seg34Q4Step122Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il122 rho = seg34Q4Il123 rho + (rho 33750) - (rho 33751) := by
  have hstate : seg34Q4Il122 rho = seg34Q4Il123 rho + seg34Q4IlAtom1 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom1
  ring

theorem seg34Q4Step122Pe (rho : Nat -> Seg34.F) (r2478 : Seg34.relationRow2478 rho) :
    seg34Q4Pe122 rho = seg34Q4Pe123 rho * rho 32886 := by
  unfold Seg34.relationRow2478 at r2478
  unfold seg34Q4Pe122 seg34Q4Pe123
  linear_combination -r2478

theorem seg34Q4Step122 (rho : Nat -> Seg34.F) (r2476 : Seg34.relationRow2476 rho) (r2477 : Seg34.relationRow2477 rho) (r2478 : Seg34.relationRow2478 rho) :
    seg34Q4Pe122 rho = seg34Q4Pe123 rho * rho 32886 ∧
    seg34Q4Il122 rho = seg34Q4Il123 rho + seg34Q4Pe123 rho * (1 - rho 32886) -
      seg34Q4Il123 rho * (seg34Q4Pe123 rho * (1 - rho 32886)) := by
  constructor
  · exact seg34Q4Step122Pe rho r2478
  · rw [seg34Q4Step122Acc rho, seg34Q4Step122L rho r2476, seg34Q4Step122IlMul rho r2477, seg34Q4Step122L rho r2476]

theorem seg34_q4_chunk122 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 123 (seg34Q4PeState rho 123) (seg34Q4IlState rho 123) := by
  have htail := seg34_q4_chunk121 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2476, r2477, r2478, _⟩
  have hsteps : ∀ n, 122 ≤ n → n < 123 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 122 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step122 rho r2476 r2477 r2478
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 122 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
