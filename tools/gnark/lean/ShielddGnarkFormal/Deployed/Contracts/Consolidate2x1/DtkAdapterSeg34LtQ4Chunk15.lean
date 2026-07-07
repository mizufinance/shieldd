import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step15L (rho : Nat -> Seg34.F) (r2689 : Seg34.relationRow2689 rho) :
    rho 33963 = seg34Q4Pe16 rho * (1 - rho 32779) := by
  unfold Seg34.relationRow2689 at r2689
  unfold seg34Q4Pe16
  linear_combination -r2689

theorem seg34Q4Step15IlMul (rho : Nat -> Seg34.F) (r2690 : Seg34.relationRow2690 rho) :
    rho 33964 = seg34Q4Il16 rho * (rho 33963) := by
  unfold Seg34.relationRow2690 at r2690
  rw [seg34Q4Step15IlLc rho] at r2690
  linear_combination -r2690

theorem seg34Q4Step15Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il15 rho = seg34Q4Il16 rho + (rho 33963) - (rho 33964) := by
  have hstate : seg34Q4Il15 rho = seg34Q4Il16 rho + seg34Q4IlAtom57 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom57
  ring

theorem seg34Q4Step15Pe (rho : Nat -> Seg34.F) (r2691 : Seg34.relationRow2691 rho) :
    seg34Q4Pe15 rho = seg34Q4Pe16 rho * rho 32779 := by
  unfold Seg34.relationRow2691 at r2691
  unfold seg34Q4Pe15 seg34Q4Pe16
  linear_combination -r2691

theorem seg34Q4Step15 (rho : Nat -> Seg34.F) (r2689 : Seg34.relationRow2689 rho) (r2690 : Seg34.relationRow2690 rho) (r2691 : Seg34.relationRow2691 rho) :
    seg34Q4Pe15 rho = seg34Q4Pe16 rho * rho 32779 ∧
    seg34Q4Il15 rho = seg34Q4Il16 rho + seg34Q4Pe16 rho * (1 - rho 32779) -
      seg34Q4Il16 rho * (seg34Q4Pe16 rho * (1 - rho 32779)) := by
  constructor
  · exact seg34Q4Step15Pe rho r2691
  · rw [seg34Q4Step15Acc rho, seg34Q4Step15L rho r2689, seg34Q4Step15IlMul rho r2690, seg34Q4Step15L rho r2689]

theorem seg34_q4_chunk15 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 16 (seg34Q4PeState rho 16) (seg34Q4IlState rho 16) := by
  have htail := seg34_q4_chunk14 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2689, r2690, r2691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step15 rho r2689 r2690 r2691
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
