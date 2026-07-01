import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk39

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step40L (rho : Nat -> Seg45.F) (r2644 : Seg45.relationRow2644 rho) :
    rho 40874 = seg45Q4Pe41 rho * (1 - rho 39760) := by
  unfold Seg45.relationRow2644 at r2644
  unfold seg45Q4Pe41
  linear_combination -r2644

theorem seg45Q4Step40IlMul (rho : Nat -> Seg45.F) (r2645 : Seg45.relationRow2645 rho) :
    rho 40875 = seg45Q4Il41 rho * (rho 40874) := by
  unfold Seg45.relationRow2645 at r2645
  rw [seg45Q4Step40IlLc rho] at r2645
  linear_combination -r2645

theorem seg45Q4Step40Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il40 rho = seg45Q4Il41 rho + (rho 40874) - (rho 40875) := by
  have hstate : seg45Q4Il40 rho = seg45Q4Il41 rho + seg45Q4IlAtom46 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom46
  ring

theorem seg45Q4Step40Pe (rho : Nat -> Seg45.F) (r2646 : Seg45.relationRow2646 rho) :
    seg45Q4Pe40 rho = seg45Q4Pe41 rho * rho 39760 := by
  unfold Seg45.relationRow2646 at r2646
  unfold seg45Q4Pe40 seg45Q4Pe41
  linear_combination -r2646

theorem seg45Q4Step40 (rho : Nat -> Seg45.F) (r2644 : Seg45.relationRow2644 rho) (r2645 : Seg45.relationRow2645 rho) (r2646 : Seg45.relationRow2646 rho) :
    seg45Q4Pe40 rho = seg45Q4Pe41 rho * rho 39760 ∧
    seg45Q4Il40 rho = seg45Q4Il41 rho + seg45Q4Pe41 rho * (1 - rho 39760) -
      seg45Q4Il41 rho * (seg45Q4Pe41 rho * (1 - rho 39760)) := by
  constructor
  · exact seg45Q4Step40Pe rho r2646
  · rw [seg45Q4Step40Acc rho, seg45Q4Step40L rho r2644, seg45Q4Step40IlMul rho r2645, seg45Q4Step40L rho r2644]

theorem seg45_q4_chunk40 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 41 (seg45Q4PeState rho 41) (seg45Q4IlState rho 41) := by
  have htail := seg45_q4_chunk39 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, r2644, r2645, r2646, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 40 ≤ n → n < 41 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 40 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step40 rho r2644 r2645 r2646
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 40 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
