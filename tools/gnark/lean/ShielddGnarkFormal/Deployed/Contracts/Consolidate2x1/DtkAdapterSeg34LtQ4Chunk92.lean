import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk91

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step92L (rho : Nat -> Seg34.F) (r2546 : Seg34.relationRow2546 rho) :
    rho 33820 = seg34Q4Pe93 rho * (1 - rho 32856) := by
  unfold Seg34.relationRow2546 at r2546
  unfold seg34Q4Pe93
  linear_combination -r2546

theorem seg34Q4Step92IlMul (rho : Nat -> Seg34.F) (r2547 : Seg34.relationRow2547 rho) :
    rho 33821 = seg34Q4Il93 rho * (rho 33820) := by
  unfold Seg34.relationRow2547 at r2547
  rw [seg34Q4Step92IlLc rho] at r2547
  linear_combination -r2547

theorem seg34Q4Step92Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il92 rho = seg34Q4Il93 rho + (rho 33820) - (rho 33821) := by
  have hstate : seg34Q4Il92 rho = seg34Q4Il93 rho + seg34Q4IlAtom22 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom22
  ring

theorem seg34Q4Step92Pe (rho : Nat -> Seg34.F) (r2548 : Seg34.relationRow2548 rho) :
    seg34Q4Pe92 rho = seg34Q4Pe93 rho * rho 32856 := by
  unfold Seg34.relationRow2548 at r2548
  unfold seg34Q4Pe92 seg34Q4Pe93
  linear_combination -r2548

theorem seg34Q4Step92 (rho : Nat -> Seg34.F) (r2546 : Seg34.relationRow2546 rho) (r2547 : Seg34.relationRow2547 rho) (r2548 : Seg34.relationRow2548 rho) :
    seg34Q4Pe92 rho = seg34Q4Pe93 rho * rho 32856 ∧
    seg34Q4Il92 rho = seg34Q4Il93 rho + seg34Q4Pe93 rho * (1 - rho 32856) -
      seg34Q4Il93 rho * (seg34Q4Pe93 rho * (1 - rho 32856)) := by
  constructor
  · exact seg34Q4Step92Pe rho r2548
  · rw [seg34Q4Step92Acc rho, seg34Q4Step92L rho r2546, seg34Q4Step92IlMul rho r2547, seg34Q4Step92L rho r2546]

theorem seg34_q4_chunk92 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 93 (seg34Q4PeState rho 93) (seg34Q4IlState rho 93) := by
  have htail := seg34_q4_chunk91 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2546, r2547, r2548, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 92 ≤ n → n < 93 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 92 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step92 rho r2546 r2547 r2548
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 92 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
