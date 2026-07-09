import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step15L (rho : Nat -> Seg5.F) (r2689 : Seg5.relationRow2689 rho) :
    rho 2386 = seg5Q4Pe16 rho * (1 - rho 1202) := by
  unfold Seg5.relationRow2689 at r2689
  unfold seg5Q4Pe16
  linear_combination -r2689

theorem seg5Q4Step15IlMul (rho : Nat -> Seg5.F) (r2690 : Seg5.relationRow2690 rho) :
    rho 2387 = seg5Q4Il16 rho * (rho 2386) := by
  unfold Seg5.relationRow2690 at r2690
  rw [seg5Q4Step15IlLc rho] at r2690
  linear_combination -r2690

theorem seg5Q4Step15Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il15 rho = seg5Q4Il16 rho + (rho 2386) - (rho 2387) := by
  have hstate : seg5Q4Il15 rho = seg5Q4Il16 rho + seg5Q4IlAtom57 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom57
  ring

theorem seg5Q4Step15Pe (rho : Nat -> Seg5.F) (r2691 : Seg5.relationRow2691 rho) :
    seg5Q4Pe15 rho = seg5Q4Pe16 rho * rho 1202 := by
  unfold Seg5.relationRow2691 at r2691
  unfold seg5Q4Pe15 seg5Q4Pe16
  linear_combination -r2691

theorem seg5Q4Step15 (rho : Nat -> Seg5.F) (r2689 : Seg5.relationRow2689 rho) (r2690 : Seg5.relationRow2690 rho) (r2691 : Seg5.relationRow2691 rho) :
    seg5Q4Pe15 rho = seg5Q4Pe16 rho * rho 1202 ∧
    seg5Q4Il15 rho = seg5Q4Il16 rho + seg5Q4Pe16 rho * (1 - rho 1202) -
      seg5Q4Il16 rho * (seg5Q4Pe16 rho * (1 - rho 1202)) := by
  constructor
  · exact seg5Q4Step15Pe rho r2691
  · rw [seg5Q4Step15Acc rho, seg5Q4Step15L rho r2689, seg5Q4Step15IlMul rho r2690, seg5Q4Step15L rho r2689]

theorem seg5_q4_chunk15 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 16 (seg5Q4PeState rho 16) (seg5Q4IlState rho 16) := by
  have htail := seg5_q4_chunk14 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2689, r2690, r2691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step15 rho r2689 r2690 r2691
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
