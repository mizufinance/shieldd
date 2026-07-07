import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk88

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step89L (rho : Nat -> Seg34.F) (r2555 : Seg34.relationRow2555 rho) :
    rho 33829 = seg34Q4Pe90 rho * (1 - rho 32853) := by
  unfold Seg34.relationRow2555 at r2555
  unfold seg34Q4Pe90
  linear_combination -r2555

theorem seg34Q4Step89IlMul (rho : Nat -> Seg34.F) (r2556 : Seg34.relationRow2556 rho) :
    rho 33830 = seg34Q4Il90 rho * (rho 33829) := by
  unfold Seg34.relationRow2556 at r2556
  rw [seg34Q4Step89IlLc rho] at r2556
  linear_combination -r2556

theorem seg34Q4Step89Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il89 rho = seg34Q4Il90 rho + (rho 33829) - (rho 33830) := by
  have hstate : seg34Q4Il89 rho = seg34Q4Il90 rho + seg34Q4IlAtom25 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom25
  ring

theorem seg34Q4Step89Pe (rho : Nat -> Seg34.F) (r2557 : Seg34.relationRow2557 rho) :
    seg34Q4Pe89 rho = seg34Q4Pe90 rho * rho 32853 := by
  unfold Seg34.relationRow2557 at r2557
  unfold seg34Q4Pe89 seg34Q4Pe90
  linear_combination -r2557

theorem seg34Q4Step89 (rho : Nat -> Seg34.F) (r2555 : Seg34.relationRow2555 rho) (r2556 : Seg34.relationRow2556 rho) (r2557 : Seg34.relationRow2557 rho) :
    seg34Q4Pe89 rho = seg34Q4Pe90 rho * rho 32853 ∧
    seg34Q4Il89 rho = seg34Q4Il90 rho + seg34Q4Pe90 rho * (1 - rho 32853) -
      seg34Q4Il90 rho * (seg34Q4Pe90 rho * (1 - rho 32853)) := by
  constructor
  · exact seg34Q4Step89Pe rho r2557
  · rw [seg34Q4Step89Acc rho, seg34Q4Step89L rho r2555, seg34Q4Step89IlMul rho r2556, seg34Q4Step89L rho r2555]

theorem seg34_q4_chunk89 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 90 (seg34Q4PeState rho 90) (seg34Q4IlState rho 90) := by
  have htail := seg34_q4_chunk88 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2555, r2556, r2557, _, _⟩
  have hsteps : ∀ n, 89 ≤ n → n < 90 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 89 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step89 rho r2555 r2556 r2557
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 89 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
