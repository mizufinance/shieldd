import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk92

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step93L (rho : Nat -> Seg45.F) (r2543 : Seg45.relationRow2543 rho) :
    rho 40773 = seg45Q4Pe94 rho * (1 - rho 39813) := by
  unfold Seg45.relationRow2543 at r2543
  unfold seg45Q4Pe94
  linear_combination -r2543

theorem seg45Q4Step93IlMul (rho : Nat -> Seg45.F) (r2544 : Seg45.relationRow2544 rho) :
    rho 40774 = seg45Q4Il94 rho * (rho 40773) := by
  unfold Seg45.relationRow2544 at r2544
  rw [seg45Q4Step93IlLc rho] at r2544
  linear_combination -r2544

theorem seg45Q4Step93Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il93 rho = seg45Q4Il94 rho + (rho 40773) - (rho 40774) := by
  have hstate : seg45Q4Il93 rho = seg45Q4Il94 rho + seg45Q4IlAtom21 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom21
  ring

theorem seg45Q4Step93Pe (rho : Nat -> Seg45.F) (r2545 : Seg45.relationRow2545 rho) :
    seg45Q4Pe93 rho = seg45Q4Pe94 rho * rho 39813 := by
  unfold Seg45.relationRow2545 at r2545
  unfold seg45Q4Pe93 seg45Q4Pe94
  linear_combination -r2545

theorem seg45Q4Step93 (rho : Nat -> Seg45.F) (r2543 : Seg45.relationRow2543 rho) (r2544 : Seg45.relationRow2544 rho) (r2545 : Seg45.relationRow2545 rho) :
    seg45Q4Pe93 rho = seg45Q4Pe94 rho * rho 39813 ∧
    seg45Q4Il93 rho = seg45Q4Il94 rho + seg45Q4Pe94 rho * (1 - rho 39813) -
      seg45Q4Il94 rho * (seg45Q4Pe94 rho * (1 - rho 39813)) := by
  constructor
  · exact seg45Q4Step93Pe rho r2545
  · rw [seg45Q4Step93Acc rho, seg45Q4Step93L rho r2543, seg45Q4Step93IlMul rho r2544, seg45Q4Step93L rho r2543]

theorem seg45_q4_chunk93 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 94 (seg45Q4PeState rho 94) (seg45Q4IlState rho 94) := by
  have htail := seg45_q4_chunk92 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2543, r2544, r2545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 93 ≤ n → n < 94 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 93 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step93 rho r2543 r2544 r2545
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 93 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
