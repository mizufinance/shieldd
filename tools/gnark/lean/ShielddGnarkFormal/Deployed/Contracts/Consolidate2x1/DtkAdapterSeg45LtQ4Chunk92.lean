import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk91

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step92L (rho : Nat -> Seg45.F) (r2546 : Seg45.relationRow2546 rho) :
    rho 40776 = seg45Q4Pe93 rho * (1 - rho 39812) := by
  unfold Seg45.relationRow2546 at r2546
  unfold seg45Q4Pe93
  linear_combination -r2546

theorem seg45Q4Step92IlMul (rho : Nat -> Seg45.F) (r2547 : Seg45.relationRow2547 rho) :
    rho 40777 = seg45Q4Il93 rho * (rho 40776) := by
  unfold Seg45.relationRow2547 at r2547
  rw [seg45Q4Step92IlLc rho] at r2547
  linear_combination -r2547

theorem seg45Q4Step92Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il92 rho = seg45Q4Il93 rho + (rho 40776) - (rho 40777) := by
  have hstate : seg45Q4Il92 rho = seg45Q4Il93 rho + seg45Q4IlAtom22 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom22
  ring

theorem seg45Q4Step92Pe (rho : Nat -> Seg45.F) (r2548 : Seg45.relationRow2548 rho) :
    seg45Q4Pe92 rho = seg45Q4Pe93 rho * rho 39812 := by
  unfold Seg45.relationRow2548 at r2548
  unfold seg45Q4Pe92 seg45Q4Pe93
  linear_combination -r2548

theorem seg45Q4Step92 (rho : Nat -> Seg45.F) (r2546 : Seg45.relationRow2546 rho) (r2547 : Seg45.relationRow2547 rho) (r2548 : Seg45.relationRow2548 rho) :
    seg45Q4Pe92 rho = seg45Q4Pe93 rho * rho 39812 ∧
    seg45Q4Il92 rho = seg45Q4Il93 rho + seg45Q4Pe93 rho * (1 - rho 39812) -
      seg45Q4Il93 rho * (seg45Q4Pe93 rho * (1 - rho 39812)) := by
  constructor
  · exact seg45Q4Step92Pe rho r2548
  · rw [seg45Q4Step92Acc rho, seg45Q4Step92L rho r2546, seg45Q4Step92IlMul rho r2547, seg45Q4Step92L rho r2546]

theorem seg45_q4_chunk92 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 93 (seg45Q4PeState rho 93) (seg45Q4IlState rho 93) := by
  have htail := seg45_q4_chunk91 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2546, r2547, r2548, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 92 ≤ n → n < 93 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 92 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step92 rho r2546 r2547 r2548
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 92 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
