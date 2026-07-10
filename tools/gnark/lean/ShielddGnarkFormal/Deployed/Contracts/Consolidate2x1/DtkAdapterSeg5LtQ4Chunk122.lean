import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk121

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step122L (rho : Nat -> Seg5.F) (r2476 : Seg5.relationRow2476 rho) :
    rho 2173 = seg5Q4Pe123 rho * (1 - rho 1309) := by
  unfold Seg5.relationRow2476 at r2476
  unfold seg5Q4Pe123
  linear_combination -r2476

theorem seg5Q4Step122IlMul (rho : Nat -> Seg5.F) (r2477 : Seg5.relationRow2477 rho) :
    rho 2174 = seg5Q4Il123 rho * (rho 2173) := by
  unfold Seg5.relationRow2477 at r2477
  rw [seg5Q4Il123Atoms rho]
  unfold seg5Q4IlAtom0
  linear_combination -r2477

theorem seg5Q4Step122Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il122 rho = seg5Q4Il123 rho + (rho 2173) - (rho 2174) := by
  have hstate : seg5Q4Il122 rho = seg5Q4Il123 rho + seg5Q4IlAtom1 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom1
  ring

theorem seg5Q4Step122Pe (rho : Nat -> Seg5.F) (r2478 : Seg5.relationRow2478 rho) :
    seg5Q4Pe122 rho = seg5Q4Pe123 rho * rho 1309 := by
  unfold Seg5.relationRow2478 at r2478
  unfold seg5Q4Pe122 seg5Q4Pe123
  linear_combination -r2478

theorem seg5Q4Step122 (rho : Nat -> Seg5.F) (r2476 : Seg5.relationRow2476 rho) (r2477 : Seg5.relationRow2477 rho) (r2478 : Seg5.relationRow2478 rho) :
    seg5Q4Pe122 rho = seg5Q4Pe123 rho * rho 1309 ∧
    seg5Q4Il122 rho = seg5Q4Il123 rho + seg5Q4Pe123 rho * (1 - rho 1309) -
      seg5Q4Il123 rho * (seg5Q4Pe123 rho * (1 - rho 1309)) := by
  constructor
  · exact seg5Q4Step122Pe rho r2478
  · rw [seg5Q4Step122Acc rho, seg5Q4Step122L rho r2476, seg5Q4Step122IlMul rho r2477, seg5Q4Step122L rho r2476]

theorem seg5_q4_chunk122 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 123 (seg5Q4PeState rho 123) (seg5Q4IlState rho 123) := by
  have htail := seg5_q4_chunk121 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2476, r2477, r2478, _⟩
  have hsteps : ∀ n, 122 ≤ n → n < 123 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 122 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step122 rho r2476 r2477 r2478
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 122 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
