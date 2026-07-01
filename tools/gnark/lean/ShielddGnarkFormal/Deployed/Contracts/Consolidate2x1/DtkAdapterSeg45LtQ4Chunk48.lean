import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk47

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step48L (rho : Nat -> Seg45.F) (r2628 : Seg45.relationRow2628 rho) :
    rho 40858 = seg45Q4Pe49 rho * (1 - rho 39768) := by
  unfold Seg45.relationRow2628 at r2628
  unfold seg45Q4Pe49
  linear_combination -r2628

theorem seg45Q4Step48IlMul (rho : Nat -> Seg45.F) (r2629 : Seg45.relationRow2629 rho) :
    rho 40859 = seg45Q4Il49 rho * (rho 40858) := by
  unfold Seg45.relationRow2629 at r2629
  rw [seg45Q4Step48IlLc rho] at r2629
  linear_combination -r2629

theorem seg45Q4Step48Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il48 rho = seg45Q4Il49 rho + (rho 40858) - (rho 40859) := by
  have hstate : seg45Q4Il48 rho = seg45Q4Il49 rho + seg45Q4IlAtom42 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom42
  ring

theorem seg45Q4Step48Pe (rho : Nat -> Seg45.F) (r2630 : Seg45.relationRow2630 rho) :
    seg45Q4Pe48 rho = seg45Q4Pe49 rho * rho 39768 := by
  unfold Seg45.relationRow2630 at r2630
  unfold seg45Q4Pe48 seg45Q4Pe49
  linear_combination -r2630

theorem seg45Q4Step48 (rho : Nat -> Seg45.F) (r2628 : Seg45.relationRow2628 rho) (r2629 : Seg45.relationRow2629 rho) (r2630 : Seg45.relationRow2630 rho) :
    seg45Q4Pe48 rho = seg45Q4Pe49 rho * rho 39768 ∧
    seg45Q4Il48 rho = seg45Q4Il49 rho + seg45Q4Pe49 rho * (1 - rho 39768) -
      seg45Q4Il49 rho * (seg45Q4Pe49 rho * (1 - rho 39768)) := by
  constructor
  · exact seg45Q4Step48Pe rho r2630
  · rw [seg45Q4Step48Acc rho, seg45Q4Step48L rho r2628, seg45Q4Step48IlMul rho r2629, seg45Q4Step48L rho r2628]

theorem seg45_q4_chunk48 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 49 (seg45Q4PeState rho 49) (seg45Q4IlState rho 49) := by
  have htail := seg45_q4_chunk47 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2628, r2629, r2630, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 48 ≤ n → n < 49 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 48 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step48 rho r2628 r2629 r2630
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 48 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
