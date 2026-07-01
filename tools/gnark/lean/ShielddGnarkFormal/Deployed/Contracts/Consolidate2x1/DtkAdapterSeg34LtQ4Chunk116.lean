import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step116L (rho : Nat -> Seg34.F) (r2490 : Seg34.relationRow2490 rho) :
    rho 33764 = seg34Q4Pe117 rho * (1 - rho 32880) := by
  unfold Seg34.relationRow2490 at r2490
  unfold seg34Q4Pe117
  linear_combination -r2490

theorem seg34Q4Step116IlMul (rho : Nat -> Seg34.F) (r2491 : Seg34.relationRow2491 rho) :
    rho 33765 = seg34Q4Il117 rho * (rho 33764) := by
  unfold Seg34.relationRow2491 at r2491
  rw [seg34Q4Il117Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4
  linear_combination -r2491

theorem seg34Q4Step116Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il116 rho = seg34Q4Il117 rho + (rho 33764) - (rho 33765) := by
  have hstate : seg34Q4Il116 rho = seg34Q4Il117 rho + seg34Q4IlAtom5 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom5
  ring

theorem seg34Q4Step116Pe (rho : Nat -> Seg34.F) (r2492 : Seg34.relationRow2492 rho) :
    seg34Q4Pe116 rho = seg34Q4Pe117 rho * rho 32880 := by
  unfold Seg34.relationRow2492 at r2492
  unfold seg34Q4Pe116 seg34Q4Pe117
  linear_combination -r2492

theorem seg34Q4Step116 (rho : Nat -> Seg34.F) (r2490 : Seg34.relationRow2490 rho) (r2491 : Seg34.relationRow2491 rho) (r2492 : Seg34.relationRow2492 rho) :
    seg34Q4Pe116 rho = seg34Q4Pe117 rho * rho 32880 ∧
    seg34Q4Il116 rho = seg34Q4Il117 rho + seg34Q4Pe117 rho * (1 - rho 32880) -
      seg34Q4Il117 rho * (seg34Q4Pe117 rho * (1 - rho 32880)) := by
  constructor
  · exact seg34Q4Step116Pe rho r2492
  · rw [seg34Q4Step116Acc rho, seg34Q4Step116L rho r2490, seg34Q4Step116IlMul rho r2491, seg34Q4Step116L rho r2490]

theorem seg34_q4_chunk116 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 117 (seg34Q4PeState rho 117) (seg34Q4IlState rho 117) := by
  have htail := seg34_q4_chunk115 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, r2490, r2491, r2492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step116 rho r2490 r2491 r2492
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
