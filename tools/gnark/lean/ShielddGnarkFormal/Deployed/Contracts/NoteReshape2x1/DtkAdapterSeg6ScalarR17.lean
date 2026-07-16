import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5181 rho ∧ Seg6.relationRow5182 rho ∧ Seg6.relationRow5183 rho ∧ Seg6.relationRow5184 rho ∧ Seg6.relationRow5185 rho ∧ Seg6.relationRow5186 rho ∧ Seg6.relationRow5187 rho ∧ Seg6.relationRow5188 rho ∧ Seg6.relationRow5189 rho ∧ Seg6.relationRow5190 rho ∧ Seg6.relationRow5191 rho ∧ Seg6.relationRow5192 rho ∧ Seg6.relationRow5193 rho ∧ Seg6.relationRow5194 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, _, _, _, _, _⟩
  exact ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩

theorem seg6_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2077 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩
        ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩
        ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩
        ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩ := by
  obtain ⟨r5181, r5182, r5183, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194⟩ := seg6_rows187 rho h
  unfold Seg6.relationRow5181 at r5181
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5181
  unfold Seg6.relationRow5182 at r5182
  unfold Seg6.relationRow5183 at r5183
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5183
  unfold Seg6.relationRow5184 at r5184
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5184
  unfold Seg6.relationRow5185 at r5185
  unfold Seg6.relationRow5186 at r5186
  unfold Seg6.relationRow5187 at r5187
  unfold Seg6.relationRow5188 at r5188
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5188
  unfold Seg6.relationRow5189 at r5189
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5189
  unfold Seg6.relationRow5190 at r5190
  unfold Seg6.relationRow5191 at r5191
  unfold Seg6.relationRow5192 at r5192
  unfold Seg6.relationRow5193 at r5193
  unfold Seg6.relationRow5194 at r5194
  have hrung187 (bit : Bool) (hbit : rho 2077 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩
        ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩
        ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩
        ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩ := by
    have hnextx : seg6AccX188 rho = seg6AccX187 rho + rho 5587 := by
      unfold seg6AccX188 seg6AccX187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 37]
      ring
    have hnexty : seg6AccY188 rho = seg6AccY187 rho + rho 5588 := by
      unfold seg6AccY188 seg6AccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 37]
      ring
    have hsum : seg6AccX187 rho + seg6AccY187 rho = rho 5580 := by
      unfold seg6AccX187 seg6AccY187
      linear_combination r5181
    have ha0 : (rho 5578 + rho 5579) * (seg6AccX187 rho + seg6AccY187 rho) = rho 5581 := by
      rw [hsum]
      linear_combination r5182
    have ha1 : rho 5579 * seg6AccX187 rho = rho 5582 := by
      unfold seg6AccX187
      linear_combination r5183
    have ha2 : rho 5578 * seg6AccY187 rho = rho 5583 := by
      unfold seg6AccY187
      linear_combination r5184
    have ha3 : 3021 * rho 5582 * rho 5583 = rho 5584 := by
      linear_combination r5185
    have ha4 : rho 5585 * (1 + rho 5584) = rho 5582 + rho 5583 := by
      linear_combination r5186
    have ha5 : rho 5586 * (1 - rho 5584) = rho 5581 - rho 5582 - rho 5583 := by
      linear_combination r5187
    have haddx :
        rho 5585 * (1 + 3021 * (rho 5579 * seg6AccX187 rho) * (rho 5578 * seg6AccY187 rho)) =
          rho 5579 * seg6AccX187 rho + rho 5578 * seg6AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5586 * (1 - 3021 * (rho 5579 * seg6AccX187 rho) * (rho 5578 * seg6AccY187 rho)) =
          (-1) * (rho 5579 * seg6AccX187 rho) - rho 5578 * seg6AccY187 rho +
            (seg6AccY187 rho - seg6AccX187 rho * (-1)) * (rho 5578 + rho 5579) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5586 * (1 - rho 5584) = rho 5581 - rho 5582 - rho 5583 := ha5
        _ = (-1) * rho 5582 - rho 5583 + (seg6AccY187 rho - seg6AccX187 rho * (-1)) * (rho 5578 + rho 5579) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX188 rho = seg6AccX187 rho - Bool.toZMod bit * (seg6AccX187 rho - rho 5585) := by
      have hd : rho 5587 = Bool.toZMod bit * (rho 5585 - seg6AccX187 rho) := by
        rw [← hbit]
        unfold seg6AccX187
        linear_combination -r5188
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY188 rho = seg6AccY187 rho - Bool.toZMod bit * (seg6AccY187 rho - rho 5586) := by
      have hd : rho 5588 = Bool.toZMod bit * (rho 5586 - seg6AccY187 rho) := by
        rw [← hbit]
        unfold seg6AccY187
        linear_combination -r5189
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5578 * rho 5579 = rho 5589 := by linear_combination r5190
    have hd1 : rho 5578 * rho 5578 = rho 5590 := by linear_combination r5191
    have hd2 : rho 5579 * rho 5579 = rho 5591 := by linear_combination r5192
    have hd3 : rho 5592 * (rho 5579 * rho 5579 + rho 5578 * rho 5578 * (-1)) = 2 * (rho 5578 * rho 5579) := by
      rw [hd0, hd1, hd2]
      linear_combination r5193
    have hd4 : rho 5593 * (2 - (rho 5579 * rho 5579 + rho 5578 * rho 5578 * (-1))) = rho 5579 * rho 5579 - rho 5578 * rho 5578 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5194
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩
      ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩
      ⟨(rho 5585 : Seg6.F), (rho 5586 : Seg6.F)⟩
      ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩
      ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg6_rows188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5195 rho ∧ Seg6.relationRow5196 rho ∧ Seg6.relationRow5197 rho ∧ Seg6.relationRow5198 rho ∧ Seg6.relationRow5199 rho ∧ Seg6.relationRow5200 rho ∧ Seg6.relationRow5201 rho ∧ Seg6.relationRow5202 rho ∧ Seg6.relationRow5203 rho ∧ Seg6.relationRow5204 rho ∧ Seg6.relationRow5205 rho ∧ Seg6.relationRow5206 rho ∧ Seg6.relationRow5207 rho ∧ Seg6.relationRow5208 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p64, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart64 at p64
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5195, r5196, r5197, r5198, r5199⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩

theorem seg6_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2078 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩
        ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩
        ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩
        ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩ := by
  obtain ⟨r5195, r5196, r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208⟩ := seg6_rows188 rho h
  unfold Seg6.relationRow5195 at r5195
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5195
  unfold Seg6.relationRow5196 at r5196
  unfold Seg6.relationRow5197 at r5197
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5197
  unfold Seg6.relationRow5198 at r5198
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5198
  unfold Seg6.relationRow5199 at r5199
  unfold Seg6.relationRow5200 at r5200
  unfold Seg6.relationRow5201 at r5201
  unfold Seg6.relationRow5202 at r5202
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5202
  unfold Seg6.relationRow5203 at r5203
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5203
  unfold Seg6.relationRow5204 at r5204
  unfold Seg6.relationRow5205 at r5205
  unfold Seg6.relationRow5206 at r5206
  unfold Seg6.relationRow5207 at r5207
  unfold Seg6.relationRow5208 at r5208
  have hrung188 (bit : Bool) (hbit : rho 2078 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩
        ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩
        ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩
        ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩ := by
    have hnextx : seg6AccX189 rho = seg6AccX188 rho + rho 5601 := by
      unfold seg6AccX189 seg6AccX188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 38]
      ring
    have hnexty : seg6AccY189 rho = seg6AccY188 rho + rho 5602 := by
      unfold seg6AccY189 seg6AccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 38]
      ring
    have hsum : seg6AccX188 rho + seg6AccY188 rho = rho 5594 := by
      unfold seg6AccX188 seg6AccY188
      linear_combination r5195
    have ha0 : (rho 5592 + rho 5593) * (seg6AccX188 rho + seg6AccY188 rho) = rho 5595 := by
      rw [hsum]
      linear_combination r5196
    have ha1 : rho 5593 * seg6AccX188 rho = rho 5596 := by
      unfold seg6AccX188
      linear_combination r5197
    have ha2 : rho 5592 * seg6AccY188 rho = rho 5597 := by
      unfold seg6AccY188
      linear_combination r5198
    have ha3 : 3021 * rho 5596 * rho 5597 = rho 5598 := by
      linear_combination r5199
    have ha4 : rho 5599 * (1 + rho 5598) = rho 5596 + rho 5597 := by
      linear_combination r5200
    have ha5 : rho 5600 * (1 - rho 5598) = rho 5595 - rho 5596 - rho 5597 := by
      linear_combination r5201
    have haddx :
        rho 5599 * (1 + 3021 * (rho 5593 * seg6AccX188 rho) * (rho 5592 * seg6AccY188 rho)) =
          rho 5593 * seg6AccX188 rho + rho 5592 * seg6AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5600 * (1 - 3021 * (rho 5593 * seg6AccX188 rho) * (rho 5592 * seg6AccY188 rho)) =
          (-1) * (rho 5593 * seg6AccX188 rho) - rho 5592 * seg6AccY188 rho +
            (seg6AccY188 rho - seg6AccX188 rho * (-1)) * (rho 5592 + rho 5593) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5600 * (1 - rho 5598) = rho 5595 - rho 5596 - rho 5597 := ha5
        _ = (-1) * rho 5596 - rho 5597 + (seg6AccY188 rho - seg6AccX188 rho * (-1)) * (rho 5592 + rho 5593) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX189 rho = seg6AccX188 rho - Bool.toZMod bit * (seg6AccX188 rho - rho 5599) := by
      have hd : rho 5601 = Bool.toZMod bit * (rho 5599 - seg6AccX188 rho) := by
        rw [← hbit]
        unfold seg6AccX188
        linear_combination -r5202
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY189 rho = seg6AccY188 rho - Bool.toZMod bit * (seg6AccY188 rho - rho 5600) := by
      have hd : rho 5602 = Bool.toZMod bit * (rho 5600 - seg6AccY188 rho) := by
        rw [← hbit]
        unfold seg6AccY188
        linear_combination -r5203
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5592 * rho 5593 = rho 5603 := by linear_combination r5204
    have hd1 : rho 5592 * rho 5592 = rho 5604 := by linear_combination r5205
    have hd2 : rho 5593 * rho 5593 = rho 5605 := by linear_combination r5206
    have hd3 : rho 5606 * (rho 5593 * rho 5593 + rho 5592 * rho 5592 * (-1)) = 2 * (rho 5592 * rho 5593) := by
      rw [hd0, hd1, hd2]
      linear_combination r5207
    have hd4 : rho 5607 * (2 - (rho 5593 * rho 5593 + rho 5592 * rho 5592 * (-1))) = rho 5593 * rho 5593 - rho 5592 * rho 5592 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5208
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX188 rho : Seg6.F), (seg6AccY188 rho : Seg6.F)⟩
      ⟨(rho 5592 : Seg6.F), (rho 5593 : Seg6.F)⟩
      ⟨(rho 5599 : Seg6.F), (rho 5600 : Seg6.F)⟩
      ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩
      ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg6_rows189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5209 rho ∧ Seg6.relationRow5210 rho ∧ Seg6.relationRow5211 rho ∧ Seg6.relationRow5212 rho ∧ Seg6.relationRow5213 rho ∧ Seg6.relationRow5214 rho ∧ Seg6.relationRow5215 rho ∧ Seg6.relationRow5216 rho ∧ Seg6.relationRow5217 rho ∧ Seg6.relationRow5218 rho ∧ Seg6.relationRow5219 rho ∧ Seg6.relationRow5220 rho ∧ Seg6.relationRow5221 rho ∧ Seg6.relationRow5222 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem seg6_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2079 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩
        ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩
        ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩
        ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩ := by
  obtain ⟨r5209, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := seg6_rows189 rho h
  unfold Seg6.relationRow5209 at r5209
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5209
  unfold Seg6.relationRow5210 at r5210
  unfold Seg6.relationRow5211 at r5211
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5211
  unfold Seg6.relationRow5212 at r5212
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5212
  unfold Seg6.relationRow5213 at r5213
  unfold Seg6.relationRow5214 at r5214
  unfold Seg6.relationRow5215 at r5215
  unfold Seg6.relationRow5216 at r5216
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5216
  unfold Seg6.relationRow5217 at r5217
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5217
  unfold Seg6.relationRow5218 at r5218
  unfold Seg6.relationRow5219 at r5219
  unfold Seg6.relationRow5220 at r5220
  unfold Seg6.relationRow5221 at r5221
  unfold Seg6.relationRow5222 at r5222
  have hrung189 (bit : Bool) (hbit : rho 2079 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩
        ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩
        ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩
        ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩ := by
    have hnextx : seg6AccX190 rho = seg6AccX189 rho + rho 5615 := by
      unfold seg6AccX190 seg6AccX189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 39]
      ring
    have hnexty : seg6AccY190 rho = seg6AccY189 rho + rho 5616 := by
      unfold seg6AccY190 seg6AccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 39]
      ring
    have hsum : seg6AccX189 rho + seg6AccY189 rho = rho 5608 := by
      unfold seg6AccX189 seg6AccY189
      linear_combination r5209
    have ha0 : (rho 5606 + rho 5607) * (seg6AccX189 rho + seg6AccY189 rho) = rho 5609 := by
      rw [hsum]
      linear_combination r5210
    have ha1 : rho 5607 * seg6AccX189 rho = rho 5610 := by
      unfold seg6AccX189
      linear_combination r5211
    have ha2 : rho 5606 * seg6AccY189 rho = rho 5611 := by
      unfold seg6AccY189
      linear_combination r5212
    have ha3 : 3021 * rho 5610 * rho 5611 = rho 5612 := by
      linear_combination r5213
    have ha4 : rho 5613 * (1 + rho 5612) = rho 5610 + rho 5611 := by
      linear_combination r5214
    have ha5 : rho 5614 * (1 - rho 5612) = rho 5609 - rho 5610 - rho 5611 := by
      linear_combination r5215
    have haddx :
        rho 5613 * (1 + 3021 * (rho 5607 * seg6AccX189 rho) * (rho 5606 * seg6AccY189 rho)) =
          rho 5607 * seg6AccX189 rho + rho 5606 * seg6AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5614 * (1 - 3021 * (rho 5607 * seg6AccX189 rho) * (rho 5606 * seg6AccY189 rho)) =
          (-1) * (rho 5607 * seg6AccX189 rho) - rho 5606 * seg6AccY189 rho +
            (seg6AccY189 rho - seg6AccX189 rho * (-1)) * (rho 5606 + rho 5607) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5614 * (1 - rho 5612) = rho 5609 - rho 5610 - rho 5611 := ha5
        _ = (-1) * rho 5610 - rho 5611 + (seg6AccY189 rho - seg6AccX189 rho * (-1)) * (rho 5606 + rho 5607) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX190 rho = seg6AccX189 rho - Bool.toZMod bit * (seg6AccX189 rho - rho 5613) := by
      have hd : rho 5615 = Bool.toZMod bit * (rho 5613 - seg6AccX189 rho) := by
        rw [← hbit]
        unfold seg6AccX189
        linear_combination -r5216
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY190 rho = seg6AccY189 rho - Bool.toZMod bit * (seg6AccY189 rho - rho 5614) := by
      have hd : rho 5616 = Bool.toZMod bit * (rho 5614 - seg6AccY189 rho) := by
        rw [← hbit]
        unfold seg6AccY189
        linear_combination -r5217
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5606 * rho 5607 = rho 5617 := by linear_combination r5218
    have hd1 : rho 5606 * rho 5606 = rho 5618 := by linear_combination r5219
    have hd2 : rho 5607 * rho 5607 = rho 5619 := by linear_combination r5220
    have hd3 : rho 5620 * (rho 5607 * rho 5607 + rho 5606 * rho 5606 * (-1)) = 2 * (rho 5606 * rho 5607) := by
      rw [hd0, hd1, hd2]
      linear_combination r5221
    have hd4 : rho 5621 * (2 - (rho 5607 * rho 5607 + rho 5606 * rho 5606 * (-1))) = rho 5607 * rho 5607 - rho 5606 * rho 5606 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5222
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX189 rho : Seg6.F), (seg6AccY189 rho : Seg6.F)⟩
      ⟨(rho 5606 : Seg6.F), (rho 5607 : Seg6.F)⟩
      ⟨(rho 5613 : Seg6.F), (rho 5614 : Seg6.F)⟩
      ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩
      ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg6_rows190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5223 rho ∧ Seg6.relationRow5224 rho ∧ Seg6.relationRow5225 rho ∧ Seg6.relationRow5226 rho ∧ Seg6.relationRow5227 rho ∧ Seg6.relationRow5228 rho ∧ Seg6.relationRow5229 rho ∧ Seg6.relationRow5230 rho ∧ Seg6.relationRow5231 rho ∧ Seg6.relationRow5232 rho ∧ Seg6.relationRow5233 rho ∧ Seg6.relationRow5234 rho ∧ Seg6.relationRow5235 rho ∧ Seg6.relationRow5236 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩

theorem seg6_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2080 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩
        ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩
        ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩
        ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, r5236⟩ := seg6_rows190 rho h
  unfold Seg6.relationRow5223 at r5223
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5223
  unfold Seg6.relationRow5224 at r5224
  unfold Seg6.relationRow5225 at r5225
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5225
  unfold Seg6.relationRow5226 at r5226
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5226
  unfold Seg6.relationRow5227 at r5227
  unfold Seg6.relationRow5228 at r5228
  unfold Seg6.relationRow5229 at r5229
  unfold Seg6.relationRow5230 at r5230
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5230
  unfold Seg6.relationRow5231 at r5231
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5231
  unfold Seg6.relationRow5232 at r5232
  unfold Seg6.relationRow5233 at r5233
  unfold Seg6.relationRow5234 at r5234
  unfold Seg6.relationRow5235 at r5235
  unfold Seg6.relationRow5236 at r5236
  have hrung190 (bit : Bool) (hbit : rho 2080 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩
        ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩
        ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩
        ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩ := by
    have hnextx : seg6AccX191 rho = seg6AccX190 rho + rho 5629 := by
      unfold seg6AccX191 seg6AccX190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 40]
      ring
    have hnexty : seg6AccY191 rho = seg6AccY190 rho + rho 5630 := by
      unfold seg6AccY191 seg6AccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 40]
      ring
    have hsum : seg6AccX190 rho + seg6AccY190 rho = rho 5622 := by
      unfold seg6AccX190 seg6AccY190
      linear_combination r5223
    have ha0 : (rho 5620 + rho 5621) * (seg6AccX190 rho + seg6AccY190 rho) = rho 5623 := by
      rw [hsum]
      linear_combination r5224
    have ha1 : rho 5621 * seg6AccX190 rho = rho 5624 := by
      unfold seg6AccX190
      linear_combination r5225
    have ha2 : rho 5620 * seg6AccY190 rho = rho 5625 := by
      unfold seg6AccY190
      linear_combination r5226
    have ha3 : 3021 * rho 5624 * rho 5625 = rho 5626 := by
      linear_combination r5227
    have ha4 : rho 5627 * (1 + rho 5626) = rho 5624 + rho 5625 := by
      linear_combination r5228
    have ha5 : rho 5628 * (1 - rho 5626) = rho 5623 - rho 5624 - rho 5625 := by
      linear_combination r5229
    have haddx :
        rho 5627 * (1 + 3021 * (rho 5621 * seg6AccX190 rho) * (rho 5620 * seg6AccY190 rho)) =
          rho 5621 * seg6AccX190 rho + rho 5620 * seg6AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5628 * (1 - 3021 * (rho 5621 * seg6AccX190 rho) * (rho 5620 * seg6AccY190 rho)) =
          (-1) * (rho 5621 * seg6AccX190 rho) - rho 5620 * seg6AccY190 rho +
            (seg6AccY190 rho - seg6AccX190 rho * (-1)) * (rho 5620 + rho 5621) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5628 * (1 - rho 5626) = rho 5623 - rho 5624 - rho 5625 := ha5
        _ = (-1) * rho 5624 - rho 5625 + (seg6AccY190 rho - seg6AccX190 rho * (-1)) * (rho 5620 + rho 5621) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX191 rho = seg6AccX190 rho - Bool.toZMod bit * (seg6AccX190 rho - rho 5627) := by
      have hd : rho 5629 = Bool.toZMod bit * (rho 5627 - seg6AccX190 rho) := by
        rw [← hbit]
        unfold seg6AccX190
        linear_combination -r5230
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY191 rho = seg6AccY190 rho - Bool.toZMod bit * (seg6AccY190 rho - rho 5628) := by
      have hd : rho 5630 = Bool.toZMod bit * (rho 5628 - seg6AccY190 rho) := by
        rw [← hbit]
        unfold seg6AccY190
        linear_combination -r5231
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5620 * rho 5621 = rho 5631 := by linear_combination r5232
    have hd1 : rho 5620 * rho 5620 = rho 5632 := by linear_combination r5233
    have hd2 : rho 5621 * rho 5621 = rho 5633 := by linear_combination r5234
    have hd3 : rho 5634 * (rho 5621 * rho 5621 + rho 5620 * rho 5620 * (-1)) = 2 * (rho 5620 * rho 5621) := by
      rw [hd0, hd1, hd2]
      linear_combination r5235
    have hd4 : rho 5635 * (2 - (rho 5621 * rho 5621 + rho 5620 * rho 5620 * (-1))) = rho 5621 * rho 5621 - rho 5620 * rho 5620 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5236
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX190 rho : Seg6.F), (seg6AccY190 rho : Seg6.F)⟩
      ⟨(rho 5620 : Seg6.F), (rho 5621 : Seg6.F)⟩
      ⟨(rho 5627 : Seg6.F), (rho 5628 : Seg6.F)⟩
      ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩
      ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg6_rows191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5237 rho ∧ Seg6.relationRow5238 rho ∧ Seg6.relationRow5239 rho ∧ Seg6.relationRow5240 rho ∧ Seg6.relationRow5241 rho ∧ Seg6.relationRow5242 rho ∧ Seg6.relationRow5243 rho ∧ Seg6.relationRow5244 rho ∧ Seg6.relationRow5245 rho ∧ Seg6.relationRow5246 rho ∧ Seg6.relationRow5247 rho ∧ Seg6.relationRow5248 rho ∧ Seg6.relationRow5249 rho ∧ Seg6.relationRow5250 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩

theorem seg6_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2081 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩
        ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩
        ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩
        ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩ := by
  obtain ⟨r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250⟩ := seg6_rows191 rho h
  unfold Seg6.relationRow5237 at r5237
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5237
  unfold Seg6.relationRow5238 at r5238
  unfold Seg6.relationRow5239 at r5239
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5239
  unfold Seg6.relationRow5240 at r5240
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5240
  unfold Seg6.relationRow5241 at r5241
  unfold Seg6.relationRow5242 at r5242
  unfold Seg6.relationRow5243 at r5243
  unfold Seg6.relationRow5244 at r5244
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5244
  unfold Seg6.relationRow5245 at r5245
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5245
  unfold Seg6.relationRow5246 at r5246
  unfold Seg6.relationRow5247 at r5247
  unfold Seg6.relationRow5248 at r5248
  unfold Seg6.relationRow5249 at r5249
  unfold Seg6.relationRow5250 at r5250
  have hrung191 (bit : Bool) (hbit : rho 2081 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩
        ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩
        ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩
        ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩ := by
    have hnextx : seg6AccX192 rho = seg6AccX191 rho + rho 5643 := by
      unfold seg6AccX192 seg6AccX191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 41]
      ring
    have hnexty : seg6AccY192 rho = seg6AccY191 rho + rho 5644 := by
      unfold seg6AccY192 seg6AccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 41]
      ring
    have hsum : seg6AccX191 rho + seg6AccY191 rho = rho 5636 := by
      unfold seg6AccX191 seg6AccY191
      linear_combination r5237
    have ha0 : (rho 5634 + rho 5635) * (seg6AccX191 rho + seg6AccY191 rho) = rho 5637 := by
      rw [hsum]
      linear_combination r5238
    have ha1 : rho 5635 * seg6AccX191 rho = rho 5638 := by
      unfold seg6AccX191
      linear_combination r5239
    have ha2 : rho 5634 * seg6AccY191 rho = rho 5639 := by
      unfold seg6AccY191
      linear_combination r5240
    have ha3 : 3021 * rho 5638 * rho 5639 = rho 5640 := by
      linear_combination r5241
    have ha4 : rho 5641 * (1 + rho 5640) = rho 5638 + rho 5639 := by
      linear_combination r5242
    have ha5 : rho 5642 * (1 - rho 5640) = rho 5637 - rho 5638 - rho 5639 := by
      linear_combination r5243
    have haddx :
        rho 5641 * (1 + 3021 * (rho 5635 * seg6AccX191 rho) * (rho 5634 * seg6AccY191 rho)) =
          rho 5635 * seg6AccX191 rho + rho 5634 * seg6AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5642 * (1 - 3021 * (rho 5635 * seg6AccX191 rho) * (rho 5634 * seg6AccY191 rho)) =
          (-1) * (rho 5635 * seg6AccX191 rho) - rho 5634 * seg6AccY191 rho +
            (seg6AccY191 rho - seg6AccX191 rho * (-1)) * (rho 5634 + rho 5635) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5642 * (1 - rho 5640) = rho 5637 - rho 5638 - rho 5639 := ha5
        _ = (-1) * rho 5638 - rho 5639 + (seg6AccY191 rho - seg6AccX191 rho * (-1)) * (rho 5634 + rho 5635) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX192 rho = seg6AccX191 rho - Bool.toZMod bit * (seg6AccX191 rho - rho 5641) := by
      have hd : rho 5643 = Bool.toZMod bit * (rho 5641 - seg6AccX191 rho) := by
        rw [← hbit]
        unfold seg6AccX191
        linear_combination -r5244
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY192 rho = seg6AccY191 rho - Bool.toZMod bit * (seg6AccY191 rho - rho 5642) := by
      have hd : rho 5644 = Bool.toZMod bit * (rho 5642 - seg6AccY191 rho) := by
        rw [← hbit]
        unfold seg6AccY191
        linear_combination -r5245
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5634 * rho 5635 = rho 5645 := by linear_combination r5246
    have hd1 : rho 5634 * rho 5634 = rho 5646 := by linear_combination r5247
    have hd2 : rho 5635 * rho 5635 = rho 5647 := by linear_combination r5248
    have hd3 : rho 5648 * (rho 5635 * rho 5635 + rho 5634 * rho 5634 * (-1)) = 2 * (rho 5634 * rho 5635) := by
      rw [hd0, hd1, hd2]
      linear_combination r5249
    have hd4 : rho 5649 * (2 - (rho 5635 * rho 5635 + rho 5634 * rho 5634 * (-1))) = rho 5635 * rho 5635 - rho 5634 * rho 5634 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5250
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX191 rho : Seg6.F), (seg6AccY191 rho : Seg6.F)⟩
      ⟨(rho 5634 : Seg6.F), (rho 5635 : Seg6.F)⟩
      ⟨(rho 5641 : Seg6.F), (rho 5642 : Seg6.F)⟩
      ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩
      ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg6_rows192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5251 rho ∧ Seg6.relationRow5252 rho ∧ Seg6.relationRow5253 rho ∧ Seg6.relationRow5254 rho ∧ Seg6.relationRow5255 rho ∧ Seg6.relationRow5256 rho ∧ Seg6.relationRow5257 rho ∧ Seg6.relationRow5258 rho ∧ Seg6.relationRow5259 rho ∧ Seg6.relationRow5260 rho ∧ Seg6.relationRow5261 rho ∧ Seg6.relationRow5262 rho ∧ Seg6.relationRow5263 rho ∧ Seg6.relationRow5264 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩

theorem seg6_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩
        ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩
        ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩
        ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩ := by
  obtain ⟨r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264⟩ := seg6_rows192 rho h
  unfold Seg6.relationRow5251 at r5251
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5251
  unfold Seg6.relationRow5252 at r5252
  unfold Seg6.relationRow5253 at r5253
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5253
  unfold Seg6.relationRow5254 at r5254
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5254
  unfold Seg6.relationRow5255 at r5255
  unfold Seg6.relationRow5256 at r5256
  unfold Seg6.relationRow5257 at r5257
  unfold Seg6.relationRow5258 at r5258
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5258
  unfold Seg6.relationRow5259 at r5259
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5259
  unfold Seg6.relationRow5260 at r5260
  unfold Seg6.relationRow5261 at r5261
  unfold Seg6.relationRow5262 at r5262
  unfold Seg6.relationRow5263 at r5263
  unfold Seg6.relationRow5264 at r5264
  have hrung192 (bit : Bool) (hbit : rho 2082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩
        ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩
        ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩
        ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩ := by
    have hnextx : seg6AccX193 rho = seg6AccX192 rho + rho 5657 := by
      unfold seg6AccX193 seg6AccX192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 42]
      ring
    have hnexty : seg6AccY193 rho = seg6AccY192 rho + rho 5658 := by
      unfold seg6AccY193 seg6AccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 42]
      ring
    have hsum : seg6AccX192 rho + seg6AccY192 rho = rho 5650 := by
      unfold seg6AccX192 seg6AccY192
      linear_combination r5251
    have ha0 : (rho 5648 + rho 5649) * (seg6AccX192 rho + seg6AccY192 rho) = rho 5651 := by
      rw [hsum]
      linear_combination r5252
    have ha1 : rho 5649 * seg6AccX192 rho = rho 5652 := by
      unfold seg6AccX192
      linear_combination r5253
    have ha2 : rho 5648 * seg6AccY192 rho = rho 5653 := by
      unfold seg6AccY192
      linear_combination r5254
    have ha3 : 3021 * rho 5652 * rho 5653 = rho 5654 := by
      linear_combination r5255
    have ha4 : rho 5655 * (1 + rho 5654) = rho 5652 + rho 5653 := by
      linear_combination r5256
    have ha5 : rho 5656 * (1 - rho 5654) = rho 5651 - rho 5652 - rho 5653 := by
      linear_combination r5257
    have haddx :
        rho 5655 * (1 + 3021 * (rho 5649 * seg6AccX192 rho) * (rho 5648 * seg6AccY192 rho)) =
          rho 5649 * seg6AccX192 rho + rho 5648 * seg6AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5656 * (1 - 3021 * (rho 5649 * seg6AccX192 rho) * (rho 5648 * seg6AccY192 rho)) =
          (-1) * (rho 5649 * seg6AccX192 rho) - rho 5648 * seg6AccY192 rho +
            (seg6AccY192 rho - seg6AccX192 rho * (-1)) * (rho 5648 + rho 5649) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5656 * (1 - rho 5654) = rho 5651 - rho 5652 - rho 5653 := ha5
        _ = (-1) * rho 5652 - rho 5653 + (seg6AccY192 rho - seg6AccX192 rho * (-1)) * (rho 5648 + rho 5649) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX193 rho = seg6AccX192 rho - Bool.toZMod bit * (seg6AccX192 rho - rho 5655) := by
      have hd : rho 5657 = Bool.toZMod bit * (rho 5655 - seg6AccX192 rho) := by
        rw [← hbit]
        unfold seg6AccX192
        linear_combination -r5258
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY193 rho = seg6AccY192 rho - Bool.toZMod bit * (seg6AccY192 rho - rho 5656) := by
      have hd : rho 5658 = Bool.toZMod bit * (rho 5656 - seg6AccY192 rho) := by
        rw [← hbit]
        unfold seg6AccY192
        linear_combination -r5259
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5648 * rho 5649 = rho 5659 := by linear_combination r5260
    have hd1 : rho 5648 * rho 5648 = rho 5660 := by linear_combination r5261
    have hd2 : rho 5649 * rho 5649 = rho 5661 := by linear_combination r5262
    have hd3 : rho 5662 * (rho 5649 * rho 5649 + rho 5648 * rho 5648 * (-1)) = 2 * (rho 5648 * rho 5649) := by
      rw [hd0, hd1, hd2]
      linear_combination r5263
    have hd4 : rho 5663 * (2 - (rho 5649 * rho 5649 + rho 5648 * rho 5648 * (-1))) = rho 5649 * rho 5649 - rho 5648 * rho 5648 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5264
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX192 rho : Seg6.F), (seg6AccY192 rho : Seg6.F)⟩
      ⟨(rho 5648 : Seg6.F), (rho 5649 : Seg6.F)⟩
      ⟨(rho 5655 : Seg6.F), (rho 5656 : Seg6.F)⟩
      ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩
      ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg6_rows193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5265 rho ∧ Seg6.relationRow5266 rho ∧ Seg6.relationRow5267 rho ∧ Seg6.relationRow5268 rho ∧ Seg6.relationRow5269 rho ∧ Seg6.relationRow5270 rho ∧ Seg6.relationRow5271 rho ∧ Seg6.relationRow5272 rho ∧ Seg6.relationRow5273 rho ∧ Seg6.relationRow5274 rho ∧ Seg6.relationRow5275 rho ∧ Seg6.relationRow5276 rho ∧ Seg6.relationRow5277 rho ∧ Seg6.relationRow5278 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, _⟩
  exact ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩

theorem seg6_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩
        ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩
        ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩
        ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩ := by
  obtain ⟨r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278⟩ := seg6_rows193 rho h
  unfold Seg6.relationRow5265 at r5265
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5265
  unfold Seg6.relationRow5266 at r5266
  unfold Seg6.relationRow5267 at r5267
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5267
  unfold Seg6.relationRow5268 at r5268
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5268
  unfold Seg6.relationRow5269 at r5269
  unfold Seg6.relationRow5270 at r5270
  unfold Seg6.relationRow5271 at r5271
  unfold Seg6.relationRow5272 at r5272
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5272
  unfold Seg6.relationRow5273 at r5273
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5273
  unfold Seg6.relationRow5274 at r5274
  unfold Seg6.relationRow5275 at r5275
  unfold Seg6.relationRow5276 at r5276
  unfold Seg6.relationRow5277 at r5277
  unfold Seg6.relationRow5278 at r5278
  have hrung193 (bit : Bool) (hbit : rho 2083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩
        ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩
        ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩
        ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩ := by
    have hnextx : seg6AccX194 rho = seg6AccX193 rho + rho 5671 := by
      unfold seg6AccX194 seg6AccX193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 43]
      ring
    have hnexty : seg6AccY194 rho = seg6AccY193 rho + rho 5672 := by
      unfold seg6AccY194 seg6AccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 43]
      ring
    have hsum : seg6AccX193 rho + seg6AccY193 rho = rho 5664 := by
      unfold seg6AccX193 seg6AccY193
      linear_combination r5265
    have ha0 : (rho 5662 + rho 5663) * (seg6AccX193 rho + seg6AccY193 rho) = rho 5665 := by
      rw [hsum]
      linear_combination r5266
    have ha1 : rho 5663 * seg6AccX193 rho = rho 5666 := by
      unfold seg6AccX193
      linear_combination r5267
    have ha2 : rho 5662 * seg6AccY193 rho = rho 5667 := by
      unfold seg6AccY193
      linear_combination r5268
    have ha3 : 3021 * rho 5666 * rho 5667 = rho 5668 := by
      linear_combination r5269
    have ha4 : rho 5669 * (1 + rho 5668) = rho 5666 + rho 5667 := by
      linear_combination r5270
    have ha5 : rho 5670 * (1 - rho 5668) = rho 5665 - rho 5666 - rho 5667 := by
      linear_combination r5271
    have haddx :
        rho 5669 * (1 + 3021 * (rho 5663 * seg6AccX193 rho) * (rho 5662 * seg6AccY193 rho)) =
          rho 5663 * seg6AccX193 rho + rho 5662 * seg6AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5670 * (1 - 3021 * (rho 5663 * seg6AccX193 rho) * (rho 5662 * seg6AccY193 rho)) =
          (-1) * (rho 5663 * seg6AccX193 rho) - rho 5662 * seg6AccY193 rho +
            (seg6AccY193 rho - seg6AccX193 rho * (-1)) * (rho 5662 + rho 5663) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5670 * (1 - rho 5668) = rho 5665 - rho 5666 - rho 5667 := ha5
        _ = (-1) * rho 5666 - rho 5667 + (seg6AccY193 rho - seg6AccX193 rho * (-1)) * (rho 5662 + rho 5663) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX194 rho = seg6AccX193 rho - Bool.toZMod bit * (seg6AccX193 rho - rho 5669) := by
      have hd : rho 5671 = Bool.toZMod bit * (rho 5669 - seg6AccX193 rho) := by
        rw [← hbit]
        unfold seg6AccX193
        linear_combination -r5272
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY194 rho = seg6AccY193 rho - Bool.toZMod bit * (seg6AccY193 rho - rho 5670) := by
      have hd : rho 5672 = Bool.toZMod bit * (rho 5670 - seg6AccY193 rho) := by
        rw [← hbit]
        unfold seg6AccY193
        linear_combination -r5273
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5662 * rho 5663 = rho 5673 := by linear_combination r5274
    have hd1 : rho 5662 * rho 5662 = rho 5674 := by linear_combination r5275
    have hd2 : rho 5663 * rho 5663 = rho 5675 := by linear_combination r5276
    have hd3 : rho 5676 * (rho 5663 * rho 5663 + rho 5662 * rho 5662 * (-1)) = 2 * (rho 5662 * rho 5663) := by
      rw [hd0, hd1, hd2]
      linear_combination r5277
    have hd4 : rho 5677 * (2 - (rho 5663 * rho 5663 + rho 5662 * rho 5662 * (-1))) = rho 5663 * rho 5663 - rho 5662 * rho 5662 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5278
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX193 rho : Seg6.F), (seg6AccY193 rho : Seg6.F)⟩
      ⟨(rho 5662 : Seg6.F), (rho 5663 : Seg6.F)⟩
      ⟨(rho 5669 : Seg6.F), (rho 5670 : Seg6.F)⟩
      ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩
      ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg6_rows194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5279 rho ∧ Seg6.relationRow5280 rho ∧ Seg6.relationRow5281 rho ∧ Seg6.relationRow5282 rho ∧ Seg6.relationRow5283 rho ∧ Seg6.relationRow5284 rho ∧ Seg6.relationRow5285 rho ∧ Seg6.relationRow5286 rho ∧ Seg6.relationRow5287 rho ∧ Seg6.relationRow5288 rho ∧ Seg6.relationRow5289 rho ∧ Seg6.relationRow5290 rho ∧ Seg6.relationRow5291 rho ∧ Seg6.relationRow5292 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5279⟩
  unfold Seg6.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩

theorem seg6_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩
        ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩
        ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩
        ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩ := by
  obtain ⟨r5279, r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, r5288, r5289, r5290, r5291, r5292⟩ := seg6_rows194 rho h
  unfold Seg6.relationRow5279 at r5279
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5279
  unfold Seg6.relationRow5280 at r5280
  unfold Seg6.relationRow5281 at r5281
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5281
  unfold Seg6.relationRow5282 at r5282
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5282
  unfold Seg6.relationRow5283 at r5283
  unfold Seg6.relationRow5284 at r5284
  unfold Seg6.relationRow5285 at r5285
  unfold Seg6.relationRow5286 at r5286
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5286
  unfold Seg6.relationRow5287 at r5287
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5287
  unfold Seg6.relationRow5288 at r5288
  unfold Seg6.relationRow5289 at r5289
  unfold Seg6.relationRow5290 at r5290
  unfold Seg6.relationRow5291 at r5291
  unfold Seg6.relationRow5292 at r5292
  have hrung194 (bit : Bool) (hbit : rho 2084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩
        ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩
        ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩
        ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩ := by
    have hnextx : seg6AccX195 rho = seg6AccX194 rho + rho 5685 := by
      unfold seg6AccX195 seg6AccX194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 44]
      ring
    have hnexty : seg6AccY195 rho = seg6AccY194 rho + rho 5686 := by
      unfold seg6AccY195 seg6AccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 44]
      ring
    have hsum : seg6AccX194 rho + seg6AccY194 rho = rho 5678 := by
      unfold seg6AccX194 seg6AccY194
      linear_combination r5279
    have ha0 : (rho 5676 + rho 5677) * (seg6AccX194 rho + seg6AccY194 rho) = rho 5679 := by
      rw [hsum]
      linear_combination r5280
    have ha1 : rho 5677 * seg6AccX194 rho = rho 5680 := by
      unfold seg6AccX194
      linear_combination r5281
    have ha2 : rho 5676 * seg6AccY194 rho = rho 5681 := by
      unfold seg6AccY194
      linear_combination r5282
    have ha3 : 3021 * rho 5680 * rho 5681 = rho 5682 := by
      linear_combination r5283
    have ha4 : rho 5683 * (1 + rho 5682) = rho 5680 + rho 5681 := by
      linear_combination r5284
    have ha5 : rho 5684 * (1 - rho 5682) = rho 5679 - rho 5680 - rho 5681 := by
      linear_combination r5285
    have haddx :
        rho 5683 * (1 + 3021 * (rho 5677 * seg6AccX194 rho) * (rho 5676 * seg6AccY194 rho)) =
          rho 5677 * seg6AccX194 rho + rho 5676 * seg6AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5684 * (1 - 3021 * (rho 5677 * seg6AccX194 rho) * (rho 5676 * seg6AccY194 rho)) =
          (-1) * (rho 5677 * seg6AccX194 rho) - rho 5676 * seg6AccY194 rho +
            (seg6AccY194 rho - seg6AccX194 rho * (-1)) * (rho 5676 + rho 5677) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5684 * (1 - rho 5682) = rho 5679 - rho 5680 - rho 5681 := ha5
        _ = (-1) * rho 5680 - rho 5681 + (seg6AccY194 rho - seg6AccX194 rho * (-1)) * (rho 5676 + rho 5677) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX195 rho = seg6AccX194 rho - Bool.toZMod bit * (seg6AccX194 rho - rho 5683) := by
      have hd : rho 5685 = Bool.toZMod bit * (rho 5683 - seg6AccX194 rho) := by
        rw [← hbit]
        unfold seg6AccX194
        linear_combination -r5286
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY195 rho = seg6AccY194 rho - Bool.toZMod bit * (seg6AccY194 rho - rho 5684) := by
      have hd : rho 5686 = Bool.toZMod bit * (rho 5684 - seg6AccY194 rho) := by
        rw [← hbit]
        unfold seg6AccY194
        linear_combination -r5287
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5676 * rho 5677 = rho 5687 := by linear_combination r5288
    have hd1 : rho 5676 * rho 5676 = rho 5688 := by linear_combination r5289
    have hd2 : rho 5677 * rho 5677 = rho 5689 := by linear_combination r5290
    have hd3 : rho 5690 * (rho 5677 * rho 5677 + rho 5676 * rho 5676 * (-1)) = 2 * (rho 5676 * rho 5677) := by
      rw [hd0, hd1, hd2]
      linear_combination r5291
    have hd4 : rho 5691 * (2 - (rho 5677 * rho 5677 + rho 5676 * rho 5676 * (-1))) = rho 5677 * rho 5677 - rho 5676 * rho 5676 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5292
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX194 rho : Seg6.F), (seg6AccY194 rho : Seg6.F)⟩
      ⟨(rho 5676 : Seg6.F), (rho 5677 : Seg6.F)⟩
      ⟨(rho 5683 : Seg6.F), (rho 5684 : Seg6.F)⟩
      ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩
      ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg6_rows195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5293 rho ∧ Seg6.relationRow5294 rho ∧ Seg6.relationRow5295 rho ∧ Seg6.relationRow5296 rho ∧ Seg6.relationRow5297 rho ∧ Seg6.relationRow5298 rho ∧ Seg6.relationRow5299 rho ∧ Seg6.relationRow5300 rho ∧ Seg6.relationRow5301 rho ∧ Seg6.relationRow5302 rho ∧ Seg6.relationRow5303 rho ∧ Seg6.relationRow5304 rho ∧ Seg6.relationRow5305 rho ∧ Seg6.relationRow5306 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩

theorem seg6_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩
        ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩
        ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩
        ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩ := by
  obtain ⟨r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306⟩ := seg6_rows195 rho h
  unfold Seg6.relationRow5293 at r5293
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5293
  unfold Seg6.relationRow5294 at r5294
  unfold Seg6.relationRow5295 at r5295
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5295
  unfold Seg6.relationRow5296 at r5296
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5296
  unfold Seg6.relationRow5297 at r5297
  unfold Seg6.relationRow5298 at r5298
  unfold Seg6.relationRow5299 at r5299
  unfold Seg6.relationRow5300 at r5300
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5300
  unfold Seg6.relationRow5301 at r5301
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5301
  unfold Seg6.relationRow5302 at r5302
  unfold Seg6.relationRow5303 at r5303
  unfold Seg6.relationRow5304 at r5304
  unfold Seg6.relationRow5305 at r5305
  unfold Seg6.relationRow5306 at r5306
  have hrung195 (bit : Bool) (hbit : rho 2085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩
        ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩
        ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩
        ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩ := by
    have hnextx : seg6AccX196 rho = seg6AccX195 rho + rho 5699 := by
      unfold seg6AccX196 seg6AccX195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 45]
      ring
    have hnexty : seg6AccY196 rho = seg6AccY195 rho + rho 5700 := by
      unfold seg6AccY196 seg6AccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 45]
      ring
    have hsum : seg6AccX195 rho + seg6AccY195 rho = rho 5692 := by
      unfold seg6AccX195 seg6AccY195
      linear_combination r5293
    have ha0 : (rho 5690 + rho 5691) * (seg6AccX195 rho + seg6AccY195 rho) = rho 5693 := by
      rw [hsum]
      linear_combination r5294
    have ha1 : rho 5691 * seg6AccX195 rho = rho 5694 := by
      unfold seg6AccX195
      linear_combination r5295
    have ha2 : rho 5690 * seg6AccY195 rho = rho 5695 := by
      unfold seg6AccY195
      linear_combination r5296
    have ha3 : 3021 * rho 5694 * rho 5695 = rho 5696 := by
      linear_combination r5297
    have ha4 : rho 5697 * (1 + rho 5696) = rho 5694 + rho 5695 := by
      linear_combination r5298
    have ha5 : rho 5698 * (1 - rho 5696) = rho 5693 - rho 5694 - rho 5695 := by
      linear_combination r5299
    have haddx :
        rho 5697 * (1 + 3021 * (rho 5691 * seg6AccX195 rho) * (rho 5690 * seg6AccY195 rho)) =
          rho 5691 * seg6AccX195 rho + rho 5690 * seg6AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5698 * (1 - 3021 * (rho 5691 * seg6AccX195 rho) * (rho 5690 * seg6AccY195 rho)) =
          (-1) * (rho 5691 * seg6AccX195 rho) - rho 5690 * seg6AccY195 rho +
            (seg6AccY195 rho - seg6AccX195 rho * (-1)) * (rho 5690 + rho 5691) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5698 * (1 - rho 5696) = rho 5693 - rho 5694 - rho 5695 := ha5
        _ = (-1) * rho 5694 - rho 5695 + (seg6AccY195 rho - seg6AccX195 rho * (-1)) * (rho 5690 + rho 5691) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX196 rho = seg6AccX195 rho - Bool.toZMod bit * (seg6AccX195 rho - rho 5697) := by
      have hd : rho 5699 = Bool.toZMod bit * (rho 5697 - seg6AccX195 rho) := by
        rw [← hbit]
        unfold seg6AccX195
        linear_combination -r5300
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY196 rho = seg6AccY195 rho - Bool.toZMod bit * (seg6AccY195 rho - rho 5698) := by
      have hd : rho 5700 = Bool.toZMod bit * (rho 5698 - seg6AccY195 rho) := by
        rw [← hbit]
        unfold seg6AccY195
        linear_combination -r5301
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5690 * rho 5691 = rho 5701 := by linear_combination r5302
    have hd1 : rho 5690 * rho 5690 = rho 5702 := by linear_combination r5303
    have hd2 : rho 5691 * rho 5691 = rho 5703 := by linear_combination r5304
    have hd3 : rho 5704 * (rho 5691 * rho 5691 + rho 5690 * rho 5690 * (-1)) = 2 * (rho 5690 * rho 5691) := by
      rw [hd0, hd1, hd2]
      linear_combination r5305
    have hd4 : rho 5705 * (2 - (rho 5691 * rho 5691 + rho 5690 * rho 5690 * (-1))) = rho 5691 * rho 5691 - rho 5690 * rho 5690 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5306
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX195 rho : Seg6.F), (seg6AccY195 rho : Seg6.F)⟩
      ⟨(rho 5690 : Seg6.F), (rho 5691 : Seg6.F)⟩
      ⟨(rho 5697 : Seg6.F), (rho 5698 : Seg6.F)⟩
      ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩
      ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg6_rows196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5307 rho ∧ Seg6.relationRow5308 rho ∧ Seg6.relationRow5309 rho ∧ Seg6.relationRow5310 rho ∧ Seg6.relationRow5311 rho ∧ Seg6.relationRow5312 rho ∧ Seg6.relationRow5313 rho ∧ Seg6.relationRow5314 rho ∧ Seg6.relationRow5315 rho ∧ Seg6.relationRow5316 rho ∧ Seg6.relationRow5317 rho ∧ Seg6.relationRow5318 rho ∧ Seg6.relationRow5319 rho ∧ Seg6.relationRow5320 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩

theorem seg6_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩
        ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩
        ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩
        ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩ := by
  obtain ⟨r5307, r5308, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320⟩ := seg6_rows196 rho h
  unfold Seg6.relationRow5307 at r5307
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5307
  unfold Seg6.relationRow5308 at r5308
  unfold Seg6.relationRow5309 at r5309
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5309
  unfold Seg6.relationRow5310 at r5310
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5310
  unfold Seg6.relationRow5311 at r5311
  unfold Seg6.relationRow5312 at r5312
  unfold Seg6.relationRow5313 at r5313
  unfold Seg6.relationRow5314 at r5314
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5314
  unfold Seg6.relationRow5315 at r5315
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5315
  unfold Seg6.relationRow5316 at r5316
  unfold Seg6.relationRow5317 at r5317
  unfold Seg6.relationRow5318 at r5318
  unfold Seg6.relationRow5319 at r5319
  unfold Seg6.relationRow5320 at r5320
  have hrung196 (bit : Bool) (hbit : rho 2086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩
        ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩
        ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩
        ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩ := by
    have hnextx : seg6AccX197 rho = seg6AccX196 rho + rho 5713 := by
      unfold seg6AccX197 seg6AccX196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 46]
      ring
    have hnexty : seg6AccY197 rho = seg6AccY196 rho + rho 5714 := by
      unfold seg6AccY197 seg6AccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 46]
      ring
    have hsum : seg6AccX196 rho + seg6AccY196 rho = rho 5706 := by
      unfold seg6AccX196 seg6AccY196
      linear_combination r5307
    have ha0 : (rho 5704 + rho 5705) * (seg6AccX196 rho + seg6AccY196 rho) = rho 5707 := by
      rw [hsum]
      linear_combination r5308
    have ha1 : rho 5705 * seg6AccX196 rho = rho 5708 := by
      unfold seg6AccX196
      linear_combination r5309
    have ha2 : rho 5704 * seg6AccY196 rho = rho 5709 := by
      unfold seg6AccY196
      linear_combination r5310
    have ha3 : 3021 * rho 5708 * rho 5709 = rho 5710 := by
      linear_combination r5311
    have ha4 : rho 5711 * (1 + rho 5710) = rho 5708 + rho 5709 := by
      linear_combination r5312
    have ha5 : rho 5712 * (1 - rho 5710) = rho 5707 - rho 5708 - rho 5709 := by
      linear_combination r5313
    have haddx :
        rho 5711 * (1 + 3021 * (rho 5705 * seg6AccX196 rho) * (rho 5704 * seg6AccY196 rho)) =
          rho 5705 * seg6AccX196 rho + rho 5704 * seg6AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5712 * (1 - 3021 * (rho 5705 * seg6AccX196 rho) * (rho 5704 * seg6AccY196 rho)) =
          (-1) * (rho 5705 * seg6AccX196 rho) - rho 5704 * seg6AccY196 rho +
            (seg6AccY196 rho - seg6AccX196 rho * (-1)) * (rho 5704 + rho 5705) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5712 * (1 - rho 5710) = rho 5707 - rho 5708 - rho 5709 := ha5
        _ = (-1) * rho 5708 - rho 5709 + (seg6AccY196 rho - seg6AccX196 rho * (-1)) * (rho 5704 + rho 5705) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX197 rho = seg6AccX196 rho - Bool.toZMod bit * (seg6AccX196 rho - rho 5711) := by
      have hd : rho 5713 = Bool.toZMod bit * (rho 5711 - seg6AccX196 rho) := by
        rw [← hbit]
        unfold seg6AccX196
        linear_combination -r5314
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY197 rho = seg6AccY196 rho - Bool.toZMod bit * (seg6AccY196 rho - rho 5712) := by
      have hd : rho 5714 = Bool.toZMod bit * (rho 5712 - seg6AccY196 rho) := by
        rw [← hbit]
        unfold seg6AccY196
        linear_combination -r5315
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5704 * rho 5705 = rho 5715 := by linear_combination r5316
    have hd1 : rho 5704 * rho 5704 = rho 5716 := by linear_combination r5317
    have hd2 : rho 5705 * rho 5705 = rho 5717 := by linear_combination r5318
    have hd3 : rho 5718 * (rho 5705 * rho 5705 + rho 5704 * rho 5704 * (-1)) = 2 * (rho 5704 * rho 5705) := by
      rw [hd0, hd1, hd2]
      linear_combination r5319
    have hd4 : rho 5719 * (2 - (rho 5705 * rho 5705 + rho 5704 * rho 5704 * (-1))) = rho 5705 * rho 5705 - rho 5704 * rho 5704 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5320
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX196 rho : Seg6.F), (seg6AccY196 rho : Seg6.F)⟩
      ⟨(rho 5704 : Seg6.F), (rho 5705 : Seg6.F)⟩
      ⟨(rho 5711 : Seg6.F), (rho 5712 : Seg6.F)⟩
      ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩
      ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg6_rows197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5321 rho ∧ Seg6.relationRow5322 rho ∧ Seg6.relationRow5323 rho ∧ Seg6.relationRow5324 rho ∧ Seg6.relationRow5325 rho ∧ Seg6.relationRow5326 rho ∧ Seg6.relationRow5327 rho ∧ Seg6.relationRow5328 rho ∧ Seg6.relationRow5329 rho ∧ Seg6.relationRow5330 rho ∧ Seg6.relationRow5331 rho ∧ Seg6.relationRow5332 rho ∧ Seg6.relationRow5333 rho ∧ Seg6.relationRow5334 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩

theorem seg6_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩
        ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩
        ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩
        ⟨(rho 5732 : Seg6.F), (rho 5733 : Seg6.F)⟩ := by
  obtain ⟨r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, r5332, r5333, r5334⟩ := seg6_rows197 rho h
  unfold Seg6.relationRow5321 at r5321
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5321
  unfold Seg6.relationRow5322 at r5322
  unfold Seg6.relationRow5323 at r5323
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5323
  unfold Seg6.relationRow5324 at r5324
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5324
  unfold Seg6.relationRow5325 at r5325
  unfold Seg6.relationRow5326 at r5326
  unfold Seg6.relationRow5327 at r5327
  unfold Seg6.relationRow5328 at r5328
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5328
  unfold Seg6.relationRow5329 at r5329
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5329
  unfold Seg6.relationRow5330 at r5330
  unfold Seg6.relationRow5331 at r5331
  unfold Seg6.relationRow5332 at r5332
  unfold Seg6.relationRow5333 at r5333
  unfold Seg6.relationRow5334 at r5334
  have hrung197 (bit : Bool) (hbit : rho 2087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩
        ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩
        ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩
        ⟨(rho 5732 : Seg6.F), (rho 5733 : Seg6.F)⟩ := by
    have hnextx : seg6AccX198 rho = seg6AccX197 rho + rho 5727 := by
      unfold seg6AccX198 seg6AccX197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 47]
      ring
    have hnexty : seg6AccY198 rho = seg6AccY197 rho + rho 5728 := by
      unfold seg6AccY198 seg6AccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 47]
      ring
    have hsum : seg6AccX197 rho + seg6AccY197 rho = rho 5720 := by
      unfold seg6AccX197 seg6AccY197
      linear_combination r5321
    have ha0 : (rho 5718 + rho 5719) * (seg6AccX197 rho + seg6AccY197 rho) = rho 5721 := by
      rw [hsum]
      linear_combination r5322
    have ha1 : rho 5719 * seg6AccX197 rho = rho 5722 := by
      unfold seg6AccX197
      linear_combination r5323
    have ha2 : rho 5718 * seg6AccY197 rho = rho 5723 := by
      unfold seg6AccY197
      linear_combination r5324
    have ha3 : 3021 * rho 5722 * rho 5723 = rho 5724 := by
      linear_combination r5325
    have ha4 : rho 5725 * (1 + rho 5724) = rho 5722 + rho 5723 := by
      linear_combination r5326
    have ha5 : rho 5726 * (1 - rho 5724) = rho 5721 - rho 5722 - rho 5723 := by
      linear_combination r5327
    have haddx :
        rho 5725 * (1 + 3021 * (rho 5719 * seg6AccX197 rho) * (rho 5718 * seg6AccY197 rho)) =
          rho 5719 * seg6AccX197 rho + rho 5718 * seg6AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5726 * (1 - 3021 * (rho 5719 * seg6AccX197 rho) * (rho 5718 * seg6AccY197 rho)) =
          (-1) * (rho 5719 * seg6AccX197 rho) - rho 5718 * seg6AccY197 rho +
            (seg6AccY197 rho - seg6AccX197 rho * (-1)) * (rho 5718 + rho 5719) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5726 * (1 - rho 5724) = rho 5721 - rho 5722 - rho 5723 := ha5
        _ = (-1) * rho 5722 - rho 5723 + (seg6AccY197 rho - seg6AccX197 rho * (-1)) * (rho 5718 + rho 5719) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX198 rho = seg6AccX197 rho - Bool.toZMod bit * (seg6AccX197 rho - rho 5725) := by
      have hd : rho 5727 = Bool.toZMod bit * (rho 5725 - seg6AccX197 rho) := by
        rw [← hbit]
        unfold seg6AccX197
        linear_combination -r5328
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY198 rho = seg6AccY197 rho - Bool.toZMod bit * (seg6AccY197 rho - rho 5726) := by
      have hd : rho 5728 = Bool.toZMod bit * (rho 5726 - seg6AccY197 rho) := by
        rw [← hbit]
        unfold seg6AccY197
        linear_combination -r5329
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5718 * rho 5719 = rho 5729 := by linear_combination r5330
    have hd1 : rho 5718 * rho 5718 = rho 5730 := by linear_combination r5331
    have hd2 : rho 5719 * rho 5719 = rho 5731 := by linear_combination r5332
    have hd3 : rho 5732 * (rho 5719 * rho 5719 + rho 5718 * rho 5718 * (-1)) = 2 * (rho 5718 * rho 5719) := by
      rw [hd0, hd1, hd2]
      linear_combination r5333
    have hd4 : rho 5733 * (2 - (rho 5719 * rho 5719 + rho 5718 * rho 5718 * (-1))) = rho 5719 * rho 5719 - rho 5718 * rho 5718 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5334
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX197 rho : Seg6.F), (seg6AccY197 rho : Seg6.F)⟩
      ⟨(rho 5718 : Seg6.F), (rho 5719 : Seg6.F)⟩
      ⟨(rho 5725 : Seg6.F), (rho 5726 : Seg6.F)⟩
      ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩
      ⟨(rho 5732 : Seg6.F), (rho 5733 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg6_hstep_c17 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 187 ≤ i → i < 198 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg6_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg6_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg6_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg6_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
  · exact seg6_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg6_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg6_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg6_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg6_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg6_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
