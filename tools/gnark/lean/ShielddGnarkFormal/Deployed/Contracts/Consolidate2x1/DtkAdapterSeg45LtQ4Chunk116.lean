import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step116L (rho : Nat -> Seg45.F) (r2490 : Seg45.relationRow2490 rho) :
    rho 40720 = seg45Q4Pe117 rho * (1 - rho 39836) := by
  unfold Seg45.relationRow2490 at r2490
  unfold seg45Q4Pe117
  linear_combination -r2490

theorem seg45Q4Step116IlMul (rho : Nat -> Seg45.F) (r2491 : Seg45.relationRow2491 rho) :
    rho 40721 = seg45Q4Il117 rho * (rho 40720) := by
  unfold Seg45.relationRow2491 at r2491
  rw [seg45Q4Il117Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4
  linear_combination -r2491

theorem seg45Q4Step116Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il116 rho = seg45Q4Il117 rho + (rho 40720) - (rho 40721) := by
  have hstate : seg45Q4Il116 rho = seg45Q4Il117 rho + seg45Q4IlAtom5 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom5
  ring

theorem seg45Q4Step116Pe (rho : Nat -> Seg45.F) (r2492 : Seg45.relationRow2492 rho) :
    seg45Q4Pe116 rho = seg45Q4Pe117 rho * rho 39836 := by
  unfold Seg45.relationRow2492 at r2492
  unfold seg45Q4Pe116 seg45Q4Pe117
  linear_combination -r2492

theorem seg45Q4Step116 (rho : Nat -> Seg45.F) (r2490 : Seg45.relationRow2490 rho) (r2491 : Seg45.relationRow2491 rho) (r2492 : Seg45.relationRow2492 rho) :
    seg45Q4Pe116 rho = seg45Q4Pe117 rho * rho 39836 ∧
    seg45Q4Il116 rho = seg45Q4Il117 rho + seg45Q4Pe117 rho * (1 - rho 39836) -
      seg45Q4Il117 rho * (seg45Q4Pe117 rho * (1 - rho 39836)) := by
  constructor
  · exact seg45Q4Step116Pe rho r2492
  · rw [seg45Q4Step116Acc rho, seg45Q4Step116L rho r2490, seg45Q4Step116IlMul rho r2491, seg45Q4Step116L rho r2490]

theorem seg45_q4_chunk116 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 117 (seg45Q4PeState rho 117) (seg45Q4IlState rho 117) := by
  have htail := seg45_q4_chunk115 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, r2490, r2491, r2492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step116 rho r2490 r2491 r2492
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
