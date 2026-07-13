import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4143 rho ∧ Seg6.relationRow4144 rho ∧ Seg6.relationRow4145 rho ∧ Seg6.relationRow4146 rho ∧ Seg6.relationRow4147 rho ∧ Seg6.relationRow4148 rho ∧ Seg6.relationRow4149 rho ∧ Seg6.relationRow4150 rho ∧ Seg6.relationRow4151 rho ∧ Seg6.relationRow4152 rho ∧ Seg6.relationRow4153 rho ∧ Seg6.relationRow4154 rho ∧ Seg6.relationRow4155 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155, _, _, _, _⟩
  exact ⟨r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155⟩

theorem seg6_rung110 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2000 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩
        ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩
        ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩
        ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩ := by
  obtain ⟨r4143, r4144, r4145, r4146, r4147, r4148, r4149, r4150, r4151, r4152, r4153, r4154, r4155⟩ := seg6_rows110 rho h
  unfold Seg6.relationRow4143 at r4143
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4143
  unfold Seg6.relationRow4144 at r4144
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4144
  unfold Seg6.relationRow4145 at r4145
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4145
  unfold Seg6.relationRow4146 at r4146
  unfold Seg6.relationRow4147 at r4147
  unfold Seg6.relationRow4148 at r4148
  unfold Seg6.relationRow4149 at r4149
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4149
  unfold Seg6.relationRow4150 at r4150
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4150
  unfold Seg6.relationRow4151 at r4151
  unfold Seg6.relationRow4152 at r4152
  unfold Seg6.relationRow4153 at r4153
  unfold Seg6.relationRow4154 at r4154
  unfold Seg6.relationRow4155 at r4155
  have hrung110 (bit : Bool) (hbit : rho 2000 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩
        ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩
        ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩
        ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩ := by
    have hnextx : seg6AccX111 rho = seg6AccX110 rho + rho 4548 := by
      unfold seg6AccX111 seg6AccX110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 110]
      ring
    have hnexty : seg6AccY111 rho = seg6AccY110 rho + rho 4549 := by
      unfold seg6AccY111 seg6AccY110
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 110]
      ring
    have ha0 : (rho 4540 + rho 4541) * (seg6AccX110 rho + seg6AccY110 rho) = rho 4542 := by
      unfold seg6AccX110 seg6AccY110
      linear_combination r4143
    have ha1 : rho 4541 * seg6AccX110 rho = rho 4543 := by
      unfold seg6AccX110
      linear_combination r4144
    have ha2 : rho 4540 * seg6AccY110 rho = rho 4544 := by
      unfold seg6AccY110
      linear_combination r4145
    have ha3 : 3021 * rho 4543 * rho 4544 = rho 4545 := by
      linear_combination r4146
    have ha4 : rho 4546 * (1 + rho 4545) = rho 4543 + rho 4544 := by
      linear_combination r4147
    have ha5 : rho 4547 * (1 - rho 4545) = rho 4542 - rho 4543 - rho 4544 := by
      linear_combination r4148
    have haddx :
        rho 4546 * (1 + 3021 * (rho 4541 * seg6AccX110 rho) * (rho 4540 * seg6AccY110 rho)) =
          rho 4541 * seg6AccX110 rho + rho 4540 * seg6AccY110 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4547 * (1 - 3021 * (rho 4541 * seg6AccX110 rho) * (rho 4540 * seg6AccY110 rho)) =
          (-1) * (rho 4541 * seg6AccX110 rho) - rho 4540 * seg6AccY110 rho +
            (seg6AccY110 rho - seg6AccX110 rho * (-1)) * (rho 4540 + rho 4541) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4547 * (1 - rho 4545) = rho 4542 - rho 4543 - rho 4544 := ha5
        _ = (-1) * rho 4543 - rho 4544 + (seg6AccY110 rho - seg6AccX110 rho * (-1)) * (rho 4540 + rho 4541) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX111 rho = seg6AccX110 rho - Bool.toZMod bit * (seg6AccX110 rho - rho 4546) := by
      have hd : rho 4548 = Bool.toZMod bit * (rho 4546 - seg6AccX110 rho) := by
        rw [← hbit]
        unfold seg6AccX110
        linear_combination -r4149
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY111 rho = seg6AccY110 rho - Bool.toZMod bit * (seg6AccY110 rho - rho 4547) := by
      have hd : rho 4549 = Bool.toZMod bit * (rho 4547 - seg6AccY110 rho) := by
        rw [← hbit]
        unfold seg6AccY110
        linear_combination -r4150
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4540 * rho 4541 = rho 4550 := by linear_combination r4151
    have hd1 : rho 4540 * rho 4540 = rho 4551 := by linear_combination r4152
    have hd2 : rho 4541 * rho 4541 = rho 4552 := by linear_combination r4153
    have hd3 : rho 4553 * (rho 4541 * rho 4541 + rho 4540 * rho 4540 * (-1)) = 2 * (rho 4540 * rho 4541) := by
      rw [hd0, hd1, hd2]
      linear_combination r4154
    have hd4 : rho 4554 * (2 - (rho 4541 * rho 4541 + rho 4540 * rho 4540 * (-1))) = rho 4541 * rho 4541 - rho 4540 * rho 4540 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4155
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX110 rho : Seg6.F), (seg6AccY110 rho : Seg6.F)⟩
      ⟨(rho 4540 : Seg6.F), (rho 4541 : Seg6.F)⟩
      ⟨(rho 4546 : Seg6.F), (rho 4547 : Seg6.F)⟩
      ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩
      ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung110

theorem seg6_rows111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4156 rho ∧ Seg6.relationRow4157 rho ∧ Seg6.relationRow4158 rho ∧ Seg6.relationRow4159 rho ∧ Seg6.relationRow4160 rho ∧ Seg6.relationRow4161 rho ∧ Seg6.relationRow4162 rho ∧ Seg6.relationRow4163 rho ∧ Seg6.relationRow4164 rho ∧ Seg6.relationRow4165 rho ∧ Seg6.relationRow4166 rho ∧ Seg6.relationRow4167 rho ∧ Seg6.relationRow4168 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p51, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart51 at p51
  rcases p51 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4156, r4157, r4158, r4159⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4156, r4157, r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168⟩

theorem seg6_rung111 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2001 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩
        ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩
        ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩
        ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩ := by
  obtain ⟨r4156, r4157, r4158, r4159, r4160, r4161, r4162, r4163, r4164, r4165, r4166, r4167, r4168⟩ := seg6_rows111 rho h
  unfold Seg6.relationRow4156 at r4156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4156
  unfold Seg6.relationRow4157 at r4157
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4157
  unfold Seg6.relationRow4158 at r4158
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4158
  unfold Seg6.relationRow4159 at r4159
  unfold Seg6.relationRow4160 at r4160
  unfold Seg6.relationRow4161 at r4161
  unfold Seg6.relationRow4162 at r4162
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4162
  unfold Seg6.relationRow4163 at r4163
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4163
  unfold Seg6.relationRow4164 at r4164
  unfold Seg6.relationRow4165 at r4165
  unfold Seg6.relationRow4166 at r4166
  unfold Seg6.relationRow4167 at r4167
  unfold Seg6.relationRow4168 at r4168
  have hrung111 (bit : Bool) (hbit : rho 2001 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩
        ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩
        ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩
        ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩ := by
    have hnextx : seg6AccX112 rho = seg6AccX111 rho + rho 4561 := by
      unfold seg6AccX112 seg6AccX111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 111]
      ring
    have hnexty : seg6AccY112 rho = seg6AccY111 rho + rho 4562 := by
      unfold seg6AccY112 seg6AccY111
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 111]
      ring
    have ha0 : (rho 4553 + rho 4554) * (seg6AccX111 rho + seg6AccY111 rho) = rho 4555 := by
      unfold seg6AccX111 seg6AccY111
      linear_combination r4156
    have ha1 : rho 4554 * seg6AccX111 rho = rho 4556 := by
      unfold seg6AccX111
      linear_combination r4157
    have ha2 : rho 4553 * seg6AccY111 rho = rho 4557 := by
      unfold seg6AccY111
      linear_combination r4158
    have ha3 : 3021 * rho 4556 * rho 4557 = rho 4558 := by
      linear_combination r4159
    have ha4 : rho 4559 * (1 + rho 4558) = rho 4556 + rho 4557 := by
      linear_combination r4160
    have ha5 : rho 4560 * (1 - rho 4558) = rho 4555 - rho 4556 - rho 4557 := by
      linear_combination r4161
    have haddx :
        rho 4559 * (1 + 3021 * (rho 4554 * seg6AccX111 rho) * (rho 4553 * seg6AccY111 rho)) =
          rho 4554 * seg6AccX111 rho + rho 4553 * seg6AccY111 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4560 * (1 - 3021 * (rho 4554 * seg6AccX111 rho) * (rho 4553 * seg6AccY111 rho)) =
          (-1) * (rho 4554 * seg6AccX111 rho) - rho 4553 * seg6AccY111 rho +
            (seg6AccY111 rho - seg6AccX111 rho * (-1)) * (rho 4553 + rho 4554) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4560 * (1 - rho 4558) = rho 4555 - rho 4556 - rho 4557 := ha5
        _ = (-1) * rho 4556 - rho 4557 + (seg6AccY111 rho - seg6AccX111 rho * (-1)) * (rho 4553 + rho 4554) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX112 rho = seg6AccX111 rho - Bool.toZMod bit * (seg6AccX111 rho - rho 4559) := by
      have hd : rho 4561 = Bool.toZMod bit * (rho 4559 - seg6AccX111 rho) := by
        rw [← hbit]
        unfold seg6AccX111
        linear_combination -r4162
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY112 rho = seg6AccY111 rho - Bool.toZMod bit * (seg6AccY111 rho - rho 4560) := by
      have hd : rho 4562 = Bool.toZMod bit * (rho 4560 - seg6AccY111 rho) := by
        rw [← hbit]
        unfold seg6AccY111
        linear_combination -r4163
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4553 * rho 4554 = rho 4563 := by linear_combination r4164
    have hd1 : rho 4553 * rho 4553 = rho 4564 := by linear_combination r4165
    have hd2 : rho 4554 * rho 4554 = rho 4565 := by linear_combination r4166
    have hd3 : rho 4566 * (rho 4554 * rho 4554 + rho 4553 * rho 4553 * (-1)) = 2 * (rho 4553 * rho 4554) := by
      rw [hd0, hd1, hd2]
      linear_combination r4167
    have hd4 : rho 4567 * (2 - (rho 4554 * rho 4554 + rho 4553 * rho 4553 * (-1))) = rho 4554 * rho 4554 - rho 4553 * rho 4553 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4168
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX111 rho : Seg6.F), (seg6AccY111 rho : Seg6.F)⟩
      ⟨(rho 4553 : Seg6.F), (rho 4554 : Seg6.F)⟩
      ⟨(rho 4559 : Seg6.F), (rho 4560 : Seg6.F)⟩
      ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩
      ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung111

theorem seg6_rows112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4169 rho ∧ Seg6.relationRow4170 rho ∧ Seg6.relationRow4171 rho ∧ Seg6.relationRow4172 rho ∧ Seg6.relationRow4173 rho ∧ Seg6.relationRow4174 rho ∧ Seg6.relationRow4175 rho ∧ Seg6.relationRow4176 rho ∧ Seg6.relationRow4177 rho ∧ Seg6.relationRow4178 rho ∧ Seg6.relationRow4179 rho ∧ Seg6.relationRow4180 rho ∧ Seg6.relationRow4181 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181⟩

theorem seg6_rung112 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2002 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩
        ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩
        ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩
        ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩ := by
  obtain ⟨r4169, r4170, r4171, r4172, r4173, r4174, r4175, r4176, r4177, r4178, r4179, r4180, r4181⟩ := seg6_rows112 rho h
  unfold Seg6.relationRow4169 at r4169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4169
  unfold Seg6.relationRow4170 at r4170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4170
  unfold Seg6.relationRow4171 at r4171
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4171
  unfold Seg6.relationRow4172 at r4172
  unfold Seg6.relationRow4173 at r4173
  unfold Seg6.relationRow4174 at r4174
  unfold Seg6.relationRow4175 at r4175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4175
  unfold Seg6.relationRow4176 at r4176
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4176
  unfold Seg6.relationRow4177 at r4177
  unfold Seg6.relationRow4178 at r4178
  unfold Seg6.relationRow4179 at r4179
  unfold Seg6.relationRow4180 at r4180
  unfold Seg6.relationRow4181 at r4181
  have hrung112 (bit : Bool) (hbit : rho 2002 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩
        ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩
        ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩
        ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩ := by
    have hnextx : seg6AccX113 rho = seg6AccX112 rho + rho 4574 := by
      unfold seg6AccX113 seg6AccX112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 112]
      ring
    have hnexty : seg6AccY113 rho = seg6AccY112 rho + rho 4575 := by
      unfold seg6AccY113 seg6AccY112
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 112]
      ring
    have ha0 : (rho 4566 + rho 4567) * (seg6AccX112 rho + seg6AccY112 rho) = rho 4568 := by
      unfold seg6AccX112 seg6AccY112
      linear_combination r4169
    have ha1 : rho 4567 * seg6AccX112 rho = rho 4569 := by
      unfold seg6AccX112
      linear_combination r4170
    have ha2 : rho 4566 * seg6AccY112 rho = rho 4570 := by
      unfold seg6AccY112
      linear_combination r4171
    have ha3 : 3021 * rho 4569 * rho 4570 = rho 4571 := by
      linear_combination r4172
    have ha4 : rho 4572 * (1 + rho 4571) = rho 4569 + rho 4570 := by
      linear_combination r4173
    have ha5 : rho 4573 * (1 - rho 4571) = rho 4568 - rho 4569 - rho 4570 := by
      linear_combination r4174
    have haddx :
        rho 4572 * (1 + 3021 * (rho 4567 * seg6AccX112 rho) * (rho 4566 * seg6AccY112 rho)) =
          rho 4567 * seg6AccX112 rho + rho 4566 * seg6AccY112 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4573 * (1 - 3021 * (rho 4567 * seg6AccX112 rho) * (rho 4566 * seg6AccY112 rho)) =
          (-1) * (rho 4567 * seg6AccX112 rho) - rho 4566 * seg6AccY112 rho +
            (seg6AccY112 rho - seg6AccX112 rho * (-1)) * (rho 4566 + rho 4567) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4573 * (1 - rho 4571) = rho 4568 - rho 4569 - rho 4570 := ha5
        _ = (-1) * rho 4569 - rho 4570 + (seg6AccY112 rho - seg6AccX112 rho * (-1)) * (rho 4566 + rho 4567) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX113 rho = seg6AccX112 rho - Bool.toZMod bit * (seg6AccX112 rho - rho 4572) := by
      have hd : rho 4574 = Bool.toZMod bit * (rho 4572 - seg6AccX112 rho) := by
        rw [← hbit]
        unfold seg6AccX112
        linear_combination -r4175
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY113 rho = seg6AccY112 rho - Bool.toZMod bit * (seg6AccY112 rho - rho 4573) := by
      have hd : rho 4575 = Bool.toZMod bit * (rho 4573 - seg6AccY112 rho) := by
        rw [← hbit]
        unfold seg6AccY112
        linear_combination -r4176
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4566 * rho 4567 = rho 4576 := by linear_combination r4177
    have hd1 : rho 4566 * rho 4566 = rho 4577 := by linear_combination r4178
    have hd2 : rho 4567 * rho 4567 = rho 4578 := by linear_combination r4179
    have hd3 : rho 4579 * (rho 4567 * rho 4567 + rho 4566 * rho 4566 * (-1)) = 2 * (rho 4566 * rho 4567) := by
      rw [hd0, hd1, hd2]
      linear_combination r4180
    have hd4 : rho 4580 * (2 - (rho 4567 * rho 4567 + rho 4566 * rho 4566 * (-1))) = rho 4567 * rho 4567 - rho 4566 * rho 4566 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4181
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX112 rho : Seg6.F), (seg6AccY112 rho : Seg6.F)⟩
      ⟨(rho 4566 : Seg6.F), (rho 4567 : Seg6.F)⟩
      ⟨(rho 4572 : Seg6.F), (rho 4573 : Seg6.F)⟩
      ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩
      ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung112

theorem seg6_rows113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4182 rho ∧ Seg6.relationRow4183 rho ∧ Seg6.relationRow4184 rho ∧ Seg6.relationRow4185 rho ∧ Seg6.relationRow4186 rho ∧ Seg6.relationRow4187 rho ∧ Seg6.relationRow4188 rho ∧ Seg6.relationRow4189 rho ∧ Seg6.relationRow4190 rho ∧ Seg6.relationRow4191 rho ∧ Seg6.relationRow4192 rho ∧ Seg6.relationRow4193 rho ∧ Seg6.relationRow4194 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194⟩

theorem seg6_rung113 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2003 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩
        ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩
        ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩
        ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩ := by
  obtain ⟨r4182, r4183, r4184, r4185, r4186, r4187, r4188, r4189, r4190, r4191, r4192, r4193, r4194⟩ := seg6_rows113 rho h
  unfold Seg6.relationRow4182 at r4182
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4182
  unfold Seg6.relationRow4183 at r4183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4183
  unfold Seg6.relationRow4184 at r4184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4184
  unfold Seg6.relationRow4185 at r4185
  unfold Seg6.relationRow4186 at r4186
  unfold Seg6.relationRow4187 at r4187
  unfold Seg6.relationRow4188 at r4188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4188
  unfold Seg6.relationRow4189 at r4189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4189
  unfold Seg6.relationRow4190 at r4190
  unfold Seg6.relationRow4191 at r4191
  unfold Seg6.relationRow4192 at r4192
  unfold Seg6.relationRow4193 at r4193
  unfold Seg6.relationRow4194 at r4194
  have hrung113 (bit : Bool) (hbit : rho 2003 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩
        ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩
        ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩
        ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩ := by
    have hnextx : seg6AccX114 rho = seg6AccX113 rho + rho 4587 := by
      unfold seg6AccX114 seg6AccX113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 113]
      ring
    have hnexty : seg6AccY114 rho = seg6AccY113 rho + rho 4588 := by
      unfold seg6AccY114 seg6AccY113
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 113]
      ring
    have ha0 : (rho 4579 + rho 4580) * (seg6AccX113 rho + seg6AccY113 rho) = rho 4581 := by
      unfold seg6AccX113 seg6AccY113
      linear_combination r4182
    have ha1 : rho 4580 * seg6AccX113 rho = rho 4582 := by
      unfold seg6AccX113
      linear_combination r4183
    have ha2 : rho 4579 * seg6AccY113 rho = rho 4583 := by
      unfold seg6AccY113
      linear_combination r4184
    have ha3 : 3021 * rho 4582 * rho 4583 = rho 4584 := by
      linear_combination r4185
    have ha4 : rho 4585 * (1 + rho 4584) = rho 4582 + rho 4583 := by
      linear_combination r4186
    have ha5 : rho 4586 * (1 - rho 4584) = rho 4581 - rho 4582 - rho 4583 := by
      linear_combination r4187
    have haddx :
        rho 4585 * (1 + 3021 * (rho 4580 * seg6AccX113 rho) * (rho 4579 * seg6AccY113 rho)) =
          rho 4580 * seg6AccX113 rho + rho 4579 * seg6AccY113 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4586 * (1 - 3021 * (rho 4580 * seg6AccX113 rho) * (rho 4579 * seg6AccY113 rho)) =
          (-1) * (rho 4580 * seg6AccX113 rho) - rho 4579 * seg6AccY113 rho +
            (seg6AccY113 rho - seg6AccX113 rho * (-1)) * (rho 4579 + rho 4580) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4586 * (1 - rho 4584) = rho 4581 - rho 4582 - rho 4583 := ha5
        _ = (-1) * rho 4582 - rho 4583 + (seg6AccY113 rho - seg6AccX113 rho * (-1)) * (rho 4579 + rho 4580) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX114 rho = seg6AccX113 rho - Bool.toZMod bit * (seg6AccX113 rho - rho 4585) := by
      have hd : rho 4587 = Bool.toZMod bit * (rho 4585 - seg6AccX113 rho) := by
        rw [← hbit]
        unfold seg6AccX113
        linear_combination -r4188
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY114 rho = seg6AccY113 rho - Bool.toZMod bit * (seg6AccY113 rho - rho 4586) := by
      have hd : rho 4588 = Bool.toZMod bit * (rho 4586 - seg6AccY113 rho) := by
        rw [← hbit]
        unfold seg6AccY113
        linear_combination -r4189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4579 * rho 4580 = rho 4589 := by linear_combination r4190
    have hd1 : rho 4579 * rho 4579 = rho 4590 := by linear_combination r4191
    have hd2 : rho 4580 * rho 4580 = rho 4591 := by linear_combination r4192
    have hd3 : rho 4592 * (rho 4580 * rho 4580 + rho 4579 * rho 4579 * (-1)) = 2 * (rho 4579 * rho 4580) := by
      rw [hd0, hd1, hd2]
      linear_combination r4193
    have hd4 : rho 4593 * (2 - (rho 4580 * rho 4580 + rho 4579 * rho 4579 * (-1))) = rho 4580 * rho 4580 - rho 4579 * rho 4579 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX113 rho : Seg6.F), (seg6AccY113 rho : Seg6.F)⟩
      ⟨(rho 4579 : Seg6.F), (rho 4580 : Seg6.F)⟩
      ⟨(rho 4585 : Seg6.F), (rho 4586 : Seg6.F)⟩
      ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩
      ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung113

theorem seg6_rows114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4195 rho ∧ Seg6.relationRow4196 rho ∧ Seg6.relationRow4197 rho ∧ Seg6.relationRow4198 rho ∧ Seg6.relationRow4199 rho ∧ Seg6.relationRow4200 rho ∧ Seg6.relationRow4201 rho ∧ Seg6.relationRow4202 rho ∧ Seg6.relationRow4203 rho ∧ Seg6.relationRow4204 rho ∧ Seg6.relationRow4205 rho ∧ Seg6.relationRow4206 rho ∧ Seg6.relationRow4207 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207⟩

theorem seg6_rung114 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2004 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩
        ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩
        ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩
        ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩ := by
  obtain ⟨r4195, r4196, r4197, r4198, r4199, r4200, r4201, r4202, r4203, r4204, r4205, r4206, r4207⟩ := seg6_rows114 rho h
  unfold Seg6.relationRow4195 at r4195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4195
  unfold Seg6.relationRow4196 at r4196
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4196
  unfold Seg6.relationRow4197 at r4197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4197
  unfold Seg6.relationRow4198 at r4198
  unfold Seg6.relationRow4199 at r4199
  unfold Seg6.relationRow4200 at r4200
  unfold Seg6.relationRow4201 at r4201
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4201
  unfold Seg6.relationRow4202 at r4202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4202
  unfold Seg6.relationRow4203 at r4203
  unfold Seg6.relationRow4204 at r4204
  unfold Seg6.relationRow4205 at r4205
  unfold Seg6.relationRow4206 at r4206
  unfold Seg6.relationRow4207 at r4207
  have hrung114 (bit : Bool) (hbit : rho 2004 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩
        ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩
        ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩
        ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩ := by
    have hnextx : seg6AccX115 rho = seg6AccX114 rho + rho 4600 := by
      unfold seg6AccX115 seg6AccX114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 114]
      ring
    have hnexty : seg6AccY115 rho = seg6AccY114 rho + rho 4601 := by
      unfold seg6AccY115 seg6AccY114
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 114]
      ring
    have ha0 : (rho 4592 + rho 4593) * (seg6AccX114 rho + seg6AccY114 rho) = rho 4594 := by
      unfold seg6AccX114 seg6AccY114
      linear_combination r4195
    have ha1 : rho 4593 * seg6AccX114 rho = rho 4595 := by
      unfold seg6AccX114
      linear_combination r4196
    have ha2 : rho 4592 * seg6AccY114 rho = rho 4596 := by
      unfold seg6AccY114
      linear_combination r4197
    have ha3 : 3021 * rho 4595 * rho 4596 = rho 4597 := by
      linear_combination r4198
    have ha4 : rho 4598 * (1 + rho 4597) = rho 4595 + rho 4596 := by
      linear_combination r4199
    have ha5 : rho 4599 * (1 - rho 4597) = rho 4594 - rho 4595 - rho 4596 := by
      linear_combination r4200
    have haddx :
        rho 4598 * (1 + 3021 * (rho 4593 * seg6AccX114 rho) * (rho 4592 * seg6AccY114 rho)) =
          rho 4593 * seg6AccX114 rho + rho 4592 * seg6AccY114 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4599 * (1 - 3021 * (rho 4593 * seg6AccX114 rho) * (rho 4592 * seg6AccY114 rho)) =
          (-1) * (rho 4593 * seg6AccX114 rho) - rho 4592 * seg6AccY114 rho +
            (seg6AccY114 rho - seg6AccX114 rho * (-1)) * (rho 4592 + rho 4593) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4599 * (1 - rho 4597) = rho 4594 - rho 4595 - rho 4596 := ha5
        _ = (-1) * rho 4595 - rho 4596 + (seg6AccY114 rho - seg6AccX114 rho * (-1)) * (rho 4592 + rho 4593) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX115 rho = seg6AccX114 rho - Bool.toZMod bit * (seg6AccX114 rho - rho 4598) := by
      have hd : rho 4600 = Bool.toZMod bit * (rho 4598 - seg6AccX114 rho) := by
        rw [← hbit]
        unfold seg6AccX114
        linear_combination -r4201
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY115 rho = seg6AccY114 rho - Bool.toZMod bit * (seg6AccY114 rho - rho 4599) := by
      have hd : rho 4601 = Bool.toZMod bit * (rho 4599 - seg6AccY114 rho) := by
        rw [← hbit]
        unfold seg6AccY114
        linear_combination -r4202
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4592 * rho 4593 = rho 4602 := by linear_combination r4203
    have hd1 : rho 4592 * rho 4592 = rho 4603 := by linear_combination r4204
    have hd2 : rho 4593 * rho 4593 = rho 4604 := by linear_combination r4205
    have hd3 : rho 4605 * (rho 4593 * rho 4593 + rho 4592 * rho 4592 * (-1)) = 2 * (rho 4592 * rho 4593) := by
      rw [hd0, hd1, hd2]
      linear_combination r4206
    have hd4 : rho 4606 * (2 - (rho 4593 * rho 4593 + rho 4592 * rho 4592 * (-1))) = rho 4593 * rho 4593 - rho 4592 * rho 4592 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4207
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX114 rho : Seg6.F), (seg6AccY114 rho : Seg6.F)⟩
      ⟨(rho 4592 : Seg6.F), (rho 4593 : Seg6.F)⟩
      ⟨(rho 4598 : Seg6.F), (rho 4599 : Seg6.F)⟩
      ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩
      ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung114

theorem seg6_rows115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4208 rho ∧ Seg6.relationRow4209 rho ∧ Seg6.relationRow4210 rho ∧ Seg6.relationRow4211 rho ∧ Seg6.relationRow4212 rho ∧ Seg6.relationRow4213 rho ∧ Seg6.relationRow4214 rho ∧ Seg6.relationRow4215 rho ∧ Seg6.relationRow4216 rho ∧ Seg6.relationRow4217 rho ∧ Seg6.relationRow4218 rho ∧ Seg6.relationRow4219 rho ∧ Seg6.relationRow4220 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220⟩

theorem seg6_rung115 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2005 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩
        ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩
        ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩
        ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩ := by
  obtain ⟨r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220⟩ := seg6_rows115 rho h
  unfold Seg6.relationRow4208 at r4208
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4208
  unfold Seg6.relationRow4209 at r4209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4209
  unfold Seg6.relationRow4210 at r4210
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4210
  unfold Seg6.relationRow4211 at r4211
  unfold Seg6.relationRow4212 at r4212
  unfold Seg6.relationRow4213 at r4213
  unfold Seg6.relationRow4214 at r4214
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4214
  unfold Seg6.relationRow4215 at r4215
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4215
  unfold Seg6.relationRow4216 at r4216
  unfold Seg6.relationRow4217 at r4217
  unfold Seg6.relationRow4218 at r4218
  unfold Seg6.relationRow4219 at r4219
  unfold Seg6.relationRow4220 at r4220
  have hrung115 (bit : Bool) (hbit : rho 2005 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩
        ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩
        ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩
        ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩ := by
    have hnextx : seg6AccX116 rho = seg6AccX115 rho + rho 4613 := by
      unfold seg6AccX116 seg6AccX115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 115]
      ring
    have hnexty : seg6AccY116 rho = seg6AccY115 rho + rho 4614 := by
      unfold seg6AccY116 seg6AccY115
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 115]
      ring
    have ha0 : (rho 4605 + rho 4606) * (seg6AccX115 rho + seg6AccY115 rho) = rho 4607 := by
      unfold seg6AccX115 seg6AccY115
      linear_combination r4208
    have ha1 : rho 4606 * seg6AccX115 rho = rho 4608 := by
      unfold seg6AccX115
      linear_combination r4209
    have ha2 : rho 4605 * seg6AccY115 rho = rho 4609 := by
      unfold seg6AccY115
      linear_combination r4210
    have ha3 : 3021 * rho 4608 * rho 4609 = rho 4610 := by
      linear_combination r4211
    have ha4 : rho 4611 * (1 + rho 4610) = rho 4608 + rho 4609 := by
      linear_combination r4212
    have ha5 : rho 4612 * (1 - rho 4610) = rho 4607 - rho 4608 - rho 4609 := by
      linear_combination r4213
    have haddx :
        rho 4611 * (1 + 3021 * (rho 4606 * seg6AccX115 rho) * (rho 4605 * seg6AccY115 rho)) =
          rho 4606 * seg6AccX115 rho + rho 4605 * seg6AccY115 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4612 * (1 - 3021 * (rho 4606 * seg6AccX115 rho) * (rho 4605 * seg6AccY115 rho)) =
          (-1) * (rho 4606 * seg6AccX115 rho) - rho 4605 * seg6AccY115 rho +
            (seg6AccY115 rho - seg6AccX115 rho * (-1)) * (rho 4605 + rho 4606) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4612 * (1 - rho 4610) = rho 4607 - rho 4608 - rho 4609 := ha5
        _ = (-1) * rho 4608 - rho 4609 + (seg6AccY115 rho - seg6AccX115 rho * (-1)) * (rho 4605 + rho 4606) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX116 rho = seg6AccX115 rho - Bool.toZMod bit * (seg6AccX115 rho - rho 4611) := by
      have hd : rho 4613 = Bool.toZMod bit * (rho 4611 - seg6AccX115 rho) := by
        rw [← hbit]
        unfold seg6AccX115
        linear_combination -r4214
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY116 rho = seg6AccY115 rho - Bool.toZMod bit * (seg6AccY115 rho - rho 4612) := by
      have hd : rho 4614 = Bool.toZMod bit * (rho 4612 - seg6AccY115 rho) := by
        rw [← hbit]
        unfold seg6AccY115
        linear_combination -r4215
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4605 * rho 4606 = rho 4615 := by linear_combination r4216
    have hd1 : rho 4605 * rho 4605 = rho 4616 := by linear_combination r4217
    have hd2 : rho 4606 * rho 4606 = rho 4617 := by linear_combination r4218
    have hd3 : rho 4618 * (rho 4606 * rho 4606 + rho 4605 * rho 4605 * (-1)) = 2 * (rho 4605 * rho 4606) := by
      rw [hd0, hd1, hd2]
      linear_combination r4219
    have hd4 : rho 4619 * (2 - (rho 4606 * rho 4606 + rho 4605 * rho 4605 * (-1))) = rho 4606 * rho 4606 - rho 4605 * rho 4605 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4220
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX115 rho : Seg6.F), (seg6AccY115 rho : Seg6.F)⟩
      ⟨(rho 4605 : Seg6.F), (rho 4606 : Seg6.F)⟩
      ⟨(rho 4611 : Seg6.F), (rho 4612 : Seg6.F)⟩
      ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩
      ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung115

theorem seg6_rows116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4221 rho ∧ Seg6.relationRow4222 rho ∧ Seg6.relationRow4223 rho ∧ Seg6.relationRow4224 rho ∧ Seg6.relationRow4225 rho ∧ Seg6.relationRow4226 rho ∧ Seg6.relationRow4227 rho ∧ Seg6.relationRow4228 rho ∧ Seg6.relationRow4229 rho ∧ Seg6.relationRow4230 rho ∧ Seg6.relationRow4231 rho ∧ Seg6.relationRow4232 rho ∧ Seg6.relationRow4233 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, _, _, _, _, _, _⟩
  exact ⟨r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233⟩

theorem seg6_rung116 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2006 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩
        ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩
        ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩
        ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩ := by
  obtain ⟨r4221, r4222, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233⟩ := seg6_rows116 rho h
  unfold Seg6.relationRow4221 at r4221
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4221
  unfold Seg6.relationRow4222 at r4222
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4222
  unfold Seg6.relationRow4223 at r4223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4223
  unfold Seg6.relationRow4224 at r4224
  unfold Seg6.relationRow4225 at r4225
  unfold Seg6.relationRow4226 at r4226
  unfold Seg6.relationRow4227 at r4227
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4227
  unfold Seg6.relationRow4228 at r4228
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4228
  unfold Seg6.relationRow4229 at r4229
  unfold Seg6.relationRow4230 at r4230
  unfold Seg6.relationRow4231 at r4231
  unfold Seg6.relationRow4232 at r4232
  unfold Seg6.relationRow4233 at r4233
  have hrung116 (bit : Bool) (hbit : rho 2006 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩
        ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩
        ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩
        ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩ := by
    have hnextx : seg6AccX117 rho = seg6AccX116 rho + rho 4626 := by
      unfold seg6AccX117 seg6AccX116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 116]
      ring
    have hnexty : seg6AccY117 rho = seg6AccY116 rho + rho 4627 := by
      unfold seg6AccY117 seg6AccY116
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 116]
      ring
    have ha0 : (rho 4618 + rho 4619) * (seg6AccX116 rho + seg6AccY116 rho) = rho 4620 := by
      unfold seg6AccX116 seg6AccY116
      linear_combination r4221
    have ha1 : rho 4619 * seg6AccX116 rho = rho 4621 := by
      unfold seg6AccX116
      linear_combination r4222
    have ha2 : rho 4618 * seg6AccY116 rho = rho 4622 := by
      unfold seg6AccY116
      linear_combination r4223
    have ha3 : 3021 * rho 4621 * rho 4622 = rho 4623 := by
      linear_combination r4224
    have ha4 : rho 4624 * (1 + rho 4623) = rho 4621 + rho 4622 := by
      linear_combination r4225
    have ha5 : rho 4625 * (1 - rho 4623) = rho 4620 - rho 4621 - rho 4622 := by
      linear_combination r4226
    have haddx :
        rho 4624 * (1 + 3021 * (rho 4619 * seg6AccX116 rho) * (rho 4618 * seg6AccY116 rho)) =
          rho 4619 * seg6AccX116 rho + rho 4618 * seg6AccY116 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4625 * (1 - 3021 * (rho 4619 * seg6AccX116 rho) * (rho 4618 * seg6AccY116 rho)) =
          (-1) * (rho 4619 * seg6AccX116 rho) - rho 4618 * seg6AccY116 rho +
            (seg6AccY116 rho - seg6AccX116 rho * (-1)) * (rho 4618 + rho 4619) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4625 * (1 - rho 4623) = rho 4620 - rho 4621 - rho 4622 := ha5
        _ = (-1) * rho 4621 - rho 4622 + (seg6AccY116 rho - seg6AccX116 rho * (-1)) * (rho 4618 + rho 4619) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX117 rho = seg6AccX116 rho - Bool.toZMod bit * (seg6AccX116 rho - rho 4624) := by
      have hd : rho 4626 = Bool.toZMod bit * (rho 4624 - seg6AccX116 rho) := by
        rw [← hbit]
        unfold seg6AccX116
        linear_combination -r4227
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY117 rho = seg6AccY116 rho - Bool.toZMod bit * (seg6AccY116 rho - rho 4625) := by
      have hd : rho 4627 = Bool.toZMod bit * (rho 4625 - seg6AccY116 rho) := by
        rw [← hbit]
        unfold seg6AccY116
        linear_combination -r4228
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4618 * rho 4619 = rho 4628 := by linear_combination r4229
    have hd1 : rho 4618 * rho 4618 = rho 4629 := by linear_combination r4230
    have hd2 : rho 4619 * rho 4619 = rho 4630 := by linear_combination r4231
    have hd3 : rho 4631 * (rho 4619 * rho 4619 + rho 4618 * rho 4618 * (-1)) = 2 * (rho 4618 * rho 4619) := by
      rw [hd0, hd1, hd2]
      linear_combination r4232
    have hd4 : rho 4632 * (2 - (rho 4619 * rho 4619 + rho 4618 * rho 4618 * (-1))) = rho 4619 * rho 4619 - rho 4618 * rho 4618 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4233
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX116 rho : Seg6.F), (seg6AccY116 rho : Seg6.F)⟩
      ⟨(rho 4618 : Seg6.F), (rho 4619 : Seg6.F)⟩
      ⟨(rho 4624 : Seg6.F), (rho 4625 : Seg6.F)⟩
      ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩
      ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung116

theorem seg6_rows117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4234 rho ∧ Seg6.relationRow4235 rho ∧ Seg6.relationRow4236 rho ∧ Seg6.relationRow4237 rho ∧ Seg6.relationRow4238 rho ∧ Seg6.relationRow4239 rho ∧ Seg6.relationRow4240 rho ∧ Seg6.relationRow4241 rho ∧ Seg6.relationRow4242 rho ∧ Seg6.relationRow4243 rho ∧ Seg6.relationRow4244 rho ∧ Seg6.relationRow4245 rho ∧ Seg6.relationRow4246 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, r4245, r4246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4234, r4235, r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246⟩

theorem seg6_rung117 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2007 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩
        ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩
        ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩
        ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩ := by
  obtain ⟨r4234, r4235, r4236, r4237, r4238, r4239, r4240, r4241, r4242, r4243, r4244, r4245, r4246⟩ := seg6_rows117 rho h
  unfold Seg6.relationRow4234 at r4234
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4234
  unfold Seg6.relationRow4235 at r4235
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4235
  unfold Seg6.relationRow4236 at r4236
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4236
  unfold Seg6.relationRow4237 at r4237
  unfold Seg6.relationRow4238 at r4238
  unfold Seg6.relationRow4239 at r4239
  unfold Seg6.relationRow4240 at r4240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4240
  unfold Seg6.relationRow4241 at r4241
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4241
  unfold Seg6.relationRow4242 at r4242
  unfold Seg6.relationRow4243 at r4243
  unfold Seg6.relationRow4244 at r4244
  unfold Seg6.relationRow4245 at r4245
  unfold Seg6.relationRow4246 at r4246
  have hrung117 (bit : Bool) (hbit : rho 2007 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩
        ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩
        ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩
        ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩ := by
    have hnextx : seg6AccX118 rho = seg6AccX117 rho + rho 4639 := by
      unfold seg6AccX118 seg6AccX117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 117]
      ring
    have hnexty : seg6AccY118 rho = seg6AccY117 rho + rho 4640 := by
      unfold seg6AccY118 seg6AccY117
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 117]
      ring
    have ha0 : (rho 4631 + rho 4632) * (seg6AccX117 rho + seg6AccY117 rho) = rho 4633 := by
      unfold seg6AccX117 seg6AccY117
      linear_combination r4234
    have ha1 : rho 4632 * seg6AccX117 rho = rho 4634 := by
      unfold seg6AccX117
      linear_combination r4235
    have ha2 : rho 4631 * seg6AccY117 rho = rho 4635 := by
      unfold seg6AccY117
      linear_combination r4236
    have ha3 : 3021 * rho 4634 * rho 4635 = rho 4636 := by
      linear_combination r4237
    have ha4 : rho 4637 * (1 + rho 4636) = rho 4634 + rho 4635 := by
      linear_combination r4238
    have ha5 : rho 4638 * (1 - rho 4636) = rho 4633 - rho 4634 - rho 4635 := by
      linear_combination r4239
    have haddx :
        rho 4637 * (1 + 3021 * (rho 4632 * seg6AccX117 rho) * (rho 4631 * seg6AccY117 rho)) =
          rho 4632 * seg6AccX117 rho + rho 4631 * seg6AccY117 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4638 * (1 - 3021 * (rho 4632 * seg6AccX117 rho) * (rho 4631 * seg6AccY117 rho)) =
          (-1) * (rho 4632 * seg6AccX117 rho) - rho 4631 * seg6AccY117 rho +
            (seg6AccY117 rho - seg6AccX117 rho * (-1)) * (rho 4631 + rho 4632) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4638 * (1 - rho 4636) = rho 4633 - rho 4634 - rho 4635 := ha5
        _ = (-1) * rho 4634 - rho 4635 + (seg6AccY117 rho - seg6AccX117 rho * (-1)) * (rho 4631 + rho 4632) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX118 rho = seg6AccX117 rho - Bool.toZMod bit * (seg6AccX117 rho - rho 4637) := by
      have hd : rho 4639 = Bool.toZMod bit * (rho 4637 - seg6AccX117 rho) := by
        rw [← hbit]
        unfold seg6AccX117
        linear_combination -r4240
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY118 rho = seg6AccY117 rho - Bool.toZMod bit * (seg6AccY117 rho - rho 4638) := by
      have hd : rho 4640 = Bool.toZMod bit * (rho 4638 - seg6AccY117 rho) := by
        rw [← hbit]
        unfold seg6AccY117
        linear_combination -r4241
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4631 * rho 4632 = rho 4641 := by linear_combination r4242
    have hd1 : rho 4631 * rho 4631 = rho 4642 := by linear_combination r4243
    have hd2 : rho 4632 * rho 4632 = rho 4643 := by linear_combination r4244
    have hd3 : rho 4644 * (rho 4632 * rho 4632 + rho 4631 * rho 4631 * (-1)) = 2 * (rho 4631 * rho 4632) := by
      rw [hd0, hd1, hd2]
      linear_combination r4245
    have hd4 : rho 4645 * (2 - (rho 4632 * rho 4632 + rho 4631 * rho 4631 * (-1))) = rho 4632 * rho 4632 - rho 4631 * rho 4631 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4246
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX117 rho : Seg6.F), (seg6AccY117 rho : Seg6.F)⟩
      ⟨(rho 4631 : Seg6.F), (rho 4632 : Seg6.F)⟩
      ⟨(rho 4637 : Seg6.F), (rho 4638 : Seg6.F)⟩
      ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩
      ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung117

theorem seg6_rows118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4247 rho ∧ Seg6.relationRow4248 rho ∧ Seg6.relationRow4249 rho ∧ Seg6.relationRow4250 rho ∧ Seg6.relationRow4251 rho ∧ Seg6.relationRow4252 rho ∧ Seg6.relationRow4253 rho ∧ Seg6.relationRow4254 rho ∧ Seg6.relationRow4255 rho ∧ Seg6.relationRow4256 rho ∧ Seg6.relationRow4257 rho ∧ Seg6.relationRow4258 rho ∧ Seg6.relationRow4259 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259⟩

theorem seg6_rung118 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2008 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩
        ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩
        ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩
        ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩ := by
  obtain ⟨r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259⟩ := seg6_rows118 rho h
  unfold Seg6.relationRow4247 at r4247
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4247
  unfold Seg6.relationRow4248 at r4248
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4248
  unfold Seg6.relationRow4249 at r4249
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4249
  unfold Seg6.relationRow4250 at r4250
  unfold Seg6.relationRow4251 at r4251
  unfold Seg6.relationRow4252 at r4252
  unfold Seg6.relationRow4253 at r4253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4253
  unfold Seg6.relationRow4254 at r4254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4254
  unfold Seg6.relationRow4255 at r4255
  unfold Seg6.relationRow4256 at r4256
  unfold Seg6.relationRow4257 at r4257
  unfold Seg6.relationRow4258 at r4258
  unfold Seg6.relationRow4259 at r4259
  have hrung118 (bit : Bool) (hbit : rho 2008 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩
        ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩
        ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩
        ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩ := by
    have hnextx : seg6AccX119 rho = seg6AccX118 rho + rho 4652 := by
      unfold seg6AccX119 seg6AccX118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 118]
      ring
    have hnexty : seg6AccY119 rho = seg6AccY118 rho + rho 4653 := by
      unfold seg6AccY119 seg6AccY118
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 118]
      ring
    have ha0 : (rho 4644 + rho 4645) * (seg6AccX118 rho + seg6AccY118 rho) = rho 4646 := by
      unfold seg6AccX118 seg6AccY118
      linear_combination r4247
    have ha1 : rho 4645 * seg6AccX118 rho = rho 4647 := by
      unfold seg6AccX118
      linear_combination r4248
    have ha2 : rho 4644 * seg6AccY118 rho = rho 4648 := by
      unfold seg6AccY118
      linear_combination r4249
    have ha3 : 3021 * rho 4647 * rho 4648 = rho 4649 := by
      linear_combination r4250
    have ha4 : rho 4650 * (1 + rho 4649) = rho 4647 + rho 4648 := by
      linear_combination r4251
    have ha5 : rho 4651 * (1 - rho 4649) = rho 4646 - rho 4647 - rho 4648 := by
      linear_combination r4252
    have haddx :
        rho 4650 * (1 + 3021 * (rho 4645 * seg6AccX118 rho) * (rho 4644 * seg6AccY118 rho)) =
          rho 4645 * seg6AccX118 rho + rho 4644 * seg6AccY118 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4651 * (1 - 3021 * (rho 4645 * seg6AccX118 rho) * (rho 4644 * seg6AccY118 rho)) =
          (-1) * (rho 4645 * seg6AccX118 rho) - rho 4644 * seg6AccY118 rho +
            (seg6AccY118 rho - seg6AccX118 rho * (-1)) * (rho 4644 + rho 4645) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4651 * (1 - rho 4649) = rho 4646 - rho 4647 - rho 4648 := ha5
        _ = (-1) * rho 4647 - rho 4648 + (seg6AccY118 rho - seg6AccX118 rho * (-1)) * (rho 4644 + rho 4645) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX119 rho = seg6AccX118 rho - Bool.toZMod bit * (seg6AccX118 rho - rho 4650) := by
      have hd : rho 4652 = Bool.toZMod bit * (rho 4650 - seg6AccX118 rho) := by
        rw [← hbit]
        unfold seg6AccX118
        linear_combination -r4253
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY119 rho = seg6AccY118 rho - Bool.toZMod bit * (seg6AccY118 rho - rho 4651) := by
      have hd : rho 4653 = Bool.toZMod bit * (rho 4651 - seg6AccY118 rho) := by
        rw [← hbit]
        unfold seg6AccY118
        linear_combination -r4254
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4644 * rho 4645 = rho 4654 := by linear_combination r4255
    have hd1 : rho 4644 * rho 4644 = rho 4655 := by linear_combination r4256
    have hd2 : rho 4645 * rho 4645 = rho 4656 := by linear_combination r4257
    have hd3 : rho 4657 * (rho 4645 * rho 4645 + rho 4644 * rho 4644 * (-1)) = 2 * (rho 4644 * rho 4645) := by
      rw [hd0, hd1, hd2]
      linear_combination r4258
    have hd4 : rho 4658 * (2 - (rho 4645 * rho 4645 + rho 4644 * rho 4644 * (-1))) = rho 4645 * rho 4645 - rho 4644 * rho 4644 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4259
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX118 rho : Seg6.F), (seg6AccY118 rho : Seg6.F)⟩
      ⟨(rho 4644 : Seg6.F), (rho 4645 : Seg6.F)⟩
      ⟨(rho 4650 : Seg6.F), (rho 4651 : Seg6.F)⟩
      ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩
      ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung118

theorem seg6_rows119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4260 rho ∧ Seg6.relationRow4261 rho ∧ Seg6.relationRow4262 rho ∧ Seg6.relationRow4263 rho ∧ Seg6.relationRow4264 rho ∧ Seg6.relationRow4265 rho ∧ Seg6.relationRow4266 rho ∧ Seg6.relationRow4267 rho ∧ Seg6.relationRow4268 rho ∧ Seg6.relationRow4269 rho ∧ Seg6.relationRow4270 rho ∧ Seg6.relationRow4271 rho ∧ Seg6.relationRow4272 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272⟩

theorem seg6_rung119 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2009 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩
        ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩
        ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩
        ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩ := by
  obtain ⟨r4260, r4261, r4262, r4263, r4264, r4265, r4266, r4267, r4268, r4269, r4270, r4271, r4272⟩ := seg6_rows119 rho h
  unfold Seg6.relationRow4260 at r4260
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4260
  unfold Seg6.relationRow4261 at r4261
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4261
  unfold Seg6.relationRow4262 at r4262
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4262
  unfold Seg6.relationRow4263 at r4263
  unfold Seg6.relationRow4264 at r4264
  unfold Seg6.relationRow4265 at r4265
  unfold Seg6.relationRow4266 at r4266
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4266
  unfold Seg6.relationRow4267 at r4267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4267
  unfold Seg6.relationRow4268 at r4268
  unfold Seg6.relationRow4269 at r4269
  unfold Seg6.relationRow4270 at r4270
  unfold Seg6.relationRow4271 at r4271
  unfold Seg6.relationRow4272 at r4272
  have hrung119 (bit : Bool) (hbit : rho 2009 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩
        ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩
        ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩
        ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩ := by
    have hnextx : seg6AccX120 rho = seg6AccX119 rho + rho 4665 := by
      unfold seg6AccX120 seg6AccX119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 119]
      ring
    have hnexty : seg6AccY120 rho = seg6AccY119 rho + rho 4666 := by
      unfold seg6AccY120 seg6AccY119
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 119]
      ring
    have ha0 : (rho 4657 + rho 4658) * (seg6AccX119 rho + seg6AccY119 rho) = rho 4659 := by
      unfold seg6AccX119 seg6AccY119
      linear_combination r4260
    have ha1 : rho 4658 * seg6AccX119 rho = rho 4660 := by
      unfold seg6AccX119
      linear_combination r4261
    have ha2 : rho 4657 * seg6AccY119 rho = rho 4661 := by
      unfold seg6AccY119
      linear_combination r4262
    have ha3 : 3021 * rho 4660 * rho 4661 = rho 4662 := by
      linear_combination r4263
    have ha4 : rho 4663 * (1 + rho 4662) = rho 4660 + rho 4661 := by
      linear_combination r4264
    have ha5 : rho 4664 * (1 - rho 4662) = rho 4659 - rho 4660 - rho 4661 := by
      linear_combination r4265
    have haddx :
        rho 4663 * (1 + 3021 * (rho 4658 * seg6AccX119 rho) * (rho 4657 * seg6AccY119 rho)) =
          rho 4658 * seg6AccX119 rho + rho 4657 * seg6AccY119 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4664 * (1 - 3021 * (rho 4658 * seg6AccX119 rho) * (rho 4657 * seg6AccY119 rho)) =
          (-1) * (rho 4658 * seg6AccX119 rho) - rho 4657 * seg6AccY119 rho +
            (seg6AccY119 rho - seg6AccX119 rho * (-1)) * (rho 4657 + rho 4658) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4664 * (1 - rho 4662) = rho 4659 - rho 4660 - rho 4661 := ha5
        _ = (-1) * rho 4660 - rho 4661 + (seg6AccY119 rho - seg6AccX119 rho * (-1)) * (rho 4657 + rho 4658) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX120 rho = seg6AccX119 rho - Bool.toZMod bit * (seg6AccX119 rho - rho 4663) := by
      have hd : rho 4665 = Bool.toZMod bit * (rho 4663 - seg6AccX119 rho) := by
        rw [← hbit]
        unfold seg6AccX119
        linear_combination -r4266
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY120 rho = seg6AccY119 rho - Bool.toZMod bit * (seg6AccY119 rho - rho 4664) := by
      have hd : rho 4666 = Bool.toZMod bit * (rho 4664 - seg6AccY119 rho) := by
        rw [← hbit]
        unfold seg6AccY119
        linear_combination -r4267
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4657 * rho 4658 = rho 4667 := by linear_combination r4268
    have hd1 : rho 4657 * rho 4657 = rho 4668 := by linear_combination r4269
    have hd2 : rho 4658 * rho 4658 = rho 4669 := by linear_combination r4270
    have hd3 : rho 4670 * (rho 4658 * rho 4658 + rho 4657 * rho 4657 * (-1)) = 2 * (rho 4657 * rho 4658) := by
      rw [hd0, hd1, hd2]
      linear_combination r4271
    have hd4 : rho 4671 * (2 - (rho 4658 * rho 4658 + rho 4657 * rho 4657 * (-1))) = rho 4658 * rho 4658 - rho 4657 * rho 4657 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4272
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX119 rho : Seg6.F), (seg6AccY119 rho : Seg6.F)⟩
      ⟨(rho 4657 : Seg6.F), (rho 4658 : Seg6.F)⟩
      ⟨(rho 4663 : Seg6.F), (rho 4664 : Seg6.F)⟩
      ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩
      ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung119

theorem seg6_rows120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4273 rho ∧ Seg6.relationRow4274 rho ∧ Seg6.relationRow4275 rho ∧ Seg6.relationRow4276 rho ∧ Seg6.relationRow4277 rho ∧ Seg6.relationRow4278 rho ∧ Seg6.relationRow4279 rho ∧ Seg6.relationRow4280 rho ∧ Seg6.relationRow4281 rho ∧ Seg6.relationRow4282 rho ∧ Seg6.relationRow4283 rho ∧ Seg6.relationRow4284 rho ∧ Seg6.relationRow4285 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285⟩

theorem seg6_rung120 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2010 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩
        ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩
        ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩
        ⟨(rho 4683 : Seg6.F), (rho 4684 : Seg6.F)⟩ := by
  obtain ⟨r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285⟩ := seg6_rows120 rho h
  unfold Seg6.relationRow4273 at r4273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4273
  unfold Seg6.relationRow4274 at r4274
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4274
  unfold Seg6.relationRow4275 at r4275
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4275
  unfold Seg6.relationRow4276 at r4276
  unfold Seg6.relationRow4277 at r4277
  unfold Seg6.relationRow4278 at r4278
  unfold Seg6.relationRow4279 at r4279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4279
  unfold Seg6.relationRow4280 at r4280
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4280
  unfold Seg6.relationRow4281 at r4281
  unfold Seg6.relationRow4282 at r4282
  unfold Seg6.relationRow4283 at r4283
  unfold Seg6.relationRow4284 at r4284
  unfold Seg6.relationRow4285 at r4285
  have hrung120 (bit : Bool) (hbit : rho 2010 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩
        ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩
        ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩
        ⟨(rho 4683 : Seg6.F), (rho 4684 : Seg6.F)⟩ := by
    have hnextx : seg6AccX121 rho = seg6AccX120 rho + rho 4678 := by
      unfold seg6AccX121 seg6AccX120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 120]
      ring
    have hnexty : seg6AccY121 rho = seg6AccY120 rho + rho 4679 := by
      unfold seg6AccY121 seg6AccY120
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 120]
      ring
    have ha0 : (rho 4670 + rho 4671) * (seg6AccX120 rho + seg6AccY120 rho) = rho 4672 := by
      unfold seg6AccX120 seg6AccY120
      linear_combination r4273
    have ha1 : rho 4671 * seg6AccX120 rho = rho 4673 := by
      unfold seg6AccX120
      linear_combination r4274
    have ha2 : rho 4670 * seg6AccY120 rho = rho 4674 := by
      unfold seg6AccY120
      linear_combination r4275
    have ha3 : 3021 * rho 4673 * rho 4674 = rho 4675 := by
      linear_combination r4276
    have ha4 : rho 4676 * (1 + rho 4675) = rho 4673 + rho 4674 := by
      linear_combination r4277
    have ha5 : rho 4677 * (1 - rho 4675) = rho 4672 - rho 4673 - rho 4674 := by
      linear_combination r4278
    have haddx :
        rho 4676 * (1 + 3021 * (rho 4671 * seg6AccX120 rho) * (rho 4670 * seg6AccY120 rho)) =
          rho 4671 * seg6AccX120 rho + rho 4670 * seg6AccY120 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4677 * (1 - 3021 * (rho 4671 * seg6AccX120 rho) * (rho 4670 * seg6AccY120 rho)) =
          (-1) * (rho 4671 * seg6AccX120 rho) - rho 4670 * seg6AccY120 rho +
            (seg6AccY120 rho - seg6AccX120 rho * (-1)) * (rho 4670 + rho 4671) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4677 * (1 - rho 4675) = rho 4672 - rho 4673 - rho 4674 := ha5
        _ = (-1) * rho 4673 - rho 4674 + (seg6AccY120 rho - seg6AccX120 rho * (-1)) * (rho 4670 + rho 4671) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX121 rho = seg6AccX120 rho - Bool.toZMod bit * (seg6AccX120 rho - rho 4676) := by
      have hd : rho 4678 = Bool.toZMod bit * (rho 4676 - seg6AccX120 rho) := by
        rw [← hbit]
        unfold seg6AccX120
        linear_combination -r4279
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY121 rho = seg6AccY120 rho - Bool.toZMod bit * (seg6AccY120 rho - rho 4677) := by
      have hd : rho 4679 = Bool.toZMod bit * (rho 4677 - seg6AccY120 rho) := by
        rw [← hbit]
        unfold seg6AccY120
        linear_combination -r4280
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4670 * rho 4671 = rho 4680 := by linear_combination r4281
    have hd1 : rho 4670 * rho 4670 = rho 4681 := by linear_combination r4282
    have hd2 : rho 4671 * rho 4671 = rho 4682 := by linear_combination r4283
    have hd3 : rho 4683 * (rho 4671 * rho 4671 + rho 4670 * rho 4670 * (-1)) = 2 * (rho 4670 * rho 4671) := by
      rw [hd0, hd1, hd2]
      linear_combination r4284
    have hd4 : rho 4684 * (2 - (rho 4671 * rho 4671 + rho 4670 * rho 4670 * (-1))) = rho 4671 * rho 4671 - rho 4670 * rho 4670 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4285
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX120 rho : Seg6.F), (seg6AccY120 rho : Seg6.F)⟩
      ⟨(rho 4670 : Seg6.F), (rho 4671 : Seg6.F)⟩
      ⟨(rho 4676 : Seg6.F), (rho 4677 : Seg6.F)⟩
      ⟨(seg6AccX121 rho : Seg6.F), (seg6AccY121 rho : Seg6.F)⟩
      ⟨(rho 4683 : Seg6.F), (rho 4684 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung120

theorem seg6_hstep_c10 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg6_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg6_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg6_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg6_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg6_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg6_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg6_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg6_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg6_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg6_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
