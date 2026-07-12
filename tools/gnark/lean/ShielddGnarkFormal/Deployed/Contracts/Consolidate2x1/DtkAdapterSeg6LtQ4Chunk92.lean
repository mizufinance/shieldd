import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk91

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step92L (rho : Nat -> Seg6.F) (r2546 : Seg6.relationRow2546 rho) :
    rho 2946 = seg6Q4Pe93 rho * (1 - rho 1982) := by
  unfold Seg6.relationRow2546 at r2546
  unfold seg6Q4Pe93
  linear_combination -r2546

theorem seg6Q4Step92IlMul (rho : Nat -> Seg6.F) (r2547 : Seg6.relationRow2547 rho) :
    rho 2947 = seg6Q4Il93 rho * (rho 2946) := by
  unfold Seg6.relationRow2547 at r2547
  rw [seg6Q4Step92IlLc rho] at r2547
  linear_combination -r2547

theorem seg6Q4Step92Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il92 rho = seg6Q4Il93 rho + (rho 2946) - (rho 2947) := by
  have hstate : seg6Q4Il92 rho = seg6Q4Il93 rho + seg6Q4IlAtom22 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom22
  ring

theorem seg6Q4Step92Pe (rho : Nat -> Seg6.F) (r2548 : Seg6.relationRow2548 rho) :
    seg6Q4Pe92 rho = seg6Q4Pe93 rho * rho 1982 := by
  unfold Seg6.relationRow2548 at r2548
  unfold seg6Q4Pe92 seg6Q4Pe93
  linear_combination -r2548

theorem seg6Q4Step92 (rho : Nat -> Seg6.F) (r2546 : Seg6.relationRow2546 rho) (r2547 : Seg6.relationRow2547 rho) (r2548 : Seg6.relationRow2548 rho) :
    seg6Q4Pe92 rho = seg6Q4Pe93 rho * rho 1982 ∧
    seg6Q4Il92 rho = seg6Q4Il93 rho + seg6Q4Pe93 rho * (1 - rho 1982) -
      seg6Q4Il93 rho * (seg6Q4Pe93 rho * (1 - rho 1982)) := by
  constructor
  · exact seg6Q4Step92Pe rho r2548
  · rw [seg6Q4Step92Acc rho, seg6Q4Step92L rho r2546, seg6Q4Step92IlMul rho r2547, seg6Q4Step92L rho r2546]

theorem seg6_q4_chunk92 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 93 (seg6Q4PeState rho 93) (seg6Q4IlState rho 93) := by
  have htail := seg6_q4_chunk91 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2546, r2547, r2548, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 92 ≤ n → n < 93 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 92 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step92 rho r2546 r2547 r2548
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 92 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
