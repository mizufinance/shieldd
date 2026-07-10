import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step91L (rho : Nat -> Seg5.F) (r2549 : Seg5.relationRow2549 rho) :
    rho 2246 = seg5Q4Pe92 rho * (1 - rho 1278) := by
  unfold Seg5.relationRow2549 at r2549
  unfold seg5Q4Pe92
  linear_combination -r2549

theorem seg5Q4Step91IlMul (rho : Nat -> Seg5.F) (r2550 : Seg5.relationRow2550 rho) :
    rho 2247 = seg5Q4Il92 rho * (rho 2246) := by
  unfold Seg5.relationRow2550 at r2550
  rw [seg5Q4Step91IlLc rho] at r2550
  linear_combination -r2550

theorem seg5Q4Step91Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il91 rho = seg5Q4Il92 rho + (rho 2246) - (rho 2247) := by
  have hstate : seg5Q4Il91 rho = seg5Q4Il92 rho + seg5Q4IlAtom23 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom23
  ring

theorem seg5Q4Step91Pe (rho : Nat -> Seg5.F) (r2551 : Seg5.relationRow2551 rho) :
    seg5Q4Pe91 rho = seg5Q4Pe92 rho * rho 1278 := by
  unfold Seg5.relationRow2551 at r2551
  unfold seg5Q4Pe91 seg5Q4Pe92
  linear_combination -r2551

theorem seg5Q4Step91 (rho : Nat -> Seg5.F) (r2549 : Seg5.relationRow2549 rho) (r2550 : Seg5.relationRow2550 rho) (r2551 : Seg5.relationRow2551 rho) :
    seg5Q4Pe91 rho = seg5Q4Pe92 rho * rho 1278 ∧
    seg5Q4Il91 rho = seg5Q4Il92 rho + seg5Q4Pe92 rho * (1 - rho 1278) -
      seg5Q4Il92 rho * (seg5Q4Pe92 rho * (1 - rho 1278)) := by
  constructor
  · exact seg5Q4Step91Pe rho r2551
  · rw [seg5Q4Step91Acc rho, seg5Q4Step91L rho r2549, seg5Q4Step91IlMul rho r2550, seg5Q4Step91L rho r2549]

theorem seg5_q4_chunk91 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 92 (seg5Q4PeState rho 92) (seg5Q4IlState rho 92) := by
  have htail := seg5_q4_chunk90 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2549, r2550, r2551, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 91 ≤ n → n < 92 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 91 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step91 rho r2549 r2550 r2551
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 91 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
