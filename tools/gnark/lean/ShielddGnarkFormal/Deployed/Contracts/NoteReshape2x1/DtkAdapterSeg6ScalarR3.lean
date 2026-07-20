import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3142 rho ∧ Seg6.relationRow3143 rho ∧ Seg6.relationRow3144 rho ∧ Seg6.relationRow3145 rho ∧ Seg6.relationRow3146 rho ∧ Seg6.relationRow3147 rho ∧ Seg6.relationRow3148 rho ∧ Seg6.relationRow3149 rho ∧ Seg6.relationRow3150 rho ∧ Seg6.relationRow3151 rho ∧ Seg6.relationRow3152 rho ∧ Seg6.relationRow3153 rho ∧ Seg6.relationRow3154 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154⟩

theorem seg6_rung33 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1917 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3533 : Seg6.F), (rho 3534 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩
        ⟨(rho 3533 : Seg6.F), (rho 3534 : Seg6.F)⟩
        ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩
        ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩ := by
  obtain ⟨r3142, r3143, r3144, r3145, r3146, r3147, r3148, r3149, r3150, r3151, r3152, r3153, r3154⟩ := seg6_rows33 rho h
  unfold Seg6.relationRow3142 Seg6.relationLc253 at r3142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3142
  unfold Seg6.relationRow3143 Seg6.relationLc254 at r3143
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3143
  unfold Seg6.relationRow3144 Seg6.relationLc255 at r3144
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3144
  unfold Seg6.relationRow3145 at r3145
  unfold Seg6.relationRow3146 at r3146
  unfold Seg6.relationRow3147 at r3147
  unfold Seg6.relationRow3148 Seg6.relationLc256 at r3148
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3148
  unfold Seg6.relationRow3149 Seg6.relationLc257 at r3149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3149
  unfold Seg6.relationRow3150 at r3150
  unfold Seg6.relationRow3151 at r3151
  unfold Seg6.relationRow3152 at r3152
  unfold Seg6.relationRow3153 at r3153
  unfold Seg6.relationRow3154 at r3154
  have hrung33 (bit : Bool) (hbit : rho 1917 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3533 : Seg6.F), (rho 3534 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩
        ⟨(rho 3533 : Seg6.F), (rho 3534 : Seg6.F)⟩
        ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩
        ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩ := by
    have hnextx : seg6AccX34 rho = seg6AccX33 rho + rho 3541 := by
      unfold seg6AccX34 seg6AccX33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 33]
      ring
    have hnexty : seg6AccY34 rho = seg6AccY33 rho + rho 3542 := by
      unfold seg6AccY34 seg6AccY33
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 33]
      ring
    have ha0 : (rho 3533 + rho 3534) * (seg6AccX33 rho + seg6AccY33 rho) = rho 3535 := by
      unfold seg6AccX33 seg6AccY33
      linear_combination r3142
    have ha1 : rho 3534 * seg6AccX33 rho = rho 3536 := by
      unfold seg6AccX33
      linear_combination r3143
    have ha2 : rho 3533 * seg6AccY33 rho = rho 3537 := by
      unfold seg6AccY33
      linear_combination r3144
    have ha3 : 3021 * rho 3536 * rho 3537 = rho 3538 := by
      linear_combination r3145
    have ha4 : rho 3539 * (1 + rho 3538) = rho 3536 + rho 3537 := by
      linear_combination r3146
    have ha5 : rho 3540 * (1 - rho 3538) = rho 3535 - rho 3536 - rho 3537 := by
      linear_combination r3147
    have haddx :
        rho 3539 * (1 + 3021 * (rho 3534 * seg6AccX33 rho) * (rho 3533 * seg6AccY33 rho)) =
          rho 3534 * seg6AccX33 rho + rho 3533 * seg6AccY33 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3540 * (1 - 3021 * (rho 3534 * seg6AccX33 rho) * (rho 3533 * seg6AccY33 rho)) =
          (-1) * (rho 3534 * seg6AccX33 rho) - rho 3533 * seg6AccY33 rho +
            (seg6AccY33 rho - seg6AccX33 rho * (-1)) * (rho 3533 + rho 3534) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3540 * (1 - rho 3538) = rho 3535 - rho 3536 - rho 3537 := ha5
        _ = (-1) * rho 3536 - rho 3537 + (seg6AccY33 rho - seg6AccX33 rho * (-1)) * (rho 3533 + rho 3534) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX34 rho = seg6AccX33 rho - Bool.toZMod bit * (seg6AccX33 rho - rho 3539) := by
      have hd : rho 3541 = Bool.toZMod bit * (rho 3539 - seg6AccX33 rho) := by
        rw [← hbit]
        unfold seg6AccX33
        linear_combination -r3148
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY34 rho = seg6AccY33 rho - Bool.toZMod bit * (seg6AccY33 rho - rho 3540) := by
      have hd : rho 3542 = Bool.toZMod bit * (rho 3540 - seg6AccY33 rho) := by
        rw [← hbit]
        unfold seg6AccY33
        linear_combination -r3149
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3533 * rho 3534 = rho 3543 := by linear_combination r3150
    have hd1 : rho 3533 * rho 3533 = rho 3544 := by linear_combination r3151
    have hd2 : rho 3534 * rho 3534 = rho 3545 := by linear_combination r3152
    have hd3 : rho 3546 * (rho 3534 * rho 3534 + rho 3533 * rho 3533 * (-1)) = 2 * (rho 3533 * rho 3534) := by
      rw [hd0, hd1, hd2]
      linear_combination r3153
    have hd4 : rho 3547 * (2 - (rho 3534 * rho 3534 + rho 3533 * rho 3533 * (-1))) = rho 3534 * rho 3534 - rho 3533 * rho 3533 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3154
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX33 rho : Seg6.F), (seg6AccY33 rho : Seg6.F)⟩
      ⟨(rho 3533 : Seg6.F), (rho 3534 : Seg6.F)⟩
      ⟨(rho 3539 : Seg6.F), (rho 3540 : Seg6.F)⟩
      ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩
      ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung33

theorem seg6_rows34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3155 rho ∧ Seg6.relationRow3156 rho ∧ Seg6.relationRow3157 rho ∧ Seg6.relationRow3158 rho ∧ Seg6.relationRow3159 rho ∧ Seg6.relationRow3160 rho ∧ Seg6.relationRow3161 rho ∧ Seg6.relationRow3162 rho ∧ Seg6.relationRow3163 rho ∧ Seg6.relationRow3164 rho ∧ Seg6.relationRow3165 rho ∧ Seg6.relationRow3166 rho ∧ Seg6.relationRow3167 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167⟩

theorem seg6_rung34 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1918 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩
        ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩
        ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩
        ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩ := by
  obtain ⟨r3155, r3156, r3157, r3158, r3159, r3160, r3161, r3162, r3163, r3164, r3165, r3166, r3167⟩ := seg6_rows34 rho h
  unfold Seg6.relationRow3155 Seg6.relationLc258 at r3155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3155
  unfold Seg6.relationRow3156 Seg6.relationLc259 at r3156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3156
  unfold Seg6.relationRow3157 Seg6.relationLc260 at r3157
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3157
  unfold Seg6.relationRow3158 at r3158
  unfold Seg6.relationRow3159 at r3159
  unfold Seg6.relationRow3160 at r3160
  unfold Seg6.relationRow3161 Seg6.relationLc261 at r3161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3161
  unfold Seg6.relationRow3162 Seg6.relationLc262 at r3162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3162
  unfold Seg6.relationRow3163 at r3163
  unfold Seg6.relationRow3164 at r3164
  unfold Seg6.relationRow3165 at r3165
  unfold Seg6.relationRow3166 at r3166
  unfold Seg6.relationRow3167 at r3167
  have hrung34 (bit : Bool) (hbit : rho 1918 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩
        ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩
        ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩
        ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩ := by
    have hnextx : seg6AccX35 rho = seg6AccX34 rho + rho 3554 := by
      unfold seg6AccX35 seg6AccX34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 34]
      ring
    have hnexty : seg6AccY35 rho = seg6AccY34 rho + rho 3555 := by
      unfold seg6AccY35 seg6AccY34
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 34]
      ring
    have ha0 : (rho 3546 + rho 3547) * (seg6AccX34 rho + seg6AccY34 rho) = rho 3548 := by
      unfold seg6AccX34 seg6AccY34
      linear_combination r3155
    have ha1 : rho 3547 * seg6AccX34 rho = rho 3549 := by
      unfold seg6AccX34
      linear_combination r3156
    have ha2 : rho 3546 * seg6AccY34 rho = rho 3550 := by
      unfold seg6AccY34
      linear_combination r3157
    have ha3 : 3021 * rho 3549 * rho 3550 = rho 3551 := by
      linear_combination r3158
    have ha4 : rho 3552 * (1 + rho 3551) = rho 3549 + rho 3550 := by
      linear_combination r3159
    have ha5 : rho 3553 * (1 - rho 3551) = rho 3548 - rho 3549 - rho 3550 := by
      linear_combination r3160
    have haddx :
        rho 3552 * (1 + 3021 * (rho 3547 * seg6AccX34 rho) * (rho 3546 * seg6AccY34 rho)) =
          rho 3547 * seg6AccX34 rho + rho 3546 * seg6AccY34 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3553 * (1 - 3021 * (rho 3547 * seg6AccX34 rho) * (rho 3546 * seg6AccY34 rho)) =
          (-1) * (rho 3547 * seg6AccX34 rho) - rho 3546 * seg6AccY34 rho +
            (seg6AccY34 rho - seg6AccX34 rho * (-1)) * (rho 3546 + rho 3547) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3553 * (1 - rho 3551) = rho 3548 - rho 3549 - rho 3550 := ha5
        _ = (-1) * rho 3549 - rho 3550 + (seg6AccY34 rho - seg6AccX34 rho * (-1)) * (rho 3546 + rho 3547) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX35 rho = seg6AccX34 rho - Bool.toZMod bit * (seg6AccX34 rho - rho 3552) := by
      have hd : rho 3554 = Bool.toZMod bit * (rho 3552 - seg6AccX34 rho) := by
        rw [← hbit]
        unfold seg6AccX34
        linear_combination -r3161
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY35 rho = seg6AccY34 rho - Bool.toZMod bit * (seg6AccY34 rho - rho 3553) := by
      have hd : rho 3555 = Bool.toZMod bit * (rho 3553 - seg6AccY34 rho) := by
        rw [← hbit]
        unfold seg6AccY34
        linear_combination -r3162
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3546 * rho 3547 = rho 3556 := by linear_combination r3163
    have hd1 : rho 3546 * rho 3546 = rho 3557 := by linear_combination r3164
    have hd2 : rho 3547 * rho 3547 = rho 3558 := by linear_combination r3165
    have hd3 : rho 3559 * (rho 3547 * rho 3547 + rho 3546 * rho 3546 * (-1)) = 2 * (rho 3546 * rho 3547) := by
      rw [hd0, hd1, hd2]
      linear_combination r3166
    have hd4 : rho 3560 * (2 - (rho 3547 * rho 3547 + rho 3546 * rho 3546 * (-1))) = rho 3547 * rho 3547 - rho 3546 * rho 3546 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3167
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX34 rho : Seg6.F), (seg6AccY34 rho : Seg6.F)⟩
      ⟨(rho 3546 : Seg6.F), (rho 3547 : Seg6.F)⟩
      ⟨(rho 3552 : Seg6.F), (rho 3553 : Seg6.F)⟩
      ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩
      ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung34

theorem seg6_rows35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3168 rho ∧ Seg6.relationRow3169 rho ∧ Seg6.relationRow3170 rho ∧ Seg6.relationRow3171 rho ∧ Seg6.relationRow3172 rho ∧ Seg6.relationRow3173 rho ∧ Seg6.relationRow3174 rho ∧ Seg6.relationRow3175 rho ∧ Seg6.relationRow3176 rho ∧ Seg6.relationRow3177 rho ∧ Seg6.relationRow3178 rho ∧ Seg6.relationRow3179 rho ∧ Seg6.relationRow3180 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180⟩

theorem seg6_rung35 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1919 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩
        ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩
        ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩
        ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩ := by
  obtain ⟨r3168, r3169, r3170, r3171, r3172, r3173, r3174, r3175, r3176, r3177, r3178, r3179, r3180⟩ := seg6_rows35 rho h
  unfold Seg6.relationRow3168 Seg6.relationLc263 at r3168
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3168
  unfold Seg6.relationRow3169 Seg6.relationLc264 at r3169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3169
  unfold Seg6.relationRow3170 Seg6.relationLc265 at r3170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3170
  unfold Seg6.relationRow3171 at r3171
  unfold Seg6.relationRow3172 at r3172
  unfold Seg6.relationRow3173 at r3173
  unfold Seg6.relationRow3174 Seg6.relationLc266 at r3174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3174
  unfold Seg6.relationRow3175 Seg6.relationLc267 at r3175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3175
  unfold Seg6.relationRow3176 at r3176
  unfold Seg6.relationRow3177 at r3177
  unfold Seg6.relationRow3178 at r3178
  unfold Seg6.relationRow3179 at r3179
  unfold Seg6.relationRow3180 at r3180
  have hrung35 (bit : Bool) (hbit : rho 1919 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩
        ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩
        ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩
        ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩ := by
    have hnextx : seg6AccX36 rho = seg6AccX35 rho + rho 3567 := by
      unfold seg6AccX36 seg6AccX35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 35]
      ring
    have hnexty : seg6AccY36 rho = seg6AccY35 rho + rho 3568 := by
      unfold seg6AccY36 seg6AccY35
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 35]
      ring
    have ha0 : (rho 3559 + rho 3560) * (seg6AccX35 rho + seg6AccY35 rho) = rho 3561 := by
      unfold seg6AccX35 seg6AccY35
      linear_combination r3168
    have ha1 : rho 3560 * seg6AccX35 rho = rho 3562 := by
      unfold seg6AccX35
      linear_combination r3169
    have ha2 : rho 3559 * seg6AccY35 rho = rho 3563 := by
      unfold seg6AccY35
      linear_combination r3170
    have ha3 : 3021 * rho 3562 * rho 3563 = rho 3564 := by
      linear_combination r3171
    have ha4 : rho 3565 * (1 + rho 3564) = rho 3562 + rho 3563 := by
      linear_combination r3172
    have ha5 : rho 3566 * (1 - rho 3564) = rho 3561 - rho 3562 - rho 3563 := by
      linear_combination r3173
    have haddx :
        rho 3565 * (1 + 3021 * (rho 3560 * seg6AccX35 rho) * (rho 3559 * seg6AccY35 rho)) =
          rho 3560 * seg6AccX35 rho + rho 3559 * seg6AccY35 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3566 * (1 - 3021 * (rho 3560 * seg6AccX35 rho) * (rho 3559 * seg6AccY35 rho)) =
          (-1) * (rho 3560 * seg6AccX35 rho) - rho 3559 * seg6AccY35 rho +
            (seg6AccY35 rho - seg6AccX35 rho * (-1)) * (rho 3559 + rho 3560) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3566 * (1 - rho 3564) = rho 3561 - rho 3562 - rho 3563 := ha5
        _ = (-1) * rho 3562 - rho 3563 + (seg6AccY35 rho - seg6AccX35 rho * (-1)) * (rho 3559 + rho 3560) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX36 rho = seg6AccX35 rho - Bool.toZMod bit * (seg6AccX35 rho - rho 3565) := by
      have hd : rho 3567 = Bool.toZMod bit * (rho 3565 - seg6AccX35 rho) := by
        rw [← hbit]
        unfold seg6AccX35
        linear_combination -r3174
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY36 rho = seg6AccY35 rho - Bool.toZMod bit * (seg6AccY35 rho - rho 3566) := by
      have hd : rho 3568 = Bool.toZMod bit * (rho 3566 - seg6AccY35 rho) := by
        rw [← hbit]
        unfold seg6AccY35
        linear_combination -r3175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3559 * rho 3560 = rho 3569 := by linear_combination r3176
    have hd1 : rho 3559 * rho 3559 = rho 3570 := by linear_combination r3177
    have hd2 : rho 3560 * rho 3560 = rho 3571 := by linear_combination r3178
    have hd3 : rho 3572 * (rho 3560 * rho 3560 + rho 3559 * rho 3559 * (-1)) = 2 * (rho 3559 * rho 3560) := by
      rw [hd0, hd1, hd2]
      linear_combination r3179
    have hd4 : rho 3573 * (2 - (rho 3560 * rho 3560 + rho 3559 * rho 3559 * (-1))) = rho 3560 * rho 3560 - rho 3559 * rho 3559 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX35 rho : Seg6.F), (seg6AccY35 rho : Seg6.F)⟩
      ⟨(rho 3559 : Seg6.F), (rho 3560 : Seg6.F)⟩
      ⟨(rho 3565 : Seg6.F), (rho 3566 : Seg6.F)⟩
      ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩
      ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung35

theorem seg6_rows36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3181 rho ∧ Seg6.relationRow3182 rho ∧ Seg6.relationRow3183 rho ∧ Seg6.relationRow3184 rho ∧ Seg6.relationRow3185 rho ∧ Seg6.relationRow3186 rho ∧ Seg6.relationRow3187 rho ∧ Seg6.relationRow3188 rho ∧ Seg6.relationRow3189 rho ∧ Seg6.relationRow3190 rho ∧ Seg6.relationRow3191 rho ∧ Seg6.relationRow3192 rho ∧ Seg6.relationRow3193 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193, _, _, _, _, _, _⟩
  exact ⟨r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193⟩

theorem seg6_rung36 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1920 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩
        ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩
        ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩
        ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩ := by
  obtain ⟨r3181, r3182, r3183, r3184, r3185, r3186, r3187, r3188, r3189, r3190, r3191, r3192, r3193⟩ := seg6_rows36 rho h
  unfold Seg6.relationRow3181 Seg6.relationLc268 at r3181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3181
  unfold Seg6.relationRow3182 Seg6.relationLc269 at r3182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3182
  unfold Seg6.relationRow3183 Seg6.relationLc270 at r3183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3183
  unfold Seg6.relationRow3184 at r3184
  unfold Seg6.relationRow3185 at r3185
  unfold Seg6.relationRow3186 at r3186
  unfold Seg6.relationRow3187 Seg6.relationLc271 at r3187
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3187
  unfold Seg6.relationRow3188 Seg6.relationLc272 at r3188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3188
  unfold Seg6.relationRow3189 at r3189
  unfold Seg6.relationRow3190 at r3190
  unfold Seg6.relationRow3191 at r3191
  unfold Seg6.relationRow3192 at r3192
  unfold Seg6.relationRow3193 at r3193
  have hrung36 (bit : Bool) (hbit : rho 1920 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩
        ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩
        ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩
        ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩ := by
    have hnextx : seg6AccX37 rho = seg6AccX36 rho + rho 3580 := by
      unfold seg6AccX37 seg6AccX36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 36]
      ring
    have hnexty : seg6AccY37 rho = seg6AccY36 rho + rho 3581 := by
      unfold seg6AccY37 seg6AccY36
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 36]
      ring
    have ha0 : (rho 3572 + rho 3573) * (seg6AccX36 rho + seg6AccY36 rho) = rho 3574 := by
      unfold seg6AccX36 seg6AccY36
      linear_combination r3181
    have ha1 : rho 3573 * seg6AccX36 rho = rho 3575 := by
      unfold seg6AccX36
      linear_combination r3182
    have ha2 : rho 3572 * seg6AccY36 rho = rho 3576 := by
      unfold seg6AccY36
      linear_combination r3183
    have ha3 : 3021 * rho 3575 * rho 3576 = rho 3577 := by
      linear_combination r3184
    have ha4 : rho 3578 * (1 + rho 3577) = rho 3575 + rho 3576 := by
      linear_combination r3185
    have ha5 : rho 3579 * (1 - rho 3577) = rho 3574 - rho 3575 - rho 3576 := by
      linear_combination r3186
    have haddx :
        rho 3578 * (1 + 3021 * (rho 3573 * seg6AccX36 rho) * (rho 3572 * seg6AccY36 rho)) =
          rho 3573 * seg6AccX36 rho + rho 3572 * seg6AccY36 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3579 * (1 - 3021 * (rho 3573 * seg6AccX36 rho) * (rho 3572 * seg6AccY36 rho)) =
          (-1) * (rho 3573 * seg6AccX36 rho) - rho 3572 * seg6AccY36 rho +
            (seg6AccY36 rho - seg6AccX36 rho * (-1)) * (rho 3572 + rho 3573) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3579 * (1 - rho 3577) = rho 3574 - rho 3575 - rho 3576 := ha5
        _ = (-1) * rho 3575 - rho 3576 + (seg6AccY36 rho - seg6AccX36 rho * (-1)) * (rho 3572 + rho 3573) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX37 rho = seg6AccX36 rho - Bool.toZMod bit * (seg6AccX36 rho - rho 3578) := by
      have hd : rho 3580 = Bool.toZMod bit * (rho 3578 - seg6AccX36 rho) := by
        rw [← hbit]
        unfold seg6AccX36
        linear_combination -r3187
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY37 rho = seg6AccY36 rho - Bool.toZMod bit * (seg6AccY36 rho - rho 3579) := by
      have hd : rho 3581 = Bool.toZMod bit * (rho 3579 - seg6AccY36 rho) := by
        rw [← hbit]
        unfold seg6AccY36
        linear_combination -r3188
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3572 * rho 3573 = rho 3582 := by linear_combination r3189
    have hd1 : rho 3572 * rho 3572 = rho 3583 := by linear_combination r3190
    have hd2 : rho 3573 * rho 3573 = rho 3584 := by linear_combination r3191
    have hd3 : rho 3585 * (rho 3573 * rho 3573 + rho 3572 * rho 3572 * (-1)) = 2 * (rho 3572 * rho 3573) := by
      rw [hd0, hd1, hd2]
      linear_combination r3192
    have hd4 : rho 3586 * (2 - (rho 3573 * rho 3573 + rho 3572 * rho 3572 * (-1))) = rho 3573 * rho 3573 - rho 3572 * rho 3572 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3193
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX36 rho : Seg6.F), (seg6AccY36 rho : Seg6.F)⟩
      ⟨(rho 3572 : Seg6.F), (rho 3573 : Seg6.F)⟩
      ⟨(rho 3578 : Seg6.F), (rho 3579 : Seg6.F)⟩
      ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩
      ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung36

theorem seg6_rows37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3194 rho ∧ Seg6.relationRow3195 rho ∧ Seg6.relationRow3196 rho ∧ Seg6.relationRow3197 rho ∧ Seg6.relationRow3198 rho ∧ Seg6.relationRow3199 rho ∧ Seg6.relationRow3200 rho ∧ Seg6.relationRow3201 rho ∧ Seg6.relationRow3202 rho ∧ Seg6.relationRow3203 rho ∧ Seg6.relationRow3204 rho ∧ Seg6.relationRow3205 rho ∧ Seg6.relationRow3206 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p39,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart39 at p39
  rcases p39 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3194, r3195, r3196, r3197, r3198, r3199⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨r3200, r3201, r3202, r3203, r3204, r3205, r3206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206⟩

theorem seg6_rung37 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1921 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩
        ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩
        ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩
        ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩ := by
  obtain ⟨r3194, r3195, r3196, r3197, r3198, r3199, r3200, r3201, r3202, r3203, r3204, r3205, r3206⟩ := seg6_rows37 rho h
  unfold Seg6.relationRow3194 Seg6.relationLc273 at r3194
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3194
  unfold Seg6.relationRow3195 Seg6.relationLc274 at r3195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3195
  unfold Seg6.relationRow3196 Seg6.relationLc275 at r3196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3196
  unfold Seg6.relationRow3197 at r3197
  unfold Seg6.relationRow3198 at r3198
  unfold Seg6.relationRow3199 at r3199
  unfold Seg6.relationRow3200 Seg6.relationLc276 at r3200
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3200
  unfold Seg6.relationRow3201 Seg6.relationLc277 at r3201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3201
  unfold Seg6.relationRow3202 at r3202
  unfold Seg6.relationRow3203 at r3203
  unfold Seg6.relationRow3204 at r3204
  unfold Seg6.relationRow3205 at r3205
  unfold Seg6.relationRow3206 at r3206
  have hrung37 (bit : Bool) (hbit : rho 1921 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩
        ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩
        ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩
        ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩ := by
    have hnextx : seg6AccX38 rho = seg6AccX37 rho + rho 3593 := by
      unfold seg6AccX38 seg6AccX37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 37]
      ring
    have hnexty : seg6AccY38 rho = seg6AccY37 rho + rho 3594 := by
      unfold seg6AccY38 seg6AccY37
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 37]
      ring
    have ha0 : (rho 3585 + rho 3586) * (seg6AccX37 rho + seg6AccY37 rho) = rho 3587 := by
      unfold seg6AccX37 seg6AccY37
      linear_combination r3194
    have ha1 : rho 3586 * seg6AccX37 rho = rho 3588 := by
      unfold seg6AccX37
      linear_combination r3195
    have ha2 : rho 3585 * seg6AccY37 rho = rho 3589 := by
      unfold seg6AccY37
      linear_combination r3196
    have ha3 : 3021 * rho 3588 * rho 3589 = rho 3590 := by
      linear_combination r3197
    have ha4 : rho 3591 * (1 + rho 3590) = rho 3588 + rho 3589 := by
      linear_combination r3198
    have ha5 : rho 3592 * (1 - rho 3590) = rho 3587 - rho 3588 - rho 3589 := by
      linear_combination r3199
    have haddx :
        rho 3591 * (1 + 3021 * (rho 3586 * seg6AccX37 rho) * (rho 3585 * seg6AccY37 rho)) =
          rho 3586 * seg6AccX37 rho + rho 3585 * seg6AccY37 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3592 * (1 - 3021 * (rho 3586 * seg6AccX37 rho) * (rho 3585 * seg6AccY37 rho)) =
          (-1) * (rho 3586 * seg6AccX37 rho) - rho 3585 * seg6AccY37 rho +
            (seg6AccY37 rho - seg6AccX37 rho * (-1)) * (rho 3585 + rho 3586) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3592 * (1 - rho 3590) = rho 3587 - rho 3588 - rho 3589 := ha5
        _ = (-1) * rho 3588 - rho 3589 + (seg6AccY37 rho - seg6AccX37 rho * (-1)) * (rho 3585 + rho 3586) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX38 rho = seg6AccX37 rho - Bool.toZMod bit * (seg6AccX37 rho - rho 3591) := by
      have hd : rho 3593 = Bool.toZMod bit * (rho 3591 - seg6AccX37 rho) := by
        rw [← hbit]
        unfold seg6AccX37
        linear_combination -r3200
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY38 rho = seg6AccY37 rho - Bool.toZMod bit * (seg6AccY37 rho - rho 3592) := by
      have hd : rho 3594 = Bool.toZMod bit * (rho 3592 - seg6AccY37 rho) := by
        rw [← hbit]
        unfold seg6AccY37
        linear_combination -r3201
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3585 * rho 3586 = rho 3595 := by linear_combination r3202
    have hd1 : rho 3585 * rho 3585 = rho 3596 := by linear_combination r3203
    have hd2 : rho 3586 * rho 3586 = rho 3597 := by linear_combination r3204
    have hd3 : rho 3598 * (rho 3586 * rho 3586 + rho 3585 * rho 3585 * (-1)) = 2 * (rho 3585 * rho 3586) := by
      rw [hd0, hd1, hd2]
      linear_combination r3205
    have hd4 : rho 3599 * (2 - (rho 3586 * rho 3586 + rho 3585 * rho 3585 * (-1))) = rho 3586 * rho 3586 - rho 3585 * rho 3585 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3206
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX37 rho : Seg6.F), (seg6AccY37 rho : Seg6.F)⟩
      ⟨(rho 3585 : Seg6.F), (rho 3586 : Seg6.F)⟩
      ⟨(rho 3591 : Seg6.F), (rho 3592 : Seg6.F)⟩
      ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩
      ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung37

theorem seg6_rows38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3207 rho ∧ Seg6.relationRow3208 rho ∧ Seg6.relationRow3209 rho ∧ Seg6.relationRow3210 rho ∧ Seg6.relationRow3211 rho ∧ Seg6.relationRow3212 rho ∧ Seg6.relationRow3213 rho ∧ Seg6.relationRow3214 rho ∧ Seg6.relationRow3215 rho ∧ Seg6.relationRow3216 rho ∧ Seg6.relationRow3217 rho ∧ Seg6.relationRow3218 rho ∧ Seg6.relationRow3219 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219⟩

theorem seg6_rung38 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1922 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩
        ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩
        ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩
        ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩ := by
  obtain ⟨r3207, r3208, r3209, r3210, r3211, r3212, r3213, r3214, r3215, r3216, r3217, r3218, r3219⟩ := seg6_rows38 rho h
  unfold Seg6.relationRow3207 Seg6.relationLc278 at r3207
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3207
  unfold Seg6.relationRow3208 Seg6.relationLc279 at r3208
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3208
  unfold Seg6.relationRow3209 Seg6.relationLc280 at r3209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3209
  unfold Seg6.relationRow3210 at r3210
  unfold Seg6.relationRow3211 at r3211
  unfold Seg6.relationRow3212 at r3212
  unfold Seg6.relationRow3213 Seg6.relationLc281 at r3213
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3213
  unfold Seg6.relationRow3214 Seg6.relationLc282 at r3214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3214
  unfold Seg6.relationRow3215 at r3215
  unfold Seg6.relationRow3216 at r3216
  unfold Seg6.relationRow3217 at r3217
  unfold Seg6.relationRow3218 at r3218
  unfold Seg6.relationRow3219 at r3219
  have hrung38 (bit : Bool) (hbit : rho 1922 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩
        ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩
        ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩
        ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩ := by
    have hnextx : seg6AccX39 rho = seg6AccX38 rho + rho 3606 := by
      unfold seg6AccX39 seg6AccX38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 38]
      ring
    have hnexty : seg6AccY39 rho = seg6AccY38 rho + rho 3607 := by
      unfold seg6AccY39 seg6AccY38
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 38]
      ring
    have ha0 : (rho 3598 + rho 3599) * (seg6AccX38 rho + seg6AccY38 rho) = rho 3600 := by
      unfold seg6AccX38 seg6AccY38
      linear_combination r3207
    have ha1 : rho 3599 * seg6AccX38 rho = rho 3601 := by
      unfold seg6AccX38
      linear_combination r3208
    have ha2 : rho 3598 * seg6AccY38 rho = rho 3602 := by
      unfold seg6AccY38
      linear_combination r3209
    have ha3 : 3021 * rho 3601 * rho 3602 = rho 3603 := by
      linear_combination r3210
    have ha4 : rho 3604 * (1 + rho 3603) = rho 3601 + rho 3602 := by
      linear_combination r3211
    have ha5 : rho 3605 * (1 - rho 3603) = rho 3600 - rho 3601 - rho 3602 := by
      linear_combination r3212
    have haddx :
        rho 3604 * (1 + 3021 * (rho 3599 * seg6AccX38 rho) * (rho 3598 * seg6AccY38 rho)) =
          rho 3599 * seg6AccX38 rho + rho 3598 * seg6AccY38 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3605 * (1 - 3021 * (rho 3599 * seg6AccX38 rho) * (rho 3598 * seg6AccY38 rho)) =
          (-1) * (rho 3599 * seg6AccX38 rho) - rho 3598 * seg6AccY38 rho +
            (seg6AccY38 rho - seg6AccX38 rho * (-1)) * (rho 3598 + rho 3599) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3605 * (1 - rho 3603) = rho 3600 - rho 3601 - rho 3602 := ha5
        _ = (-1) * rho 3601 - rho 3602 + (seg6AccY38 rho - seg6AccX38 rho * (-1)) * (rho 3598 + rho 3599) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX39 rho = seg6AccX38 rho - Bool.toZMod bit * (seg6AccX38 rho - rho 3604) := by
      have hd : rho 3606 = Bool.toZMod bit * (rho 3604 - seg6AccX38 rho) := by
        rw [← hbit]
        unfold seg6AccX38
        linear_combination -r3213
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY39 rho = seg6AccY38 rho - Bool.toZMod bit * (seg6AccY38 rho - rho 3605) := by
      have hd : rho 3607 = Bool.toZMod bit * (rho 3605 - seg6AccY38 rho) := by
        rw [← hbit]
        unfold seg6AccY38
        linear_combination -r3214
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3598 * rho 3599 = rho 3608 := by linear_combination r3215
    have hd1 : rho 3598 * rho 3598 = rho 3609 := by linear_combination r3216
    have hd2 : rho 3599 * rho 3599 = rho 3610 := by linear_combination r3217
    have hd3 : rho 3611 * (rho 3599 * rho 3599 + rho 3598 * rho 3598 * (-1)) = 2 * (rho 3598 * rho 3599) := by
      rw [hd0, hd1, hd2]
      linear_combination r3218
    have hd4 : rho 3612 * (2 - (rho 3599 * rho 3599 + rho 3598 * rho 3598 * (-1))) = rho 3599 * rho 3599 - rho 3598 * rho 3598 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3219
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX38 rho : Seg6.F), (seg6AccY38 rho : Seg6.F)⟩
      ⟨(rho 3598 : Seg6.F), (rho 3599 : Seg6.F)⟩
      ⟨(rho 3604 : Seg6.F), (rho 3605 : Seg6.F)⟩
      ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩
      ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung38

theorem seg6_rows39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3220 rho ∧ Seg6.relationRow3221 rho ∧ Seg6.relationRow3222 rho ∧ Seg6.relationRow3223 rho ∧ Seg6.relationRow3224 rho ∧ Seg6.relationRow3225 rho ∧ Seg6.relationRow3226 rho ∧ Seg6.relationRow3227 rho ∧ Seg6.relationRow3228 rho ∧ Seg6.relationRow3229 rho ∧ Seg6.relationRow3230 rho ∧ Seg6.relationRow3231 rho ∧ Seg6.relationRow3232 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232⟩

theorem seg6_rung39 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1923 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩
        ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩
        ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩
        ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩ := by
  obtain ⟨r3220, r3221, r3222, r3223, r3224, r3225, r3226, r3227, r3228, r3229, r3230, r3231, r3232⟩ := seg6_rows39 rho h
  unfold Seg6.relationRow3220 Seg6.relationLc283 at r3220
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3220
  unfold Seg6.relationRow3221 Seg6.relationLc284 at r3221
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3221
  unfold Seg6.relationRow3222 Seg6.relationLc285 at r3222
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3222
  unfold Seg6.relationRow3223 at r3223
  unfold Seg6.relationRow3224 at r3224
  unfold Seg6.relationRow3225 at r3225
  unfold Seg6.relationRow3226 Seg6.relationLc286 at r3226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3226
  unfold Seg6.relationRow3227 Seg6.relationLc287 at r3227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3227
  unfold Seg6.relationRow3228 at r3228
  unfold Seg6.relationRow3229 at r3229
  unfold Seg6.relationRow3230 at r3230
  unfold Seg6.relationRow3231 at r3231
  unfold Seg6.relationRow3232 at r3232
  have hrung39 (bit : Bool) (hbit : rho 1923 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩
        ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩
        ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩
        ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩ := by
    have hnextx : seg6AccX40 rho = seg6AccX39 rho + rho 3619 := by
      unfold seg6AccX40 seg6AccX39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 39]
      ring
    have hnexty : seg6AccY40 rho = seg6AccY39 rho + rho 3620 := by
      unfold seg6AccY40 seg6AccY39
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 39]
      ring
    have ha0 : (rho 3611 + rho 3612) * (seg6AccX39 rho + seg6AccY39 rho) = rho 3613 := by
      unfold seg6AccX39 seg6AccY39
      linear_combination r3220
    have ha1 : rho 3612 * seg6AccX39 rho = rho 3614 := by
      unfold seg6AccX39
      linear_combination r3221
    have ha2 : rho 3611 * seg6AccY39 rho = rho 3615 := by
      unfold seg6AccY39
      linear_combination r3222
    have ha3 : 3021 * rho 3614 * rho 3615 = rho 3616 := by
      linear_combination r3223
    have ha4 : rho 3617 * (1 + rho 3616) = rho 3614 + rho 3615 := by
      linear_combination r3224
    have ha5 : rho 3618 * (1 - rho 3616) = rho 3613 - rho 3614 - rho 3615 := by
      linear_combination r3225
    have haddx :
        rho 3617 * (1 + 3021 * (rho 3612 * seg6AccX39 rho) * (rho 3611 * seg6AccY39 rho)) =
          rho 3612 * seg6AccX39 rho + rho 3611 * seg6AccY39 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3618 * (1 - 3021 * (rho 3612 * seg6AccX39 rho) * (rho 3611 * seg6AccY39 rho)) =
          (-1) * (rho 3612 * seg6AccX39 rho) - rho 3611 * seg6AccY39 rho +
            (seg6AccY39 rho - seg6AccX39 rho * (-1)) * (rho 3611 + rho 3612) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3618 * (1 - rho 3616) = rho 3613 - rho 3614 - rho 3615 := ha5
        _ = (-1) * rho 3614 - rho 3615 + (seg6AccY39 rho - seg6AccX39 rho * (-1)) * (rho 3611 + rho 3612) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX40 rho = seg6AccX39 rho - Bool.toZMod bit * (seg6AccX39 rho - rho 3617) := by
      have hd : rho 3619 = Bool.toZMod bit * (rho 3617 - seg6AccX39 rho) := by
        rw [← hbit]
        unfold seg6AccX39
        linear_combination -r3226
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY40 rho = seg6AccY39 rho - Bool.toZMod bit * (seg6AccY39 rho - rho 3618) := by
      have hd : rho 3620 = Bool.toZMod bit * (rho 3618 - seg6AccY39 rho) := by
        rw [← hbit]
        unfold seg6AccY39
        linear_combination -r3227
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3611 * rho 3612 = rho 3621 := by linear_combination r3228
    have hd1 : rho 3611 * rho 3611 = rho 3622 := by linear_combination r3229
    have hd2 : rho 3612 * rho 3612 = rho 3623 := by linear_combination r3230
    have hd3 : rho 3624 * (rho 3612 * rho 3612 + rho 3611 * rho 3611 * (-1)) = 2 * (rho 3611 * rho 3612) := by
      rw [hd0, hd1, hd2]
      linear_combination r3231
    have hd4 : rho 3625 * (2 - (rho 3612 * rho 3612 + rho 3611 * rho 3611 * (-1))) = rho 3612 * rho 3612 - rho 3611 * rho 3611 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3232
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX39 rho : Seg6.F), (seg6AccY39 rho : Seg6.F)⟩
      ⟨(rho 3611 : Seg6.F), (rho 3612 : Seg6.F)⟩
      ⟨(rho 3617 : Seg6.F), (rho 3618 : Seg6.F)⟩
      ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩
      ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung39

theorem seg6_rows40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3233 rho ∧ Seg6.relationRow3234 rho ∧ Seg6.relationRow3235 rho ∧ Seg6.relationRow3236 rho ∧ Seg6.relationRow3237 rho ∧ Seg6.relationRow3238 rho ∧ Seg6.relationRow3239 rho ∧ Seg6.relationRow3240 rho ∧ Seg6.relationRow3241 rho ∧ Seg6.relationRow3242 rho ∧ Seg6.relationRow3243 rho ∧ Seg6.relationRow3244 rho ∧ Seg6.relationRow3245 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245⟩

theorem seg6_rung40 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1924 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩
        ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩
        ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩
        ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩ := by
  obtain ⟨r3233, r3234, r3235, r3236, r3237, r3238, r3239, r3240, r3241, r3242, r3243, r3244, r3245⟩ := seg6_rows40 rho h
  unfold Seg6.relationRow3233 Seg6.relationLc288 at r3233
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3233
  unfold Seg6.relationRow3234 Seg6.relationLc289 at r3234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3234
  unfold Seg6.relationRow3235 Seg6.relationLc290 at r3235
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3235
  unfold Seg6.relationRow3236 at r3236
  unfold Seg6.relationRow3237 at r3237
  unfold Seg6.relationRow3238 at r3238
  unfold Seg6.relationRow3239 Seg6.relationLc291 at r3239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3239
  unfold Seg6.relationRow3240 Seg6.relationLc292 at r3240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3240
  unfold Seg6.relationRow3241 at r3241
  unfold Seg6.relationRow3242 at r3242
  unfold Seg6.relationRow3243 at r3243
  unfold Seg6.relationRow3244 at r3244
  unfold Seg6.relationRow3245 at r3245
  have hrung40 (bit : Bool) (hbit : rho 1924 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩
        ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩
        ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩
        ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩ := by
    have hnextx : seg6AccX41 rho = seg6AccX40 rho + rho 3632 := by
      unfold seg6AccX41 seg6AccX40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 40]
      ring
    have hnexty : seg6AccY41 rho = seg6AccY40 rho + rho 3633 := by
      unfold seg6AccY41 seg6AccY40
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 40]
      ring
    have ha0 : (rho 3624 + rho 3625) * (seg6AccX40 rho + seg6AccY40 rho) = rho 3626 := by
      unfold seg6AccX40 seg6AccY40
      linear_combination r3233
    have ha1 : rho 3625 * seg6AccX40 rho = rho 3627 := by
      unfold seg6AccX40
      linear_combination r3234
    have ha2 : rho 3624 * seg6AccY40 rho = rho 3628 := by
      unfold seg6AccY40
      linear_combination r3235
    have ha3 : 3021 * rho 3627 * rho 3628 = rho 3629 := by
      linear_combination r3236
    have ha4 : rho 3630 * (1 + rho 3629) = rho 3627 + rho 3628 := by
      linear_combination r3237
    have ha5 : rho 3631 * (1 - rho 3629) = rho 3626 - rho 3627 - rho 3628 := by
      linear_combination r3238
    have haddx :
        rho 3630 * (1 + 3021 * (rho 3625 * seg6AccX40 rho) * (rho 3624 * seg6AccY40 rho)) =
          rho 3625 * seg6AccX40 rho + rho 3624 * seg6AccY40 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3631 * (1 - 3021 * (rho 3625 * seg6AccX40 rho) * (rho 3624 * seg6AccY40 rho)) =
          (-1) * (rho 3625 * seg6AccX40 rho) - rho 3624 * seg6AccY40 rho +
            (seg6AccY40 rho - seg6AccX40 rho * (-1)) * (rho 3624 + rho 3625) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3631 * (1 - rho 3629) = rho 3626 - rho 3627 - rho 3628 := ha5
        _ = (-1) * rho 3627 - rho 3628 + (seg6AccY40 rho - seg6AccX40 rho * (-1)) * (rho 3624 + rho 3625) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX41 rho = seg6AccX40 rho - Bool.toZMod bit * (seg6AccX40 rho - rho 3630) := by
      have hd : rho 3632 = Bool.toZMod bit * (rho 3630 - seg6AccX40 rho) := by
        rw [← hbit]
        unfold seg6AccX40
        linear_combination -r3239
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY41 rho = seg6AccY40 rho - Bool.toZMod bit * (seg6AccY40 rho - rho 3631) := by
      have hd : rho 3633 = Bool.toZMod bit * (rho 3631 - seg6AccY40 rho) := by
        rw [← hbit]
        unfold seg6AccY40
        linear_combination -r3240
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3624 * rho 3625 = rho 3634 := by linear_combination r3241
    have hd1 : rho 3624 * rho 3624 = rho 3635 := by linear_combination r3242
    have hd2 : rho 3625 * rho 3625 = rho 3636 := by linear_combination r3243
    have hd3 : rho 3637 * (rho 3625 * rho 3625 + rho 3624 * rho 3624 * (-1)) = 2 * (rho 3624 * rho 3625) := by
      rw [hd0, hd1, hd2]
      linear_combination r3244
    have hd4 : rho 3638 * (2 - (rho 3625 * rho 3625 + rho 3624 * rho 3624 * (-1))) = rho 3625 * rho 3625 - rho 3624 * rho 3624 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3245
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX40 rho : Seg6.F), (seg6AccY40 rho : Seg6.F)⟩
      ⟨(rho 3624 : Seg6.F), (rho 3625 : Seg6.F)⟩
      ⟨(rho 3630 : Seg6.F), (rho 3631 : Seg6.F)⟩
      ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩
      ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung40

theorem seg6_rows41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3246 rho ∧ Seg6.relationRow3247 rho ∧ Seg6.relationRow3248 rho ∧ Seg6.relationRow3249 rho ∧ Seg6.relationRow3250 rho ∧ Seg6.relationRow3251 rho ∧ Seg6.relationRow3252 rho ∧ Seg6.relationRow3253 rho ∧ Seg6.relationRow3254 rho ∧ Seg6.relationRow3255 rho ∧ Seg6.relationRow3256 rho ∧ Seg6.relationRow3257 rho ∧ Seg6.relationRow3258 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258⟩

theorem seg6_rung41 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1925 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩
        ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩
        ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩
        ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩ := by
  obtain ⟨r3246, r3247, r3248, r3249, r3250, r3251, r3252, r3253, r3254, r3255, r3256, r3257, r3258⟩ := seg6_rows41 rho h
  unfold Seg6.relationRow3246 Seg6.relationLc293 at r3246
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3246
  unfold Seg6.relationRow3247 Seg6.relationLc294 at r3247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3247
  unfold Seg6.relationRow3248 Seg6.relationLc295 at r3248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3248
  unfold Seg6.relationRow3249 at r3249
  unfold Seg6.relationRow3250 at r3250
  unfold Seg6.relationRow3251 at r3251
  unfold Seg6.relationRow3252 Seg6.relationLc296 at r3252
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3252
  unfold Seg6.relationRow3253 Seg6.relationLc297 at r3253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3253
  unfold Seg6.relationRow3254 at r3254
  unfold Seg6.relationRow3255 at r3255
  unfold Seg6.relationRow3256 at r3256
  unfold Seg6.relationRow3257 at r3257
  unfold Seg6.relationRow3258 at r3258
  have hrung41 (bit : Bool) (hbit : rho 1925 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩
        ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩
        ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩
        ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩ := by
    have hnextx : seg6AccX42 rho = seg6AccX41 rho + rho 3645 := by
      unfold seg6AccX42 seg6AccX41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 41]
      ring
    have hnexty : seg6AccY42 rho = seg6AccY41 rho + rho 3646 := by
      unfold seg6AccY42 seg6AccY41
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 41]
      ring
    have ha0 : (rho 3637 + rho 3638) * (seg6AccX41 rho + seg6AccY41 rho) = rho 3639 := by
      unfold seg6AccX41 seg6AccY41
      linear_combination r3246
    have ha1 : rho 3638 * seg6AccX41 rho = rho 3640 := by
      unfold seg6AccX41
      linear_combination r3247
    have ha2 : rho 3637 * seg6AccY41 rho = rho 3641 := by
      unfold seg6AccY41
      linear_combination r3248
    have ha3 : 3021 * rho 3640 * rho 3641 = rho 3642 := by
      linear_combination r3249
    have ha4 : rho 3643 * (1 + rho 3642) = rho 3640 + rho 3641 := by
      linear_combination r3250
    have ha5 : rho 3644 * (1 - rho 3642) = rho 3639 - rho 3640 - rho 3641 := by
      linear_combination r3251
    have haddx :
        rho 3643 * (1 + 3021 * (rho 3638 * seg6AccX41 rho) * (rho 3637 * seg6AccY41 rho)) =
          rho 3638 * seg6AccX41 rho + rho 3637 * seg6AccY41 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3644 * (1 - 3021 * (rho 3638 * seg6AccX41 rho) * (rho 3637 * seg6AccY41 rho)) =
          (-1) * (rho 3638 * seg6AccX41 rho) - rho 3637 * seg6AccY41 rho +
            (seg6AccY41 rho - seg6AccX41 rho * (-1)) * (rho 3637 + rho 3638) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3644 * (1 - rho 3642) = rho 3639 - rho 3640 - rho 3641 := ha5
        _ = (-1) * rho 3640 - rho 3641 + (seg6AccY41 rho - seg6AccX41 rho * (-1)) * (rho 3637 + rho 3638) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX42 rho = seg6AccX41 rho - Bool.toZMod bit * (seg6AccX41 rho - rho 3643) := by
      have hd : rho 3645 = Bool.toZMod bit * (rho 3643 - seg6AccX41 rho) := by
        rw [← hbit]
        unfold seg6AccX41
        linear_combination -r3252
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY42 rho = seg6AccY41 rho - Bool.toZMod bit * (seg6AccY41 rho - rho 3644) := by
      have hd : rho 3646 = Bool.toZMod bit * (rho 3644 - seg6AccY41 rho) := by
        rw [← hbit]
        unfold seg6AccY41
        linear_combination -r3253
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3637 * rho 3638 = rho 3647 := by linear_combination r3254
    have hd1 : rho 3637 * rho 3637 = rho 3648 := by linear_combination r3255
    have hd2 : rho 3638 * rho 3638 = rho 3649 := by linear_combination r3256
    have hd3 : rho 3650 * (rho 3638 * rho 3638 + rho 3637 * rho 3637 * (-1)) = 2 * (rho 3637 * rho 3638) := by
      rw [hd0, hd1, hd2]
      linear_combination r3257
    have hd4 : rho 3651 * (2 - (rho 3638 * rho 3638 + rho 3637 * rho 3637 * (-1))) = rho 3638 * rho 3638 - rho 3637 * rho 3637 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3258
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX41 rho : Seg6.F), (seg6AccY41 rho : Seg6.F)⟩
      ⟨(rho 3637 : Seg6.F), (rho 3638 : Seg6.F)⟩
      ⟨(rho 3643 : Seg6.F), (rho 3644 : Seg6.F)⟩
      ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩
      ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung41

theorem seg6_rows42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3259 rho ∧ Seg6.relationRow3260 rho ∧ Seg6.relationRow3261 rho ∧ Seg6.relationRow3262 rho ∧ Seg6.relationRow3263 rho ∧ Seg6.relationRow3264 rho ∧ Seg6.relationRow3265 rho ∧ Seg6.relationRow3266 rho ∧ Seg6.relationRow3267 rho ∧ Seg6.relationRow3268 rho ∧ Seg6.relationRow3269 rho ∧ Seg6.relationRow3270 rho ∧ Seg6.relationRow3271 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271, _, _, _, _, _, _, _, _⟩
  exact ⟨r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271⟩

theorem seg6_rung42 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1926 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩
        ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩
        ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩
        ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩ := by
  obtain ⟨r3259, r3260, r3261, r3262, r3263, r3264, r3265, r3266, r3267, r3268, r3269, r3270, r3271⟩ := seg6_rows42 rho h
  unfold Seg6.relationRow3259 Seg6.relationLc298 at r3259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3259
  unfold Seg6.relationRow3260 Seg6.relationLc299 at r3260
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3260
  unfold Seg6.relationRow3261 Seg6.relationLc300 at r3261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3261
  unfold Seg6.relationRow3262 at r3262
  unfold Seg6.relationRow3263 at r3263
  unfold Seg6.relationRow3264 at r3264
  unfold Seg6.relationRow3265 Seg6.relationLc301 at r3265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3265
  unfold Seg6.relationRow3266 Seg6.relationLc302 at r3266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3266
  unfold Seg6.relationRow3267 at r3267
  unfold Seg6.relationRow3268 at r3268
  unfold Seg6.relationRow3269 at r3269
  unfold Seg6.relationRow3270 at r3270
  unfold Seg6.relationRow3271 at r3271
  have hrung42 (bit : Bool) (hbit : rho 1926 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩
        ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩
        ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩
        ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩ := by
    have hnextx : seg6AccX43 rho = seg6AccX42 rho + rho 3658 := by
      unfold seg6AccX43 seg6AccX42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 42]
      ring
    have hnexty : seg6AccY43 rho = seg6AccY42 rho + rho 3659 := by
      unfold seg6AccY43 seg6AccY42
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 42]
      ring
    have ha0 : (rho 3650 + rho 3651) * (seg6AccX42 rho + seg6AccY42 rho) = rho 3652 := by
      unfold seg6AccX42 seg6AccY42
      linear_combination r3259
    have ha1 : rho 3651 * seg6AccX42 rho = rho 3653 := by
      unfold seg6AccX42
      linear_combination r3260
    have ha2 : rho 3650 * seg6AccY42 rho = rho 3654 := by
      unfold seg6AccY42
      linear_combination r3261
    have ha3 : 3021 * rho 3653 * rho 3654 = rho 3655 := by
      linear_combination r3262
    have ha4 : rho 3656 * (1 + rho 3655) = rho 3653 + rho 3654 := by
      linear_combination r3263
    have ha5 : rho 3657 * (1 - rho 3655) = rho 3652 - rho 3653 - rho 3654 := by
      linear_combination r3264
    have haddx :
        rho 3656 * (1 + 3021 * (rho 3651 * seg6AccX42 rho) * (rho 3650 * seg6AccY42 rho)) =
          rho 3651 * seg6AccX42 rho + rho 3650 * seg6AccY42 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3657 * (1 - 3021 * (rho 3651 * seg6AccX42 rho) * (rho 3650 * seg6AccY42 rho)) =
          (-1) * (rho 3651 * seg6AccX42 rho) - rho 3650 * seg6AccY42 rho +
            (seg6AccY42 rho - seg6AccX42 rho * (-1)) * (rho 3650 + rho 3651) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3657 * (1 - rho 3655) = rho 3652 - rho 3653 - rho 3654 := ha5
        _ = (-1) * rho 3653 - rho 3654 + (seg6AccY42 rho - seg6AccX42 rho * (-1)) * (rho 3650 + rho 3651) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX43 rho = seg6AccX42 rho - Bool.toZMod bit * (seg6AccX42 rho - rho 3656) := by
      have hd : rho 3658 = Bool.toZMod bit * (rho 3656 - seg6AccX42 rho) := by
        rw [← hbit]
        unfold seg6AccX42
        linear_combination -r3265
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY43 rho = seg6AccY42 rho - Bool.toZMod bit * (seg6AccY42 rho - rho 3657) := by
      have hd : rho 3659 = Bool.toZMod bit * (rho 3657 - seg6AccY42 rho) := by
        rw [← hbit]
        unfold seg6AccY42
        linear_combination -r3266
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3650 * rho 3651 = rho 3660 := by linear_combination r3267
    have hd1 : rho 3650 * rho 3650 = rho 3661 := by linear_combination r3268
    have hd2 : rho 3651 * rho 3651 = rho 3662 := by linear_combination r3269
    have hd3 : rho 3663 * (rho 3651 * rho 3651 + rho 3650 * rho 3650 * (-1)) = 2 * (rho 3650 * rho 3651) := by
      rw [hd0, hd1, hd2]
      linear_combination r3270
    have hd4 : rho 3664 * (2 - (rho 3651 * rho 3651 + rho 3650 * rho 3650 * (-1))) = rho 3651 * rho 3651 - rho 3650 * rho 3650 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3271
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX42 rho : Seg6.F), (seg6AccY42 rho : Seg6.F)⟩
      ⟨(rho 3650 : Seg6.F), (rho 3651 : Seg6.F)⟩
      ⟨(rho 3656 : Seg6.F), (rho 3657 : Seg6.F)⟩
      ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩
      ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung42

theorem seg6_rows43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3272 rho ∧ Seg6.relationRow3273 rho ∧ Seg6.relationRow3274 rho ∧ Seg6.relationRow3275 rho ∧ Seg6.relationRow3276 rho ∧ Seg6.relationRow3277 rho ∧ Seg6.relationRow3278 rho ∧ Seg6.relationRow3279 rho ∧ Seg6.relationRow3280 rho ∧ Seg6.relationRow3281 rho ∧ Seg6.relationRow3282 rho ∧ Seg6.relationRow3283 rho ∧ Seg6.relationRow3284 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p40, p41, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart40 at p40
  rcases p40 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279⟩
  unfold Seg6.relationPart41 at p41
  rcases p41 with ⟨r3280, r3281, r3282, r3283, r3284, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284⟩

theorem seg6_rung43 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1927 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩
        ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩
        ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩
        ⟨(rho 3676 : Seg6.F), (rho 3677 : Seg6.F)⟩ := by
  obtain ⟨r3272, r3273, r3274, r3275, r3276, r3277, r3278, r3279, r3280, r3281, r3282, r3283, r3284⟩ := seg6_rows43 rho h
  unfold Seg6.relationRow3272 Seg6.relationLc303 at r3272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3272
  unfold Seg6.relationRow3273 Seg6.relationLc304 at r3273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3273
  unfold Seg6.relationRow3274 Seg6.relationLc305 at r3274
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3274
  unfold Seg6.relationRow3275 at r3275
  unfold Seg6.relationRow3276 at r3276
  unfold Seg6.relationRow3277 at r3277
  unfold Seg6.relationRow3278 Seg6.relationLc306 at r3278
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3278
  unfold Seg6.relationRow3279 Seg6.relationLc307 at r3279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3279
  unfold Seg6.relationRow3280 at r3280
  unfold Seg6.relationRow3281 at r3281
  unfold Seg6.relationRow3282 at r3282
  unfold Seg6.relationRow3283 at r3283
  unfold Seg6.relationRow3284 at r3284
  have hrung43 (bit : Bool) (hbit : rho 1927 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩
        ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩
        ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩
        ⟨(rho 3676 : Seg6.F), (rho 3677 : Seg6.F)⟩ := by
    have hnextx : seg6AccX44 rho = seg6AccX43 rho + rho 3671 := by
      unfold seg6AccX44 seg6AccX43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 43]
      ring
    have hnexty : seg6AccY44 rho = seg6AccY43 rho + rho 3672 := by
      unfold seg6AccY44 seg6AccY43
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 43]
      ring
    have ha0 : (rho 3663 + rho 3664) * (seg6AccX43 rho + seg6AccY43 rho) = rho 3665 := by
      unfold seg6AccX43 seg6AccY43
      linear_combination r3272
    have ha1 : rho 3664 * seg6AccX43 rho = rho 3666 := by
      unfold seg6AccX43
      linear_combination r3273
    have ha2 : rho 3663 * seg6AccY43 rho = rho 3667 := by
      unfold seg6AccY43
      linear_combination r3274
    have ha3 : 3021 * rho 3666 * rho 3667 = rho 3668 := by
      linear_combination r3275
    have ha4 : rho 3669 * (1 + rho 3668) = rho 3666 + rho 3667 := by
      linear_combination r3276
    have ha5 : rho 3670 * (1 - rho 3668) = rho 3665 - rho 3666 - rho 3667 := by
      linear_combination r3277
    have haddx :
        rho 3669 * (1 + 3021 * (rho 3664 * seg6AccX43 rho) * (rho 3663 * seg6AccY43 rho)) =
          rho 3664 * seg6AccX43 rho + rho 3663 * seg6AccY43 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3670 * (1 - 3021 * (rho 3664 * seg6AccX43 rho) * (rho 3663 * seg6AccY43 rho)) =
          (-1) * (rho 3664 * seg6AccX43 rho) - rho 3663 * seg6AccY43 rho +
            (seg6AccY43 rho - seg6AccX43 rho * (-1)) * (rho 3663 + rho 3664) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3670 * (1 - rho 3668) = rho 3665 - rho 3666 - rho 3667 := ha5
        _ = (-1) * rho 3666 - rho 3667 + (seg6AccY43 rho - seg6AccX43 rho * (-1)) * (rho 3663 + rho 3664) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX44 rho = seg6AccX43 rho - Bool.toZMod bit * (seg6AccX43 rho - rho 3669) := by
      have hd : rho 3671 = Bool.toZMod bit * (rho 3669 - seg6AccX43 rho) := by
        rw [← hbit]
        unfold seg6AccX43
        linear_combination -r3278
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY44 rho = seg6AccY43 rho - Bool.toZMod bit * (seg6AccY43 rho - rho 3670) := by
      have hd : rho 3672 = Bool.toZMod bit * (rho 3670 - seg6AccY43 rho) := by
        rw [← hbit]
        unfold seg6AccY43
        linear_combination -r3279
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3663 * rho 3664 = rho 3673 := by linear_combination r3280
    have hd1 : rho 3663 * rho 3663 = rho 3674 := by linear_combination r3281
    have hd2 : rho 3664 * rho 3664 = rho 3675 := by linear_combination r3282
    have hd3 : rho 3676 * (rho 3664 * rho 3664 + rho 3663 * rho 3663 * (-1)) = 2 * (rho 3663 * rho 3664) := by
      rw [hd0, hd1, hd2]
      linear_combination r3283
    have hd4 : rho 3677 * (2 - (rho 3664 * rho 3664 + rho 3663 * rho 3663 * (-1))) = rho 3664 * rho 3664 - rho 3663 * rho 3663 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3284
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX43 rho : Seg6.F), (seg6AccY43 rho : Seg6.F)⟩
      ⟨(rho 3663 : Seg6.F), (rho 3664 : Seg6.F)⟩
      ⟨(rho 3669 : Seg6.F), (rho 3670 : Seg6.F)⟩
      ⟨(seg6AccX44 rho : Seg6.F), (seg6AccY44 rho : Seg6.F)⟩
      ⟨(rho 3676 : Seg6.F), (rho 3677 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung43

theorem seg6_hstep_c3 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg6_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg6_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg6_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg6_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg6_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg6_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg6_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg6_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg6_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg6_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
