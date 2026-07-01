import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step113L (rho : Nat -> Seg34.F) (r2497 : Seg34.relationRow2497 rho) :
    rho 33771 = seg34Q4Pe114 rho * (1 - rho 32877) := by
  unfold Seg34.relationRow2497 at r2497
  unfold seg34Q4Pe114
  linear_combination -r2497

theorem seg34Q4Step113IlMul (rho : Nat -> Seg34.F) (r2498 : Seg34.relationRow2498 rho) :
    rho 33772 = seg34Q4Il114 rho * (rho 33771) := by
  unfold Seg34.relationRow2498 at r2498
  rw [seg34Q4Il114Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6
  linear_combination -r2498

theorem seg34Q4Step113Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il113 rho = seg34Q4Il114 rho + (rho 33771) - (rho 33772) := by
  have hstate : seg34Q4Il113 rho = seg34Q4Il114 rho + seg34Q4IlAtom7 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom7
  ring

theorem seg34Q4Step113Pe (rho : Nat -> Seg34.F) (r2499 : Seg34.relationRow2499 rho) :
    seg34Q4Pe113 rho = seg34Q4Pe114 rho * rho 32877 := by
  unfold Seg34.relationRow2499 at r2499
  unfold seg34Q4Pe113 seg34Q4Pe114
  linear_combination -r2499

theorem seg34Q4Step113 (rho : Nat -> Seg34.F) (r2497 : Seg34.relationRow2497 rho) (r2498 : Seg34.relationRow2498 rho) (r2499 : Seg34.relationRow2499 rho) :
    seg34Q4Pe113 rho = seg34Q4Pe114 rho * rho 32877 ∧
    seg34Q4Il113 rho = seg34Q4Il114 rho + seg34Q4Pe114 rho * (1 - rho 32877) -
      seg34Q4Il114 rho * (seg34Q4Pe114 rho * (1 - rho 32877)) := by
  constructor
  · exact seg34Q4Step113Pe rho r2499
  · rw [seg34Q4Step113Acc rho, seg34Q4Step113L rho r2497, seg34Q4Step113IlMul rho r2498, seg34Q4Step113L rho r2497]

theorem seg34_q4_chunk113 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 114 (seg34Q4PeState rho 114) (seg34Q4IlState rho 114) := by
  have htail := seg34_q4_chunk112 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2497, r2498, r2499, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step113 rho r2497 r2498 r2499
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
