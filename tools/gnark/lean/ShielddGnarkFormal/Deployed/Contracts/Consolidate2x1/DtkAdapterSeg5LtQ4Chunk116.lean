import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step116L (rho : Nat -> Seg5.F) (r2490 : Seg5.relationRow2490 rho) :
    rho 2187 = seg5Q4Pe117 rho * (1 - rho 1303) := by
  unfold Seg5.relationRow2490 at r2490
  unfold seg5Q4Pe117
  linear_combination -r2490

theorem seg5Q4Step116IlMul (rho : Nat -> Seg5.F) (r2491 : Seg5.relationRow2491 rho) :
    rho 2188 = seg5Q4Il117 rho * (rho 2187) := by
  unfold Seg5.relationRow2491 at r2491
  rw [seg5Q4Il117Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4
  linear_combination -r2491

theorem seg5Q4Step116Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il116 rho = seg5Q4Il117 rho + (rho 2187) - (rho 2188) := by
  have hstate : seg5Q4Il116 rho = seg5Q4Il117 rho + seg5Q4IlAtom5 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom5
  ring

theorem seg5Q4Step116Pe (rho : Nat -> Seg5.F) (r2492 : Seg5.relationRow2492 rho) :
    seg5Q4Pe116 rho = seg5Q4Pe117 rho * rho 1303 := by
  unfold Seg5.relationRow2492 at r2492
  unfold seg5Q4Pe116 seg5Q4Pe117
  linear_combination -r2492

theorem seg5Q4Step116 (rho : Nat -> Seg5.F) (r2490 : Seg5.relationRow2490 rho) (r2491 : Seg5.relationRow2491 rho) (r2492 : Seg5.relationRow2492 rho) :
    seg5Q4Pe116 rho = seg5Q4Pe117 rho * rho 1303 ∧
    seg5Q4Il116 rho = seg5Q4Il117 rho + seg5Q4Pe117 rho * (1 - rho 1303) -
      seg5Q4Il117 rho * (seg5Q4Pe117 rho * (1 - rho 1303)) := by
  constructor
  · exact seg5Q4Step116Pe rho r2492
  · rw [seg5Q4Step116Acc rho, seg5Q4Step116L rho r2490, seg5Q4Step116IlMul rho r2491, seg5Q4Step116L rho r2490]

theorem seg5_q4_chunk116 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 117 (seg5Q4PeState rho 117) (seg5Q4IlState rho 117) := by
  have htail := seg5_q4_chunk115 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, r2490, r2491, r2492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step116 rho r2490 r2491 r2492
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
