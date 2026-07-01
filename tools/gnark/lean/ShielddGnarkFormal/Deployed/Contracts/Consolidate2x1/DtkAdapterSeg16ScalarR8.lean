import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4109 rho ∧ Seg16.relationRow4110 rho ∧ Seg16.relationRow4111 rho ∧ Seg16.relationRow4112 rho ∧ Seg16.relationRow4113 rho ∧ Seg16.relationRow4114 rho ∧ Seg16.relationRow4115 rho ∧ Seg16.relationRow4116 rho ∧ Seg16.relationRow4117 rho ∧ Seg16.relationRow4118 rho ∧ Seg16.relationRow4119 rho ∧ Seg16.relationRow4120 rho ∧ Seg16.relationRow4121 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩

theorem seg16_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15380 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩ := by
  obtain ⟨r4109, r4110, r4111, r4112, r4113, r4114, r4115, r4116, r4117, r4118, r4119, r4120, r4121⟩ := seg16_rows88 rho h
  unfold Seg16.relationRow4109 at r4109
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4109
  unfold Seg16.relationRow4110 at r4110
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4110
  unfold Seg16.relationRow4111 at r4111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4111
  unfold Seg16.relationRow4112 at r4112
  unfold Seg16.relationRow4113 at r4113
  unfold Seg16.relationRow4114 at r4114
  unfold Seg16.relationRow4115 at r4115
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4115
  unfold Seg16.relationRow4116 at r4116
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4116
  unfold Seg16.relationRow4117 at r4117
  unfold Seg16.relationRow4118 at r4118
  unfold Seg16.relationRow4119 at r4119
  unfold Seg16.relationRow4120 at r4120
  unfold Seg16.relationRow4121 at r4121
  have hrung88 (bit : Bool) (hbit : rho 15380 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
        ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩ := by
    have hnextx : seg16AccX89 rho = seg16AccX88 rho + rho 16687 := by
      unfold seg16AccX89 seg16AccX88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 88]
      ring
    have hnexty : seg16AccY89 rho = seg16AccY88 rho + rho 16688 := by
      unfold seg16AccY89 seg16AccY88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 88]
      ring
    have ha0 : (rho 16679 + rho 16680) * (seg16AccX88 rho + seg16AccY88 rho) = rho 16681 := by
      unfold seg16AccX88 seg16AccY88
      linear_combination r4109
    have ha1 : rho 16680 * seg16AccX88 rho = rho 16682 := by
      unfold seg16AccX88
      linear_combination r4110
    have ha2 : rho 16679 * seg16AccY88 rho = rho 16683 := by
      unfold seg16AccY88
      linear_combination r4111
    have ha3 : 3021 * rho 16682 * rho 16683 = rho 16684 := by
      linear_combination r4112
    have ha4 : rho 16685 * (1 + rho 16684) = rho 16682 + rho 16683 := by
      linear_combination r4113
    have ha5 : rho 16686 * (1 - rho 16684) = rho 16681 - rho 16682 - rho 16683 := by
      linear_combination r4114
    have haddx :
        rho 16685 * (1 + 3021 * (rho 16680 * seg16AccX88 rho) * (rho 16679 * seg16AccY88 rho)) =
          rho 16680 * seg16AccX88 rho + rho 16679 * seg16AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16686 * (1 - 3021 * (rho 16680 * seg16AccX88 rho) * (rho 16679 * seg16AccY88 rho)) =
          (-1) * (rho 16680 * seg16AccX88 rho) - rho 16679 * seg16AccY88 rho +
            (seg16AccY88 rho - seg16AccX88 rho * (-1)) * (rho 16679 + rho 16680) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16686 * (1 - rho 16684) = rho 16681 - rho 16682 - rho 16683 := ha5
        _ = (-1) * rho 16682 - rho 16683 + (seg16AccY88 rho - seg16AccX88 rho * (-1)) * (rho 16679 + rho 16680) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX89 rho = seg16AccX88 rho - Bool.toZMod bit * (seg16AccX88 rho - rho 16685) := by
      have hd : rho 16687 = Bool.toZMod bit * (rho 16685 - seg16AccX88 rho) := by
        rw [← hbit]
        unfold seg16AccX88
        linear_combination -r4115
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY89 rho = seg16AccY88 rho - Bool.toZMod bit * (seg16AccY88 rho - rho 16686) := by
      have hd : rho 16688 = Bool.toZMod bit * (rho 16686 - seg16AccY88 rho) := by
        rw [← hbit]
        unfold seg16AccY88
        linear_combination -r4116
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16679 * rho 16680 = rho 16689 := by linear_combination r4117
    have hd1 : rho 16679 * rho 16679 = rho 16690 := by linear_combination r4118
    have hd2 : rho 16680 * rho 16680 = rho 16691 := by linear_combination r4119
    have hd3 : rho 16692 * (rho 16680 * rho 16680 + rho 16679 * rho 16679 * (-1)) = 2 * (rho 16679 * rho 16680) := by
      rw [hd0, hd1, hd2]
      linear_combination r4120
    have hd4 : rho 16693 * (2 - (rho 16680 * rho 16680 + rho 16679 * rho 16679 * (-1))) = rho 16680 * rho 16680 - rho 16679 * rho 16679 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4121
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX88 rho : Seg16.F), (seg16AccY88 rho : Seg16.F)⟩
      ⟨(rho 16679 : Seg16.F), (rho 16680 : Seg16.F)⟩
      ⟨(rho 16685 : Seg16.F), (rho 16686 : Seg16.F)⟩
      ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
      ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg16_rows89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4122 rho ∧ Seg16.relationRow4123 rho ∧ Seg16.relationRow4124 rho ∧ Seg16.relationRow4125 rho ∧ Seg16.relationRow4126 rho ∧ Seg16.relationRow4127 rho ∧ Seg16.relationRow4128 rho ∧ Seg16.relationRow4129 rho ∧ Seg16.relationRow4130 rho ∧ Seg16.relationRow4131 rho ∧ Seg16.relationRow4132 rho ∧ Seg16.relationRow4133 rho ∧ Seg16.relationRow4134 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩

theorem seg16_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15381 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩ := by
  obtain ⟨r4122, r4123, r4124, r4125, r4126, r4127, r4128, r4129, r4130, r4131, r4132, r4133, r4134⟩ := seg16_rows89 rho h
  unfold Seg16.relationRow4122 at r4122
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4122
  unfold Seg16.relationRow4123 at r4123
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4123
  unfold Seg16.relationRow4124 at r4124
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4124
  unfold Seg16.relationRow4125 at r4125
  unfold Seg16.relationRow4126 at r4126
  unfold Seg16.relationRow4127 at r4127
  unfold Seg16.relationRow4128 at r4128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4128
  unfold Seg16.relationRow4129 at r4129
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4129
  unfold Seg16.relationRow4130 at r4130
  unfold Seg16.relationRow4131 at r4131
  unfold Seg16.relationRow4132 at r4132
  unfold Seg16.relationRow4133 at r4133
  unfold Seg16.relationRow4134 at r4134
  have hrung89 (bit : Bool) (hbit : rho 15381 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
        ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩ := by
    have hnextx : seg16AccX90 rho = seg16AccX89 rho + rho 16700 := by
      unfold seg16AccX90 seg16AccX89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 89]
      ring
    have hnexty : seg16AccY90 rho = seg16AccY89 rho + rho 16701 := by
      unfold seg16AccY90 seg16AccY89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 89]
      ring
    have ha0 : (rho 16692 + rho 16693) * (seg16AccX89 rho + seg16AccY89 rho) = rho 16694 := by
      unfold seg16AccX89 seg16AccY89
      linear_combination r4122
    have ha1 : rho 16693 * seg16AccX89 rho = rho 16695 := by
      unfold seg16AccX89
      linear_combination r4123
    have ha2 : rho 16692 * seg16AccY89 rho = rho 16696 := by
      unfold seg16AccY89
      linear_combination r4124
    have ha3 : 3021 * rho 16695 * rho 16696 = rho 16697 := by
      linear_combination r4125
    have ha4 : rho 16698 * (1 + rho 16697) = rho 16695 + rho 16696 := by
      linear_combination r4126
    have ha5 : rho 16699 * (1 - rho 16697) = rho 16694 - rho 16695 - rho 16696 := by
      linear_combination r4127
    have haddx :
        rho 16698 * (1 + 3021 * (rho 16693 * seg16AccX89 rho) * (rho 16692 * seg16AccY89 rho)) =
          rho 16693 * seg16AccX89 rho + rho 16692 * seg16AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16699 * (1 - 3021 * (rho 16693 * seg16AccX89 rho) * (rho 16692 * seg16AccY89 rho)) =
          (-1) * (rho 16693 * seg16AccX89 rho) - rho 16692 * seg16AccY89 rho +
            (seg16AccY89 rho - seg16AccX89 rho * (-1)) * (rho 16692 + rho 16693) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16699 * (1 - rho 16697) = rho 16694 - rho 16695 - rho 16696 := ha5
        _ = (-1) * rho 16695 - rho 16696 + (seg16AccY89 rho - seg16AccX89 rho * (-1)) * (rho 16692 + rho 16693) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX90 rho = seg16AccX89 rho - Bool.toZMod bit * (seg16AccX89 rho - rho 16698) := by
      have hd : rho 16700 = Bool.toZMod bit * (rho 16698 - seg16AccX89 rho) := by
        rw [← hbit]
        unfold seg16AccX89
        linear_combination -r4128
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY90 rho = seg16AccY89 rho - Bool.toZMod bit * (seg16AccY89 rho - rho 16699) := by
      have hd : rho 16701 = Bool.toZMod bit * (rho 16699 - seg16AccY89 rho) := by
        rw [← hbit]
        unfold seg16AccY89
        linear_combination -r4129
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16692 * rho 16693 = rho 16702 := by linear_combination r4130
    have hd1 : rho 16692 * rho 16692 = rho 16703 := by linear_combination r4131
    have hd2 : rho 16693 * rho 16693 = rho 16704 := by linear_combination r4132
    have hd3 : rho 16705 * (rho 16693 * rho 16693 + rho 16692 * rho 16692 * (-1)) = 2 * (rho 16692 * rho 16693) := by
      rw [hd0, hd1, hd2]
      linear_combination r4133
    have hd4 : rho 16706 * (2 - (rho 16693 * rho 16693 + rho 16692 * rho 16692 * (-1))) = rho 16693 * rho 16693 - rho 16692 * rho 16692 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4134
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX89 rho : Seg16.F), (seg16AccY89 rho : Seg16.F)⟩
      ⟨(rho 16692 : Seg16.F), (rho 16693 : Seg16.F)⟩
      ⟨(rho 16698 : Seg16.F), (rho 16699 : Seg16.F)⟩
      ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
      ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg16_rows90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4135 rho ∧ Seg16.relationRow4136 rho ∧ Seg16.relationRow4137 rho ∧ Seg16.relationRow4138 rho ∧ Seg16.relationRow4139 rho ∧ Seg16.relationRow4140 rho ∧ Seg16.relationRow4141 rho ∧ Seg16.relationRow4142 rho ∧ Seg16.relationRow4143 rho ∧ Seg16.relationRow4144 rho ∧ Seg16.relationRow4145 rho ∧ Seg16.relationRow4146 rho ∧ Seg16.relationRow4147 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩

theorem seg16_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15382 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩ := by
  obtain ⟨r4135, r4136, r4137, r4138, r4139, r4140, r4141, r4142, r4143, r4144, r4145, r4146, r4147⟩ := seg16_rows90 rho h
  unfold Seg16.relationRow4135 at r4135
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4135
  unfold Seg16.relationRow4136 at r4136
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4136
  unfold Seg16.relationRow4137 at r4137
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4137
  unfold Seg16.relationRow4138 at r4138
  unfold Seg16.relationRow4139 at r4139
  unfold Seg16.relationRow4140 at r4140
  unfold Seg16.relationRow4141 at r4141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4141
  unfold Seg16.relationRow4142 at r4142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4142
  unfold Seg16.relationRow4143 at r4143
  unfold Seg16.relationRow4144 at r4144
  unfold Seg16.relationRow4145 at r4145
  unfold Seg16.relationRow4146 at r4146
  unfold Seg16.relationRow4147 at r4147
  have hrung90 (bit : Bool) (hbit : rho 15382 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
        ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩ := by
    have hnextx : seg16AccX91 rho = seg16AccX90 rho + rho 16713 := by
      unfold seg16AccX91 seg16AccX90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 90]
      ring
    have hnexty : seg16AccY91 rho = seg16AccY90 rho + rho 16714 := by
      unfold seg16AccY91 seg16AccY90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 90]
      ring
    have ha0 : (rho 16705 + rho 16706) * (seg16AccX90 rho + seg16AccY90 rho) = rho 16707 := by
      unfold seg16AccX90 seg16AccY90
      linear_combination r4135
    have ha1 : rho 16706 * seg16AccX90 rho = rho 16708 := by
      unfold seg16AccX90
      linear_combination r4136
    have ha2 : rho 16705 * seg16AccY90 rho = rho 16709 := by
      unfold seg16AccY90
      linear_combination r4137
    have ha3 : 3021 * rho 16708 * rho 16709 = rho 16710 := by
      linear_combination r4138
    have ha4 : rho 16711 * (1 + rho 16710) = rho 16708 + rho 16709 := by
      linear_combination r4139
    have ha5 : rho 16712 * (1 - rho 16710) = rho 16707 - rho 16708 - rho 16709 := by
      linear_combination r4140
    have haddx :
        rho 16711 * (1 + 3021 * (rho 16706 * seg16AccX90 rho) * (rho 16705 * seg16AccY90 rho)) =
          rho 16706 * seg16AccX90 rho + rho 16705 * seg16AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16712 * (1 - 3021 * (rho 16706 * seg16AccX90 rho) * (rho 16705 * seg16AccY90 rho)) =
          (-1) * (rho 16706 * seg16AccX90 rho) - rho 16705 * seg16AccY90 rho +
            (seg16AccY90 rho - seg16AccX90 rho * (-1)) * (rho 16705 + rho 16706) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16712 * (1 - rho 16710) = rho 16707 - rho 16708 - rho 16709 := ha5
        _ = (-1) * rho 16708 - rho 16709 + (seg16AccY90 rho - seg16AccX90 rho * (-1)) * (rho 16705 + rho 16706) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX91 rho = seg16AccX90 rho - Bool.toZMod bit * (seg16AccX90 rho - rho 16711) := by
      have hd : rho 16713 = Bool.toZMod bit * (rho 16711 - seg16AccX90 rho) := by
        rw [← hbit]
        unfold seg16AccX90
        linear_combination -r4141
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY91 rho = seg16AccY90 rho - Bool.toZMod bit * (seg16AccY90 rho - rho 16712) := by
      have hd : rho 16714 = Bool.toZMod bit * (rho 16712 - seg16AccY90 rho) := by
        rw [← hbit]
        unfold seg16AccY90
        linear_combination -r4142
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16705 * rho 16706 = rho 16715 := by linear_combination r4143
    have hd1 : rho 16705 * rho 16705 = rho 16716 := by linear_combination r4144
    have hd2 : rho 16706 * rho 16706 = rho 16717 := by linear_combination r4145
    have hd3 : rho 16718 * (rho 16706 * rho 16706 + rho 16705 * rho 16705 * (-1)) = 2 * (rho 16705 * rho 16706) := by
      rw [hd0, hd1, hd2]
      linear_combination r4146
    have hd4 : rho 16719 * (2 - (rho 16706 * rho 16706 + rho 16705 * rho 16705 * (-1))) = rho 16706 * rho 16706 - rho 16705 * rho 16705 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4147
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX90 rho : Seg16.F), (seg16AccY90 rho : Seg16.F)⟩
      ⟨(rho 16705 : Seg16.F), (rho 16706 : Seg16.F)⟩
      ⟨(rho 16711 : Seg16.F), (rho 16712 : Seg16.F)⟩
      ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
      ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg16_rows91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4148 rho ∧ Seg16.relationRow4149 rho ∧ Seg16.relationRow4150 rho ∧ Seg16.relationRow4151 rho ∧ Seg16.relationRow4152 rho ∧ Seg16.relationRow4153 rho ∧ Seg16.relationRow4154 rho ∧ Seg16.relationRow4155 rho ∧ Seg16.relationRow4156 rho ∧ Seg16.relationRow4157 rho ∧ Seg16.relationRow4158 rho ∧ Seg16.relationRow4159 rho ∧ Seg16.relationRow4160 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨r4160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩

theorem seg16_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15383 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩ := by
  obtain ⟨r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, r4156, r4157, r4158, r4159, r4160⟩ := seg16_rows91 rho h
  unfold Seg16.relationRow4148 at r4148
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4148
  unfold Seg16.relationRow4149 at r4149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149
  unfold Seg16.relationRow4150 at r4150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4150
  unfold Seg16.relationRow4151 at r4151
  unfold Seg16.relationRow4152 at r4152
  unfold Seg16.relationRow4153 at r4153
  unfold Seg16.relationRow4154 at r4154
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4154
  unfold Seg16.relationRow4155 at r4155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4155
  unfold Seg16.relationRow4156 at r4156
  unfold Seg16.relationRow4157 at r4157
  unfold Seg16.relationRow4158 at r4158
  unfold Seg16.relationRow4159 at r4159
  unfold Seg16.relationRow4160 at r4160
  have hrung91 (bit : Bool) (hbit : rho 15383 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
        ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩ := by
    have hnextx : seg16AccX92 rho = seg16AccX91 rho + rho 16726 := by
      unfold seg16AccX92 seg16AccX91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 91]
      ring
    have hnexty : seg16AccY92 rho = seg16AccY91 rho + rho 16727 := by
      unfold seg16AccY92 seg16AccY91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 91]
      ring
    have ha0 : (rho 16718 + rho 16719) * (seg16AccX91 rho + seg16AccY91 rho) = rho 16720 := by
      unfold seg16AccX91 seg16AccY91
      linear_combination r4148
    have ha1 : rho 16719 * seg16AccX91 rho = rho 16721 := by
      unfold seg16AccX91
      linear_combination r4149
    have ha2 : rho 16718 * seg16AccY91 rho = rho 16722 := by
      unfold seg16AccY91
      linear_combination r4150
    have ha3 : 3021 * rho 16721 * rho 16722 = rho 16723 := by
      linear_combination r4151
    have ha4 : rho 16724 * (1 + rho 16723) = rho 16721 + rho 16722 := by
      linear_combination r4152
    have ha5 : rho 16725 * (1 - rho 16723) = rho 16720 - rho 16721 - rho 16722 := by
      linear_combination r4153
    have haddx :
        rho 16724 * (1 + 3021 * (rho 16719 * seg16AccX91 rho) * (rho 16718 * seg16AccY91 rho)) =
          rho 16719 * seg16AccX91 rho + rho 16718 * seg16AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16725 * (1 - 3021 * (rho 16719 * seg16AccX91 rho) * (rho 16718 * seg16AccY91 rho)) =
          (-1) * (rho 16719 * seg16AccX91 rho) - rho 16718 * seg16AccY91 rho +
            (seg16AccY91 rho - seg16AccX91 rho * (-1)) * (rho 16718 + rho 16719) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16725 * (1 - rho 16723) = rho 16720 - rho 16721 - rho 16722 := ha5
        _ = (-1) * rho 16721 - rho 16722 + (seg16AccY91 rho - seg16AccX91 rho * (-1)) * (rho 16718 + rho 16719) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX92 rho = seg16AccX91 rho - Bool.toZMod bit * (seg16AccX91 rho - rho 16724) := by
      have hd : rho 16726 = Bool.toZMod bit * (rho 16724 - seg16AccX91 rho) := by
        rw [← hbit]
        unfold seg16AccX91
        linear_combination -r4154
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY92 rho = seg16AccY91 rho - Bool.toZMod bit * (seg16AccY91 rho - rho 16725) := by
      have hd : rho 16727 = Bool.toZMod bit * (rho 16725 - seg16AccY91 rho) := by
        rw [← hbit]
        unfold seg16AccY91
        linear_combination -r4155
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16718 * rho 16719 = rho 16728 := by linear_combination r4156
    have hd1 : rho 16718 * rho 16718 = rho 16729 := by linear_combination r4157
    have hd2 : rho 16719 * rho 16719 = rho 16730 := by linear_combination r4158
    have hd3 : rho 16731 * (rho 16719 * rho 16719 + rho 16718 * rho 16718 * (-1)) = 2 * (rho 16718 * rho 16719) := by
      rw [hd0, hd1, hd2]
      linear_combination r4159
    have hd4 : rho 16732 * (2 - (rho 16719 * rho 16719 + rho 16718 * rho 16718 * (-1))) = rho 16719 * rho 16719 - rho 16718 * rho 16718 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4160
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX91 rho : Seg16.F), (seg16AccY91 rho : Seg16.F)⟩
      ⟨(rho 16718 : Seg16.F), (rho 16719 : Seg16.F)⟩
      ⟨(rho 16724 : Seg16.F), (rho 16725 : Seg16.F)⟩
      ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
      ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg16_rows92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4161 rho ∧ Seg16.relationRow4162 rho ∧ Seg16.relationRow4163 rho ∧ Seg16.relationRow4164 rho ∧ Seg16.relationRow4165 rho ∧ Seg16.relationRow4166 rho ∧ Seg16.relationRow4167 rho ∧ Seg16.relationRow4168 rho ∧ Seg16.relationRow4169 rho ∧ Seg16.relationRow4170 rho ∧ Seg16.relationRow4171 rho ∧ Seg16.relationRow4172 rho ∧ Seg16.relationRow4173 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩

theorem seg16_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15384 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩ := by
  obtain ⟨r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, r4169, r4170, r4171, r4172, r4173⟩ := seg16_rows92 rho h
  unfold Seg16.relationRow4161 at r4161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4161
  unfold Seg16.relationRow4162 at r4162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162
  unfold Seg16.relationRow4163 at r4163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4163
  unfold Seg16.relationRow4164 at r4164
  unfold Seg16.relationRow4165 at r4165
  unfold Seg16.relationRow4166 at r4166
  unfold Seg16.relationRow4167 at r4167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4167
  unfold Seg16.relationRow4168 at r4168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4168
  unfold Seg16.relationRow4169 at r4169
  unfold Seg16.relationRow4170 at r4170
  unfold Seg16.relationRow4171 at r4171
  unfold Seg16.relationRow4172 at r4172
  unfold Seg16.relationRow4173 at r4173
  have hrung92 (bit : Bool) (hbit : rho 15384 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
        ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩ := by
    have hnextx : seg16AccX93 rho = seg16AccX92 rho + rho 16739 := by
      unfold seg16AccX93 seg16AccX92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 92]
      ring
    have hnexty : seg16AccY93 rho = seg16AccY92 rho + rho 16740 := by
      unfold seg16AccY93 seg16AccY92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 92]
      ring
    have ha0 : (rho 16731 + rho 16732) * (seg16AccX92 rho + seg16AccY92 rho) = rho 16733 := by
      unfold seg16AccX92 seg16AccY92
      linear_combination r4161
    have ha1 : rho 16732 * seg16AccX92 rho = rho 16734 := by
      unfold seg16AccX92
      linear_combination r4162
    have ha2 : rho 16731 * seg16AccY92 rho = rho 16735 := by
      unfold seg16AccY92
      linear_combination r4163
    have ha3 : 3021 * rho 16734 * rho 16735 = rho 16736 := by
      linear_combination r4164
    have ha4 : rho 16737 * (1 + rho 16736) = rho 16734 + rho 16735 := by
      linear_combination r4165
    have ha5 : rho 16738 * (1 - rho 16736) = rho 16733 - rho 16734 - rho 16735 := by
      linear_combination r4166
    have haddx :
        rho 16737 * (1 + 3021 * (rho 16732 * seg16AccX92 rho) * (rho 16731 * seg16AccY92 rho)) =
          rho 16732 * seg16AccX92 rho + rho 16731 * seg16AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16738 * (1 - 3021 * (rho 16732 * seg16AccX92 rho) * (rho 16731 * seg16AccY92 rho)) =
          (-1) * (rho 16732 * seg16AccX92 rho) - rho 16731 * seg16AccY92 rho +
            (seg16AccY92 rho - seg16AccX92 rho * (-1)) * (rho 16731 + rho 16732) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16738 * (1 - rho 16736) = rho 16733 - rho 16734 - rho 16735 := ha5
        _ = (-1) * rho 16734 - rho 16735 + (seg16AccY92 rho - seg16AccX92 rho * (-1)) * (rho 16731 + rho 16732) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX93 rho = seg16AccX92 rho - Bool.toZMod bit * (seg16AccX92 rho - rho 16737) := by
      have hd : rho 16739 = Bool.toZMod bit * (rho 16737 - seg16AccX92 rho) := by
        rw [← hbit]
        unfold seg16AccX92
        linear_combination -r4167
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY93 rho = seg16AccY92 rho - Bool.toZMod bit * (seg16AccY92 rho - rho 16738) := by
      have hd : rho 16740 = Bool.toZMod bit * (rho 16738 - seg16AccY92 rho) := by
        rw [← hbit]
        unfold seg16AccY92
        linear_combination -r4168
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16731 * rho 16732 = rho 16741 := by linear_combination r4169
    have hd1 : rho 16731 * rho 16731 = rho 16742 := by linear_combination r4170
    have hd2 : rho 16732 * rho 16732 = rho 16743 := by linear_combination r4171
    have hd3 : rho 16744 * (rho 16732 * rho 16732 + rho 16731 * rho 16731 * (-1)) = 2 * (rho 16731 * rho 16732) := by
      rw [hd0, hd1, hd2]
      linear_combination r4172
    have hd4 : rho 16745 * (2 - (rho 16732 * rho 16732 + rho 16731 * rho 16731 * (-1))) = rho 16732 * rho 16732 - rho 16731 * rho 16731 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4173
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX92 rho : Seg16.F), (seg16AccY92 rho : Seg16.F)⟩
      ⟨(rho 16731 : Seg16.F), (rho 16732 : Seg16.F)⟩
      ⟨(rho 16737 : Seg16.F), (rho 16738 : Seg16.F)⟩
      ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
      ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg16_rows93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4174 rho ∧ Seg16.relationRow4175 rho ∧ Seg16.relationRow4176 rho ∧ Seg16.relationRow4177 rho ∧ Seg16.relationRow4178 rho ∧ Seg16.relationRow4179 rho ∧ Seg16.relationRow4180 rho ∧ Seg16.relationRow4181 rho ∧ Seg16.relationRow4182 rho ∧ Seg16.relationRow4183 rho ∧ Seg16.relationRow4184 rho ∧ Seg16.relationRow4185 rho ∧ Seg16.relationRow4186 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩

theorem seg16_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15385 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩ := by
  obtain ⟨r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, r4182, r4183, r4184, r4185, r4186⟩ := seg16_rows93 rho h
  unfold Seg16.relationRow4174 at r4174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4174
  unfold Seg16.relationRow4175 at r4175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175
  unfold Seg16.relationRow4176 at r4176
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4176
  unfold Seg16.relationRow4177 at r4177
  unfold Seg16.relationRow4178 at r4178
  unfold Seg16.relationRow4179 at r4179
  unfold Seg16.relationRow4180 at r4180
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4180
  unfold Seg16.relationRow4181 at r4181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4181
  unfold Seg16.relationRow4182 at r4182
  unfold Seg16.relationRow4183 at r4183
  unfold Seg16.relationRow4184 at r4184
  unfold Seg16.relationRow4185 at r4185
  unfold Seg16.relationRow4186 at r4186
  have hrung93 (bit : Bool) (hbit : rho 15385 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
        ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩ := by
    have hnextx : seg16AccX94 rho = seg16AccX93 rho + rho 16752 := by
      unfold seg16AccX94 seg16AccX93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 93]
      ring
    have hnexty : seg16AccY94 rho = seg16AccY93 rho + rho 16753 := by
      unfold seg16AccY94 seg16AccY93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 93]
      ring
    have ha0 : (rho 16744 + rho 16745) * (seg16AccX93 rho + seg16AccY93 rho) = rho 16746 := by
      unfold seg16AccX93 seg16AccY93
      linear_combination r4174
    have ha1 : rho 16745 * seg16AccX93 rho = rho 16747 := by
      unfold seg16AccX93
      linear_combination r4175
    have ha2 : rho 16744 * seg16AccY93 rho = rho 16748 := by
      unfold seg16AccY93
      linear_combination r4176
    have ha3 : 3021 * rho 16747 * rho 16748 = rho 16749 := by
      linear_combination r4177
    have ha4 : rho 16750 * (1 + rho 16749) = rho 16747 + rho 16748 := by
      linear_combination r4178
    have ha5 : rho 16751 * (1 - rho 16749) = rho 16746 - rho 16747 - rho 16748 := by
      linear_combination r4179
    have haddx :
        rho 16750 * (1 + 3021 * (rho 16745 * seg16AccX93 rho) * (rho 16744 * seg16AccY93 rho)) =
          rho 16745 * seg16AccX93 rho + rho 16744 * seg16AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16751 * (1 - 3021 * (rho 16745 * seg16AccX93 rho) * (rho 16744 * seg16AccY93 rho)) =
          (-1) * (rho 16745 * seg16AccX93 rho) - rho 16744 * seg16AccY93 rho +
            (seg16AccY93 rho - seg16AccX93 rho * (-1)) * (rho 16744 + rho 16745) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16751 * (1 - rho 16749) = rho 16746 - rho 16747 - rho 16748 := ha5
        _ = (-1) * rho 16747 - rho 16748 + (seg16AccY93 rho - seg16AccX93 rho * (-1)) * (rho 16744 + rho 16745) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX94 rho = seg16AccX93 rho - Bool.toZMod bit * (seg16AccX93 rho - rho 16750) := by
      have hd : rho 16752 = Bool.toZMod bit * (rho 16750 - seg16AccX93 rho) := by
        rw [← hbit]
        unfold seg16AccX93
        linear_combination -r4180
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY94 rho = seg16AccY93 rho - Bool.toZMod bit * (seg16AccY93 rho - rho 16751) := by
      have hd : rho 16753 = Bool.toZMod bit * (rho 16751 - seg16AccY93 rho) := by
        rw [← hbit]
        unfold seg16AccY93
        linear_combination -r4181
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16744 * rho 16745 = rho 16754 := by linear_combination r4182
    have hd1 : rho 16744 * rho 16744 = rho 16755 := by linear_combination r4183
    have hd2 : rho 16745 * rho 16745 = rho 16756 := by linear_combination r4184
    have hd3 : rho 16757 * (rho 16745 * rho 16745 + rho 16744 * rho 16744 * (-1)) = 2 * (rho 16744 * rho 16745) := by
      rw [hd0, hd1, hd2]
      linear_combination r4185
    have hd4 : rho 16758 * (2 - (rho 16745 * rho 16745 + rho 16744 * rho 16744 * (-1))) = rho 16745 * rho 16745 - rho 16744 * rho 16744 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4186
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX93 rho : Seg16.F), (seg16AccY93 rho : Seg16.F)⟩
      ⟨(rho 16744 : Seg16.F), (rho 16745 : Seg16.F)⟩
      ⟨(rho 16750 : Seg16.F), (rho 16751 : Seg16.F)⟩
      ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
      ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg16_rows94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4187 rho ∧ Seg16.relationRow4188 rho ∧ Seg16.relationRow4189 rho ∧ Seg16.relationRow4190 rho ∧ Seg16.relationRow4191 rho ∧ Seg16.relationRow4192 rho ∧ Seg16.relationRow4193 rho ∧ Seg16.relationRow4194 rho ∧ Seg16.relationRow4195 rho ∧ Seg16.relationRow4196 rho ∧ Seg16.relationRow4197 rho ∧ Seg16.relationRow4198 rho ∧ Seg16.relationRow4199 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩

theorem seg16_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15386 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩ := by
  obtain ⟨r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, r4195, r4196, r4197, r4198, r4199⟩ := seg16_rows94 rho h
  unfold Seg16.relationRow4187 at r4187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4187
  unfold Seg16.relationRow4188 at r4188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188
  unfold Seg16.relationRow4189 at r4189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4189
  unfold Seg16.relationRow4190 at r4190
  unfold Seg16.relationRow4191 at r4191
  unfold Seg16.relationRow4192 at r4192
  unfold Seg16.relationRow4193 at r4193
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4193
  unfold Seg16.relationRow4194 at r4194
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4194
  unfold Seg16.relationRow4195 at r4195
  unfold Seg16.relationRow4196 at r4196
  unfold Seg16.relationRow4197 at r4197
  unfold Seg16.relationRow4198 at r4198
  unfold Seg16.relationRow4199 at r4199
  have hrung94 (bit : Bool) (hbit : rho 15386 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
        ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩ := by
    have hnextx : seg16AccX95 rho = seg16AccX94 rho + rho 16765 := by
      unfold seg16AccX95 seg16AccX94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 94]
      ring
    have hnexty : seg16AccY95 rho = seg16AccY94 rho + rho 16766 := by
      unfold seg16AccY95 seg16AccY94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 94]
      ring
    have ha0 : (rho 16757 + rho 16758) * (seg16AccX94 rho + seg16AccY94 rho) = rho 16759 := by
      unfold seg16AccX94 seg16AccY94
      linear_combination r4187
    have ha1 : rho 16758 * seg16AccX94 rho = rho 16760 := by
      unfold seg16AccX94
      linear_combination r4188
    have ha2 : rho 16757 * seg16AccY94 rho = rho 16761 := by
      unfold seg16AccY94
      linear_combination r4189
    have ha3 : 3021 * rho 16760 * rho 16761 = rho 16762 := by
      linear_combination r4190
    have ha4 : rho 16763 * (1 + rho 16762) = rho 16760 + rho 16761 := by
      linear_combination r4191
    have ha5 : rho 16764 * (1 - rho 16762) = rho 16759 - rho 16760 - rho 16761 := by
      linear_combination r4192
    have haddx :
        rho 16763 * (1 + 3021 * (rho 16758 * seg16AccX94 rho) * (rho 16757 * seg16AccY94 rho)) =
          rho 16758 * seg16AccX94 rho + rho 16757 * seg16AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16764 * (1 - 3021 * (rho 16758 * seg16AccX94 rho) * (rho 16757 * seg16AccY94 rho)) =
          (-1) * (rho 16758 * seg16AccX94 rho) - rho 16757 * seg16AccY94 rho +
            (seg16AccY94 rho - seg16AccX94 rho * (-1)) * (rho 16757 + rho 16758) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16764 * (1 - rho 16762) = rho 16759 - rho 16760 - rho 16761 := ha5
        _ = (-1) * rho 16760 - rho 16761 + (seg16AccY94 rho - seg16AccX94 rho * (-1)) * (rho 16757 + rho 16758) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX95 rho = seg16AccX94 rho - Bool.toZMod bit * (seg16AccX94 rho - rho 16763) := by
      have hd : rho 16765 = Bool.toZMod bit * (rho 16763 - seg16AccX94 rho) := by
        rw [← hbit]
        unfold seg16AccX94
        linear_combination -r4193
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY95 rho = seg16AccY94 rho - Bool.toZMod bit * (seg16AccY94 rho - rho 16764) := by
      have hd : rho 16766 = Bool.toZMod bit * (rho 16764 - seg16AccY94 rho) := by
        rw [← hbit]
        unfold seg16AccY94
        linear_combination -r4194
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16757 * rho 16758 = rho 16767 := by linear_combination r4195
    have hd1 : rho 16757 * rho 16757 = rho 16768 := by linear_combination r4196
    have hd2 : rho 16758 * rho 16758 = rho 16769 := by linear_combination r4197
    have hd3 : rho 16770 * (rho 16758 * rho 16758 + rho 16757 * rho 16757 * (-1)) = 2 * (rho 16757 * rho 16758) := by
      rw [hd0, hd1, hd2]
      linear_combination r4198
    have hd4 : rho 16771 * (2 - (rho 16758 * rho 16758 + rho 16757 * rho 16757 * (-1))) = rho 16758 * rho 16758 - rho 16757 * rho 16757 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4199
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX94 rho : Seg16.F), (seg16AccY94 rho : Seg16.F)⟩
      ⟨(rho 16757 : Seg16.F), (rho 16758 : Seg16.F)⟩
      ⟨(rho 16763 : Seg16.F), (rho 16764 : Seg16.F)⟩
      ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
      ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg16_rows95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4200 rho ∧ Seg16.relationRow4201 rho ∧ Seg16.relationRow4202 rho ∧ Seg16.relationRow4203 rho ∧ Seg16.relationRow4204 rho ∧ Seg16.relationRow4205 rho ∧ Seg16.relationRow4206 rho ∧ Seg16.relationRow4207 rho ∧ Seg16.relationRow4208 rho ∧ Seg16.relationRow4209 rho ∧ Seg16.relationRow4210 rho ∧ Seg16.relationRow4211 rho ∧ Seg16.relationRow4212 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩

theorem seg16_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15387 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩ := by
  obtain ⟨r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212⟩ := seg16_rows95 rho h
  unfold Seg16.relationRow4200 at r4200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4200
  unfold Seg16.relationRow4201 at r4201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201
  unfold Seg16.relationRow4202 at r4202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4202
  unfold Seg16.relationRow4203 at r4203
  unfold Seg16.relationRow4204 at r4204
  unfold Seg16.relationRow4205 at r4205
  unfold Seg16.relationRow4206 at r4206
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4206
  unfold Seg16.relationRow4207 at r4207
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4207
  unfold Seg16.relationRow4208 at r4208
  unfold Seg16.relationRow4209 at r4209
  unfold Seg16.relationRow4210 at r4210
  unfold Seg16.relationRow4211 at r4211
  unfold Seg16.relationRow4212 at r4212
  have hrung95 (bit : Bool) (hbit : rho 15387 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
        ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩ := by
    have hnextx : seg16AccX96 rho = seg16AccX95 rho + rho 16778 := by
      unfold seg16AccX96 seg16AccX95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 95]
      ring
    have hnexty : seg16AccY96 rho = seg16AccY95 rho + rho 16779 := by
      unfold seg16AccY96 seg16AccY95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 95]
      ring
    have ha0 : (rho 16770 + rho 16771) * (seg16AccX95 rho + seg16AccY95 rho) = rho 16772 := by
      unfold seg16AccX95 seg16AccY95
      linear_combination r4200
    have ha1 : rho 16771 * seg16AccX95 rho = rho 16773 := by
      unfold seg16AccX95
      linear_combination r4201
    have ha2 : rho 16770 * seg16AccY95 rho = rho 16774 := by
      unfold seg16AccY95
      linear_combination r4202
    have ha3 : 3021 * rho 16773 * rho 16774 = rho 16775 := by
      linear_combination r4203
    have ha4 : rho 16776 * (1 + rho 16775) = rho 16773 + rho 16774 := by
      linear_combination r4204
    have ha5 : rho 16777 * (1 - rho 16775) = rho 16772 - rho 16773 - rho 16774 := by
      linear_combination r4205
    have haddx :
        rho 16776 * (1 + 3021 * (rho 16771 * seg16AccX95 rho) * (rho 16770 * seg16AccY95 rho)) =
          rho 16771 * seg16AccX95 rho + rho 16770 * seg16AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16777 * (1 - 3021 * (rho 16771 * seg16AccX95 rho) * (rho 16770 * seg16AccY95 rho)) =
          (-1) * (rho 16771 * seg16AccX95 rho) - rho 16770 * seg16AccY95 rho +
            (seg16AccY95 rho - seg16AccX95 rho * (-1)) * (rho 16770 + rho 16771) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16777 * (1 - rho 16775) = rho 16772 - rho 16773 - rho 16774 := ha5
        _ = (-1) * rho 16773 - rho 16774 + (seg16AccY95 rho - seg16AccX95 rho * (-1)) * (rho 16770 + rho 16771) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX96 rho = seg16AccX95 rho - Bool.toZMod bit * (seg16AccX95 rho - rho 16776) := by
      have hd : rho 16778 = Bool.toZMod bit * (rho 16776 - seg16AccX95 rho) := by
        rw [← hbit]
        unfold seg16AccX95
        linear_combination -r4206
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY96 rho = seg16AccY95 rho - Bool.toZMod bit * (seg16AccY95 rho - rho 16777) := by
      have hd : rho 16779 = Bool.toZMod bit * (rho 16777 - seg16AccY95 rho) := by
        rw [← hbit]
        unfold seg16AccY95
        linear_combination -r4207
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16770 * rho 16771 = rho 16780 := by linear_combination r4208
    have hd1 : rho 16770 * rho 16770 = rho 16781 := by linear_combination r4209
    have hd2 : rho 16771 * rho 16771 = rho 16782 := by linear_combination r4210
    have hd3 : rho 16783 * (rho 16771 * rho 16771 + rho 16770 * rho 16770 * (-1)) = 2 * (rho 16770 * rho 16771) := by
      rw [hd0, hd1, hd2]
      linear_combination r4211
    have hd4 : rho 16784 * (2 - (rho 16771 * rho 16771 + rho 16770 * rho 16770 * (-1))) = rho 16771 * rho 16771 - rho 16770 * rho 16770 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4212
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX95 rho : Seg16.F), (seg16AccY95 rho : Seg16.F)⟩
      ⟨(rho 16770 : Seg16.F), (rho 16771 : Seg16.F)⟩
      ⟨(rho 16776 : Seg16.F), (rho 16777 : Seg16.F)⟩
      ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
      ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg16_rows96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4213 rho ∧ Seg16.relationRow4214 rho ∧ Seg16.relationRow4215 rho ∧ Seg16.relationRow4216 rho ∧ Seg16.relationRow4217 rho ∧ Seg16.relationRow4218 rho ∧ Seg16.relationRow4219 rho ∧ Seg16.relationRow4220 rho ∧ Seg16.relationRow4221 rho ∧ Seg16.relationRow4222 rho ∧ Seg16.relationRow4223 rho ∧ Seg16.relationRow4224 rho ∧ Seg16.relationRow4225 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩

theorem seg16_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15388 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩ := by
  obtain ⟨r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, r4223, r4224, r4225⟩ := seg16_rows96 rho h
  unfold Seg16.relationRow4213 at r4213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4213
  unfold Seg16.relationRow4214 at r4214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214
  unfold Seg16.relationRow4215 at r4215
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4215
  unfold Seg16.relationRow4216 at r4216
  unfold Seg16.relationRow4217 at r4217
  unfold Seg16.relationRow4218 at r4218
  unfold Seg16.relationRow4219 at r4219
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4219
  unfold Seg16.relationRow4220 at r4220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4220
  unfold Seg16.relationRow4221 at r4221
  unfold Seg16.relationRow4222 at r4222
  unfold Seg16.relationRow4223 at r4223
  unfold Seg16.relationRow4224 at r4224
  unfold Seg16.relationRow4225 at r4225
  have hrung96 (bit : Bool) (hbit : rho 15388 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
        ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩ := by
    have hnextx : seg16AccX97 rho = seg16AccX96 rho + rho 16791 := by
      unfold seg16AccX97 seg16AccX96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 96]
      ring
    have hnexty : seg16AccY97 rho = seg16AccY96 rho + rho 16792 := by
      unfold seg16AccY97 seg16AccY96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 96]
      ring
    have ha0 : (rho 16783 + rho 16784) * (seg16AccX96 rho + seg16AccY96 rho) = rho 16785 := by
      unfold seg16AccX96 seg16AccY96
      linear_combination r4213
    have ha1 : rho 16784 * seg16AccX96 rho = rho 16786 := by
      unfold seg16AccX96
      linear_combination r4214
    have ha2 : rho 16783 * seg16AccY96 rho = rho 16787 := by
      unfold seg16AccY96
      linear_combination r4215
    have ha3 : 3021 * rho 16786 * rho 16787 = rho 16788 := by
      linear_combination r4216
    have ha4 : rho 16789 * (1 + rho 16788) = rho 16786 + rho 16787 := by
      linear_combination r4217
    have ha5 : rho 16790 * (1 - rho 16788) = rho 16785 - rho 16786 - rho 16787 := by
      linear_combination r4218
    have haddx :
        rho 16789 * (1 + 3021 * (rho 16784 * seg16AccX96 rho) * (rho 16783 * seg16AccY96 rho)) =
          rho 16784 * seg16AccX96 rho + rho 16783 * seg16AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16790 * (1 - 3021 * (rho 16784 * seg16AccX96 rho) * (rho 16783 * seg16AccY96 rho)) =
          (-1) * (rho 16784 * seg16AccX96 rho) - rho 16783 * seg16AccY96 rho +
            (seg16AccY96 rho - seg16AccX96 rho * (-1)) * (rho 16783 + rho 16784) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16790 * (1 - rho 16788) = rho 16785 - rho 16786 - rho 16787 := ha5
        _ = (-1) * rho 16786 - rho 16787 + (seg16AccY96 rho - seg16AccX96 rho * (-1)) * (rho 16783 + rho 16784) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX97 rho = seg16AccX96 rho - Bool.toZMod bit * (seg16AccX96 rho - rho 16789) := by
      have hd : rho 16791 = Bool.toZMod bit * (rho 16789 - seg16AccX96 rho) := by
        rw [← hbit]
        unfold seg16AccX96
        linear_combination -r4219
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY97 rho = seg16AccY96 rho - Bool.toZMod bit * (seg16AccY96 rho - rho 16790) := by
      have hd : rho 16792 = Bool.toZMod bit * (rho 16790 - seg16AccY96 rho) := by
        rw [← hbit]
        unfold seg16AccY96
        linear_combination -r4220
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16783 * rho 16784 = rho 16793 := by linear_combination r4221
    have hd1 : rho 16783 * rho 16783 = rho 16794 := by linear_combination r4222
    have hd2 : rho 16784 * rho 16784 = rho 16795 := by linear_combination r4223
    have hd3 : rho 16796 * (rho 16784 * rho 16784 + rho 16783 * rho 16783 * (-1)) = 2 * (rho 16783 * rho 16784) := by
      rw [hd0, hd1, hd2]
      linear_combination r4224
    have hd4 : rho 16797 * (2 - (rho 16784 * rho 16784 + rho 16783 * rho 16783 * (-1))) = rho 16784 * rho 16784 - rho 16783 * rho 16783 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4225
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX96 rho : Seg16.F), (seg16AccY96 rho : Seg16.F)⟩
      ⟨(rho 16783 : Seg16.F), (rho 16784 : Seg16.F)⟩
      ⟨(rho 16789 : Seg16.F), (rho 16790 : Seg16.F)⟩
      ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
      ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg16_rows97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4226 rho ∧ Seg16.relationRow4227 rho ∧ Seg16.relationRow4228 rho ∧ Seg16.relationRow4229 rho ∧ Seg16.relationRow4230 rho ∧ Seg16.relationRow4231 rho ∧ Seg16.relationRow4232 rho ∧ Seg16.relationRow4233 rho ∧ Seg16.relationRow4234 rho ∧ Seg16.relationRow4235 rho ∧ Seg16.relationRow4236 rho ∧ Seg16.relationRow4237 rho ∧ Seg16.relationRow4238 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, _⟩
  exact ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩

theorem seg16_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15389 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩ := by
  obtain ⟨r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238⟩ := seg16_rows97 rho h
  unfold Seg16.relationRow4226 at r4226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4226
  unfold Seg16.relationRow4227 at r4227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227
  unfold Seg16.relationRow4228 at r4228
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4228
  unfold Seg16.relationRow4229 at r4229
  unfold Seg16.relationRow4230 at r4230
  unfold Seg16.relationRow4231 at r4231
  unfold Seg16.relationRow4232 at r4232
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4232
  unfold Seg16.relationRow4233 at r4233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4233
  unfold Seg16.relationRow4234 at r4234
  unfold Seg16.relationRow4235 at r4235
  unfold Seg16.relationRow4236 at r4236
  unfold Seg16.relationRow4237 at r4237
  unfold Seg16.relationRow4238 at r4238
  have hrung97 (bit : Bool) (hbit : rho 15389 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
        ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩ := by
    have hnextx : seg16AccX98 rho = seg16AccX97 rho + rho 16804 := by
      unfold seg16AccX98 seg16AccX97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 97]
      ring
    have hnexty : seg16AccY98 rho = seg16AccY97 rho + rho 16805 := by
      unfold seg16AccY98 seg16AccY97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 97]
      ring
    have ha0 : (rho 16796 + rho 16797) * (seg16AccX97 rho + seg16AccY97 rho) = rho 16798 := by
      unfold seg16AccX97 seg16AccY97
      linear_combination r4226
    have ha1 : rho 16797 * seg16AccX97 rho = rho 16799 := by
      unfold seg16AccX97
      linear_combination r4227
    have ha2 : rho 16796 * seg16AccY97 rho = rho 16800 := by
      unfold seg16AccY97
      linear_combination r4228
    have ha3 : 3021 * rho 16799 * rho 16800 = rho 16801 := by
      linear_combination r4229
    have ha4 : rho 16802 * (1 + rho 16801) = rho 16799 + rho 16800 := by
      linear_combination r4230
    have ha5 : rho 16803 * (1 - rho 16801) = rho 16798 - rho 16799 - rho 16800 := by
      linear_combination r4231
    have haddx :
        rho 16802 * (1 + 3021 * (rho 16797 * seg16AccX97 rho) * (rho 16796 * seg16AccY97 rho)) =
          rho 16797 * seg16AccX97 rho + rho 16796 * seg16AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16803 * (1 - 3021 * (rho 16797 * seg16AccX97 rho) * (rho 16796 * seg16AccY97 rho)) =
          (-1) * (rho 16797 * seg16AccX97 rho) - rho 16796 * seg16AccY97 rho +
            (seg16AccY97 rho - seg16AccX97 rho * (-1)) * (rho 16796 + rho 16797) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16803 * (1 - rho 16801) = rho 16798 - rho 16799 - rho 16800 := ha5
        _ = (-1) * rho 16799 - rho 16800 + (seg16AccY97 rho - seg16AccX97 rho * (-1)) * (rho 16796 + rho 16797) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX98 rho = seg16AccX97 rho - Bool.toZMod bit * (seg16AccX97 rho - rho 16802) := by
      have hd : rho 16804 = Bool.toZMod bit * (rho 16802 - seg16AccX97 rho) := by
        rw [← hbit]
        unfold seg16AccX97
        linear_combination -r4232
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY98 rho = seg16AccY97 rho - Bool.toZMod bit * (seg16AccY97 rho - rho 16803) := by
      have hd : rho 16805 = Bool.toZMod bit * (rho 16803 - seg16AccY97 rho) := by
        rw [← hbit]
        unfold seg16AccY97
        linear_combination -r4233
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16796 * rho 16797 = rho 16806 := by linear_combination r4234
    have hd1 : rho 16796 * rho 16796 = rho 16807 := by linear_combination r4235
    have hd2 : rho 16797 * rho 16797 = rho 16808 := by linear_combination r4236
    have hd3 : rho 16809 * (rho 16797 * rho 16797 + rho 16796 * rho 16796 * (-1)) = 2 * (rho 16796 * rho 16797) := by
      rw [hd0, hd1, hd2]
      linear_combination r4237
    have hd4 : rho 16810 * (2 - (rho 16797 * rho 16797 + rho 16796 * rho 16796 * (-1))) = rho 16797 * rho 16797 - rho 16796 * rho 16796 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4238
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX97 rho : Seg16.F), (seg16AccY97 rho : Seg16.F)⟩
      ⟨(rho 16796 : Seg16.F), (rho 16797 : Seg16.F)⟩
      ⟨(rho 16802 : Seg16.F), (rho 16803 : Seg16.F)⟩
      ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
      ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg16_rows98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow4239 rho ∧ Seg16.relationRow4240 rho ∧ Seg16.relationRow4241 rho ∧ Seg16.relationRow4242 rho ∧ Seg16.relationRow4243 rho ∧ Seg16.relationRow4244 rho ∧ Seg16.relationRow4245 rho ∧ Seg16.relationRow4246 rho ∧ Seg16.relationRow4247 rho ∧ Seg16.relationRow4248 rho ∧ Seg16.relationRow4249 rho ∧ Seg16.relationRow4250 rho ∧ Seg16.relationRow4251 rho := by
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4239⟩
  unfold Seg16.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩

theorem seg16_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15390 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩ := by
  obtain ⟨r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246, r4247, r4248, r4249, r4250, r4251⟩ := seg16_rows98 rho h
  unfold Seg16.relationRow4239 at r4239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4239
  unfold Seg16.relationRow4240 at r4240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240
  unfold Seg16.relationRow4241 at r4241
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4241
  unfold Seg16.relationRow4242 at r4242
  unfold Seg16.relationRow4243 at r4243
  unfold Seg16.relationRow4244 at r4244
  unfold Seg16.relationRow4245 at r4245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4245
  unfold Seg16.relationRow4246 at r4246
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4246
  unfold Seg16.relationRow4247 at r4247
  unfold Seg16.relationRow4248 at r4248
  unfold Seg16.relationRow4249 at r4249
  unfold Seg16.relationRow4250 at r4250
  unfold Seg16.relationRow4251 at r4251
  have hrung98 (bit : Bool) (hbit : rho 15390 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
        ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
        ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
        ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩ := by
    have hnextx : seg16AccX99 rho = seg16AccX98 rho + rho 16817 := by
      unfold seg16AccX99 seg16AccX98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15543 13 98]
      ring
    have hnexty : seg16AccY99 rho = seg16AccY98 rho + rho 16818 := by
      unfold seg16AccY99 seg16AccY98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 15544 13 98]
      ring
    have ha0 : (rho 16809 + rho 16810) * (seg16AccX98 rho + seg16AccY98 rho) = rho 16811 := by
      unfold seg16AccX98 seg16AccY98
      linear_combination r4239
    have ha1 : rho 16810 * seg16AccX98 rho = rho 16812 := by
      unfold seg16AccX98
      linear_combination r4240
    have ha2 : rho 16809 * seg16AccY98 rho = rho 16813 := by
      unfold seg16AccY98
      linear_combination r4241
    have ha3 : 3021 * rho 16812 * rho 16813 = rho 16814 := by
      linear_combination r4242
    have ha4 : rho 16815 * (1 + rho 16814) = rho 16812 + rho 16813 := by
      linear_combination r4243
    have ha5 : rho 16816 * (1 - rho 16814) = rho 16811 - rho 16812 - rho 16813 := by
      linear_combination r4244
    have haddx :
        rho 16815 * (1 + 3021 * (rho 16810 * seg16AccX98 rho) * (rho 16809 * seg16AccY98 rho)) =
          rho 16810 * seg16AccX98 rho + rho 16809 * seg16AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 16816 * (1 - 3021 * (rho 16810 * seg16AccX98 rho) * (rho 16809 * seg16AccY98 rho)) =
          (-1) * (rho 16810 * seg16AccX98 rho) - rho 16809 * seg16AccY98 rho +
            (seg16AccY98 rho - seg16AccX98 rho * (-1)) * (rho 16809 + rho 16810) := by
      rw [ha1, ha2, ha3]
      calc
        rho 16816 * (1 - rho 16814) = rho 16811 - rho 16812 - rho 16813 := ha5
        _ = (-1) * rho 16812 - rho 16813 + (seg16AccY98 rho - seg16AccX98 rho * (-1)) * (rho 16809 + rho 16810) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX99 rho = seg16AccX98 rho - Bool.toZMod bit * (seg16AccX98 rho - rho 16815) := by
      have hd : rho 16817 = Bool.toZMod bit * (rho 16815 - seg16AccX98 rho) := by
        rw [← hbit]
        unfold seg16AccX98
        linear_combination -r4245
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY99 rho = seg16AccY98 rho - Bool.toZMod bit * (seg16AccY98 rho - rho 16816) := by
      have hd : rho 16818 = Bool.toZMod bit * (rho 16816 - seg16AccY98 rho) := by
        rw [← hbit]
        unfold seg16AccY98
        linear_combination -r4246
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 16809 * rho 16810 = rho 16819 := by linear_combination r4247
    have hd1 : rho 16809 * rho 16809 = rho 16820 := by linear_combination r4248
    have hd2 : rho 16810 * rho 16810 = rho 16821 := by linear_combination r4249
    have hd3 : rho 16822 * (rho 16810 * rho 16810 + rho 16809 * rho 16809 * (-1)) = 2 * (rho 16809 * rho 16810) := by
      rw [hd0, hd1, hd2]
      linear_combination r4250
    have hd4 : rho 16823 * (2 - (rho 16810 * rho 16810 + rho 16809 * rho 16809 * (-1))) = rho 16810 * rho 16810 - rho 16809 * rho 16809 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4251
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX98 rho : Seg16.F), (seg16AccY98 rho : Seg16.F)⟩
      ⟨(rho 16809 : Seg16.F), (rho 16810 : Seg16.F)⟩
      ⟨(rho 16815 : Seg16.F), (rho 16816 : Seg16.F)⟩
      ⟨(seg16AccX99 rho : Seg16.F), (seg16AccY99 rho : Seg16.F)⟩
      ⟨(rho 16822 : Seg16.F), (rho 16823 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg16_hstep_c8 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg16_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg16_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg16_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg16_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg16_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg16_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg16_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg16_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg16_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg16_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
