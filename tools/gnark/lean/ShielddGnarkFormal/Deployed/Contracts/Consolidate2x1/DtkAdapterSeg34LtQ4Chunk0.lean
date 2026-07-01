import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step0L (rho : Nat -> Seg34.F) (r2712 : Seg34.relationRow2712 rho) :
    rho 33986 = seg34Q4Pe1 rho * (1 - rho 32764) := by
  unfold Seg34.relationRow2712 at r2712
  unfold seg34Q4Pe1
  linear_combination -r2712

theorem seg34Q4Step0IlMul (rho : Nat -> Seg34.F) (r2713 : Seg34.relationRow2713 rho) :
    rho 33987 = seg34Q4Il1 rho * (rho 33986) := by
  unfold Seg34.relationRow2713 at r2713
  rw [seg34Q4Step0IlLc rho] at r2713
  linear_combination -r2713

theorem seg34Q4Step0Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il0 rho = seg34Q4Il1 rho + (rho 33986) - (rho 33987) := by
  have hstate : seg34Q4Il0 rho = seg34Q4Il1 rho + seg34Q4IlAtom61 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom61
  ring

theorem seg34Q4Step0Pe (rho : Nat -> Seg34.F) (r2714 : Seg34.relationRow2714 rho) :
    seg34Q4Pe0 rho = seg34Q4Pe1 rho * rho 32764 := by
  unfold Seg34.relationRow2714 at r2714
  unfold seg34Q4Pe0 seg34Q4Pe1
  linear_combination -r2714

theorem seg34Q4Step0 (rho : Nat -> Seg34.F) (r2712 : Seg34.relationRow2712 rho) (r2713 : Seg34.relationRow2713 rho) (r2714 : Seg34.relationRow2714 rho) :
    seg34Q4Pe0 rho = seg34Q4Pe1 rho * rho 32764 ∧
    seg34Q4Il0 rho = seg34Q4Il1 rho + seg34Q4Pe1 rho * (1 - rho 32764) -
      seg34Q4Il1 rho * (seg34Q4Pe1 rho * (1 - rho 32764)) := by
  constructor
  · exact seg34Q4Step0Pe rho r2714
  · rw [seg34Q4Step0Acc rho, seg34Q4Step0L rho r2712, seg34Q4Step0IlMul rho r2713, seg34Q4Step0L rho r2712]

theorem seg34Q4Guard (rho : Nat -> Seg34.F) (k : Prop) (r2715 : Seg34.relationRow2715 rho) (r2716 : Seg34.relationRow2716 rho) (r2717 : Seg34.relationRow2717 rho) (r2718 : Seg34.relationRow2718 rho) (hk : k) :
    Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k (seg34Q4Il0 rho) := by
  unfold Seg34.relationRow2715 at r2715
  unfold Seg34.relationRow2716 at r2716
  unfold Seg34.relationRow2717 at r2717
  unfold Seg34.relationRow2718 at r2718
  unfold Shieldd.GnarkFormal.DtkBridge.ivkGuardK
  simp only [Shieldd.GnarkFormal.Extracted.IvkModR.Gates, GatesGnark9, GatesGnark8, GatesDef.sub, GatesDef.mul, GatesDef.eq]
  refine ⟨_, rfl, rho 33989, ?_, _, rfl, rho 33991, ?_, ?_, hk⟩
  · refine Shieldd.GnarkFormal.DeployedGadgets.is_zero_of_hint _ (rho 33990) (rho 33989) ?_ ?_
    · linear_combination -r2715
    · linear_combination r2716
  · rw [seg34Q4TerminalIlLc rho] at r2717
    linear_combination -r2717
  · linear_combination r2718

theorem seg34_q4_chunk0 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 1 (seg34Q4PeState rho 1) (seg34Q4IlState rho 1) := by
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2712, r2713, r2714, r2715, r2716, r2717, r2718, _⟩
  have hguard := seg34Q4Guard rho k r2715 r2716 r2717 r2718 hk
  have htail : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 0 (seg34Q4PeState rho 0) (seg34Q4IlState rho 0) := by
    simpa only [Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec] using hguard
  have hsteps : ∀ n, 0 ≤ n → n < 1 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 0 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step0 rho r2712 r2713 r2714
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 0 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
