import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step31L (rho : Nat -> Seg5.F) (r2661 : Seg5.relationRow2661 rho) :
    rho 2358 = seg5Q4Pe32 rho * (1 - rho 1218) := by
  unfold Seg5.relationRow2661 at r2661
  unfold seg5Q4Pe32
  linear_combination -r2661

theorem seg5Q4Step31IlMul (rho : Nat -> Seg5.F) (r2662 : Seg5.relationRow2662 rho) :
    rho 2359 = seg5Q4Il32 rho * (rho 2358) := by
  unfold Seg5.relationRow2662 at r2662
  rw [seg5Q4Step31IlLc rho] at r2662
  linear_combination -r2662

theorem seg5Q4Step31Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il31 rho = seg5Q4Il32 rho + (rho 2358) - (rho 2359) := by
  have hstate : seg5Q4Il31 rho = seg5Q4Il32 rho + seg5Q4IlAtom50 rho + (-1 : Seg5.F) * seg5Q4IlAtom51 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom50 seg5Q4IlAtom51
  ring

theorem seg5Q4Step31Pe (rho : Nat -> Seg5.F) (r2663 : Seg5.relationRow2663 rho) :
    seg5Q4Pe31 rho = seg5Q4Pe32 rho * rho 1218 := by
  unfold Seg5.relationRow2663 at r2663
  unfold seg5Q4Pe31 seg5Q4Pe32
  linear_combination -r2663

theorem seg5Q4Step31 (rho : Nat -> Seg5.F) (r2661 : Seg5.relationRow2661 rho) (r2662 : Seg5.relationRow2662 rho) (r2663 : Seg5.relationRow2663 rho) :
    seg5Q4Pe31 rho = seg5Q4Pe32 rho * rho 1218 ∧
    seg5Q4Il31 rho = seg5Q4Il32 rho + seg5Q4Pe32 rho * (1 - rho 1218) -
      seg5Q4Il32 rho * (seg5Q4Pe32 rho * (1 - rho 1218)) := by
  constructor
  · exact seg5Q4Step31Pe rho r2663
  · rw [seg5Q4Step31Acc rho, seg5Q4Step31L rho r2661, seg5Q4Step31IlMul rho r2662, seg5Q4Step31L rho r2661]

theorem seg5_q4_chunk31 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 32 (seg5Q4PeState rho 32) (seg5Q4IlState rho 32) := by
  have htail := seg5_q4_chunk30 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2661, r2662, r2663, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step31 rho r2661 r2662 r2663
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
