import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step90L (rho : Nat -> Seg45.F) (r2552 : Seg45.relationRow2552 rho) :
    rho 40782 = seg45Q4Pe91 rho * (1 - rho 39810) := by
  unfold Seg45.relationRow2552 at r2552
  unfold seg45Q4Pe91
  linear_combination -r2552

theorem seg45Q4Step90IlMul (rho : Nat -> Seg45.F) (r2553 : Seg45.relationRow2553 rho) :
    rho 40783 = seg45Q4Il91 rho * (rho 40782) := by
  unfold Seg45.relationRow2553 at r2553
  rw [seg45Q4Step90IlLc rho] at r2553
  linear_combination -r2553

theorem seg45Q4Step90Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il90 rho = seg45Q4Il91 rho + (rho 40782) - (rho 40783) := by
  have hstate : seg45Q4Il90 rho = seg45Q4Il91 rho + seg45Q4IlAtom24 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom24
  ring

theorem seg45Q4Step90Pe (rho : Nat -> Seg45.F) (r2554 : Seg45.relationRow2554 rho) :
    seg45Q4Pe90 rho = seg45Q4Pe91 rho * rho 39810 := by
  unfold Seg45.relationRow2554 at r2554
  unfold seg45Q4Pe90 seg45Q4Pe91
  linear_combination -r2554

theorem seg45Q4Step90 (rho : Nat -> Seg45.F) (r2552 : Seg45.relationRow2552 rho) (r2553 : Seg45.relationRow2553 rho) (r2554 : Seg45.relationRow2554 rho) :
    seg45Q4Pe90 rho = seg45Q4Pe91 rho * rho 39810 ∧
    seg45Q4Il90 rho = seg45Q4Il91 rho + seg45Q4Pe91 rho * (1 - rho 39810) -
      seg45Q4Il91 rho * (seg45Q4Pe91 rho * (1 - rho 39810)) := by
  constructor
  · exact seg45Q4Step90Pe rho r2554
  · rw [seg45Q4Step90Acc rho, seg45Q4Step90L rho r2552, seg45Q4Step90IlMul rho r2553, seg45Q4Step90L rho r2552]

theorem seg45_q4_chunk90 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 91 (seg45Q4PeState rho 91) (seg45Q4IlState rho 91) := by
  have htail := seg45_q4_chunk89 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2552, r2553, r2554, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step90 rho r2552 r2553 r2554
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
