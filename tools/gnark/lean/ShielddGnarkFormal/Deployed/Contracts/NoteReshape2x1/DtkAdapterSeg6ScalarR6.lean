import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3571 rho ∧ Seg6.relationRow3572 rho ∧ Seg6.relationRow3573 rho ∧ Seg6.relationRow3574 rho ∧ Seg6.relationRow3575 rho ∧ Seg6.relationRow3576 rho ∧ Seg6.relationRow3577 rho ∧ Seg6.relationRow3578 rho ∧ Seg6.relationRow3579 rho ∧ Seg6.relationRow3580 rho ∧ Seg6.relationRow3581 rho ∧ Seg6.relationRow3582 rho ∧ Seg6.relationRow3583 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583⟩

theorem seg6_rung66 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1956 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩
        ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩
        ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩
        ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩ := by
  obtain ⟨r3571, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583⟩ := seg6_rows66 rho h
  unfold Seg6.relationRow3571 Seg6.relationLc418 at r3571
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3571
  unfold Seg6.relationRow3572 Seg6.relationLc419 at r3572
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3572
  unfold Seg6.relationRow3573 Seg6.relationLc420 at r3573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3573
  unfold Seg6.relationRow3574 at r3574
  unfold Seg6.relationRow3575 at r3575
  unfold Seg6.relationRow3576 at r3576
  unfold Seg6.relationRow3577 Seg6.relationLc421 at r3577
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3577
  unfold Seg6.relationRow3578 Seg6.relationLc422 at r3578
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3578
  unfold Seg6.relationRow3579 at r3579
  unfold Seg6.relationRow3580 at r3580
  unfold Seg6.relationRow3581 at r3581
  unfold Seg6.relationRow3582 at r3582
  unfold Seg6.relationRow3583 at r3583
  have hrung66 (bit : Bool) (hbit : rho 1956 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩
        ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩
        ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩
        ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩ := by
    have hnextx : seg6AccX67 rho = seg6AccX66 rho + rho 3976 := by
      unfold seg6AccX67 seg6AccX66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 66]
      ring
    have hnexty : seg6AccY67 rho = seg6AccY66 rho + rho 3977 := by
      unfold seg6AccY67 seg6AccY66
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 66]
      ring
    have ha0 : (rho 3968 + rho 3969) * (seg6AccX66 rho + seg6AccY66 rho) = rho 3970 := by
      unfold seg6AccX66 seg6AccY66
      linear_combination r3571
    have ha1 : rho 3969 * seg6AccX66 rho = rho 3971 := by
      unfold seg6AccX66
      linear_combination r3572
    have ha2 : rho 3968 * seg6AccY66 rho = rho 3972 := by
      unfold seg6AccY66
      linear_combination r3573
    have ha3 : 3021 * rho 3971 * rho 3972 = rho 3973 := by
      linear_combination r3574
    have ha4 : rho 3974 * (1 + rho 3973) = rho 3971 + rho 3972 := by
      linear_combination r3575
    have ha5 : rho 3975 * (1 - rho 3973) = rho 3970 - rho 3971 - rho 3972 := by
      linear_combination r3576
    have haddx :
        rho 3974 * (1 + 3021 * (rho 3969 * seg6AccX66 rho) * (rho 3968 * seg6AccY66 rho)) =
          rho 3969 * seg6AccX66 rho + rho 3968 * seg6AccY66 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3975 * (1 - 3021 * (rho 3969 * seg6AccX66 rho) * (rho 3968 * seg6AccY66 rho)) =
          (-1) * (rho 3969 * seg6AccX66 rho) - rho 3968 * seg6AccY66 rho +
            (seg6AccY66 rho - seg6AccX66 rho * (-1)) * (rho 3968 + rho 3969) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3975 * (1 - rho 3973) = rho 3970 - rho 3971 - rho 3972 := ha5
        _ = (-1) * rho 3971 - rho 3972 + (seg6AccY66 rho - seg6AccX66 rho * (-1)) * (rho 3968 + rho 3969) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX67 rho = seg6AccX66 rho - Bool.toZMod bit * (seg6AccX66 rho - rho 3974) := by
      have hd : rho 3976 = Bool.toZMod bit * (rho 3974 - seg6AccX66 rho) := by
        rw [← hbit]
        unfold seg6AccX66
        linear_combination -r3577
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY67 rho = seg6AccY66 rho - Bool.toZMod bit * (seg6AccY66 rho - rho 3975) := by
      have hd : rho 3977 = Bool.toZMod bit * (rho 3975 - seg6AccY66 rho) := by
        rw [← hbit]
        unfold seg6AccY66
        linear_combination -r3578
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3968 * rho 3969 = rho 3978 := by linear_combination r3579
    have hd1 : rho 3968 * rho 3968 = rho 3979 := by linear_combination r3580
    have hd2 : rho 3969 * rho 3969 = rho 3980 := by linear_combination r3581
    have hd3 : rho 3981 * (rho 3969 * rho 3969 + rho 3968 * rho 3968 * (-1)) = 2 * (rho 3968 * rho 3969) := by
      rw [hd0, hd1, hd2]
      linear_combination r3582
    have hd4 : rho 3982 * (2 - (rho 3969 * rho 3969 + rho 3968 * rho 3968 * (-1))) = rho 3969 * rho 3969 - rho 3968 * rho 3968 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3583
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX66 rho : Seg6.F), (seg6AccY66 rho : Seg6.F)⟩
      ⟨(rho 3968 : Seg6.F), (rho 3969 : Seg6.F)⟩
      ⟨(rho 3974 : Seg6.F), (rho 3975 : Seg6.F)⟩
      ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩
      ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung66

theorem seg6_rows67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3584 rho ∧ Seg6.relationRow3585 rho ∧ Seg6.relationRow3586 rho ∧ Seg6.relationRow3587 rho ∧ Seg6.relationRow3588 rho ∧ Seg6.relationRow3589 rho ∧ Seg6.relationRow3590 rho ∧ Seg6.relationRow3591 rho ∧ Seg6.relationRow3592 rho ∧ Seg6.relationRow3593 rho ∧ Seg6.relationRow3594 rho ∧ Seg6.relationRow3595 rho ∧ Seg6.relationRow3596 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596, _, _, _⟩
  exact ⟨r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596⟩

theorem seg6_rung67 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1957 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩
        ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩
        ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩
        ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩ := by
  obtain ⟨r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, r3594, r3595, r3596⟩ := seg6_rows67 rho h
  unfold Seg6.relationRow3584 Seg6.relationLc423 at r3584
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3584
  unfold Seg6.relationRow3585 Seg6.relationLc424 at r3585
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3585
  unfold Seg6.relationRow3586 Seg6.relationLc425 at r3586
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3586
  unfold Seg6.relationRow3587 at r3587
  unfold Seg6.relationRow3588 at r3588
  unfold Seg6.relationRow3589 at r3589
  unfold Seg6.relationRow3590 Seg6.relationLc426 at r3590
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3590
  unfold Seg6.relationRow3591 Seg6.relationLc427 at r3591
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3591
  unfold Seg6.relationRow3592 at r3592
  unfold Seg6.relationRow3593 at r3593
  unfold Seg6.relationRow3594 at r3594
  unfold Seg6.relationRow3595 at r3595
  unfold Seg6.relationRow3596 at r3596
  have hrung67 (bit : Bool) (hbit : rho 1957 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩
        ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩
        ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩
        ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩ := by
    have hnextx : seg6AccX68 rho = seg6AccX67 rho + rho 3989 := by
      unfold seg6AccX68 seg6AccX67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 67]
      ring
    have hnexty : seg6AccY68 rho = seg6AccY67 rho + rho 3990 := by
      unfold seg6AccY68 seg6AccY67
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 67]
      ring
    have ha0 : (rho 3981 + rho 3982) * (seg6AccX67 rho + seg6AccY67 rho) = rho 3983 := by
      unfold seg6AccX67 seg6AccY67
      linear_combination r3584
    have ha1 : rho 3982 * seg6AccX67 rho = rho 3984 := by
      unfold seg6AccX67
      linear_combination r3585
    have ha2 : rho 3981 * seg6AccY67 rho = rho 3985 := by
      unfold seg6AccY67
      linear_combination r3586
    have ha3 : 3021 * rho 3984 * rho 3985 = rho 3986 := by
      linear_combination r3587
    have ha4 : rho 3987 * (1 + rho 3986) = rho 3984 + rho 3985 := by
      linear_combination r3588
    have ha5 : rho 3988 * (1 - rho 3986) = rho 3983 - rho 3984 - rho 3985 := by
      linear_combination r3589
    have haddx :
        rho 3987 * (1 + 3021 * (rho 3982 * seg6AccX67 rho) * (rho 3981 * seg6AccY67 rho)) =
          rho 3982 * seg6AccX67 rho + rho 3981 * seg6AccY67 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3988 * (1 - 3021 * (rho 3982 * seg6AccX67 rho) * (rho 3981 * seg6AccY67 rho)) =
          (-1) * (rho 3982 * seg6AccX67 rho) - rho 3981 * seg6AccY67 rho +
            (seg6AccY67 rho - seg6AccX67 rho * (-1)) * (rho 3981 + rho 3982) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3988 * (1 - rho 3986) = rho 3983 - rho 3984 - rho 3985 := ha5
        _ = (-1) * rho 3984 - rho 3985 + (seg6AccY67 rho - seg6AccX67 rho * (-1)) * (rho 3981 + rho 3982) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX68 rho = seg6AccX67 rho - Bool.toZMod bit * (seg6AccX67 rho - rho 3987) := by
      have hd : rho 3989 = Bool.toZMod bit * (rho 3987 - seg6AccX67 rho) := by
        rw [← hbit]
        unfold seg6AccX67
        linear_combination -r3590
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY68 rho = seg6AccY67 rho - Bool.toZMod bit * (seg6AccY67 rho - rho 3988) := by
      have hd : rho 3990 = Bool.toZMod bit * (rho 3988 - seg6AccY67 rho) := by
        rw [← hbit]
        unfold seg6AccY67
        linear_combination -r3591
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3981 * rho 3982 = rho 3991 := by linear_combination r3592
    have hd1 : rho 3981 * rho 3981 = rho 3992 := by linear_combination r3593
    have hd2 : rho 3982 * rho 3982 = rho 3993 := by linear_combination r3594
    have hd3 : rho 3994 * (rho 3982 * rho 3982 + rho 3981 * rho 3981 * (-1)) = 2 * (rho 3981 * rho 3982) := by
      rw [hd0, hd1, hd2]
      linear_combination r3595
    have hd4 : rho 3995 * (2 - (rho 3982 * rho 3982 + rho 3981 * rho 3981 * (-1))) = rho 3982 * rho 3982 - rho 3981 * rho 3981 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3596
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX67 rho : Seg6.F), (seg6AccY67 rho : Seg6.F)⟩
      ⟨(rho 3981 : Seg6.F), (rho 3982 : Seg6.F)⟩
      ⟨(rho 3987 : Seg6.F), (rho 3988 : Seg6.F)⟩
      ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩
      ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung67

theorem seg6_rows68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3597 rho ∧ Seg6.relationRow3598 rho ∧ Seg6.relationRow3599 rho ∧ Seg6.relationRow3600 rho ∧ Seg6.relationRow3601 rho ∧ Seg6.relationRow3602 rho ∧ Seg6.relationRow3603 rho ∧ Seg6.relationRow3604 rho ∧ Seg6.relationRow3605 rho ∧ Seg6.relationRow3606 rho ∧ Seg6.relationRow3607 rho ∧ Seg6.relationRow3608 rho ∧ Seg6.relationRow3609 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3597, r3598, r3599⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609⟩

theorem seg6_rung68 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1958 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩
        ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩
        ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩
        ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩ := by
  obtain ⟨r3597, r3598, r3599, r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609⟩ := seg6_rows68 rho h
  unfold Seg6.relationRow3597 Seg6.relationLc428 at r3597
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3597
  unfold Seg6.relationRow3598 Seg6.relationLc429 at r3598
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3598
  unfold Seg6.relationRow3599 Seg6.relationLc430 at r3599
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3599
  unfold Seg6.relationRow3600 at r3600
  unfold Seg6.relationRow3601 at r3601
  unfold Seg6.relationRow3602 at r3602
  unfold Seg6.relationRow3603 Seg6.relationLc431 at r3603
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3603
  unfold Seg6.relationRow3604 Seg6.relationLc432 at r3604
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3604
  unfold Seg6.relationRow3605 at r3605
  unfold Seg6.relationRow3606 at r3606
  unfold Seg6.relationRow3607 at r3607
  unfold Seg6.relationRow3608 at r3608
  unfold Seg6.relationRow3609 at r3609
  have hrung68 (bit : Bool) (hbit : rho 1958 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩
        ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩
        ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩
        ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩ := by
    have hnextx : seg6AccX69 rho = seg6AccX68 rho + rho 4002 := by
      unfold seg6AccX69 seg6AccX68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 68]
      ring
    have hnexty : seg6AccY69 rho = seg6AccY68 rho + rho 4003 := by
      unfold seg6AccY69 seg6AccY68
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 68]
      ring
    have ha0 : (rho 3994 + rho 3995) * (seg6AccX68 rho + seg6AccY68 rho) = rho 3996 := by
      unfold seg6AccX68 seg6AccY68
      linear_combination r3597
    have ha1 : rho 3995 * seg6AccX68 rho = rho 3997 := by
      unfold seg6AccX68
      linear_combination r3598
    have ha2 : rho 3994 * seg6AccY68 rho = rho 3998 := by
      unfold seg6AccY68
      linear_combination r3599
    have ha3 : 3021 * rho 3997 * rho 3998 = rho 3999 := by
      linear_combination r3600
    have ha4 : rho 4000 * (1 + rho 3999) = rho 3997 + rho 3998 := by
      linear_combination r3601
    have ha5 : rho 4001 * (1 - rho 3999) = rho 3996 - rho 3997 - rho 3998 := by
      linear_combination r3602
    have haddx :
        rho 4000 * (1 + 3021 * (rho 3995 * seg6AccX68 rho) * (rho 3994 * seg6AccY68 rho)) =
          rho 3995 * seg6AccX68 rho + rho 3994 * seg6AccY68 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4001 * (1 - 3021 * (rho 3995 * seg6AccX68 rho) * (rho 3994 * seg6AccY68 rho)) =
          (-1) * (rho 3995 * seg6AccX68 rho) - rho 3994 * seg6AccY68 rho +
            (seg6AccY68 rho - seg6AccX68 rho * (-1)) * (rho 3994 + rho 3995) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4001 * (1 - rho 3999) = rho 3996 - rho 3997 - rho 3998 := ha5
        _ = (-1) * rho 3997 - rho 3998 + (seg6AccY68 rho - seg6AccX68 rho * (-1)) * (rho 3994 + rho 3995) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX69 rho = seg6AccX68 rho - Bool.toZMod bit * (seg6AccX68 rho - rho 4000) := by
      have hd : rho 4002 = Bool.toZMod bit * (rho 4000 - seg6AccX68 rho) := by
        rw [← hbit]
        unfold seg6AccX68
        linear_combination -r3603
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY69 rho = seg6AccY68 rho - Bool.toZMod bit * (seg6AccY68 rho - rho 4001) := by
      have hd : rho 4003 = Bool.toZMod bit * (rho 4001 - seg6AccY68 rho) := by
        rw [← hbit]
        unfold seg6AccY68
        linear_combination -r3604
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3994 * rho 3995 = rho 4004 := by linear_combination r3605
    have hd1 : rho 3994 * rho 3994 = rho 4005 := by linear_combination r3606
    have hd2 : rho 3995 * rho 3995 = rho 4006 := by linear_combination r3607
    have hd3 : rho 4007 * (rho 3995 * rho 3995 + rho 3994 * rho 3994 * (-1)) = 2 * (rho 3994 * rho 3995) := by
      rw [hd0, hd1, hd2]
      linear_combination r3608
    have hd4 : rho 4008 * (2 - (rho 3995 * rho 3995 + rho 3994 * rho 3994 * (-1))) = rho 3995 * rho 3995 - rho 3994 * rho 3994 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3609
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX68 rho : Seg6.F), (seg6AccY68 rho : Seg6.F)⟩
      ⟨(rho 3994 : Seg6.F), (rho 3995 : Seg6.F)⟩
      ⟨(rho 4000 : Seg6.F), (rho 4001 : Seg6.F)⟩
      ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩
      ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung68

theorem seg6_rows69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3610 rho ∧ Seg6.relationRow3611 rho ∧ Seg6.relationRow3612 rho ∧ Seg6.relationRow3613 rho ∧ Seg6.relationRow3614 rho ∧ Seg6.relationRow3615 rho ∧ Seg6.relationRow3616 rho ∧ Seg6.relationRow3617 rho ∧ Seg6.relationRow3618 rho ∧ Seg6.relationRow3619 rho ∧ Seg6.relationRow3620 rho ∧ Seg6.relationRow3621 rho ∧ Seg6.relationRow3622 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622⟩

theorem seg6_rung69 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1959 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩
        ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩
        ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩
        ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩ := by
  obtain ⟨r3610, r3611, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622⟩ := seg6_rows69 rho h
  unfold Seg6.relationRow3610 Seg6.relationLc433 at r3610
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3610
  unfold Seg6.relationRow3611 Seg6.relationLc434 at r3611
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3611
  unfold Seg6.relationRow3612 Seg6.relationLc435 at r3612
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3612
  unfold Seg6.relationRow3613 at r3613
  unfold Seg6.relationRow3614 at r3614
  unfold Seg6.relationRow3615 at r3615
  unfold Seg6.relationRow3616 Seg6.relationLc436 at r3616
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3616
  unfold Seg6.relationRow3617 Seg6.relationLc437 at r3617
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3617
  unfold Seg6.relationRow3618 at r3618
  unfold Seg6.relationRow3619 at r3619
  unfold Seg6.relationRow3620 at r3620
  unfold Seg6.relationRow3621 at r3621
  unfold Seg6.relationRow3622 at r3622
  have hrung69 (bit : Bool) (hbit : rho 1959 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩
        ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩
        ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩
        ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩ := by
    have hnextx : seg6AccX70 rho = seg6AccX69 rho + rho 4015 := by
      unfold seg6AccX70 seg6AccX69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 69]
      ring
    have hnexty : seg6AccY70 rho = seg6AccY69 rho + rho 4016 := by
      unfold seg6AccY70 seg6AccY69
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 69]
      ring
    have ha0 : (rho 4007 + rho 4008) * (seg6AccX69 rho + seg6AccY69 rho) = rho 4009 := by
      unfold seg6AccX69 seg6AccY69
      linear_combination r3610
    have ha1 : rho 4008 * seg6AccX69 rho = rho 4010 := by
      unfold seg6AccX69
      linear_combination r3611
    have ha2 : rho 4007 * seg6AccY69 rho = rho 4011 := by
      unfold seg6AccY69
      linear_combination r3612
    have ha3 : 3021 * rho 4010 * rho 4011 = rho 4012 := by
      linear_combination r3613
    have ha4 : rho 4013 * (1 + rho 4012) = rho 4010 + rho 4011 := by
      linear_combination r3614
    have ha5 : rho 4014 * (1 - rho 4012) = rho 4009 - rho 4010 - rho 4011 := by
      linear_combination r3615
    have haddx :
        rho 4013 * (1 + 3021 * (rho 4008 * seg6AccX69 rho) * (rho 4007 * seg6AccY69 rho)) =
          rho 4008 * seg6AccX69 rho + rho 4007 * seg6AccY69 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4014 * (1 - 3021 * (rho 4008 * seg6AccX69 rho) * (rho 4007 * seg6AccY69 rho)) =
          (-1) * (rho 4008 * seg6AccX69 rho) - rho 4007 * seg6AccY69 rho +
            (seg6AccY69 rho - seg6AccX69 rho * (-1)) * (rho 4007 + rho 4008) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4014 * (1 - rho 4012) = rho 4009 - rho 4010 - rho 4011 := ha5
        _ = (-1) * rho 4010 - rho 4011 + (seg6AccY69 rho - seg6AccX69 rho * (-1)) * (rho 4007 + rho 4008) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX70 rho = seg6AccX69 rho - Bool.toZMod bit * (seg6AccX69 rho - rho 4013) := by
      have hd : rho 4015 = Bool.toZMod bit * (rho 4013 - seg6AccX69 rho) := by
        rw [← hbit]
        unfold seg6AccX69
        linear_combination -r3616
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY70 rho = seg6AccY69 rho - Bool.toZMod bit * (seg6AccY69 rho - rho 4014) := by
      have hd : rho 4016 = Bool.toZMod bit * (rho 4014 - seg6AccY69 rho) := by
        rw [← hbit]
        unfold seg6AccY69
        linear_combination -r3617
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4007 * rho 4008 = rho 4017 := by linear_combination r3618
    have hd1 : rho 4007 * rho 4007 = rho 4018 := by linear_combination r3619
    have hd2 : rho 4008 * rho 4008 = rho 4019 := by linear_combination r3620
    have hd3 : rho 4020 * (rho 4008 * rho 4008 + rho 4007 * rho 4007 * (-1)) = 2 * (rho 4007 * rho 4008) := by
      rw [hd0, hd1, hd2]
      linear_combination r3621
    have hd4 : rho 4021 * (2 - (rho 4008 * rho 4008 + rho 4007 * rho 4007 * (-1))) = rho 4008 * rho 4008 - rho 4007 * rho 4007 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3622
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX69 rho : Seg6.F), (seg6AccY69 rho : Seg6.F)⟩
      ⟨(rho 4007 : Seg6.F), (rho 4008 : Seg6.F)⟩
      ⟨(rho 4013 : Seg6.F), (rho 4014 : Seg6.F)⟩
      ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩
      ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung69

theorem seg6_rows70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3623 rho ∧ Seg6.relationRow3624 rho ∧ Seg6.relationRow3625 rho ∧ Seg6.relationRow3626 rho ∧ Seg6.relationRow3627 rho ∧ Seg6.relationRow3628 rho ∧ Seg6.relationRow3629 rho ∧ Seg6.relationRow3630 rho ∧ Seg6.relationRow3631 rho ∧ Seg6.relationRow3632 rho ∧ Seg6.relationRow3633 rho ∧ Seg6.relationRow3634 rho ∧ Seg6.relationRow3635 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635⟩

theorem seg6_rung70 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1960 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩
        ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩
        ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩
        ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩ := by
  obtain ⟨r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635⟩ := seg6_rows70 rho h
  unfold Seg6.relationRow3623 Seg6.relationLc438 at r3623
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3623
  unfold Seg6.relationRow3624 Seg6.relationLc439 at r3624
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3624
  unfold Seg6.relationRow3625 Seg6.relationLc440 at r3625
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3625
  unfold Seg6.relationRow3626 at r3626
  unfold Seg6.relationRow3627 at r3627
  unfold Seg6.relationRow3628 at r3628
  unfold Seg6.relationRow3629 Seg6.relationLc441 at r3629
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3629
  unfold Seg6.relationRow3630 Seg6.relationLc442 at r3630
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3630
  unfold Seg6.relationRow3631 at r3631
  unfold Seg6.relationRow3632 at r3632
  unfold Seg6.relationRow3633 at r3633
  unfold Seg6.relationRow3634 at r3634
  unfold Seg6.relationRow3635 at r3635
  have hrung70 (bit : Bool) (hbit : rho 1960 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩
        ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩
        ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩
        ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩ := by
    have hnextx : seg6AccX71 rho = seg6AccX70 rho + rho 4028 := by
      unfold seg6AccX71 seg6AccX70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 70]
      ring
    have hnexty : seg6AccY71 rho = seg6AccY70 rho + rho 4029 := by
      unfold seg6AccY71 seg6AccY70
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 70]
      ring
    have ha0 : (rho 4020 + rho 4021) * (seg6AccX70 rho + seg6AccY70 rho) = rho 4022 := by
      unfold seg6AccX70 seg6AccY70
      linear_combination r3623
    have ha1 : rho 4021 * seg6AccX70 rho = rho 4023 := by
      unfold seg6AccX70
      linear_combination r3624
    have ha2 : rho 4020 * seg6AccY70 rho = rho 4024 := by
      unfold seg6AccY70
      linear_combination r3625
    have ha3 : 3021 * rho 4023 * rho 4024 = rho 4025 := by
      linear_combination r3626
    have ha4 : rho 4026 * (1 + rho 4025) = rho 4023 + rho 4024 := by
      linear_combination r3627
    have ha5 : rho 4027 * (1 - rho 4025) = rho 4022 - rho 4023 - rho 4024 := by
      linear_combination r3628
    have haddx :
        rho 4026 * (1 + 3021 * (rho 4021 * seg6AccX70 rho) * (rho 4020 * seg6AccY70 rho)) =
          rho 4021 * seg6AccX70 rho + rho 4020 * seg6AccY70 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4027 * (1 - 3021 * (rho 4021 * seg6AccX70 rho) * (rho 4020 * seg6AccY70 rho)) =
          (-1) * (rho 4021 * seg6AccX70 rho) - rho 4020 * seg6AccY70 rho +
            (seg6AccY70 rho - seg6AccX70 rho * (-1)) * (rho 4020 + rho 4021) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4027 * (1 - rho 4025) = rho 4022 - rho 4023 - rho 4024 := ha5
        _ = (-1) * rho 4023 - rho 4024 + (seg6AccY70 rho - seg6AccX70 rho * (-1)) * (rho 4020 + rho 4021) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX71 rho = seg6AccX70 rho - Bool.toZMod bit * (seg6AccX70 rho - rho 4026) := by
      have hd : rho 4028 = Bool.toZMod bit * (rho 4026 - seg6AccX70 rho) := by
        rw [← hbit]
        unfold seg6AccX70
        linear_combination -r3629
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY71 rho = seg6AccY70 rho - Bool.toZMod bit * (seg6AccY70 rho - rho 4027) := by
      have hd : rho 4029 = Bool.toZMod bit * (rho 4027 - seg6AccY70 rho) := by
        rw [← hbit]
        unfold seg6AccY70
        linear_combination -r3630
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4020 * rho 4021 = rho 4030 := by linear_combination r3631
    have hd1 : rho 4020 * rho 4020 = rho 4031 := by linear_combination r3632
    have hd2 : rho 4021 * rho 4021 = rho 4032 := by linear_combination r3633
    have hd3 : rho 4033 * (rho 4021 * rho 4021 + rho 4020 * rho 4020 * (-1)) = 2 * (rho 4020 * rho 4021) := by
      rw [hd0, hd1, hd2]
      linear_combination r3634
    have hd4 : rho 4034 * (2 - (rho 4021 * rho 4021 + rho 4020 * rho 4020 * (-1))) = rho 4021 * rho 4021 - rho 4020 * rho 4020 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3635
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX70 rho : Seg6.F), (seg6AccY70 rho : Seg6.F)⟩
      ⟨(rho 4020 : Seg6.F), (rho 4021 : Seg6.F)⟩
      ⟨(rho 4026 : Seg6.F), (rho 4027 : Seg6.F)⟩
      ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩
      ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung70

theorem seg6_rows71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3636 rho ∧ Seg6.relationRow3637 rho ∧ Seg6.relationRow3638 rho ∧ Seg6.relationRow3639 rho ∧ Seg6.relationRow3640 rho ∧ Seg6.relationRow3641 rho ∧ Seg6.relationRow3642 rho ∧ Seg6.relationRow3643 rho ∧ Seg6.relationRow3644 rho ∧ Seg6.relationRow3645 rho ∧ Seg6.relationRow3646 rho ∧ Seg6.relationRow3647 rho ∧ Seg6.relationRow3648 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648⟩

theorem seg6_rung71 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1961 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩
        ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩
        ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩
        ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩ := by
  obtain ⟨r3636, r3637, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648⟩ := seg6_rows71 rho h
  unfold Seg6.relationRow3636 Seg6.relationLc443 at r3636
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3636
  unfold Seg6.relationRow3637 Seg6.relationLc444 at r3637
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3637
  unfold Seg6.relationRow3638 Seg6.relationLc445 at r3638
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3638
  unfold Seg6.relationRow3639 at r3639
  unfold Seg6.relationRow3640 at r3640
  unfold Seg6.relationRow3641 at r3641
  unfold Seg6.relationRow3642 Seg6.relationLc446 at r3642
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3642
  unfold Seg6.relationRow3643 Seg6.relationLc447 at r3643
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3643
  unfold Seg6.relationRow3644 at r3644
  unfold Seg6.relationRow3645 at r3645
  unfold Seg6.relationRow3646 at r3646
  unfold Seg6.relationRow3647 at r3647
  unfold Seg6.relationRow3648 at r3648
  have hrung71 (bit : Bool) (hbit : rho 1961 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩
        ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩
        ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩
        ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩ := by
    have hnextx : seg6AccX72 rho = seg6AccX71 rho + rho 4041 := by
      unfold seg6AccX72 seg6AccX71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 71]
      ring
    have hnexty : seg6AccY72 rho = seg6AccY71 rho + rho 4042 := by
      unfold seg6AccY72 seg6AccY71
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 71]
      ring
    have ha0 : (rho 4033 + rho 4034) * (seg6AccX71 rho + seg6AccY71 rho) = rho 4035 := by
      unfold seg6AccX71 seg6AccY71
      linear_combination r3636
    have ha1 : rho 4034 * seg6AccX71 rho = rho 4036 := by
      unfold seg6AccX71
      linear_combination r3637
    have ha2 : rho 4033 * seg6AccY71 rho = rho 4037 := by
      unfold seg6AccY71
      linear_combination r3638
    have ha3 : 3021 * rho 4036 * rho 4037 = rho 4038 := by
      linear_combination r3639
    have ha4 : rho 4039 * (1 + rho 4038) = rho 4036 + rho 4037 := by
      linear_combination r3640
    have ha5 : rho 4040 * (1 - rho 4038) = rho 4035 - rho 4036 - rho 4037 := by
      linear_combination r3641
    have haddx :
        rho 4039 * (1 + 3021 * (rho 4034 * seg6AccX71 rho) * (rho 4033 * seg6AccY71 rho)) =
          rho 4034 * seg6AccX71 rho + rho 4033 * seg6AccY71 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4040 * (1 - 3021 * (rho 4034 * seg6AccX71 rho) * (rho 4033 * seg6AccY71 rho)) =
          (-1) * (rho 4034 * seg6AccX71 rho) - rho 4033 * seg6AccY71 rho +
            (seg6AccY71 rho - seg6AccX71 rho * (-1)) * (rho 4033 + rho 4034) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4040 * (1 - rho 4038) = rho 4035 - rho 4036 - rho 4037 := ha5
        _ = (-1) * rho 4036 - rho 4037 + (seg6AccY71 rho - seg6AccX71 rho * (-1)) * (rho 4033 + rho 4034) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX72 rho = seg6AccX71 rho - Bool.toZMod bit * (seg6AccX71 rho - rho 4039) := by
      have hd : rho 4041 = Bool.toZMod bit * (rho 4039 - seg6AccX71 rho) := by
        rw [← hbit]
        unfold seg6AccX71
        linear_combination -r3642
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY72 rho = seg6AccY71 rho - Bool.toZMod bit * (seg6AccY71 rho - rho 4040) := by
      have hd : rho 4042 = Bool.toZMod bit * (rho 4040 - seg6AccY71 rho) := by
        rw [← hbit]
        unfold seg6AccY71
        linear_combination -r3643
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4033 * rho 4034 = rho 4043 := by linear_combination r3644
    have hd1 : rho 4033 * rho 4033 = rho 4044 := by linear_combination r3645
    have hd2 : rho 4034 * rho 4034 = rho 4045 := by linear_combination r3646
    have hd3 : rho 4046 * (rho 4034 * rho 4034 + rho 4033 * rho 4033 * (-1)) = 2 * (rho 4033 * rho 4034) := by
      rw [hd0, hd1, hd2]
      linear_combination r3647
    have hd4 : rho 4047 * (2 - (rho 4034 * rho 4034 + rho 4033 * rho 4033 * (-1))) = rho 4034 * rho 4034 - rho 4033 * rho 4033 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3648
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX71 rho : Seg6.F), (seg6AccY71 rho : Seg6.F)⟩
      ⟨(rho 4033 : Seg6.F), (rho 4034 : Seg6.F)⟩
      ⟨(rho 4039 : Seg6.F), (rho 4040 : Seg6.F)⟩
      ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩
      ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung71

theorem seg6_rows72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3649 rho ∧ Seg6.relationRow3650 rho ∧ Seg6.relationRow3651 rho ∧ Seg6.relationRow3652 rho ∧ Seg6.relationRow3653 rho ∧ Seg6.relationRow3654 rho ∧ Seg6.relationRow3655 rho ∧ Seg6.relationRow3656 rho ∧ Seg6.relationRow3657 rho ∧ Seg6.relationRow3658 rho ∧ Seg6.relationRow3659 rho ∧ Seg6.relationRow3660 rho ∧ Seg6.relationRow3661 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661⟩

theorem seg6_rung72 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1962 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩
        ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩
        ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩
        ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩ := by
  obtain ⟨r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661⟩ := seg6_rows72 rho h
  unfold Seg6.relationRow3649 Seg6.relationLc448 at r3649
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3649
  unfold Seg6.relationRow3650 Seg6.relationLc449 at r3650
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3650
  unfold Seg6.relationRow3651 Seg6.relationLc450 at r3651
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3651
  unfold Seg6.relationRow3652 at r3652
  unfold Seg6.relationRow3653 at r3653
  unfold Seg6.relationRow3654 at r3654
  unfold Seg6.relationRow3655 Seg6.relationLc451 at r3655
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3655
  unfold Seg6.relationRow3656 Seg6.relationLc452 at r3656
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3656
  unfold Seg6.relationRow3657 at r3657
  unfold Seg6.relationRow3658 at r3658
  unfold Seg6.relationRow3659 at r3659
  unfold Seg6.relationRow3660 at r3660
  unfold Seg6.relationRow3661 at r3661
  have hrung72 (bit : Bool) (hbit : rho 1962 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩
        ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩
        ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩
        ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩ := by
    have hnextx : seg6AccX73 rho = seg6AccX72 rho + rho 4054 := by
      unfold seg6AccX73 seg6AccX72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 72]
      ring
    have hnexty : seg6AccY73 rho = seg6AccY72 rho + rho 4055 := by
      unfold seg6AccY73 seg6AccY72
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 72]
      ring
    have ha0 : (rho 4046 + rho 4047) * (seg6AccX72 rho + seg6AccY72 rho) = rho 4048 := by
      unfold seg6AccX72 seg6AccY72
      linear_combination r3649
    have ha1 : rho 4047 * seg6AccX72 rho = rho 4049 := by
      unfold seg6AccX72
      linear_combination r3650
    have ha2 : rho 4046 * seg6AccY72 rho = rho 4050 := by
      unfold seg6AccY72
      linear_combination r3651
    have ha3 : 3021 * rho 4049 * rho 4050 = rho 4051 := by
      linear_combination r3652
    have ha4 : rho 4052 * (1 + rho 4051) = rho 4049 + rho 4050 := by
      linear_combination r3653
    have ha5 : rho 4053 * (1 - rho 4051) = rho 4048 - rho 4049 - rho 4050 := by
      linear_combination r3654
    have haddx :
        rho 4052 * (1 + 3021 * (rho 4047 * seg6AccX72 rho) * (rho 4046 * seg6AccY72 rho)) =
          rho 4047 * seg6AccX72 rho + rho 4046 * seg6AccY72 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4053 * (1 - 3021 * (rho 4047 * seg6AccX72 rho) * (rho 4046 * seg6AccY72 rho)) =
          (-1) * (rho 4047 * seg6AccX72 rho) - rho 4046 * seg6AccY72 rho +
            (seg6AccY72 rho - seg6AccX72 rho * (-1)) * (rho 4046 + rho 4047) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4053 * (1 - rho 4051) = rho 4048 - rho 4049 - rho 4050 := ha5
        _ = (-1) * rho 4049 - rho 4050 + (seg6AccY72 rho - seg6AccX72 rho * (-1)) * (rho 4046 + rho 4047) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX73 rho = seg6AccX72 rho - Bool.toZMod bit * (seg6AccX72 rho - rho 4052) := by
      have hd : rho 4054 = Bool.toZMod bit * (rho 4052 - seg6AccX72 rho) := by
        rw [← hbit]
        unfold seg6AccX72
        linear_combination -r3655
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY73 rho = seg6AccY72 rho - Bool.toZMod bit * (seg6AccY72 rho - rho 4053) := by
      have hd : rho 4055 = Bool.toZMod bit * (rho 4053 - seg6AccY72 rho) := by
        rw [← hbit]
        unfold seg6AccY72
        linear_combination -r3656
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4046 * rho 4047 = rho 4056 := by linear_combination r3657
    have hd1 : rho 4046 * rho 4046 = rho 4057 := by linear_combination r3658
    have hd2 : rho 4047 * rho 4047 = rho 4058 := by linear_combination r3659
    have hd3 : rho 4059 * (rho 4047 * rho 4047 + rho 4046 * rho 4046 * (-1)) = 2 * (rho 4046 * rho 4047) := by
      rw [hd0, hd1, hd2]
      linear_combination r3660
    have hd4 : rho 4060 * (2 - (rho 4047 * rho 4047 + rho 4046 * rho 4046 * (-1))) = rho 4047 * rho 4047 - rho 4046 * rho 4046 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3661
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX72 rho : Seg6.F), (seg6AccY72 rho : Seg6.F)⟩
      ⟨(rho 4046 : Seg6.F), (rho 4047 : Seg6.F)⟩
      ⟨(rho 4052 : Seg6.F), (rho 4053 : Seg6.F)⟩
      ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩
      ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung72

theorem seg6_rows73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3662 rho ∧ Seg6.relationRow3663 rho ∧ Seg6.relationRow3664 rho ∧ Seg6.relationRow3665 rho ∧ Seg6.relationRow3666 rho ∧ Seg6.relationRow3667 rho ∧ Seg6.relationRow3668 rho ∧ Seg6.relationRow3669 rho ∧ Seg6.relationRow3670 rho ∧ Seg6.relationRow3671 rho ∧ Seg6.relationRow3672 rho ∧ Seg6.relationRow3673 rho ∧ Seg6.relationRow3674 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, _, _, _, _, _⟩
  exact ⟨r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674⟩

theorem seg6_rung73 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1963 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩
        ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩
        ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩
        ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩ := by
  obtain ⟨r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674⟩ := seg6_rows73 rho h
  unfold Seg6.relationRow3662 Seg6.relationLc453 at r3662
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3662
  unfold Seg6.relationRow3663 Seg6.relationLc454 at r3663
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3663
  unfold Seg6.relationRow3664 Seg6.relationLc455 at r3664
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3664
  unfold Seg6.relationRow3665 at r3665
  unfold Seg6.relationRow3666 at r3666
  unfold Seg6.relationRow3667 at r3667
  unfold Seg6.relationRow3668 Seg6.relationLc456 at r3668
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3668
  unfold Seg6.relationRow3669 Seg6.relationLc457 at r3669
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3669
  unfold Seg6.relationRow3670 at r3670
  unfold Seg6.relationRow3671 at r3671
  unfold Seg6.relationRow3672 at r3672
  unfold Seg6.relationRow3673 at r3673
  unfold Seg6.relationRow3674 at r3674
  have hrung73 (bit : Bool) (hbit : rho 1963 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩
        ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩
        ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩
        ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩ := by
    have hnextx : seg6AccX74 rho = seg6AccX73 rho + rho 4067 := by
      unfold seg6AccX74 seg6AccX73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 73]
      ring
    have hnexty : seg6AccY74 rho = seg6AccY73 rho + rho 4068 := by
      unfold seg6AccY74 seg6AccY73
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 73]
      ring
    have ha0 : (rho 4059 + rho 4060) * (seg6AccX73 rho + seg6AccY73 rho) = rho 4061 := by
      unfold seg6AccX73 seg6AccY73
      linear_combination r3662
    have ha1 : rho 4060 * seg6AccX73 rho = rho 4062 := by
      unfold seg6AccX73
      linear_combination r3663
    have ha2 : rho 4059 * seg6AccY73 rho = rho 4063 := by
      unfold seg6AccY73
      linear_combination r3664
    have ha3 : 3021 * rho 4062 * rho 4063 = rho 4064 := by
      linear_combination r3665
    have ha4 : rho 4065 * (1 + rho 4064) = rho 4062 + rho 4063 := by
      linear_combination r3666
    have ha5 : rho 4066 * (1 - rho 4064) = rho 4061 - rho 4062 - rho 4063 := by
      linear_combination r3667
    have haddx :
        rho 4065 * (1 + 3021 * (rho 4060 * seg6AccX73 rho) * (rho 4059 * seg6AccY73 rho)) =
          rho 4060 * seg6AccX73 rho + rho 4059 * seg6AccY73 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4066 * (1 - 3021 * (rho 4060 * seg6AccX73 rho) * (rho 4059 * seg6AccY73 rho)) =
          (-1) * (rho 4060 * seg6AccX73 rho) - rho 4059 * seg6AccY73 rho +
            (seg6AccY73 rho - seg6AccX73 rho * (-1)) * (rho 4059 + rho 4060) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4066 * (1 - rho 4064) = rho 4061 - rho 4062 - rho 4063 := ha5
        _ = (-1) * rho 4062 - rho 4063 + (seg6AccY73 rho - seg6AccX73 rho * (-1)) * (rho 4059 + rho 4060) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX74 rho = seg6AccX73 rho - Bool.toZMod bit * (seg6AccX73 rho - rho 4065) := by
      have hd : rho 4067 = Bool.toZMod bit * (rho 4065 - seg6AccX73 rho) := by
        rw [← hbit]
        unfold seg6AccX73
        linear_combination -r3668
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY74 rho = seg6AccY73 rho - Bool.toZMod bit * (seg6AccY73 rho - rho 4066) := by
      have hd : rho 4068 = Bool.toZMod bit * (rho 4066 - seg6AccY73 rho) := by
        rw [← hbit]
        unfold seg6AccY73
        linear_combination -r3669
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4059 * rho 4060 = rho 4069 := by linear_combination r3670
    have hd1 : rho 4059 * rho 4059 = rho 4070 := by linear_combination r3671
    have hd2 : rho 4060 * rho 4060 = rho 4071 := by linear_combination r3672
    have hd3 : rho 4072 * (rho 4060 * rho 4060 + rho 4059 * rho 4059 * (-1)) = 2 * (rho 4059 * rho 4060) := by
      rw [hd0, hd1, hd2]
      linear_combination r3673
    have hd4 : rho 4073 * (2 - (rho 4060 * rho 4060 + rho 4059 * rho 4059 * (-1))) = rho 4060 * rho 4060 - rho 4059 * rho 4059 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3674
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX73 rho : Seg6.F), (seg6AccY73 rho : Seg6.F)⟩
      ⟨(rho 4059 : Seg6.F), (rho 4060 : Seg6.F)⟩
      ⟨(rho 4065 : Seg6.F), (rho 4066 : Seg6.F)⟩
      ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩
      ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung73

theorem seg6_rows74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3675 rho ∧ Seg6.relationRow3676 rho ∧ Seg6.relationRow3677 rho ∧ Seg6.relationRow3678 rho ∧ Seg6.relationRow3679 rho ∧ Seg6.relationRow3680 rho ∧ Seg6.relationRow3681 rho ∧ Seg6.relationRow3682 rho ∧ Seg6.relationRow3683 rho ∧ Seg6.relationRow3684 rho ∧ Seg6.relationRow3685 rho ∧ Seg6.relationRow3686 rho ∧ Seg6.relationRow3687 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3675, r3676, r3677, r3678, r3679⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687⟩

theorem seg6_rung74 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1964 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩
        ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩
        ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩
        ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩ := by
  obtain ⟨r3675, r3676, r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687⟩ := seg6_rows74 rho h
  unfold Seg6.relationRow3675 Seg6.relationLc458 at r3675
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3675
  unfold Seg6.relationRow3676 Seg6.relationLc459 at r3676
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3676
  unfold Seg6.relationRow3677 Seg6.relationLc460 at r3677
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3677
  unfold Seg6.relationRow3678 at r3678
  unfold Seg6.relationRow3679 at r3679
  unfold Seg6.relationRow3680 at r3680
  unfold Seg6.relationRow3681 Seg6.relationLc461 at r3681
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3681
  unfold Seg6.relationRow3682 Seg6.relationLc462 at r3682
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3682
  unfold Seg6.relationRow3683 at r3683
  unfold Seg6.relationRow3684 at r3684
  unfold Seg6.relationRow3685 at r3685
  unfold Seg6.relationRow3686 at r3686
  unfold Seg6.relationRow3687 at r3687
  have hrung74 (bit : Bool) (hbit : rho 1964 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩
        ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩
        ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩
        ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩ := by
    have hnextx : seg6AccX75 rho = seg6AccX74 rho + rho 4080 := by
      unfold seg6AccX75 seg6AccX74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 74]
      ring
    have hnexty : seg6AccY75 rho = seg6AccY74 rho + rho 4081 := by
      unfold seg6AccY75 seg6AccY74
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 74]
      ring
    have ha0 : (rho 4072 + rho 4073) * (seg6AccX74 rho + seg6AccY74 rho) = rho 4074 := by
      unfold seg6AccX74 seg6AccY74
      linear_combination r3675
    have ha1 : rho 4073 * seg6AccX74 rho = rho 4075 := by
      unfold seg6AccX74
      linear_combination r3676
    have ha2 : rho 4072 * seg6AccY74 rho = rho 4076 := by
      unfold seg6AccY74
      linear_combination r3677
    have ha3 : 3021 * rho 4075 * rho 4076 = rho 4077 := by
      linear_combination r3678
    have ha4 : rho 4078 * (1 + rho 4077) = rho 4075 + rho 4076 := by
      linear_combination r3679
    have ha5 : rho 4079 * (1 - rho 4077) = rho 4074 - rho 4075 - rho 4076 := by
      linear_combination r3680
    have haddx :
        rho 4078 * (1 + 3021 * (rho 4073 * seg6AccX74 rho) * (rho 4072 * seg6AccY74 rho)) =
          rho 4073 * seg6AccX74 rho + rho 4072 * seg6AccY74 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4079 * (1 - 3021 * (rho 4073 * seg6AccX74 rho) * (rho 4072 * seg6AccY74 rho)) =
          (-1) * (rho 4073 * seg6AccX74 rho) - rho 4072 * seg6AccY74 rho +
            (seg6AccY74 rho - seg6AccX74 rho * (-1)) * (rho 4072 + rho 4073) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4079 * (1 - rho 4077) = rho 4074 - rho 4075 - rho 4076 := ha5
        _ = (-1) * rho 4075 - rho 4076 + (seg6AccY74 rho - seg6AccX74 rho * (-1)) * (rho 4072 + rho 4073) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX75 rho = seg6AccX74 rho - Bool.toZMod bit * (seg6AccX74 rho - rho 4078) := by
      have hd : rho 4080 = Bool.toZMod bit * (rho 4078 - seg6AccX74 rho) := by
        rw [← hbit]
        unfold seg6AccX74
        linear_combination -r3681
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY75 rho = seg6AccY74 rho - Bool.toZMod bit * (seg6AccY74 rho - rho 4079) := by
      have hd : rho 4081 = Bool.toZMod bit * (rho 4079 - seg6AccY74 rho) := by
        rw [← hbit]
        unfold seg6AccY74
        linear_combination -r3682
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4072 * rho 4073 = rho 4082 := by linear_combination r3683
    have hd1 : rho 4072 * rho 4072 = rho 4083 := by linear_combination r3684
    have hd2 : rho 4073 * rho 4073 = rho 4084 := by linear_combination r3685
    have hd3 : rho 4085 * (rho 4073 * rho 4073 + rho 4072 * rho 4072 * (-1)) = 2 * (rho 4072 * rho 4073) := by
      rw [hd0, hd1, hd2]
      linear_combination r3686
    have hd4 : rho 4086 * (2 - (rho 4073 * rho 4073 + rho 4072 * rho 4072 * (-1))) = rho 4073 * rho 4073 - rho 4072 * rho 4072 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3687
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX74 rho : Seg6.F), (seg6AccY74 rho : Seg6.F)⟩
      ⟨(rho 4072 : Seg6.F), (rho 4073 : Seg6.F)⟩
      ⟨(rho 4078 : Seg6.F), (rho 4079 : Seg6.F)⟩
      ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩
      ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung74

theorem seg6_rows75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3688 rho ∧ Seg6.relationRow3689 rho ∧ Seg6.relationRow3690 rho ∧ Seg6.relationRow3691 rho ∧ Seg6.relationRow3692 rho ∧ Seg6.relationRow3693 rho ∧ Seg6.relationRow3694 rho ∧ Seg6.relationRow3695 rho ∧ Seg6.relationRow3696 rho ∧ Seg6.relationRow3697 rho ∧ Seg6.relationRow3698 rho ∧ Seg6.relationRow3699 rho ∧ Seg6.relationRow3700 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700⟩

theorem seg6_rung75 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1965 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩
        ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩
        ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩
        ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩ := by
  obtain ⟨r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700⟩ := seg6_rows75 rho h
  unfold Seg6.relationRow3688 Seg6.relationLc463 at r3688
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3688
  unfold Seg6.relationRow3689 Seg6.relationLc464 at r3689
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3689
  unfold Seg6.relationRow3690 Seg6.relationLc465 at r3690
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3690
  unfold Seg6.relationRow3691 at r3691
  unfold Seg6.relationRow3692 at r3692
  unfold Seg6.relationRow3693 at r3693
  unfold Seg6.relationRow3694 Seg6.relationLc466 at r3694
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3694
  unfold Seg6.relationRow3695 Seg6.relationLc467 at r3695
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3695
  unfold Seg6.relationRow3696 at r3696
  unfold Seg6.relationRow3697 at r3697
  unfold Seg6.relationRow3698 at r3698
  unfold Seg6.relationRow3699 at r3699
  unfold Seg6.relationRow3700 at r3700
  have hrung75 (bit : Bool) (hbit : rho 1965 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩
        ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩
        ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩
        ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩ := by
    have hnextx : seg6AccX76 rho = seg6AccX75 rho + rho 4093 := by
      unfold seg6AccX76 seg6AccX75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 75]
      ring
    have hnexty : seg6AccY76 rho = seg6AccY75 rho + rho 4094 := by
      unfold seg6AccY76 seg6AccY75
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 75]
      ring
    have ha0 : (rho 4085 + rho 4086) * (seg6AccX75 rho + seg6AccY75 rho) = rho 4087 := by
      unfold seg6AccX75 seg6AccY75
      linear_combination r3688
    have ha1 : rho 4086 * seg6AccX75 rho = rho 4088 := by
      unfold seg6AccX75
      linear_combination r3689
    have ha2 : rho 4085 * seg6AccY75 rho = rho 4089 := by
      unfold seg6AccY75
      linear_combination r3690
    have ha3 : 3021 * rho 4088 * rho 4089 = rho 4090 := by
      linear_combination r3691
    have ha4 : rho 4091 * (1 + rho 4090) = rho 4088 + rho 4089 := by
      linear_combination r3692
    have ha5 : rho 4092 * (1 - rho 4090) = rho 4087 - rho 4088 - rho 4089 := by
      linear_combination r3693
    have haddx :
        rho 4091 * (1 + 3021 * (rho 4086 * seg6AccX75 rho) * (rho 4085 * seg6AccY75 rho)) =
          rho 4086 * seg6AccX75 rho + rho 4085 * seg6AccY75 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4092 * (1 - 3021 * (rho 4086 * seg6AccX75 rho) * (rho 4085 * seg6AccY75 rho)) =
          (-1) * (rho 4086 * seg6AccX75 rho) - rho 4085 * seg6AccY75 rho +
            (seg6AccY75 rho - seg6AccX75 rho * (-1)) * (rho 4085 + rho 4086) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4092 * (1 - rho 4090) = rho 4087 - rho 4088 - rho 4089 := ha5
        _ = (-1) * rho 4088 - rho 4089 + (seg6AccY75 rho - seg6AccX75 rho * (-1)) * (rho 4085 + rho 4086) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX76 rho = seg6AccX75 rho - Bool.toZMod bit * (seg6AccX75 rho - rho 4091) := by
      have hd : rho 4093 = Bool.toZMod bit * (rho 4091 - seg6AccX75 rho) := by
        rw [← hbit]
        unfold seg6AccX75
        linear_combination -r3694
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY76 rho = seg6AccY75 rho - Bool.toZMod bit * (seg6AccY75 rho - rho 4092) := by
      have hd : rho 4094 = Bool.toZMod bit * (rho 4092 - seg6AccY75 rho) := by
        rw [← hbit]
        unfold seg6AccY75
        linear_combination -r3695
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4085 * rho 4086 = rho 4095 := by linear_combination r3696
    have hd1 : rho 4085 * rho 4085 = rho 4096 := by linear_combination r3697
    have hd2 : rho 4086 * rho 4086 = rho 4097 := by linear_combination r3698
    have hd3 : rho 4098 * (rho 4086 * rho 4086 + rho 4085 * rho 4085 * (-1)) = 2 * (rho 4085 * rho 4086) := by
      rw [hd0, hd1, hd2]
      linear_combination r3699
    have hd4 : rho 4099 * (2 - (rho 4086 * rho 4086 + rho 4085 * rho 4085 * (-1))) = rho 4086 * rho 4086 - rho 4085 * rho 4085 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3700
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX75 rho : Seg6.F), (seg6AccY75 rho : Seg6.F)⟩
      ⟨(rho 4085 : Seg6.F), (rho 4086 : Seg6.F)⟩
      ⟨(rho 4091 : Seg6.F), (rho 4092 : Seg6.F)⟩
      ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩
      ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung75

theorem seg6_rows76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3701 rho ∧ Seg6.relationRow3702 rho ∧ Seg6.relationRow3703 rho ∧ Seg6.relationRow3704 rho ∧ Seg6.relationRow3705 rho ∧ Seg6.relationRow3706 rho ∧ Seg6.relationRow3707 rho ∧ Seg6.relationRow3708 rho ∧ Seg6.relationRow3709 rho ∧ Seg6.relationRow3710 rho ∧ Seg6.relationRow3711 rho ∧ Seg6.relationRow3712 rho ∧ Seg6.relationRow3713 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713⟩

theorem seg6_rung76 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1966 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩
        ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩
        ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩
        ⟨(rho 4111 : Seg6.F), (rho 4112 : Seg6.F)⟩ := by
  obtain ⟨r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713⟩ := seg6_rows76 rho h
  unfold Seg6.relationRow3701 Seg6.relationLc468 at r3701
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3701
  unfold Seg6.relationRow3702 Seg6.relationLc469 at r3702
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3702
  unfold Seg6.relationRow3703 Seg6.relationLc470 at r3703
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3703
  unfold Seg6.relationRow3704 at r3704
  unfold Seg6.relationRow3705 at r3705
  unfold Seg6.relationRow3706 at r3706
  unfold Seg6.relationRow3707 Seg6.relationLc471 at r3707
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3707
  unfold Seg6.relationRow3708 Seg6.relationLc472 at r3708
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3708
  unfold Seg6.relationRow3709 at r3709
  unfold Seg6.relationRow3710 at r3710
  unfold Seg6.relationRow3711 at r3711
  unfold Seg6.relationRow3712 at r3712
  unfold Seg6.relationRow3713 at r3713
  have hrung76 (bit : Bool) (hbit : rho 1966 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩
        ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩
        ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩
        ⟨(rho 4111 : Seg6.F), (rho 4112 : Seg6.F)⟩ := by
    have hnextx : seg6AccX77 rho = seg6AccX76 rho + rho 4106 := by
      unfold seg6AccX77 seg6AccX76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 76]
      ring
    have hnexty : seg6AccY77 rho = seg6AccY76 rho + rho 4107 := by
      unfold seg6AccY77 seg6AccY76
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 76]
      ring
    have ha0 : (rho 4098 + rho 4099) * (seg6AccX76 rho + seg6AccY76 rho) = rho 4100 := by
      unfold seg6AccX76 seg6AccY76
      linear_combination r3701
    have ha1 : rho 4099 * seg6AccX76 rho = rho 4101 := by
      unfold seg6AccX76
      linear_combination r3702
    have ha2 : rho 4098 * seg6AccY76 rho = rho 4102 := by
      unfold seg6AccY76
      linear_combination r3703
    have ha3 : 3021 * rho 4101 * rho 4102 = rho 4103 := by
      linear_combination r3704
    have ha4 : rho 4104 * (1 + rho 4103) = rho 4101 + rho 4102 := by
      linear_combination r3705
    have ha5 : rho 4105 * (1 - rho 4103) = rho 4100 - rho 4101 - rho 4102 := by
      linear_combination r3706
    have haddx :
        rho 4104 * (1 + 3021 * (rho 4099 * seg6AccX76 rho) * (rho 4098 * seg6AccY76 rho)) =
          rho 4099 * seg6AccX76 rho + rho 4098 * seg6AccY76 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4105 * (1 - 3021 * (rho 4099 * seg6AccX76 rho) * (rho 4098 * seg6AccY76 rho)) =
          (-1) * (rho 4099 * seg6AccX76 rho) - rho 4098 * seg6AccY76 rho +
            (seg6AccY76 rho - seg6AccX76 rho * (-1)) * (rho 4098 + rho 4099) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4105 * (1 - rho 4103) = rho 4100 - rho 4101 - rho 4102 := ha5
        _ = (-1) * rho 4101 - rho 4102 + (seg6AccY76 rho - seg6AccX76 rho * (-1)) * (rho 4098 + rho 4099) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX77 rho = seg6AccX76 rho - Bool.toZMod bit * (seg6AccX76 rho - rho 4104) := by
      have hd : rho 4106 = Bool.toZMod bit * (rho 4104 - seg6AccX76 rho) := by
        rw [← hbit]
        unfold seg6AccX76
        linear_combination -r3707
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY77 rho = seg6AccY76 rho - Bool.toZMod bit * (seg6AccY76 rho - rho 4105) := by
      have hd : rho 4107 = Bool.toZMod bit * (rho 4105 - seg6AccY76 rho) := by
        rw [← hbit]
        unfold seg6AccY76
        linear_combination -r3708
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4098 * rho 4099 = rho 4108 := by linear_combination r3709
    have hd1 : rho 4098 * rho 4098 = rho 4109 := by linear_combination r3710
    have hd2 : rho 4099 * rho 4099 = rho 4110 := by linear_combination r3711
    have hd3 : rho 4111 * (rho 4099 * rho 4099 + rho 4098 * rho 4098 * (-1)) = 2 * (rho 4098 * rho 4099) := by
      rw [hd0, hd1, hd2]
      linear_combination r3712
    have hd4 : rho 4112 * (2 - (rho 4099 * rho 4099 + rho 4098 * rho 4098 * (-1))) = rho 4099 * rho 4099 - rho 4098 * rho 4098 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3713
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX76 rho : Seg6.F), (seg6AccY76 rho : Seg6.F)⟩
      ⟨(rho 4098 : Seg6.F), (rho 4099 : Seg6.F)⟩
      ⟨(rho 4104 : Seg6.F), (rho 4105 : Seg6.F)⟩
      ⟨(seg6AccX77 rho : Seg6.F), (seg6AccY77 rho : Seg6.F)⟩
      ⟨(rho 4111 : Seg6.F), (rho 4112 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung76

theorem seg6_hstep_c6 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 66 ≤ i → i < 77 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung66 rho h bits[66]! (hbitAt 66 (by omega)) hacc hcur
  · exact seg6_rung67 rho h bits[67]! (hbitAt 67 (by omega)) hacc hcur
  · exact seg6_rung68 rho h bits[68]! (hbitAt 68 (by omega)) hacc hcur
  · exact seg6_rung69 rho h bits[69]! (hbitAt 69 (by omega)) hacc hcur
  · exact seg6_rung70 rho h bits[70]! (hbitAt 70 (by omega)) hacc hcur
  · exact seg6_rung71 rho h bits[71]! (hbitAt 71 (by omega)) hacc hcur
  · exact seg6_rung72 rho h bits[72]! (hbitAt 72 (by omega)) hacc hcur
  · exact seg6_rung73 rho h bits[73]! (hbitAt 73 (by omega)) hacc hcur
  · exact seg6_rung74 rho h bits[74]! (hbitAt 74 (by omega)) hacc hcur
  · exact seg6_rung75 rho h bits[75]! (hbitAt 75 (by omega)) hacc hcur
  · exact seg6_rung76 rho h bits[76]! (hbitAt 76 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
