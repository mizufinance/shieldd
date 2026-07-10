import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step113L (rho : Nat -> Seg5.F) (r2497 : Seg5.relationRow2497 rho) :
    rho 2194 = seg5Q4Pe114 rho * (1 - rho 1300) := by
  unfold Seg5.relationRow2497 at r2497
  unfold seg5Q4Pe114
  linear_combination -r2497

theorem seg5Q4Step113IlMul (rho : Nat -> Seg5.F) (r2498 : Seg5.relationRow2498 rho) :
    rho 2195 = seg5Q4Il114 rho * (rho 2194) := by
  unfold Seg5.relationRow2498 at r2498
  rw [seg5Q4Il114Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6
  linear_combination -r2498

theorem seg5Q4Step113Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il113 rho = seg5Q4Il114 rho + (rho 2194) - (rho 2195) := by
  have hstate : seg5Q4Il113 rho = seg5Q4Il114 rho + seg5Q4IlAtom7 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom7
  ring

theorem seg5Q4Step113Pe (rho : Nat -> Seg5.F) (r2499 : Seg5.relationRow2499 rho) :
    seg5Q4Pe113 rho = seg5Q4Pe114 rho * rho 1300 := by
  unfold Seg5.relationRow2499 at r2499
  unfold seg5Q4Pe113 seg5Q4Pe114
  linear_combination -r2499

theorem seg5Q4Step113 (rho : Nat -> Seg5.F) (r2497 : Seg5.relationRow2497 rho) (r2498 : Seg5.relationRow2498 rho) (r2499 : Seg5.relationRow2499 rho) :
    seg5Q4Pe113 rho = seg5Q4Pe114 rho * rho 1300 ∧
    seg5Q4Il113 rho = seg5Q4Il114 rho + seg5Q4Pe114 rho * (1 - rho 1300) -
      seg5Q4Il114 rho * (seg5Q4Pe114 rho * (1 - rho 1300)) := by
  constructor
  · exact seg5Q4Step113Pe rho r2499
  · rw [seg5Q4Step113Acc rho, seg5Q4Step113L rho r2497, seg5Q4Step113IlMul rho r2498, seg5Q4Step113L rho r2497]

theorem seg5_q4_chunk113 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 114 (seg5Q4PeState rho 114) (seg5Q4IlState rho 114) := by
  have htail := seg5_q4_chunk112 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2497, r2498, r2499, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step113 rho r2497 r2498 r2499
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
