import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg5_rows187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5433 rho ∧ Seg5.relationRow5434 rho ∧ Seg5.relationRow5435 rho ∧ Seg5.relationRow5436 rho ∧ Seg5.relationRow5437 rho ∧ Seg5.relationRow5438 rho ∧ Seg5.relationRow5439 rho ∧ Seg5.relationRow5440 rho ∧ Seg5.relationRow5441 rho ∧ Seg5.relationRow5442 rho ∧ Seg5.relationRow5443 rho ∧ Seg5.relationRow5444 rho ∧ Seg5.relationRow5445 rho ∧ Seg5.relationRow5446 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩

theorem seg5_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2602 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩
        ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩
        ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩
        ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩ := by
  obtain ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩ := seg5_rows187 rho h
  unfold Seg5.relationRow5433 at r5433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5433
  unfold Seg5.relationRow5434 at r5434
  unfold Seg5.relationRow5435 at r5435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435
  unfold Seg5.relationRow5436 at r5436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5436
  unfold Seg5.relationRow5437 at r5437
  unfold Seg5.relationRow5438 at r5438
  unfold Seg5.relationRow5439 at r5439
  unfold Seg5.relationRow5440 at r5440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5440
  unfold Seg5.relationRow5441 at r5441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441
  unfold Seg5.relationRow5442 at r5442
  unfold Seg5.relationRow5443 at r5443
  unfold Seg5.relationRow5444 at r5444
  unfold Seg5.relationRow5445 at r5445
  unfold Seg5.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 2602 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩
        ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩
        ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩
        ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩ := by
    have hnextx : seg5AccX188 rho = seg5AccX187 rho + rho 5135 := by
      unfold seg5AccX188 seg5AccX187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 37]
      ring
    have hnexty : seg5AccY188 rho = seg5AccY187 rho + rho 5136 := by
      unfold seg5AccY188 seg5AccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 37]
      ring
    have hsum : seg5AccX187 rho + seg5AccY187 rho = rho 5128 := by
      unfold seg5AccX187 seg5AccY187
      linear_combination r5433
    have ha0 : (rho 5126 + rho 5127) * (seg5AccX187 rho + seg5AccY187 rho) = rho 5129 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 5127 * seg5AccX187 rho = rho 5130 := by
      unfold seg5AccX187
      linear_combination r5435
    have ha2 : rho 5126 * seg5AccY187 rho = rho 5131 := by
      unfold seg5AccY187
      linear_combination r5436
    have ha3 : 3021 * rho 5130 * rho 5131 = rho 5132 := by
      linear_combination r5437
    have ha4 : rho 5133 * (1 + rho 5132) = rho 5130 + rho 5131 := by
      linear_combination r5438
    have ha5 : rho 5134 * (1 - rho 5132) = rho 5129 - rho 5130 - rho 5131 := by
      linear_combination r5439
    have haddx :
        rho 5133 * (1 + 3021 * (rho 5127 * seg5AccX187 rho) * (rho 5126 * seg5AccY187 rho)) =
          rho 5127 * seg5AccX187 rho + rho 5126 * seg5AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5134 * (1 - 3021 * (rho 5127 * seg5AccX187 rho) * (rho 5126 * seg5AccY187 rho)) =
          (-1) * (rho 5127 * seg5AccX187 rho) - rho 5126 * seg5AccY187 rho +
            (seg5AccY187 rho - seg5AccX187 rho * (-1)) * (rho 5126 + rho 5127) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5134 * (1 - rho 5132) = rho 5129 - rho 5130 - rho 5131 := ha5
        _ = (-1) * rho 5130 - rho 5131 + (seg5AccY187 rho - seg5AccX187 rho * (-1)) * (rho 5126 + rho 5127) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX188 rho = seg5AccX187 rho - Bool.toZMod bit * (seg5AccX187 rho - rho 5133) := by
      have hd : rho 5135 = Bool.toZMod bit * (rho 5133 - seg5AccX187 rho) := by
        rw [← hbit]
        unfold seg5AccX187
        linear_combination -r5440
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY188 rho = seg5AccY187 rho - Bool.toZMod bit * (seg5AccY187 rho - rho 5134) := by
      have hd : rho 5136 = Bool.toZMod bit * (rho 5134 - seg5AccY187 rho) := by
        rw [← hbit]
        unfold seg5AccY187
        linear_combination -r5441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5126 * rho 5127 = rho 5137 := by linear_combination r5442
    have hd1 : rho 5126 * rho 5126 = rho 5138 := by linear_combination r5443
    have hd2 : rho 5127 * rho 5127 = rho 5139 := by linear_combination r5444
    have hd3 : rho 5140 * (rho 5127 * rho 5127 + rho 5126 * rho 5126 * (-1)) = 2 * (rho 5126 * rho 5127) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 5141 * (2 - (rho 5127 * rho 5127 + rho 5126 * rho 5126 * (-1))) = rho 5127 * rho 5127 - rho 5126 * rho 5126 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX187 rho : Seg5.F), (seg5AccY187 rho : Seg5.F)⟩
      ⟨(rho 5126 : Seg5.F), (rho 5127 : Seg5.F)⟩
      ⟨(rho 5133 : Seg5.F), (rho 5134 : Seg5.F)⟩
      ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩
      ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg5_rows188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5447 rho ∧ Seg5.relationRow5448 rho ∧ Seg5.relationRow5449 rho ∧ Seg5.relationRow5450 rho ∧ Seg5.relationRow5451 rho ∧ Seg5.relationRow5452 rho ∧ Seg5.relationRow5453 rho ∧ Seg5.relationRow5454 rho ∧ Seg5.relationRow5455 rho ∧ Seg5.relationRow5456 rho ∧ Seg5.relationRow5457 rho ∧ Seg5.relationRow5458 rho ∧ Seg5.relationRow5459 rho ∧ Seg5.relationRow5460 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩

theorem seg5_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2603 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩
        ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩
        ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩
        ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩ := by
  obtain ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩ := seg5_rows188 rho h
  unfold Seg5.relationRow5447 at r5447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447
  unfold Seg5.relationRow5448 at r5448
  unfold Seg5.relationRow5449 at r5449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5449
  unfold Seg5.relationRow5450 at r5450
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5450
  unfold Seg5.relationRow5451 at r5451
  unfold Seg5.relationRow5452 at r5452
  unfold Seg5.relationRow5453 at r5453
  unfold Seg5.relationRow5454 at r5454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454
  unfold Seg5.relationRow5455 at r5455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455
  unfold Seg5.relationRow5456 at r5456
  unfold Seg5.relationRow5457 at r5457
  unfold Seg5.relationRow5458 at r5458
  unfold Seg5.relationRow5459 at r5459
  unfold Seg5.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 2603 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩
        ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩
        ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩
        ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩ := by
    have hnextx : seg5AccX189 rho = seg5AccX188 rho + rho 5149 := by
      unfold seg5AccX189 seg5AccX188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 38]
      ring
    have hnexty : seg5AccY189 rho = seg5AccY188 rho + rho 5150 := by
      unfold seg5AccY189 seg5AccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 38]
      ring
    have hsum : seg5AccX188 rho + seg5AccY188 rho = rho 5142 := by
      unfold seg5AccX188 seg5AccY188
      linear_combination r5447
    have ha0 : (rho 5140 + rho 5141) * (seg5AccX188 rho + seg5AccY188 rho) = rho 5143 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 5141 * seg5AccX188 rho = rho 5144 := by
      unfold seg5AccX188
      linear_combination r5449
    have ha2 : rho 5140 * seg5AccY188 rho = rho 5145 := by
      unfold seg5AccY188
      linear_combination r5450
    have ha3 : 3021 * rho 5144 * rho 5145 = rho 5146 := by
      linear_combination r5451
    have ha4 : rho 5147 * (1 + rho 5146) = rho 5144 + rho 5145 := by
      linear_combination r5452
    have ha5 : rho 5148 * (1 - rho 5146) = rho 5143 - rho 5144 - rho 5145 := by
      linear_combination r5453
    have haddx :
        rho 5147 * (1 + 3021 * (rho 5141 * seg5AccX188 rho) * (rho 5140 * seg5AccY188 rho)) =
          rho 5141 * seg5AccX188 rho + rho 5140 * seg5AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5148 * (1 - 3021 * (rho 5141 * seg5AccX188 rho) * (rho 5140 * seg5AccY188 rho)) =
          (-1) * (rho 5141 * seg5AccX188 rho) - rho 5140 * seg5AccY188 rho +
            (seg5AccY188 rho - seg5AccX188 rho * (-1)) * (rho 5140 + rho 5141) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5148 * (1 - rho 5146) = rho 5143 - rho 5144 - rho 5145 := ha5
        _ = (-1) * rho 5144 - rho 5145 + (seg5AccY188 rho - seg5AccX188 rho * (-1)) * (rho 5140 + rho 5141) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX189 rho = seg5AccX188 rho - Bool.toZMod bit * (seg5AccX188 rho - rho 5147) := by
      have hd : rho 5149 = Bool.toZMod bit * (rho 5147 - seg5AccX188 rho) := by
        rw [← hbit]
        unfold seg5AccX188
        linear_combination -r5454
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY189 rho = seg5AccY188 rho - Bool.toZMod bit * (seg5AccY188 rho - rho 5148) := by
      have hd : rho 5150 = Bool.toZMod bit * (rho 5148 - seg5AccY188 rho) := by
        rw [← hbit]
        unfold seg5AccY188
        linear_combination -r5455
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5140 * rho 5141 = rho 5151 := by linear_combination r5456
    have hd1 : rho 5140 * rho 5140 = rho 5152 := by linear_combination r5457
    have hd2 : rho 5141 * rho 5141 = rho 5153 := by linear_combination r5458
    have hd3 : rho 5154 * (rho 5141 * rho 5141 + rho 5140 * rho 5140 * (-1)) = 2 * (rho 5140 * rho 5141) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 5155 * (2 - (rho 5141 * rho 5141 + rho 5140 * rho 5140 * (-1))) = rho 5141 * rho 5141 - rho 5140 * rho 5140 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX188 rho : Seg5.F), (seg5AccY188 rho : Seg5.F)⟩
      ⟨(rho 5140 : Seg5.F), (rho 5141 : Seg5.F)⟩
      ⟨(rho 5147 : Seg5.F), (rho 5148 : Seg5.F)⟩
      ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩
      ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg5_rows189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5461 rho ∧ Seg5.relationRow5462 rho ∧ Seg5.relationRow5463 rho ∧ Seg5.relationRow5464 rho ∧ Seg5.relationRow5465 rho ∧ Seg5.relationRow5466 rho ∧ Seg5.relationRow5467 rho ∧ Seg5.relationRow5468 rho ∧ Seg5.relationRow5469 rho ∧ Seg5.relationRow5470 rho ∧ Seg5.relationRow5471 rho ∧ Seg5.relationRow5472 rho ∧ Seg5.relationRow5473 rho ∧ Seg5.relationRow5474 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩

theorem seg5_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2604 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩
        ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩
        ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩
        ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩ := by
  obtain ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩ := seg5_rows189 rho h
  unfold Seg5.relationRow5461 at r5461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461
  unfold Seg5.relationRow5462 at r5462
  unfold Seg5.relationRow5463 at r5463
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5463
  unfold Seg5.relationRow5464 at r5464
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5464
  unfold Seg5.relationRow5465 at r5465
  unfold Seg5.relationRow5466 at r5466
  unfold Seg5.relationRow5467 at r5467
  unfold Seg5.relationRow5468 at r5468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468
  unfold Seg5.relationRow5469 at r5469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469
  unfold Seg5.relationRow5470 at r5470
  unfold Seg5.relationRow5471 at r5471
  unfold Seg5.relationRow5472 at r5472
  unfold Seg5.relationRow5473 at r5473
  unfold Seg5.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 2604 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩
        ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩
        ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩
        ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩ := by
    have hnextx : seg5AccX190 rho = seg5AccX189 rho + rho 5163 := by
      unfold seg5AccX190 seg5AccX189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 39]
      ring
    have hnexty : seg5AccY190 rho = seg5AccY189 rho + rho 5164 := by
      unfold seg5AccY190 seg5AccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 39]
      ring
    have hsum : seg5AccX189 rho + seg5AccY189 rho = rho 5156 := by
      unfold seg5AccX189 seg5AccY189
      linear_combination r5461
    have ha0 : (rho 5154 + rho 5155) * (seg5AccX189 rho + seg5AccY189 rho) = rho 5157 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 5155 * seg5AccX189 rho = rho 5158 := by
      unfold seg5AccX189
      linear_combination r5463
    have ha2 : rho 5154 * seg5AccY189 rho = rho 5159 := by
      unfold seg5AccY189
      linear_combination r5464
    have ha3 : 3021 * rho 5158 * rho 5159 = rho 5160 := by
      linear_combination r5465
    have ha4 : rho 5161 * (1 + rho 5160) = rho 5158 + rho 5159 := by
      linear_combination r5466
    have ha5 : rho 5162 * (1 - rho 5160) = rho 5157 - rho 5158 - rho 5159 := by
      linear_combination r5467
    have haddx :
        rho 5161 * (1 + 3021 * (rho 5155 * seg5AccX189 rho) * (rho 5154 * seg5AccY189 rho)) =
          rho 5155 * seg5AccX189 rho + rho 5154 * seg5AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5162 * (1 - 3021 * (rho 5155 * seg5AccX189 rho) * (rho 5154 * seg5AccY189 rho)) =
          (-1) * (rho 5155 * seg5AccX189 rho) - rho 5154 * seg5AccY189 rho +
            (seg5AccY189 rho - seg5AccX189 rho * (-1)) * (rho 5154 + rho 5155) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5162 * (1 - rho 5160) = rho 5157 - rho 5158 - rho 5159 := ha5
        _ = (-1) * rho 5158 - rho 5159 + (seg5AccY189 rho - seg5AccX189 rho * (-1)) * (rho 5154 + rho 5155) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX190 rho = seg5AccX189 rho - Bool.toZMod bit * (seg5AccX189 rho - rho 5161) := by
      have hd : rho 5163 = Bool.toZMod bit * (rho 5161 - seg5AccX189 rho) := by
        rw [← hbit]
        unfold seg5AccX189
        linear_combination -r5468
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY190 rho = seg5AccY189 rho - Bool.toZMod bit * (seg5AccY189 rho - rho 5162) := by
      have hd : rho 5164 = Bool.toZMod bit * (rho 5162 - seg5AccY189 rho) := by
        rw [← hbit]
        unfold seg5AccY189
        linear_combination -r5469
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5154 * rho 5155 = rho 5165 := by linear_combination r5470
    have hd1 : rho 5154 * rho 5154 = rho 5166 := by linear_combination r5471
    have hd2 : rho 5155 * rho 5155 = rho 5167 := by linear_combination r5472
    have hd3 : rho 5168 * (rho 5155 * rho 5155 + rho 5154 * rho 5154 * (-1)) = 2 * (rho 5154 * rho 5155) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 5169 * (2 - (rho 5155 * rho 5155 + rho 5154 * rho 5154 * (-1))) = rho 5155 * rho 5155 - rho 5154 * rho 5154 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX189 rho : Seg5.F), (seg5AccY189 rho : Seg5.F)⟩
      ⟨(rho 5154 : Seg5.F), (rho 5155 : Seg5.F)⟩
      ⟨(rho 5161 : Seg5.F), (rho 5162 : Seg5.F)⟩
      ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩
      ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg5_rows190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5475 rho ∧ Seg5.relationRow5476 rho ∧ Seg5.relationRow5477 rho ∧ Seg5.relationRow5478 rho ∧ Seg5.relationRow5479 rho ∧ Seg5.relationRow5480 rho ∧ Seg5.relationRow5481 rho ∧ Seg5.relationRow5482 rho ∧ Seg5.relationRow5483 rho ∧ Seg5.relationRow5484 rho ∧ Seg5.relationRow5485 rho ∧ Seg5.relationRow5486 rho ∧ Seg5.relationRow5487 rho ∧ Seg5.relationRow5488 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩

theorem seg5_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2605 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩
        ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩
        ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩
        ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩ := by
  obtain ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩ := seg5_rows190 rho h
  unfold Seg5.relationRow5475 at r5475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5475
  unfold Seg5.relationRow5476 at r5476
  unfold Seg5.relationRow5477 at r5477
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5477
  unfold Seg5.relationRow5478 at r5478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5478
  unfold Seg5.relationRow5479 at r5479
  unfold Seg5.relationRow5480 at r5480
  unfold Seg5.relationRow5481 at r5481
  unfold Seg5.relationRow5482 at r5482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482
  unfold Seg5.relationRow5483 at r5483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5483
  unfold Seg5.relationRow5484 at r5484
  unfold Seg5.relationRow5485 at r5485
  unfold Seg5.relationRow5486 at r5486
  unfold Seg5.relationRow5487 at r5487
  unfold Seg5.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 2605 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩
        ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩
        ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩
        ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩ := by
    have hnextx : seg5AccX191 rho = seg5AccX190 rho + rho 5177 := by
      unfold seg5AccX191 seg5AccX190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 40]
      ring
    have hnexty : seg5AccY191 rho = seg5AccY190 rho + rho 5178 := by
      unfold seg5AccY191 seg5AccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 40]
      ring
    have hsum : seg5AccX190 rho + seg5AccY190 rho = rho 5170 := by
      unfold seg5AccX190 seg5AccY190
      linear_combination r5475
    have ha0 : (rho 5168 + rho 5169) * (seg5AccX190 rho + seg5AccY190 rho) = rho 5171 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 5169 * seg5AccX190 rho = rho 5172 := by
      unfold seg5AccX190
      linear_combination r5477
    have ha2 : rho 5168 * seg5AccY190 rho = rho 5173 := by
      unfold seg5AccY190
      linear_combination r5478
    have ha3 : 3021 * rho 5172 * rho 5173 = rho 5174 := by
      linear_combination r5479
    have ha4 : rho 5175 * (1 + rho 5174) = rho 5172 + rho 5173 := by
      linear_combination r5480
    have ha5 : rho 5176 * (1 - rho 5174) = rho 5171 - rho 5172 - rho 5173 := by
      linear_combination r5481
    have haddx :
        rho 5175 * (1 + 3021 * (rho 5169 * seg5AccX190 rho) * (rho 5168 * seg5AccY190 rho)) =
          rho 5169 * seg5AccX190 rho + rho 5168 * seg5AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5176 * (1 - 3021 * (rho 5169 * seg5AccX190 rho) * (rho 5168 * seg5AccY190 rho)) =
          (-1) * (rho 5169 * seg5AccX190 rho) - rho 5168 * seg5AccY190 rho +
            (seg5AccY190 rho - seg5AccX190 rho * (-1)) * (rho 5168 + rho 5169) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5176 * (1 - rho 5174) = rho 5171 - rho 5172 - rho 5173 := ha5
        _ = (-1) * rho 5172 - rho 5173 + (seg5AccY190 rho - seg5AccX190 rho * (-1)) * (rho 5168 + rho 5169) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX191 rho = seg5AccX190 rho - Bool.toZMod bit * (seg5AccX190 rho - rho 5175) := by
      have hd : rho 5177 = Bool.toZMod bit * (rho 5175 - seg5AccX190 rho) := by
        rw [← hbit]
        unfold seg5AccX190
        linear_combination -r5482
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY191 rho = seg5AccY190 rho - Bool.toZMod bit * (seg5AccY190 rho - rho 5176) := by
      have hd : rho 5178 = Bool.toZMod bit * (rho 5176 - seg5AccY190 rho) := by
        rw [← hbit]
        unfold seg5AccY190
        linear_combination -r5483
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5168 * rho 5169 = rho 5179 := by linear_combination r5484
    have hd1 : rho 5168 * rho 5168 = rho 5180 := by linear_combination r5485
    have hd2 : rho 5169 * rho 5169 = rho 5181 := by linear_combination r5486
    have hd3 : rho 5182 * (rho 5169 * rho 5169 + rho 5168 * rho 5168 * (-1)) = 2 * (rho 5168 * rho 5169) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 5183 * (2 - (rho 5169 * rho 5169 + rho 5168 * rho 5168 * (-1))) = rho 5169 * rho 5169 - rho 5168 * rho 5168 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX190 rho : Seg5.F), (seg5AccY190 rho : Seg5.F)⟩
      ⟨(rho 5168 : Seg5.F), (rho 5169 : Seg5.F)⟩
      ⟨(rho 5175 : Seg5.F), (rho 5176 : Seg5.F)⟩
      ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩
      ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg5_rows191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5489 rho ∧ Seg5.relationRow5490 rho ∧ Seg5.relationRow5491 rho ∧ Seg5.relationRow5492 rho ∧ Seg5.relationRow5493 rho ∧ Seg5.relationRow5494 rho ∧ Seg5.relationRow5495 rho ∧ Seg5.relationRow5496 rho ∧ Seg5.relationRow5497 rho ∧ Seg5.relationRow5498 rho ∧ Seg5.relationRow5499 rho ∧ Seg5.relationRow5500 rho ∧ Seg5.relationRow5501 rho ∧ Seg5.relationRow5502 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩

theorem seg5_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2606 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩
        ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩
        ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩
        ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩ := by
  obtain ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩ := seg5_rows191 rho h
  unfold Seg5.relationRow5489 at r5489
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5489
  unfold Seg5.relationRow5490 at r5490
  unfold Seg5.relationRow5491 at r5491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5491
  unfold Seg5.relationRow5492 at r5492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5492
  unfold Seg5.relationRow5493 at r5493
  unfold Seg5.relationRow5494 at r5494
  unfold Seg5.relationRow5495 at r5495
  unfold Seg5.relationRow5496 at r5496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5496
  unfold Seg5.relationRow5497 at r5497
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5497
  unfold Seg5.relationRow5498 at r5498
  unfold Seg5.relationRow5499 at r5499
  unfold Seg5.relationRow5500 at r5500
  unfold Seg5.relationRow5501 at r5501
  unfold Seg5.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 2606 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩
        ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩
        ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩
        ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩ := by
    have hnextx : seg5AccX192 rho = seg5AccX191 rho + rho 5191 := by
      unfold seg5AccX192 seg5AccX191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 41]
      ring
    have hnexty : seg5AccY192 rho = seg5AccY191 rho + rho 5192 := by
      unfold seg5AccY192 seg5AccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 41]
      ring
    have hsum : seg5AccX191 rho + seg5AccY191 rho = rho 5184 := by
      unfold seg5AccX191 seg5AccY191
      linear_combination r5489
    have ha0 : (rho 5182 + rho 5183) * (seg5AccX191 rho + seg5AccY191 rho) = rho 5185 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 5183 * seg5AccX191 rho = rho 5186 := by
      unfold seg5AccX191
      linear_combination r5491
    have ha2 : rho 5182 * seg5AccY191 rho = rho 5187 := by
      unfold seg5AccY191
      linear_combination r5492
    have ha3 : 3021 * rho 5186 * rho 5187 = rho 5188 := by
      linear_combination r5493
    have ha4 : rho 5189 * (1 + rho 5188) = rho 5186 + rho 5187 := by
      linear_combination r5494
    have ha5 : rho 5190 * (1 - rho 5188) = rho 5185 - rho 5186 - rho 5187 := by
      linear_combination r5495
    have haddx :
        rho 5189 * (1 + 3021 * (rho 5183 * seg5AccX191 rho) * (rho 5182 * seg5AccY191 rho)) =
          rho 5183 * seg5AccX191 rho + rho 5182 * seg5AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5190 * (1 - 3021 * (rho 5183 * seg5AccX191 rho) * (rho 5182 * seg5AccY191 rho)) =
          (-1) * (rho 5183 * seg5AccX191 rho) - rho 5182 * seg5AccY191 rho +
            (seg5AccY191 rho - seg5AccX191 rho * (-1)) * (rho 5182 + rho 5183) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5190 * (1 - rho 5188) = rho 5185 - rho 5186 - rho 5187 := ha5
        _ = (-1) * rho 5186 - rho 5187 + (seg5AccY191 rho - seg5AccX191 rho * (-1)) * (rho 5182 + rho 5183) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX192 rho = seg5AccX191 rho - Bool.toZMod bit * (seg5AccX191 rho - rho 5189) := by
      have hd : rho 5191 = Bool.toZMod bit * (rho 5189 - seg5AccX191 rho) := by
        rw [← hbit]
        unfold seg5AccX191
        linear_combination -r5496
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY192 rho = seg5AccY191 rho - Bool.toZMod bit * (seg5AccY191 rho - rho 5190) := by
      have hd : rho 5192 = Bool.toZMod bit * (rho 5190 - seg5AccY191 rho) := by
        rw [← hbit]
        unfold seg5AccY191
        linear_combination -r5497
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5182 * rho 5183 = rho 5193 := by linear_combination r5498
    have hd1 : rho 5182 * rho 5182 = rho 5194 := by linear_combination r5499
    have hd2 : rho 5183 * rho 5183 = rho 5195 := by linear_combination r5500
    have hd3 : rho 5196 * (rho 5183 * rho 5183 + rho 5182 * rho 5182 * (-1)) = 2 * (rho 5182 * rho 5183) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 5197 * (2 - (rho 5183 * rho 5183 + rho 5182 * rho 5182 * (-1))) = rho 5183 * rho 5183 - rho 5182 * rho 5182 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX191 rho : Seg5.F), (seg5AccY191 rho : Seg5.F)⟩
      ⟨(rho 5182 : Seg5.F), (rho 5183 : Seg5.F)⟩
      ⟨(rho 5189 : Seg5.F), (rho 5190 : Seg5.F)⟩
      ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩
      ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg5_rows192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5503 rho ∧ Seg5.relationRow5504 rho ∧ Seg5.relationRow5505 rho ∧ Seg5.relationRow5506 rho ∧ Seg5.relationRow5507 rho ∧ Seg5.relationRow5508 rho ∧ Seg5.relationRow5509 rho ∧ Seg5.relationRow5510 rho ∧ Seg5.relationRow5511 rho ∧ Seg5.relationRow5512 rho ∧ Seg5.relationRow5513 rho ∧ Seg5.relationRow5514 rho ∧ Seg5.relationRow5515 rho ∧ Seg5.relationRow5516 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  exact ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩

theorem seg5_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2607 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩
        ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩
        ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩
        ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩ := by
  obtain ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩ := seg5_rows192 rho h
  unfold Seg5.relationRow5503 at r5503
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503
  unfold Seg5.relationRow5504 at r5504
  unfold Seg5.relationRow5505 at r5505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5505
  unfold Seg5.relationRow5506 at r5506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506
  unfold Seg5.relationRow5507 at r5507
  unfold Seg5.relationRow5508 at r5508
  unfold Seg5.relationRow5509 at r5509
  unfold Seg5.relationRow5510 at r5510
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510
  unfold Seg5.relationRow5511 at r5511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511
  unfold Seg5.relationRow5512 at r5512
  unfold Seg5.relationRow5513 at r5513
  unfold Seg5.relationRow5514 at r5514
  unfold Seg5.relationRow5515 at r5515
  unfold Seg5.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 2607 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩
        ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩
        ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩
        ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩ := by
    have hnextx : seg5AccX193 rho = seg5AccX192 rho + rho 5205 := by
      unfold seg5AccX193 seg5AccX192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 42]
      ring
    have hnexty : seg5AccY193 rho = seg5AccY192 rho + rho 5206 := by
      unfold seg5AccY193 seg5AccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 42]
      ring
    have hsum : seg5AccX192 rho + seg5AccY192 rho = rho 5198 := by
      unfold seg5AccX192 seg5AccY192
      linear_combination r5503
    have ha0 : (rho 5196 + rho 5197) * (seg5AccX192 rho + seg5AccY192 rho) = rho 5199 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 5197 * seg5AccX192 rho = rho 5200 := by
      unfold seg5AccX192
      linear_combination r5505
    have ha2 : rho 5196 * seg5AccY192 rho = rho 5201 := by
      unfold seg5AccY192
      linear_combination r5506
    have ha3 : 3021 * rho 5200 * rho 5201 = rho 5202 := by
      linear_combination r5507
    have ha4 : rho 5203 * (1 + rho 5202) = rho 5200 + rho 5201 := by
      linear_combination r5508
    have ha5 : rho 5204 * (1 - rho 5202) = rho 5199 - rho 5200 - rho 5201 := by
      linear_combination r5509
    have haddx :
        rho 5203 * (1 + 3021 * (rho 5197 * seg5AccX192 rho) * (rho 5196 * seg5AccY192 rho)) =
          rho 5197 * seg5AccX192 rho + rho 5196 * seg5AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5204 * (1 - 3021 * (rho 5197 * seg5AccX192 rho) * (rho 5196 * seg5AccY192 rho)) =
          (-1) * (rho 5197 * seg5AccX192 rho) - rho 5196 * seg5AccY192 rho +
            (seg5AccY192 rho - seg5AccX192 rho * (-1)) * (rho 5196 + rho 5197) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5204 * (1 - rho 5202) = rho 5199 - rho 5200 - rho 5201 := ha5
        _ = (-1) * rho 5200 - rho 5201 + (seg5AccY192 rho - seg5AccX192 rho * (-1)) * (rho 5196 + rho 5197) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX193 rho = seg5AccX192 rho - Bool.toZMod bit * (seg5AccX192 rho - rho 5203) := by
      have hd : rho 5205 = Bool.toZMod bit * (rho 5203 - seg5AccX192 rho) := by
        rw [← hbit]
        unfold seg5AccX192
        linear_combination -r5510
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY193 rho = seg5AccY192 rho - Bool.toZMod bit * (seg5AccY192 rho - rho 5204) := by
      have hd : rho 5206 = Bool.toZMod bit * (rho 5204 - seg5AccY192 rho) := by
        rw [← hbit]
        unfold seg5AccY192
        linear_combination -r5511
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5196 * rho 5197 = rho 5207 := by linear_combination r5512
    have hd1 : rho 5196 * rho 5196 = rho 5208 := by linear_combination r5513
    have hd2 : rho 5197 * rho 5197 = rho 5209 := by linear_combination r5514
    have hd3 : rho 5210 * (rho 5197 * rho 5197 + rho 5196 * rho 5196 * (-1)) = 2 * (rho 5196 * rho 5197) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 5211 * (2 - (rho 5197 * rho 5197 + rho 5196 * rho 5196 * (-1))) = rho 5197 * rho 5197 - rho 5196 * rho 5196 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX192 rho : Seg5.F), (seg5AccY192 rho : Seg5.F)⟩
      ⟨(rho 5196 : Seg5.F), (rho 5197 : Seg5.F)⟩
      ⟨(rho 5203 : Seg5.F), (rho 5204 : Seg5.F)⟩
      ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩
      ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg5_rows193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5517 rho ∧ Seg5.relationRow5518 rho ∧ Seg5.relationRow5519 rho ∧ Seg5.relationRow5520 rho ∧ Seg5.relationRow5521 rho ∧ Seg5.relationRow5522 rho ∧ Seg5.relationRow5523 rho ∧ Seg5.relationRow5524 rho ∧ Seg5.relationRow5525 rho ∧ Seg5.relationRow5526 rho ∧ Seg5.relationRow5527 rho ∧ Seg5.relationRow5528 rho ∧ Seg5.relationRow5529 rho ∧ Seg5.relationRow5530 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg5.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩

theorem seg5_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2608 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩
        ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩
        ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩
        ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩ := by
  obtain ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩ := seg5_rows193 rho h
  unfold Seg5.relationRow5517 at r5517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5517
  unfold Seg5.relationRow5518 at r5518
  unfold Seg5.relationRow5519 at r5519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519
  unfold Seg5.relationRow5520 at r5520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520
  unfold Seg5.relationRow5521 at r5521
  unfold Seg5.relationRow5522 at r5522
  unfold Seg5.relationRow5523 at r5523
  unfold Seg5.relationRow5524 at r5524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524
  unfold Seg5.relationRow5525 at r5525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525
  unfold Seg5.relationRow5526 at r5526
  unfold Seg5.relationRow5527 at r5527
  unfold Seg5.relationRow5528 at r5528
  unfold Seg5.relationRow5529 at r5529
  unfold Seg5.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 2608 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩
        ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩
        ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩
        ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩ := by
    have hnextx : seg5AccX194 rho = seg5AccX193 rho + rho 5219 := by
      unfold seg5AccX194 seg5AccX193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 43]
      ring
    have hnexty : seg5AccY194 rho = seg5AccY193 rho + rho 5220 := by
      unfold seg5AccY194 seg5AccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 43]
      ring
    have hsum : seg5AccX193 rho + seg5AccY193 rho = rho 5212 := by
      unfold seg5AccX193 seg5AccY193
      linear_combination r5517
    have ha0 : (rho 5210 + rho 5211) * (seg5AccX193 rho + seg5AccY193 rho) = rho 5213 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 5211 * seg5AccX193 rho = rho 5214 := by
      unfold seg5AccX193
      linear_combination r5519
    have ha2 : rho 5210 * seg5AccY193 rho = rho 5215 := by
      unfold seg5AccY193
      linear_combination r5520
    have ha3 : 3021 * rho 5214 * rho 5215 = rho 5216 := by
      linear_combination r5521
    have ha4 : rho 5217 * (1 + rho 5216) = rho 5214 + rho 5215 := by
      linear_combination r5522
    have ha5 : rho 5218 * (1 - rho 5216) = rho 5213 - rho 5214 - rho 5215 := by
      linear_combination r5523
    have haddx :
        rho 5217 * (1 + 3021 * (rho 5211 * seg5AccX193 rho) * (rho 5210 * seg5AccY193 rho)) =
          rho 5211 * seg5AccX193 rho + rho 5210 * seg5AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5218 * (1 - 3021 * (rho 5211 * seg5AccX193 rho) * (rho 5210 * seg5AccY193 rho)) =
          (-1) * (rho 5211 * seg5AccX193 rho) - rho 5210 * seg5AccY193 rho +
            (seg5AccY193 rho - seg5AccX193 rho * (-1)) * (rho 5210 + rho 5211) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5218 * (1 - rho 5216) = rho 5213 - rho 5214 - rho 5215 := ha5
        _ = (-1) * rho 5214 - rho 5215 + (seg5AccY193 rho - seg5AccX193 rho * (-1)) * (rho 5210 + rho 5211) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX194 rho = seg5AccX193 rho - Bool.toZMod bit * (seg5AccX193 rho - rho 5217) := by
      have hd : rho 5219 = Bool.toZMod bit * (rho 5217 - seg5AccX193 rho) := by
        rw [← hbit]
        unfold seg5AccX193
        linear_combination -r5524
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY194 rho = seg5AccY193 rho - Bool.toZMod bit * (seg5AccY193 rho - rho 5218) := by
      have hd : rho 5220 = Bool.toZMod bit * (rho 5218 - seg5AccY193 rho) := by
        rw [← hbit]
        unfold seg5AccY193
        linear_combination -r5525
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5210 * rho 5211 = rho 5221 := by linear_combination r5526
    have hd1 : rho 5210 * rho 5210 = rho 5222 := by linear_combination r5527
    have hd2 : rho 5211 * rho 5211 = rho 5223 := by linear_combination r5528
    have hd3 : rho 5224 * (rho 5211 * rho 5211 + rho 5210 * rho 5210 * (-1)) = 2 * (rho 5210 * rho 5211) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 5225 * (2 - (rho 5211 * rho 5211 + rho 5210 * rho 5210 * (-1))) = rho 5211 * rho 5211 - rho 5210 * rho 5210 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX193 rho : Seg5.F), (seg5AccY193 rho : Seg5.F)⟩
      ⟨(rho 5210 : Seg5.F), (rho 5211 : Seg5.F)⟩
      ⟨(rho 5217 : Seg5.F), (rho 5218 : Seg5.F)⟩
      ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩
      ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg5_rows194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5531 rho ∧ Seg5.relationRow5532 rho ∧ Seg5.relationRow5533 rho ∧ Seg5.relationRow5534 rho ∧ Seg5.relationRow5535 rho ∧ Seg5.relationRow5536 rho ∧ Seg5.relationRow5537 rho ∧ Seg5.relationRow5538 rho ∧ Seg5.relationRow5539 rho ∧ Seg5.relationRow5540 rho ∧ Seg5.relationRow5541 rho ∧ Seg5.relationRow5542 rho ∧ Seg5.relationRow5543 rho ∧ Seg5.relationRow5544 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg5_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2609 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩
        ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩
        ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩
        ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩ := by
  obtain ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg5_rows194 rho h
  unfold Seg5.relationRow5531 at r5531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5531
  unfold Seg5.relationRow5532 at r5532
  unfold Seg5.relationRow5533 at r5533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533
  unfold Seg5.relationRow5534 at r5534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534
  unfold Seg5.relationRow5535 at r5535
  unfold Seg5.relationRow5536 at r5536
  unfold Seg5.relationRow5537 at r5537
  unfold Seg5.relationRow5538 at r5538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538
  unfold Seg5.relationRow5539 at r5539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539
  unfold Seg5.relationRow5540 at r5540
  unfold Seg5.relationRow5541 at r5541
  unfold Seg5.relationRow5542 at r5542
  unfold Seg5.relationRow5543 at r5543
  unfold Seg5.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 2609 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩
        ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩
        ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩
        ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩ := by
    have hnextx : seg5AccX195 rho = seg5AccX194 rho + rho 5233 := by
      unfold seg5AccX195 seg5AccX194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 44]
      ring
    have hnexty : seg5AccY195 rho = seg5AccY194 rho + rho 5234 := by
      unfold seg5AccY195 seg5AccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 44]
      ring
    have hsum : seg5AccX194 rho + seg5AccY194 rho = rho 5226 := by
      unfold seg5AccX194 seg5AccY194
      linear_combination r5531
    have ha0 : (rho 5224 + rho 5225) * (seg5AccX194 rho + seg5AccY194 rho) = rho 5227 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 5225 * seg5AccX194 rho = rho 5228 := by
      unfold seg5AccX194
      linear_combination r5533
    have ha2 : rho 5224 * seg5AccY194 rho = rho 5229 := by
      unfold seg5AccY194
      linear_combination r5534
    have ha3 : 3021 * rho 5228 * rho 5229 = rho 5230 := by
      linear_combination r5535
    have ha4 : rho 5231 * (1 + rho 5230) = rho 5228 + rho 5229 := by
      linear_combination r5536
    have ha5 : rho 5232 * (1 - rho 5230) = rho 5227 - rho 5228 - rho 5229 := by
      linear_combination r5537
    have haddx :
        rho 5231 * (1 + 3021 * (rho 5225 * seg5AccX194 rho) * (rho 5224 * seg5AccY194 rho)) =
          rho 5225 * seg5AccX194 rho + rho 5224 * seg5AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5232 * (1 - 3021 * (rho 5225 * seg5AccX194 rho) * (rho 5224 * seg5AccY194 rho)) =
          (-1) * (rho 5225 * seg5AccX194 rho) - rho 5224 * seg5AccY194 rho +
            (seg5AccY194 rho - seg5AccX194 rho * (-1)) * (rho 5224 + rho 5225) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5232 * (1 - rho 5230) = rho 5227 - rho 5228 - rho 5229 := ha5
        _ = (-1) * rho 5228 - rho 5229 + (seg5AccY194 rho - seg5AccX194 rho * (-1)) * (rho 5224 + rho 5225) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX195 rho = seg5AccX194 rho - Bool.toZMod bit * (seg5AccX194 rho - rho 5231) := by
      have hd : rho 5233 = Bool.toZMod bit * (rho 5231 - seg5AccX194 rho) := by
        rw [← hbit]
        unfold seg5AccX194
        linear_combination -r5538
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY195 rho = seg5AccY194 rho - Bool.toZMod bit * (seg5AccY194 rho - rho 5232) := by
      have hd : rho 5234 = Bool.toZMod bit * (rho 5232 - seg5AccY194 rho) := by
        rw [← hbit]
        unfold seg5AccY194
        linear_combination -r5539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5224 * rho 5225 = rho 5235 := by linear_combination r5540
    have hd1 : rho 5224 * rho 5224 = rho 5236 := by linear_combination r5541
    have hd2 : rho 5225 * rho 5225 = rho 5237 := by linear_combination r5542
    have hd3 : rho 5238 * (rho 5225 * rho 5225 + rho 5224 * rho 5224 * (-1)) = 2 * (rho 5224 * rho 5225) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 5239 * (2 - (rho 5225 * rho 5225 + rho 5224 * rho 5224 * (-1))) = rho 5225 * rho 5225 - rho 5224 * rho 5224 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX194 rho : Seg5.F), (seg5AccY194 rho : Seg5.F)⟩
      ⟨(rho 5224 : Seg5.F), (rho 5225 : Seg5.F)⟩
      ⟨(rho 5231 : Seg5.F), (rho 5232 : Seg5.F)⟩
      ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩
      ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg5_rows195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5545 rho ∧ Seg5.relationRow5546 rho ∧ Seg5.relationRow5547 rho ∧ Seg5.relationRow5548 rho ∧ Seg5.relationRow5549 rho ∧ Seg5.relationRow5550 rho ∧ Seg5.relationRow5551 rho ∧ Seg5.relationRow5552 rho ∧ Seg5.relationRow5553 rho ∧ Seg5.relationRow5554 rho ∧ Seg5.relationRow5555 rho ∧ Seg5.relationRow5556 rho ∧ Seg5.relationRow5557 rho ∧ Seg5.relationRow5558 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩

theorem seg5_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2610 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩
        ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩
        ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩
        ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩ := seg5_rows195 rho h
  unfold Seg5.relationRow5545 at r5545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545
  unfold Seg5.relationRow5546 at r5546
  unfold Seg5.relationRow5547 at r5547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547
  unfold Seg5.relationRow5548 at r5548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548
  unfold Seg5.relationRow5549 at r5549
  unfold Seg5.relationRow5550 at r5550
  unfold Seg5.relationRow5551 at r5551
  unfold Seg5.relationRow5552 at r5552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552
  unfold Seg5.relationRow5553 at r5553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5553
  unfold Seg5.relationRow5554 at r5554
  unfold Seg5.relationRow5555 at r5555
  unfold Seg5.relationRow5556 at r5556
  unfold Seg5.relationRow5557 at r5557
  unfold Seg5.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 2610 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩
        ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩
        ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩
        ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩ := by
    have hnextx : seg5AccX196 rho = seg5AccX195 rho + rho 5247 := by
      unfold seg5AccX196 seg5AccX195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 45]
      ring
    have hnexty : seg5AccY196 rho = seg5AccY195 rho + rho 5248 := by
      unfold seg5AccY196 seg5AccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 45]
      ring
    have hsum : seg5AccX195 rho + seg5AccY195 rho = rho 5240 := by
      unfold seg5AccX195 seg5AccY195
      linear_combination r5545
    have ha0 : (rho 5238 + rho 5239) * (seg5AccX195 rho + seg5AccY195 rho) = rho 5241 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 5239 * seg5AccX195 rho = rho 5242 := by
      unfold seg5AccX195
      linear_combination r5547
    have ha2 : rho 5238 * seg5AccY195 rho = rho 5243 := by
      unfold seg5AccY195
      linear_combination r5548
    have ha3 : 3021 * rho 5242 * rho 5243 = rho 5244 := by
      linear_combination r5549
    have ha4 : rho 5245 * (1 + rho 5244) = rho 5242 + rho 5243 := by
      linear_combination r5550
    have ha5 : rho 5246 * (1 - rho 5244) = rho 5241 - rho 5242 - rho 5243 := by
      linear_combination r5551
    have haddx :
        rho 5245 * (1 + 3021 * (rho 5239 * seg5AccX195 rho) * (rho 5238 * seg5AccY195 rho)) =
          rho 5239 * seg5AccX195 rho + rho 5238 * seg5AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5246 * (1 - 3021 * (rho 5239 * seg5AccX195 rho) * (rho 5238 * seg5AccY195 rho)) =
          (-1) * (rho 5239 * seg5AccX195 rho) - rho 5238 * seg5AccY195 rho +
            (seg5AccY195 rho - seg5AccX195 rho * (-1)) * (rho 5238 + rho 5239) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5246 * (1 - rho 5244) = rho 5241 - rho 5242 - rho 5243 := ha5
        _ = (-1) * rho 5242 - rho 5243 + (seg5AccY195 rho - seg5AccX195 rho * (-1)) * (rho 5238 + rho 5239) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX196 rho = seg5AccX195 rho - Bool.toZMod bit * (seg5AccX195 rho - rho 5245) := by
      have hd : rho 5247 = Bool.toZMod bit * (rho 5245 - seg5AccX195 rho) := by
        rw [← hbit]
        unfold seg5AccX195
        linear_combination -r5552
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY196 rho = seg5AccY195 rho - Bool.toZMod bit * (seg5AccY195 rho - rho 5246) := by
      have hd : rho 5248 = Bool.toZMod bit * (rho 5246 - seg5AccY195 rho) := by
        rw [← hbit]
        unfold seg5AccY195
        linear_combination -r5553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5238 * rho 5239 = rho 5249 := by linear_combination r5554
    have hd1 : rho 5238 * rho 5238 = rho 5250 := by linear_combination r5555
    have hd2 : rho 5239 * rho 5239 = rho 5251 := by linear_combination r5556
    have hd3 : rho 5252 * (rho 5239 * rho 5239 + rho 5238 * rho 5238 * (-1)) = 2 * (rho 5238 * rho 5239) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 5253 * (2 - (rho 5239 * rho 5239 + rho 5238 * rho 5238 * (-1))) = rho 5239 * rho 5239 - rho 5238 * rho 5238 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX195 rho : Seg5.F), (seg5AccY195 rho : Seg5.F)⟩
      ⟨(rho 5238 : Seg5.F), (rho 5239 : Seg5.F)⟩
      ⟨(rho 5245 : Seg5.F), (rho 5246 : Seg5.F)⟩
      ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩
      ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg5_rows196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5559 rho ∧ Seg5.relationRow5560 rho ∧ Seg5.relationRow5561 rho ∧ Seg5.relationRow5562 rho ∧ Seg5.relationRow5563 rho ∧ Seg5.relationRow5564 rho ∧ Seg5.relationRow5565 rho ∧ Seg5.relationRow5566 rho ∧ Seg5.relationRow5567 rho ∧ Seg5.relationRow5568 rho ∧ Seg5.relationRow5569 rho ∧ Seg5.relationRow5570 rho ∧ Seg5.relationRow5571 rho ∧ Seg5.relationRow5572 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩

theorem seg5_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2611 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩
        ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩
        ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩
        ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩ := by
  obtain ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩ := seg5_rows196 rho h
  unfold Seg5.relationRow5559 at r5559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559
  unfold Seg5.relationRow5560 at r5560
  unfold Seg5.relationRow5561 at r5561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561
  unfold Seg5.relationRow5562 at r5562
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562
  unfold Seg5.relationRow5563 at r5563
  unfold Seg5.relationRow5564 at r5564
  unfold Seg5.relationRow5565 at r5565
  unfold Seg5.relationRow5566 at r5566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5566
  unfold Seg5.relationRow5567 at r5567
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567
  unfold Seg5.relationRow5568 at r5568
  unfold Seg5.relationRow5569 at r5569
  unfold Seg5.relationRow5570 at r5570
  unfold Seg5.relationRow5571 at r5571
  unfold Seg5.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 2611 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩
        ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩
        ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩
        ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩ := by
    have hnextx : seg5AccX197 rho = seg5AccX196 rho + rho 5261 := by
      unfold seg5AccX197 seg5AccX196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 46]
      ring
    have hnexty : seg5AccY197 rho = seg5AccY196 rho + rho 5262 := by
      unfold seg5AccY197 seg5AccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 46]
      ring
    have hsum : seg5AccX196 rho + seg5AccY196 rho = rho 5254 := by
      unfold seg5AccX196 seg5AccY196
      linear_combination r5559
    have ha0 : (rho 5252 + rho 5253) * (seg5AccX196 rho + seg5AccY196 rho) = rho 5255 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 5253 * seg5AccX196 rho = rho 5256 := by
      unfold seg5AccX196
      linear_combination r5561
    have ha2 : rho 5252 * seg5AccY196 rho = rho 5257 := by
      unfold seg5AccY196
      linear_combination r5562
    have ha3 : 3021 * rho 5256 * rho 5257 = rho 5258 := by
      linear_combination r5563
    have ha4 : rho 5259 * (1 + rho 5258) = rho 5256 + rho 5257 := by
      linear_combination r5564
    have ha5 : rho 5260 * (1 - rho 5258) = rho 5255 - rho 5256 - rho 5257 := by
      linear_combination r5565
    have haddx :
        rho 5259 * (1 + 3021 * (rho 5253 * seg5AccX196 rho) * (rho 5252 * seg5AccY196 rho)) =
          rho 5253 * seg5AccX196 rho + rho 5252 * seg5AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5260 * (1 - 3021 * (rho 5253 * seg5AccX196 rho) * (rho 5252 * seg5AccY196 rho)) =
          (-1) * (rho 5253 * seg5AccX196 rho) - rho 5252 * seg5AccY196 rho +
            (seg5AccY196 rho - seg5AccX196 rho * (-1)) * (rho 5252 + rho 5253) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5260 * (1 - rho 5258) = rho 5255 - rho 5256 - rho 5257 := ha5
        _ = (-1) * rho 5256 - rho 5257 + (seg5AccY196 rho - seg5AccX196 rho * (-1)) * (rho 5252 + rho 5253) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX197 rho = seg5AccX196 rho - Bool.toZMod bit * (seg5AccX196 rho - rho 5259) := by
      have hd : rho 5261 = Bool.toZMod bit * (rho 5259 - seg5AccX196 rho) := by
        rw [← hbit]
        unfold seg5AccX196
        linear_combination -r5566
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY197 rho = seg5AccY196 rho - Bool.toZMod bit * (seg5AccY196 rho - rho 5260) := by
      have hd : rho 5262 = Bool.toZMod bit * (rho 5260 - seg5AccY196 rho) := by
        rw [← hbit]
        unfold seg5AccY196
        linear_combination -r5567
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5252 * rho 5253 = rho 5263 := by linear_combination r5568
    have hd1 : rho 5252 * rho 5252 = rho 5264 := by linear_combination r5569
    have hd2 : rho 5253 * rho 5253 = rho 5265 := by linear_combination r5570
    have hd3 : rho 5266 * (rho 5253 * rho 5253 + rho 5252 * rho 5252 * (-1)) = 2 * (rho 5252 * rho 5253) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 5267 * (2 - (rho 5253 * rho 5253 + rho 5252 * rho 5252 * (-1))) = rho 5253 * rho 5253 - rho 5252 * rho 5252 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX196 rho : Seg5.F), (seg5AccY196 rho : Seg5.F)⟩
      ⟨(rho 5252 : Seg5.F), (rho 5253 : Seg5.F)⟩
      ⟨(rho 5259 : Seg5.F), (rho 5260 : Seg5.F)⟩
      ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩
      ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg5_rows197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    Seg5.relationRow5573 rho ∧ Seg5.relationRow5574 rho ∧ Seg5.relationRow5575 rho ∧ Seg5.relationRow5576 rho ∧ Seg5.relationRow5577 rho ∧ Seg5.relationRow5578 rho ∧ Seg5.relationRow5579 rho ∧ Seg5.relationRow5580 rho ∧ Seg5.relationRow5581 rho ∧ Seg5.relationRow5582 rho ∧ Seg5.relationRow5583 rho ∧ Seg5.relationRow5584 rho ∧ Seg5.relationRow5585 rho ∧ Seg5.relationRow5586 rho := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p69,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem seg5_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg5.relation rho) :
    ∀ (bit : Bool), rho 2612 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩
        ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩
        ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩
        ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩ := by
  obtain ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := seg5_rows197 rho h
  unfold Seg5.relationRow5573 at r5573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573
  unfold Seg5.relationRow5574 at r5574
  unfold Seg5.relationRow5575 at r5575
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575
  unfold Seg5.relationRow5576 at r5576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576
  unfold Seg5.relationRow5577 at r5577
  unfold Seg5.relationRow5578 at r5578
  unfold Seg5.relationRow5579 at r5579
  unfold Seg5.relationRow5580 at r5580
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580
  unfold Seg5.relationRow5581 at r5581
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581
  unfold Seg5.relationRow5582 at r5582
  unfold Seg5.relationRow5583 at r5583
  unfold Seg5.relationRow5584 at r5584
  unfold Seg5.relationRow5585 at r5585
  unfold Seg5.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 2612 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩
        ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩
        ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩
        ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩ := by
    have hnextx : seg5AccX198 rho = seg5AccX197 rho + rho 5275 := by
      unfold seg5AccX198 seg5AccX197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4617 14 47]
      ring
    have hnexty : seg5AccY198 rho = seg5AccY197 rho + rho 5276 := by
      unfold seg5AccY198 seg5AccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4618 14 47]
      ring
    have hsum : seg5AccX197 rho + seg5AccY197 rho = rho 5268 := by
      unfold seg5AccX197 seg5AccY197
      linear_combination r5573
    have ha0 : (rho 5266 + rho 5267) * (seg5AccX197 rho + seg5AccY197 rho) = rho 5269 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 5267 * seg5AccX197 rho = rho 5270 := by
      unfold seg5AccX197
      linear_combination r5575
    have ha2 : rho 5266 * seg5AccY197 rho = rho 5271 := by
      unfold seg5AccY197
      linear_combination r5576
    have ha3 : 3021 * rho 5270 * rho 5271 = rho 5272 := by
      linear_combination r5577
    have ha4 : rho 5273 * (1 + rho 5272) = rho 5270 + rho 5271 := by
      linear_combination r5578
    have ha5 : rho 5274 * (1 - rho 5272) = rho 5269 - rho 5270 - rho 5271 := by
      linear_combination r5579
    have haddx :
        rho 5273 * (1 + 3021 * (rho 5267 * seg5AccX197 rho) * (rho 5266 * seg5AccY197 rho)) =
          rho 5267 * seg5AccX197 rho + rho 5266 * seg5AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5274 * (1 - 3021 * (rho 5267 * seg5AccX197 rho) * (rho 5266 * seg5AccY197 rho)) =
          (-1) * (rho 5267 * seg5AccX197 rho) - rho 5266 * seg5AccY197 rho +
            (seg5AccY197 rho - seg5AccX197 rho * (-1)) * (rho 5266 + rho 5267) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5274 * (1 - rho 5272) = rho 5269 - rho 5270 - rho 5271 := ha5
        _ = (-1) * rho 5270 - rho 5271 + (seg5AccY197 rho - seg5AccX197 rho * (-1)) * (rho 5266 + rho 5267) := by
          rw [← ha0]
          ring
    have hselx : seg5AccX198 rho = seg5AccX197 rho - Bool.toZMod bit * (seg5AccX197 rho - rho 5273) := by
      have hd : rho 5275 = Bool.toZMod bit * (rho 5273 - seg5AccX197 rho) := by
        rw [← hbit]
        unfold seg5AccX197
        linear_combination -r5580
      rw [hnextx]
      linear_combination hd
    have hsely : seg5AccY198 rho = seg5AccY197 rho - Bool.toZMod bit * (seg5AccY197 rho - rho 5274) := by
      have hd : rho 5276 = Bool.toZMod bit * (rho 5274 - seg5AccY197 rho) := by
        rw [← hbit]
        unfold seg5AccY197
        linear_combination -r5581
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5266 * rho 5267 = rho 5277 := by linear_combination r5582
    have hd1 : rho 5266 * rho 5266 = rho 5278 := by linear_combination r5583
    have hd2 : rho 5267 * rho 5267 = rho 5279 := by linear_combination r5584
    have hd3 : rho 5280 * (rho 5267 * rho 5267 + rho 5266 * rho 5266 * (-1)) = 2 * (rho 5266 * rho 5267) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 5281 * (2 - (rho 5267 * rho 5267 + rho 5266 * rho 5266 * (-1))) = rho 5267 * rho 5267 - rho 5266 * rho 5266 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg5AccX197 rho : Seg5.F), (seg5AccY197 rho : Seg5.F)⟩
      ⟨(rho 5266 : Seg5.F), (rho 5267 : Seg5.F)⟩
      ⟨(rho 5273 : Seg5.F), (rho 5274 : Seg5.F)⟩
      ⟨(seg5AccX198 rho : Seg5.F), (seg5AccY198 rho : Seg5.F)⟩
      ⟨(rho 5280 : Seg5.F), (rho 5281 : Seg5.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg5_hstep_c17 (rho : Nat -> Seg5.F) (h : Seg5.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (2415 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 187 ≤ i → i < 198 →
      EdwardsBridge.onCurve (seg5LadderAccState rho i) →
      EdwardsBridge.onCurve (seg5LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg5LadderAccState rho i) (seg5LadderCurState rho i)
        (seg5LadderAccState rho (i + 1)) (seg5LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg5_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg5_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg5_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg5_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg5_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
  · exact seg5_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg5_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg5_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg5_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg5_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg5_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
