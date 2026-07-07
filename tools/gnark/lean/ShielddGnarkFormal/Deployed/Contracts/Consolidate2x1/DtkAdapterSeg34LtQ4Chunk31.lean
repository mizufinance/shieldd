import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step31L (rho : Nat -> Seg34.F) (r2661 : Seg34.relationRow2661 rho) :
    rho 33935 = seg34Q4Pe32 rho * (1 - rho 32795) := by
  unfold Seg34.relationRow2661 at r2661
  unfold seg34Q4Pe32
  linear_combination -r2661

theorem seg34Q4Step31IlMul (rho : Nat -> Seg34.F) (r2662 : Seg34.relationRow2662 rho) :
    rho 33936 = seg34Q4Il32 rho * (rho 33935) := by
  unfold Seg34.relationRow2662 at r2662
  rw [seg34Q4Step31IlLc rho] at r2662
  linear_combination -r2662

theorem seg34Q4Step31Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il31 rho = seg34Q4Il32 rho + (rho 33935) - (rho 33936) := by
  have hstate : seg34Q4Il31 rho = seg34Q4Il32 rho + seg34Q4IlAtom50 rho + (-1 : Seg34.F) * seg34Q4IlAtom51 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom50 seg34Q4IlAtom51
  ring

theorem seg34Q4Step31Pe (rho : Nat -> Seg34.F) (r2663 : Seg34.relationRow2663 rho) :
    seg34Q4Pe31 rho = seg34Q4Pe32 rho * rho 32795 := by
  unfold Seg34.relationRow2663 at r2663
  unfold seg34Q4Pe31 seg34Q4Pe32
  linear_combination -r2663

theorem seg34Q4Step31 (rho : Nat -> Seg34.F) (r2661 : Seg34.relationRow2661 rho) (r2662 : Seg34.relationRow2662 rho) (r2663 : Seg34.relationRow2663 rho) :
    seg34Q4Pe31 rho = seg34Q4Pe32 rho * rho 32795 ∧
    seg34Q4Il31 rho = seg34Q4Il32 rho + seg34Q4Pe32 rho * (1 - rho 32795) -
      seg34Q4Il32 rho * (seg34Q4Pe32 rho * (1 - rho 32795)) := by
  constructor
  · exact seg34Q4Step31Pe rho r2663
  · rw [seg34Q4Step31Acc rho, seg34Q4Step31L rho r2661, seg34Q4Step31IlMul rho r2662, seg34Q4Step31L rho r2661]

theorem seg34_q4_chunk31 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 32 (seg34Q4PeState rho 32) (seg34Q4IlState rho 32) := by
  have htail := seg34_q4_chunk30 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2661, r2662, r2663, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step31 rho r2661 r2662 r2663
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
