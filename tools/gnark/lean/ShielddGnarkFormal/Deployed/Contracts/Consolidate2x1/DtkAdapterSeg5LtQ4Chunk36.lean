import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step36L (rho : Nat -> Seg5.F) (r2652 : Seg5.relationRow2652 rho) :
    rho 2349 = seg5Q4Pe37 rho * (1 - rho 1223) := by
  unfold Seg5.relationRow2652 at r2652
  unfold seg5Q4Pe37
  linear_combination -r2652

theorem seg5Q4Step36IlMul (rho : Nat -> Seg5.F) (r2653 : Seg5.relationRow2653 rho) :
    rho 2350 = seg5Q4Il37 rho * (rho 2349) := by
  unfold Seg5.relationRow2653 at r2653
  rw [seg5Q4Step36IlLc rho] at r2653
  linear_combination -r2653

theorem seg5Q4Step36Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il36 rho = seg5Q4Il37 rho + (rho 2349) - (rho 2350) := by
  have hstate : seg5Q4Il36 rho = seg5Q4Il37 rho + seg5Q4IlAtom48 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom48
  ring

theorem seg5Q4Step36Pe (rho : Nat -> Seg5.F) (r2654 : Seg5.relationRow2654 rho) :
    seg5Q4Pe36 rho = seg5Q4Pe37 rho * rho 1223 := by
  unfold Seg5.relationRow2654 at r2654
  unfold seg5Q4Pe36 seg5Q4Pe37
  linear_combination -r2654

theorem seg5Q4Step36 (rho : Nat -> Seg5.F) (r2652 : Seg5.relationRow2652 rho) (r2653 : Seg5.relationRow2653 rho) (r2654 : Seg5.relationRow2654 rho) :
    seg5Q4Pe36 rho = seg5Q4Pe37 rho * rho 1223 ∧
    seg5Q4Il36 rho = seg5Q4Il37 rho + seg5Q4Pe37 rho * (1 - rho 1223) -
      seg5Q4Il37 rho * (seg5Q4Pe37 rho * (1 - rho 1223)) := by
  constructor
  · exact seg5Q4Step36Pe rho r2654
  · rw [seg5Q4Step36Acc rho, seg5Q4Step36L rho r2652, seg5Q4Step36IlMul rho r2653, seg5Q4Step36L rho r2652]

theorem seg5_q4_chunk36 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 37 (seg5Q4PeState rho 37) (seg5Q4IlState rho 37) := by
  have htail := seg5_q4_chunk35 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2652, r2653, r2654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step36 rho r2652 r2653 r2654
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
