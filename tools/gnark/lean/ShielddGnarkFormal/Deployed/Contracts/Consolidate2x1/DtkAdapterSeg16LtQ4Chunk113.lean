import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step113L (rho : Nat -> Seg16.F) (r2497 : Seg16.relationRow2497 rho) :
    rho 15071 = seg16Q4Pe114 rho * (1 - rho 14177) := by
  unfold Seg16.relationRow2497 at r2497
  unfold seg16Q4Pe114
  linear_combination -r2497

theorem seg16Q4Step113IlMul (rho : Nat -> Seg16.F) (r2498 : Seg16.relationRow2498 rho) :
    rho 15072 = seg16Q4Il114 rho * (rho 15071) := by
  unfold Seg16.relationRow2498 at r2498
  rw [seg16Q4Il114Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6
  linear_combination -r2498

theorem seg16Q4Step113Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il113 rho = seg16Q4Il114 rho + (rho 15071) - (rho 15072) := by
  have hstate : seg16Q4Il113 rho = seg16Q4Il114 rho + seg16Q4IlAtom7 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom7
  ring

theorem seg16Q4Step113Pe (rho : Nat -> Seg16.F) (r2499 : Seg16.relationRow2499 rho) :
    seg16Q4Pe113 rho = seg16Q4Pe114 rho * rho 14177 := by
  unfold Seg16.relationRow2499 at r2499
  unfold seg16Q4Pe113 seg16Q4Pe114
  linear_combination -r2499

theorem seg16Q4Step113 (rho : Nat -> Seg16.F) (r2497 : Seg16.relationRow2497 rho) (r2498 : Seg16.relationRow2498 rho) (r2499 : Seg16.relationRow2499 rho) :
    seg16Q4Pe113 rho = seg16Q4Pe114 rho * rho 14177 ∧
    seg16Q4Il113 rho = seg16Q4Il114 rho + seg16Q4Pe114 rho * (1 - rho 14177) -
      seg16Q4Il114 rho * (seg16Q4Pe114 rho * (1 - rho 14177)) := by
  constructor
  · exact seg16Q4Step113Pe rho r2499
  · rw [seg16Q4Step113Acc rho, seg16Q4Step113L rho r2497, seg16Q4Step113IlMul rho r2498, seg16Q4Step113L rho r2497]

theorem seg16_q4_chunk113 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 114 (seg16Q4PeState rho 114) (seg16Q4IlState rho 114) := by
  have htail := seg16_q4_chunk112 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2497, r2498, r2499, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step113 rho r2497 r2498 r2499
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
