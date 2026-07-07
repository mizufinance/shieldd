import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg45_rows187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5433 rho ∧ Seg45.relationRow5434 rho ∧ Seg45.relationRow5435 rho ∧ Seg45.relationRow5436 rho ∧ Seg45.relationRow5437 rho ∧ Seg45.relationRow5438 rho ∧ Seg45.relationRow5439 rho ∧ Seg45.relationRow5440 rho ∧ Seg45.relationRow5441 rho ∧ Seg45.relationRow5442 rho ∧ Seg45.relationRow5443 rho ∧ Seg45.relationRow5444 rho ∧ Seg45.relationRow5445 rho ∧ Seg45.relationRow5446 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩

theorem seg45_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩ := by
  obtain ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩ := seg45_rows187 rho h
  unfold Seg45.relationRow5433 at r5433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5433
  unfold Seg45.relationRow5434 at r5434
  unfold Seg45.relationRow5435 at r5435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435
  unfold Seg45.relationRow5436 at r5436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5436
  unfold Seg45.relationRow5437 at r5437
  unfold Seg45.relationRow5438 at r5438
  unfold Seg45.relationRow5439 at r5439
  unfold Seg45.relationRow5440 at r5440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5440
  unfold Seg45.relationRow5441 at r5441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441
  unfold Seg45.relationRow5442 at r5442
  unfold Seg45.relationRow5443 at r5443
  unfold Seg45.relationRow5444 at r5444
  unfold Seg45.relationRow5445 at r5445
  unfold Seg45.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 41135 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
        ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩ := by
    have hnextx : seg45AccX188 rho = seg45AccX187 rho + rho 43668 := by
      unfold seg45AccX188 seg45AccX187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 37]
      ring
    have hnexty : seg45AccY188 rho = seg45AccY187 rho + rho 43669 := by
      unfold seg45AccY188 seg45AccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 37]
      ring
    have hsum : seg45AccX187 rho + seg45AccY187 rho = rho 43661 := by
      unfold seg45AccX187 seg45AccY187
      linear_combination r5433
    have ha0 : (rho 43659 + rho 43660) * (seg45AccX187 rho + seg45AccY187 rho) = rho 43662 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 43660 * seg45AccX187 rho = rho 43663 := by
      unfold seg45AccX187
      linear_combination r5435
    have ha2 : rho 43659 * seg45AccY187 rho = rho 43664 := by
      unfold seg45AccY187
      linear_combination r5436
    have ha3 : 3021 * rho 43663 * rho 43664 = rho 43665 := by
      linear_combination r5437
    have ha4 : rho 43666 * (1 + rho 43665) = rho 43663 + rho 43664 := by
      linear_combination r5438
    have ha5 : rho 43667 * (1 - rho 43665) = rho 43662 - rho 43663 - rho 43664 := by
      linear_combination r5439
    have haddx :
        rho 43666 * (1 + 3021 * (rho 43660 * seg45AccX187 rho) * (rho 43659 * seg45AccY187 rho)) =
          rho 43660 * seg45AccX187 rho + rho 43659 * seg45AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43667 * (1 - 3021 * (rho 43660 * seg45AccX187 rho) * (rho 43659 * seg45AccY187 rho)) =
          (-1) * (rho 43660 * seg45AccX187 rho) - rho 43659 * seg45AccY187 rho +
            (seg45AccY187 rho - seg45AccX187 rho * (-1)) * (rho 43659 + rho 43660) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43667 * (1 - rho 43665) = rho 43662 - rho 43663 - rho 43664 := ha5
        _ = (-1) * rho 43663 - rho 43664 + (seg45AccY187 rho - seg45AccX187 rho * (-1)) * (rho 43659 + rho 43660) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX188 rho = seg45AccX187 rho - Bool.toZMod bit * (seg45AccX187 rho - rho 43666) := by
      have hd : rho 43668 = Bool.toZMod bit * (rho 43666 - seg45AccX187 rho) := by
        rw [← hbit]
        unfold seg45AccX187
        linear_combination -r5440
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY188 rho = seg45AccY187 rho - Bool.toZMod bit * (seg45AccY187 rho - rho 43667) := by
      have hd : rho 43669 = Bool.toZMod bit * (rho 43667 - seg45AccY187 rho) := by
        rw [← hbit]
        unfold seg45AccY187
        linear_combination -r5441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43659 * rho 43660 = rho 43670 := by linear_combination r5442
    have hd1 : rho 43659 * rho 43659 = rho 43671 := by linear_combination r5443
    have hd2 : rho 43660 * rho 43660 = rho 43672 := by linear_combination r5444
    have hd3 : rho 43673 * (rho 43660 * rho 43660 + rho 43659 * rho 43659 * (-1)) = 2 * (rho 43659 * rho 43660) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 43674 * (2 - (rho 43660 * rho 43660 + rho 43659 * rho 43659 * (-1))) = rho 43660 * rho 43660 - rho 43659 * rho 43659 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX187 rho : Seg45.F), (seg45AccY187 rho : Seg45.F)⟩
      ⟨(rho 43659 : Seg45.F), (rho 43660 : Seg45.F)⟩
      ⟨(rho 43666 : Seg45.F), (rho 43667 : Seg45.F)⟩
      ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
      ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg45_rows188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5447 rho ∧ Seg45.relationRow5448 rho ∧ Seg45.relationRow5449 rho ∧ Seg45.relationRow5450 rho ∧ Seg45.relationRow5451 rho ∧ Seg45.relationRow5452 rho ∧ Seg45.relationRow5453 rho ∧ Seg45.relationRow5454 rho ∧ Seg45.relationRow5455 rho ∧ Seg45.relationRow5456 rho ∧ Seg45.relationRow5457 rho ∧ Seg45.relationRow5458 rho ∧ Seg45.relationRow5459 rho ∧ Seg45.relationRow5460 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩

theorem seg45_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41136 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩ := by
  obtain ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩ := seg45_rows188 rho h
  unfold Seg45.relationRow5447 at r5447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447
  unfold Seg45.relationRow5448 at r5448
  unfold Seg45.relationRow5449 at r5449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5449
  unfold Seg45.relationRow5450 at r5450
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5450
  unfold Seg45.relationRow5451 at r5451
  unfold Seg45.relationRow5452 at r5452
  unfold Seg45.relationRow5453 at r5453
  unfold Seg45.relationRow5454 at r5454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454
  unfold Seg45.relationRow5455 at r5455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455
  unfold Seg45.relationRow5456 at r5456
  unfold Seg45.relationRow5457 at r5457
  unfold Seg45.relationRow5458 at r5458
  unfold Seg45.relationRow5459 at r5459
  unfold Seg45.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 41136 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
        ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩ := by
    have hnextx : seg45AccX189 rho = seg45AccX188 rho + rho 43682 := by
      unfold seg45AccX189 seg45AccX188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 38]
      ring
    have hnexty : seg45AccY189 rho = seg45AccY188 rho + rho 43683 := by
      unfold seg45AccY189 seg45AccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 38]
      ring
    have hsum : seg45AccX188 rho + seg45AccY188 rho = rho 43675 := by
      unfold seg45AccX188 seg45AccY188
      linear_combination r5447
    have ha0 : (rho 43673 + rho 43674) * (seg45AccX188 rho + seg45AccY188 rho) = rho 43676 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 43674 * seg45AccX188 rho = rho 43677 := by
      unfold seg45AccX188
      linear_combination r5449
    have ha2 : rho 43673 * seg45AccY188 rho = rho 43678 := by
      unfold seg45AccY188
      linear_combination r5450
    have ha3 : 3021 * rho 43677 * rho 43678 = rho 43679 := by
      linear_combination r5451
    have ha4 : rho 43680 * (1 + rho 43679) = rho 43677 + rho 43678 := by
      linear_combination r5452
    have ha5 : rho 43681 * (1 - rho 43679) = rho 43676 - rho 43677 - rho 43678 := by
      linear_combination r5453
    have haddx :
        rho 43680 * (1 + 3021 * (rho 43674 * seg45AccX188 rho) * (rho 43673 * seg45AccY188 rho)) =
          rho 43674 * seg45AccX188 rho + rho 43673 * seg45AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43681 * (1 - 3021 * (rho 43674 * seg45AccX188 rho) * (rho 43673 * seg45AccY188 rho)) =
          (-1) * (rho 43674 * seg45AccX188 rho) - rho 43673 * seg45AccY188 rho +
            (seg45AccY188 rho - seg45AccX188 rho * (-1)) * (rho 43673 + rho 43674) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43681 * (1 - rho 43679) = rho 43676 - rho 43677 - rho 43678 := ha5
        _ = (-1) * rho 43677 - rho 43678 + (seg45AccY188 rho - seg45AccX188 rho * (-1)) * (rho 43673 + rho 43674) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX189 rho = seg45AccX188 rho - Bool.toZMod bit * (seg45AccX188 rho - rho 43680) := by
      have hd : rho 43682 = Bool.toZMod bit * (rho 43680 - seg45AccX188 rho) := by
        rw [← hbit]
        unfold seg45AccX188
        linear_combination -r5454
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY189 rho = seg45AccY188 rho - Bool.toZMod bit * (seg45AccY188 rho - rho 43681) := by
      have hd : rho 43683 = Bool.toZMod bit * (rho 43681 - seg45AccY188 rho) := by
        rw [← hbit]
        unfold seg45AccY188
        linear_combination -r5455
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43673 * rho 43674 = rho 43684 := by linear_combination r5456
    have hd1 : rho 43673 * rho 43673 = rho 43685 := by linear_combination r5457
    have hd2 : rho 43674 * rho 43674 = rho 43686 := by linear_combination r5458
    have hd3 : rho 43687 * (rho 43674 * rho 43674 + rho 43673 * rho 43673 * (-1)) = 2 * (rho 43673 * rho 43674) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 43688 * (2 - (rho 43674 * rho 43674 + rho 43673 * rho 43673 * (-1))) = rho 43674 * rho 43674 - rho 43673 * rho 43673 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX188 rho : Seg45.F), (seg45AccY188 rho : Seg45.F)⟩
      ⟨(rho 43673 : Seg45.F), (rho 43674 : Seg45.F)⟩
      ⟨(rho 43680 : Seg45.F), (rho 43681 : Seg45.F)⟩
      ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
      ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg45_rows189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5461 rho ∧ Seg45.relationRow5462 rho ∧ Seg45.relationRow5463 rho ∧ Seg45.relationRow5464 rho ∧ Seg45.relationRow5465 rho ∧ Seg45.relationRow5466 rho ∧ Seg45.relationRow5467 rho ∧ Seg45.relationRow5468 rho ∧ Seg45.relationRow5469 rho ∧ Seg45.relationRow5470 rho ∧ Seg45.relationRow5471 rho ∧ Seg45.relationRow5472 rho ∧ Seg45.relationRow5473 rho ∧ Seg45.relationRow5474 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩

theorem seg45_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41137 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩ := by
  obtain ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩ := seg45_rows189 rho h
  unfold Seg45.relationRow5461 at r5461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461
  unfold Seg45.relationRow5462 at r5462
  unfold Seg45.relationRow5463 at r5463
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5463
  unfold Seg45.relationRow5464 at r5464
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5464
  unfold Seg45.relationRow5465 at r5465
  unfold Seg45.relationRow5466 at r5466
  unfold Seg45.relationRow5467 at r5467
  unfold Seg45.relationRow5468 at r5468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468
  unfold Seg45.relationRow5469 at r5469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469
  unfold Seg45.relationRow5470 at r5470
  unfold Seg45.relationRow5471 at r5471
  unfold Seg45.relationRow5472 at r5472
  unfold Seg45.relationRow5473 at r5473
  unfold Seg45.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 41137 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
        ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩ := by
    have hnextx : seg45AccX190 rho = seg45AccX189 rho + rho 43696 := by
      unfold seg45AccX190 seg45AccX189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 39]
      ring
    have hnexty : seg45AccY190 rho = seg45AccY189 rho + rho 43697 := by
      unfold seg45AccY190 seg45AccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 39]
      ring
    have hsum : seg45AccX189 rho + seg45AccY189 rho = rho 43689 := by
      unfold seg45AccX189 seg45AccY189
      linear_combination r5461
    have ha0 : (rho 43687 + rho 43688) * (seg45AccX189 rho + seg45AccY189 rho) = rho 43690 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 43688 * seg45AccX189 rho = rho 43691 := by
      unfold seg45AccX189
      linear_combination r5463
    have ha2 : rho 43687 * seg45AccY189 rho = rho 43692 := by
      unfold seg45AccY189
      linear_combination r5464
    have ha3 : 3021 * rho 43691 * rho 43692 = rho 43693 := by
      linear_combination r5465
    have ha4 : rho 43694 * (1 + rho 43693) = rho 43691 + rho 43692 := by
      linear_combination r5466
    have ha5 : rho 43695 * (1 - rho 43693) = rho 43690 - rho 43691 - rho 43692 := by
      linear_combination r5467
    have haddx :
        rho 43694 * (1 + 3021 * (rho 43688 * seg45AccX189 rho) * (rho 43687 * seg45AccY189 rho)) =
          rho 43688 * seg45AccX189 rho + rho 43687 * seg45AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43695 * (1 - 3021 * (rho 43688 * seg45AccX189 rho) * (rho 43687 * seg45AccY189 rho)) =
          (-1) * (rho 43688 * seg45AccX189 rho) - rho 43687 * seg45AccY189 rho +
            (seg45AccY189 rho - seg45AccX189 rho * (-1)) * (rho 43687 + rho 43688) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43695 * (1 - rho 43693) = rho 43690 - rho 43691 - rho 43692 := ha5
        _ = (-1) * rho 43691 - rho 43692 + (seg45AccY189 rho - seg45AccX189 rho * (-1)) * (rho 43687 + rho 43688) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX190 rho = seg45AccX189 rho - Bool.toZMod bit * (seg45AccX189 rho - rho 43694) := by
      have hd : rho 43696 = Bool.toZMod bit * (rho 43694 - seg45AccX189 rho) := by
        rw [← hbit]
        unfold seg45AccX189
        linear_combination -r5468
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY190 rho = seg45AccY189 rho - Bool.toZMod bit * (seg45AccY189 rho - rho 43695) := by
      have hd : rho 43697 = Bool.toZMod bit * (rho 43695 - seg45AccY189 rho) := by
        rw [← hbit]
        unfold seg45AccY189
        linear_combination -r5469
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43687 * rho 43688 = rho 43698 := by linear_combination r5470
    have hd1 : rho 43687 * rho 43687 = rho 43699 := by linear_combination r5471
    have hd2 : rho 43688 * rho 43688 = rho 43700 := by linear_combination r5472
    have hd3 : rho 43701 * (rho 43688 * rho 43688 + rho 43687 * rho 43687 * (-1)) = 2 * (rho 43687 * rho 43688) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 43702 * (2 - (rho 43688 * rho 43688 + rho 43687 * rho 43687 * (-1))) = rho 43688 * rho 43688 - rho 43687 * rho 43687 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX189 rho : Seg45.F), (seg45AccY189 rho : Seg45.F)⟩
      ⟨(rho 43687 : Seg45.F), (rho 43688 : Seg45.F)⟩
      ⟨(rho 43694 : Seg45.F), (rho 43695 : Seg45.F)⟩
      ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
      ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg45_rows190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5475 rho ∧ Seg45.relationRow5476 rho ∧ Seg45.relationRow5477 rho ∧ Seg45.relationRow5478 rho ∧ Seg45.relationRow5479 rho ∧ Seg45.relationRow5480 rho ∧ Seg45.relationRow5481 rho ∧ Seg45.relationRow5482 rho ∧ Seg45.relationRow5483 rho ∧ Seg45.relationRow5484 rho ∧ Seg45.relationRow5485 rho ∧ Seg45.relationRow5486 rho ∧ Seg45.relationRow5487 rho ∧ Seg45.relationRow5488 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩

theorem seg45_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41138 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩ := by
  obtain ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩ := seg45_rows190 rho h
  unfold Seg45.relationRow5475 at r5475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5475
  unfold Seg45.relationRow5476 at r5476
  unfold Seg45.relationRow5477 at r5477
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5477
  unfold Seg45.relationRow5478 at r5478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5478
  unfold Seg45.relationRow5479 at r5479
  unfold Seg45.relationRow5480 at r5480
  unfold Seg45.relationRow5481 at r5481
  unfold Seg45.relationRow5482 at r5482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482
  unfold Seg45.relationRow5483 at r5483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5483
  unfold Seg45.relationRow5484 at r5484
  unfold Seg45.relationRow5485 at r5485
  unfold Seg45.relationRow5486 at r5486
  unfold Seg45.relationRow5487 at r5487
  unfold Seg45.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 41138 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
        ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩ := by
    have hnextx : seg45AccX191 rho = seg45AccX190 rho + rho 43710 := by
      unfold seg45AccX191 seg45AccX190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 40]
      ring
    have hnexty : seg45AccY191 rho = seg45AccY190 rho + rho 43711 := by
      unfold seg45AccY191 seg45AccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 40]
      ring
    have hsum : seg45AccX190 rho + seg45AccY190 rho = rho 43703 := by
      unfold seg45AccX190 seg45AccY190
      linear_combination r5475
    have ha0 : (rho 43701 + rho 43702) * (seg45AccX190 rho + seg45AccY190 rho) = rho 43704 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 43702 * seg45AccX190 rho = rho 43705 := by
      unfold seg45AccX190
      linear_combination r5477
    have ha2 : rho 43701 * seg45AccY190 rho = rho 43706 := by
      unfold seg45AccY190
      linear_combination r5478
    have ha3 : 3021 * rho 43705 * rho 43706 = rho 43707 := by
      linear_combination r5479
    have ha4 : rho 43708 * (1 + rho 43707) = rho 43705 + rho 43706 := by
      linear_combination r5480
    have ha5 : rho 43709 * (1 - rho 43707) = rho 43704 - rho 43705 - rho 43706 := by
      linear_combination r5481
    have haddx :
        rho 43708 * (1 + 3021 * (rho 43702 * seg45AccX190 rho) * (rho 43701 * seg45AccY190 rho)) =
          rho 43702 * seg45AccX190 rho + rho 43701 * seg45AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43709 * (1 - 3021 * (rho 43702 * seg45AccX190 rho) * (rho 43701 * seg45AccY190 rho)) =
          (-1) * (rho 43702 * seg45AccX190 rho) - rho 43701 * seg45AccY190 rho +
            (seg45AccY190 rho - seg45AccX190 rho * (-1)) * (rho 43701 + rho 43702) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43709 * (1 - rho 43707) = rho 43704 - rho 43705 - rho 43706 := ha5
        _ = (-1) * rho 43705 - rho 43706 + (seg45AccY190 rho - seg45AccX190 rho * (-1)) * (rho 43701 + rho 43702) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX191 rho = seg45AccX190 rho - Bool.toZMod bit * (seg45AccX190 rho - rho 43708) := by
      have hd : rho 43710 = Bool.toZMod bit * (rho 43708 - seg45AccX190 rho) := by
        rw [← hbit]
        unfold seg45AccX190
        linear_combination -r5482
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY191 rho = seg45AccY190 rho - Bool.toZMod bit * (seg45AccY190 rho - rho 43709) := by
      have hd : rho 43711 = Bool.toZMod bit * (rho 43709 - seg45AccY190 rho) := by
        rw [← hbit]
        unfold seg45AccY190
        linear_combination -r5483
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43701 * rho 43702 = rho 43712 := by linear_combination r5484
    have hd1 : rho 43701 * rho 43701 = rho 43713 := by linear_combination r5485
    have hd2 : rho 43702 * rho 43702 = rho 43714 := by linear_combination r5486
    have hd3 : rho 43715 * (rho 43702 * rho 43702 + rho 43701 * rho 43701 * (-1)) = 2 * (rho 43701 * rho 43702) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 43716 * (2 - (rho 43702 * rho 43702 + rho 43701 * rho 43701 * (-1))) = rho 43702 * rho 43702 - rho 43701 * rho 43701 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX190 rho : Seg45.F), (seg45AccY190 rho : Seg45.F)⟩
      ⟨(rho 43701 : Seg45.F), (rho 43702 : Seg45.F)⟩
      ⟨(rho 43708 : Seg45.F), (rho 43709 : Seg45.F)⟩
      ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
      ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg45_rows191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5489 rho ∧ Seg45.relationRow5490 rho ∧ Seg45.relationRow5491 rho ∧ Seg45.relationRow5492 rho ∧ Seg45.relationRow5493 rho ∧ Seg45.relationRow5494 rho ∧ Seg45.relationRow5495 rho ∧ Seg45.relationRow5496 rho ∧ Seg45.relationRow5497 rho ∧ Seg45.relationRow5498 rho ∧ Seg45.relationRow5499 rho ∧ Seg45.relationRow5500 rho ∧ Seg45.relationRow5501 rho ∧ Seg45.relationRow5502 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩

theorem seg45_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41139 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩ := by
  obtain ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩ := seg45_rows191 rho h
  unfold Seg45.relationRow5489 at r5489
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5489
  unfold Seg45.relationRow5490 at r5490
  unfold Seg45.relationRow5491 at r5491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5491
  unfold Seg45.relationRow5492 at r5492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5492
  unfold Seg45.relationRow5493 at r5493
  unfold Seg45.relationRow5494 at r5494
  unfold Seg45.relationRow5495 at r5495
  unfold Seg45.relationRow5496 at r5496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5496
  unfold Seg45.relationRow5497 at r5497
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5497
  unfold Seg45.relationRow5498 at r5498
  unfold Seg45.relationRow5499 at r5499
  unfold Seg45.relationRow5500 at r5500
  unfold Seg45.relationRow5501 at r5501
  unfold Seg45.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 41139 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
        ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩ := by
    have hnextx : seg45AccX192 rho = seg45AccX191 rho + rho 43724 := by
      unfold seg45AccX192 seg45AccX191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 41]
      ring
    have hnexty : seg45AccY192 rho = seg45AccY191 rho + rho 43725 := by
      unfold seg45AccY192 seg45AccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 41]
      ring
    have hsum : seg45AccX191 rho + seg45AccY191 rho = rho 43717 := by
      unfold seg45AccX191 seg45AccY191
      linear_combination r5489
    have ha0 : (rho 43715 + rho 43716) * (seg45AccX191 rho + seg45AccY191 rho) = rho 43718 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 43716 * seg45AccX191 rho = rho 43719 := by
      unfold seg45AccX191
      linear_combination r5491
    have ha2 : rho 43715 * seg45AccY191 rho = rho 43720 := by
      unfold seg45AccY191
      linear_combination r5492
    have ha3 : 3021 * rho 43719 * rho 43720 = rho 43721 := by
      linear_combination r5493
    have ha4 : rho 43722 * (1 + rho 43721) = rho 43719 + rho 43720 := by
      linear_combination r5494
    have ha5 : rho 43723 * (1 - rho 43721) = rho 43718 - rho 43719 - rho 43720 := by
      linear_combination r5495
    have haddx :
        rho 43722 * (1 + 3021 * (rho 43716 * seg45AccX191 rho) * (rho 43715 * seg45AccY191 rho)) =
          rho 43716 * seg45AccX191 rho + rho 43715 * seg45AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43723 * (1 - 3021 * (rho 43716 * seg45AccX191 rho) * (rho 43715 * seg45AccY191 rho)) =
          (-1) * (rho 43716 * seg45AccX191 rho) - rho 43715 * seg45AccY191 rho +
            (seg45AccY191 rho - seg45AccX191 rho * (-1)) * (rho 43715 + rho 43716) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43723 * (1 - rho 43721) = rho 43718 - rho 43719 - rho 43720 := ha5
        _ = (-1) * rho 43719 - rho 43720 + (seg45AccY191 rho - seg45AccX191 rho * (-1)) * (rho 43715 + rho 43716) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX192 rho = seg45AccX191 rho - Bool.toZMod bit * (seg45AccX191 rho - rho 43722) := by
      have hd : rho 43724 = Bool.toZMod bit * (rho 43722 - seg45AccX191 rho) := by
        rw [← hbit]
        unfold seg45AccX191
        linear_combination -r5496
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY192 rho = seg45AccY191 rho - Bool.toZMod bit * (seg45AccY191 rho - rho 43723) := by
      have hd : rho 43725 = Bool.toZMod bit * (rho 43723 - seg45AccY191 rho) := by
        rw [← hbit]
        unfold seg45AccY191
        linear_combination -r5497
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43715 * rho 43716 = rho 43726 := by linear_combination r5498
    have hd1 : rho 43715 * rho 43715 = rho 43727 := by linear_combination r5499
    have hd2 : rho 43716 * rho 43716 = rho 43728 := by linear_combination r5500
    have hd3 : rho 43729 * (rho 43716 * rho 43716 + rho 43715 * rho 43715 * (-1)) = 2 * (rho 43715 * rho 43716) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 43730 * (2 - (rho 43716 * rho 43716 + rho 43715 * rho 43715 * (-1))) = rho 43716 * rho 43716 - rho 43715 * rho 43715 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX191 rho : Seg45.F), (seg45AccY191 rho : Seg45.F)⟩
      ⟨(rho 43715 : Seg45.F), (rho 43716 : Seg45.F)⟩
      ⟨(rho 43722 : Seg45.F), (rho 43723 : Seg45.F)⟩
      ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
      ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg45_rows192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5503 rho ∧ Seg45.relationRow5504 rho ∧ Seg45.relationRow5505 rho ∧ Seg45.relationRow5506 rho ∧ Seg45.relationRow5507 rho ∧ Seg45.relationRow5508 rho ∧ Seg45.relationRow5509 rho ∧ Seg45.relationRow5510 rho ∧ Seg45.relationRow5511 rho ∧ Seg45.relationRow5512 rho ∧ Seg45.relationRow5513 rho ∧ Seg45.relationRow5514 rho ∧ Seg45.relationRow5515 rho ∧ Seg45.relationRow5516 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  exact ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩

theorem seg45_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41140 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩ := by
  obtain ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩ := seg45_rows192 rho h
  unfold Seg45.relationRow5503 at r5503
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503
  unfold Seg45.relationRow5504 at r5504
  unfold Seg45.relationRow5505 at r5505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5505
  unfold Seg45.relationRow5506 at r5506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506
  unfold Seg45.relationRow5507 at r5507
  unfold Seg45.relationRow5508 at r5508
  unfold Seg45.relationRow5509 at r5509
  unfold Seg45.relationRow5510 at r5510
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510
  unfold Seg45.relationRow5511 at r5511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511
  unfold Seg45.relationRow5512 at r5512
  unfold Seg45.relationRow5513 at r5513
  unfold Seg45.relationRow5514 at r5514
  unfold Seg45.relationRow5515 at r5515
  unfold Seg45.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 41140 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
        ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩ := by
    have hnextx : seg45AccX193 rho = seg45AccX192 rho + rho 43738 := by
      unfold seg45AccX193 seg45AccX192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 42]
      ring
    have hnexty : seg45AccY193 rho = seg45AccY192 rho + rho 43739 := by
      unfold seg45AccY193 seg45AccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 42]
      ring
    have hsum : seg45AccX192 rho + seg45AccY192 rho = rho 43731 := by
      unfold seg45AccX192 seg45AccY192
      linear_combination r5503
    have ha0 : (rho 43729 + rho 43730) * (seg45AccX192 rho + seg45AccY192 rho) = rho 43732 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 43730 * seg45AccX192 rho = rho 43733 := by
      unfold seg45AccX192
      linear_combination r5505
    have ha2 : rho 43729 * seg45AccY192 rho = rho 43734 := by
      unfold seg45AccY192
      linear_combination r5506
    have ha3 : 3021 * rho 43733 * rho 43734 = rho 43735 := by
      linear_combination r5507
    have ha4 : rho 43736 * (1 + rho 43735) = rho 43733 + rho 43734 := by
      linear_combination r5508
    have ha5 : rho 43737 * (1 - rho 43735) = rho 43732 - rho 43733 - rho 43734 := by
      linear_combination r5509
    have haddx :
        rho 43736 * (1 + 3021 * (rho 43730 * seg45AccX192 rho) * (rho 43729 * seg45AccY192 rho)) =
          rho 43730 * seg45AccX192 rho + rho 43729 * seg45AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43737 * (1 - 3021 * (rho 43730 * seg45AccX192 rho) * (rho 43729 * seg45AccY192 rho)) =
          (-1) * (rho 43730 * seg45AccX192 rho) - rho 43729 * seg45AccY192 rho +
            (seg45AccY192 rho - seg45AccX192 rho * (-1)) * (rho 43729 + rho 43730) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43737 * (1 - rho 43735) = rho 43732 - rho 43733 - rho 43734 := ha5
        _ = (-1) * rho 43733 - rho 43734 + (seg45AccY192 rho - seg45AccX192 rho * (-1)) * (rho 43729 + rho 43730) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX193 rho = seg45AccX192 rho - Bool.toZMod bit * (seg45AccX192 rho - rho 43736) := by
      have hd : rho 43738 = Bool.toZMod bit * (rho 43736 - seg45AccX192 rho) := by
        rw [← hbit]
        unfold seg45AccX192
        linear_combination -r5510
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY193 rho = seg45AccY192 rho - Bool.toZMod bit * (seg45AccY192 rho - rho 43737) := by
      have hd : rho 43739 = Bool.toZMod bit * (rho 43737 - seg45AccY192 rho) := by
        rw [← hbit]
        unfold seg45AccY192
        linear_combination -r5511
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43729 * rho 43730 = rho 43740 := by linear_combination r5512
    have hd1 : rho 43729 * rho 43729 = rho 43741 := by linear_combination r5513
    have hd2 : rho 43730 * rho 43730 = rho 43742 := by linear_combination r5514
    have hd3 : rho 43743 * (rho 43730 * rho 43730 + rho 43729 * rho 43729 * (-1)) = 2 * (rho 43729 * rho 43730) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 43744 * (2 - (rho 43730 * rho 43730 + rho 43729 * rho 43729 * (-1))) = rho 43730 * rho 43730 - rho 43729 * rho 43729 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX192 rho : Seg45.F), (seg45AccY192 rho : Seg45.F)⟩
      ⟨(rho 43729 : Seg45.F), (rho 43730 : Seg45.F)⟩
      ⟨(rho 43736 : Seg45.F), (rho 43737 : Seg45.F)⟩
      ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
      ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg45_rows193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5517 rho ∧ Seg45.relationRow5518 rho ∧ Seg45.relationRow5519 rho ∧ Seg45.relationRow5520 rho ∧ Seg45.relationRow5521 rho ∧ Seg45.relationRow5522 rho ∧ Seg45.relationRow5523 rho ∧ Seg45.relationRow5524 rho ∧ Seg45.relationRow5525 rho ∧ Seg45.relationRow5526 rho ∧ Seg45.relationRow5527 rho ∧ Seg45.relationRow5528 rho ∧ Seg45.relationRow5529 rho ∧ Seg45.relationRow5530 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩

theorem seg45_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41141 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩ := by
  obtain ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩ := seg45_rows193 rho h
  unfold Seg45.relationRow5517 at r5517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5517
  unfold Seg45.relationRow5518 at r5518
  unfold Seg45.relationRow5519 at r5519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519
  unfold Seg45.relationRow5520 at r5520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520
  unfold Seg45.relationRow5521 at r5521
  unfold Seg45.relationRow5522 at r5522
  unfold Seg45.relationRow5523 at r5523
  unfold Seg45.relationRow5524 at r5524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524
  unfold Seg45.relationRow5525 at r5525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525
  unfold Seg45.relationRow5526 at r5526
  unfold Seg45.relationRow5527 at r5527
  unfold Seg45.relationRow5528 at r5528
  unfold Seg45.relationRow5529 at r5529
  unfold Seg45.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 41141 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
        ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩ := by
    have hnextx : seg45AccX194 rho = seg45AccX193 rho + rho 43752 := by
      unfold seg45AccX194 seg45AccX193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 43]
      ring
    have hnexty : seg45AccY194 rho = seg45AccY193 rho + rho 43753 := by
      unfold seg45AccY194 seg45AccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 43]
      ring
    have hsum : seg45AccX193 rho + seg45AccY193 rho = rho 43745 := by
      unfold seg45AccX193 seg45AccY193
      linear_combination r5517
    have ha0 : (rho 43743 + rho 43744) * (seg45AccX193 rho + seg45AccY193 rho) = rho 43746 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 43744 * seg45AccX193 rho = rho 43747 := by
      unfold seg45AccX193
      linear_combination r5519
    have ha2 : rho 43743 * seg45AccY193 rho = rho 43748 := by
      unfold seg45AccY193
      linear_combination r5520
    have ha3 : 3021 * rho 43747 * rho 43748 = rho 43749 := by
      linear_combination r5521
    have ha4 : rho 43750 * (1 + rho 43749) = rho 43747 + rho 43748 := by
      linear_combination r5522
    have ha5 : rho 43751 * (1 - rho 43749) = rho 43746 - rho 43747 - rho 43748 := by
      linear_combination r5523
    have haddx :
        rho 43750 * (1 + 3021 * (rho 43744 * seg45AccX193 rho) * (rho 43743 * seg45AccY193 rho)) =
          rho 43744 * seg45AccX193 rho + rho 43743 * seg45AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43751 * (1 - 3021 * (rho 43744 * seg45AccX193 rho) * (rho 43743 * seg45AccY193 rho)) =
          (-1) * (rho 43744 * seg45AccX193 rho) - rho 43743 * seg45AccY193 rho +
            (seg45AccY193 rho - seg45AccX193 rho * (-1)) * (rho 43743 + rho 43744) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43751 * (1 - rho 43749) = rho 43746 - rho 43747 - rho 43748 := ha5
        _ = (-1) * rho 43747 - rho 43748 + (seg45AccY193 rho - seg45AccX193 rho * (-1)) * (rho 43743 + rho 43744) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX194 rho = seg45AccX193 rho - Bool.toZMod bit * (seg45AccX193 rho - rho 43750) := by
      have hd : rho 43752 = Bool.toZMod bit * (rho 43750 - seg45AccX193 rho) := by
        rw [← hbit]
        unfold seg45AccX193
        linear_combination -r5524
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY194 rho = seg45AccY193 rho - Bool.toZMod bit * (seg45AccY193 rho - rho 43751) := by
      have hd : rho 43753 = Bool.toZMod bit * (rho 43751 - seg45AccY193 rho) := by
        rw [← hbit]
        unfold seg45AccY193
        linear_combination -r5525
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43743 * rho 43744 = rho 43754 := by linear_combination r5526
    have hd1 : rho 43743 * rho 43743 = rho 43755 := by linear_combination r5527
    have hd2 : rho 43744 * rho 43744 = rho 43756 := by linear_combination r5528
    have hd3 : rho 43757 * (rho 43744 * rho 43744 + rho 43743 * rho 43743 * (-1)) = 2 * (rho 43743 * rho 43744) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 43758 * (2 - (rho 43744 * rho 43744 + rho 43743 * rho 43743 * (-1))) = rho 43744 * rho 43744 - rho 43743 * rho 43743 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX193 rho : Seg45.F), (seg45AccY193 rho : Seg45.F)⟩
      ⟨(rho 43743 : Seg45.F), (rho 43744 : Seg45.F)⟩
      ⟨(rho 43750 : Seg45.F), (rho 43751 : Seg45.F)⟩
      ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
      ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg45_rows194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5531 rho ∧ Seg45.relationRow5532 rho ∧ Seg45.relationRow5533 rho ∧ Seg45.relationRow5534 rho ∧ Seg45.relationRow5535 rho ∧ Seg45.relationRow5536 rho ∧ Seg45.relationRow5537 rho ∧ Seg45.relationRow5538 rho ∧ Seg45.relationRow5539 rho ∧ Seg45.relationRow5540 rho ∧ Seg45.relationRow5541 rho ∧ Seg45.relationRow5542 rho ∧ Seg45.relationRow5543 rho ∧ Seg45.relationRow5544 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg45_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41142 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩ := by
  obtain ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg45_rows194 rho h
  unfold Seg45.relationRow5531 at r5531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5531
  unfold Seg45.relationRow5532 at r5532
  unfold Seg45.relationRow5533 at r5533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533
  unfold Seg45.relationRow5534 at r5534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534
  unfold Seg45.relationRow5535 at r5535
  unfold Seg45.relationRow5536 at r5536
  unfold Seg45.relationRow5537 at r5537
  unfold Seg45.relationRow5538 at r5538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538
  unfold Seg45.relationRow5539 at r5539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539
  unfold Seg45.relationRow5540 at r5540
  unfold Seg45.relationRow5541 at r5541
  unfold Seg45.relationRow5542 at r5542
  unfold Seg45.relationRow5543 at r5543
  unfold Seg45.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 41142 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
        ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩ := by
    have hnextx : seg45AccX195 rho = seg45AccX194 rho + rho 43766 := by
      unfold seg45AccX195 seg45AccX194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 44]
      ring
    have hnexty : seg45AccY195 rho = seg45AccY194 rho + rho 43767 := by
      unfold seg45AccY195 seg45AccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 44]
      ring
    have hsum : seg45AccX194 rho + seg45AccY194 rho = rho 43759 := by
      unfold seg45AccX194 seg45AccY194
      linear_combination r5531
    have ha0 : (rho 43757 + rho 43758) * (seg45AccX194 rho + seg45AccY194 rho) = rho 43760 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 43758 * seg45AccX194 rho = rho 43761 := by
      unfold seg45AccX194
      linear_combination r5533
    have ha2 : rho 43757 * seg45AccY194 rho = rho 43762 := by
      unfold seg45AccY194
      linear_combination r5534
    have ha3 : 3021 * rho 43761 * rho 43762 = rho 43763 := by
      linear_combination r5535
    have ha4 : rho 43764 * (1 + rho 43763) = rho 43761 + rho 43762 := by
      linear_combination r5536
    have ha5 : rho 43765 * (1 - rho 43763) = rho 43760 - rho 43761 - rho 43762 := by
      linear_combination r5537
    have haddx :
        rho 43764 * (1 + 3021 * (rho 43758 * seg45AccX194 rho) * (rho 43757 * seg45AccY194 rho)) =
          rho 43758 * seg45AccX194 rho + rho 43757 * seg45AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43765 * (1 - 3021 * (rho 43758 * seg45AccX194 rho) * (rho 43757 * seg45AccY194 rho)) =
          (-1) * (rho 43758 * seg45AccX194 rho) - rho 43757 * seg45AccY194 rho +
            (seg45AccY194 rho - seg45AccX194 rho * (-1)) * (rho 43757 + rho 43758) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43765 * (1 - rho 43763) = rho 43760 - rho 43761 - rho 43762 := ha5
        _ = (-1) * rho 43761 - rho 43762 + (seg45AccY194 rho - seg45AccX194 rho * (-1)) * (rho 43757 + rho 43758) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX195 rho = seg45AccX194 rho - Bool.toZMod bit * (seg45AccX194 rho - rho 43764) := by
      have hd : rho 43766 = Bool.toZMod bit * (rho 43764 - seg45AccX194 rho) := by
        rw [← hbit]
        unfold seg45AccX194
        linear_combination -r5538
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY195 rho = seg45AccY194 rho - Bool.toZMod bit * (seg45AccY194 rho - rho 43765) := by
      have hd : rho 43767 = Bool.toZMod bit * (rho 43765 - seg45AccY194 rho) := by
        rw [← hbit]
        unfold seg45AccY194
        linear_combination -r5539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43757 * rho 43758 = rho 43768 := by linear_combination r5540
    have hd1 : rho 43757 * rho 43757 = rho 43769 := by linear_combination r5541
    have hd2 : rho 43758 * rho 43758 = rho 43770 := by linear_combination r5542
    have hd3 : rho 43771 * (rho 43758 * rho 43758 + rho 43757 * rho 43757 * (-1)) = 2 * (rho 43757 * rho 43758) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 43772 * (2 - (rho 43758 * rho 43758 + rho 43757 * rho 43757 * (-1))) = rho 43758 * rho 43758 - rho 43757 * rho 43757 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX194 rho : Seg45.F), (seg45AccY194 rho : Seg45.F)⟩
      ⟨(rho 43757 : Seg45.F), (rho 43758 : Seg45.F)⟩
      ⟨(rho 43764 : Seg45.F), (rho 43765 : Seg45.F)⟩
      ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
      ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg45_rows195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5545 rho ∧ Seg45.relationRow5546 rho ∧ Seg45.relationRow5547 rho ∧ Seg45.relationRow5548 rho ∧ Seg45.relationRow5549 rho ∧ Seg45.relationRow5550 rho ∧ Seg45.relationRow5551 rho ∧ Seg45.relationRow5552 rho ∧ Seg45.relationRow5553 rho ∧ Seg45.relationRow5554 rho ∧ Seg45.relationRow5555 rho ∧ Seg45.relationRow5556 rho ∧ Seg45.relationRow5557 rho ∧ Seg45.relationRow5558 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩

theorem seg45_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41143 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩ := seg45_rows195 rho h
  unfold Seg45.relationRow5545 at r5545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545
  unfold Seg45.relationRow5546 at r5546
  unfold Seg45.relationRow5547 at r5547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547
  unfold Seg45.relationRow5548 at r5548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548
  unfold Seg45.relationRow5549 at r5549
  unfold Seg45.relationRow5550 at r5550
  unfold Seg45.relationRow5551 at r5551
  unfold Seg45.relationRow5552 at r5552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552
  unfold Seg45.relationRow5553 at r5553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5553
  unfold Seg45.relationRow5554 at r5554
  unfold Seg45.relationRow5555 at r5555
  unfold Seg45.relationRow5556 at r5556
  unfold Seg45.relationRow5557 at r5557
  unfold Seg45.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 41143 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
        ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩ := by
    have hnextx : seg45AccX196 rho = seg45AccX195 rho + rho 43780 := by
      unfold seg45AccX196 seg45AccX195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 45]
      ring
    have hnexty : seg45AccY196 rho = seg45AccY195 rho + rho 43781 := by
      unfold seg45AccY196 seg45AccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 45]
      ring
    have hsum : seg45AccX195 rho + seg45AccY195 rho = rho 43773 := by
      unfold seg45AccX195 seg45AccY195
      linear_combination r5545
    have ha0 : (rho 43771 + rho 43772) * (seg45AccX195 rho + seg45AccY195 rho) = rho 43774 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 43772 * seg45AccX195 rho = rho 43775 := by
      unfold seg45AccX195
      linear_combination r5547
    have ha2 : rho 43771 * seg45AccY195 rho = rho 43776 := by
      unfold seg45AccY195
      linear_combination r5548
    have ha3 : 3021 * rho 43775 * rho 43776 = rho 43777 := by
      linear_combination r5549
    have ha4 : rho 43778 * (1 + rho 43777) = rho 43775 + rho 43776 := by
      linear_combination r5550
    have ha5 : rho 43779 * (1 - rho 43777) = rho 43774 - rho 43775 - rho 43776 := by
      linear_combination r5551
    have haddx :
        rho 43778 * (1 + 3021 * (rho 43772 * seg45AccX195 rho) * (rho 43771 * seg45AccY195 rho)) =
          rho 43772 * seg45AccX195 rho + rho 43771 * seg45AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43779 * (1 - 3021 * (rho 43772 * seg45AccX195 rho) * (rho 43771 * seg45AccY195 rho)) =
          (-1) * (rho 43772 * seg45AccX195 rho) - rho 43771 * seg45AccY195 rho +
            (seg45AccY195 rho - seg45AccX195 rho * (-1)) * (rho 43771 + rho 43772) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43779 * (1 - rho 43777) = rho 43774 - rho 43775 - rho 43776 := ha5
        _ = (-1) * rho 43775 - rho 43776 + (seg45AccY195 rho - seg45AccX195 rho * (-1)) * (rho 43771 + rho 43772) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX196 rho = seg45AccX195 rho - Bool.toZMod bit * (seg45AccX195 rho - rho 43778) := by
      have hd : rho 43780 = Bool.toZMod bit * (rho 43778 - seg45AccX195 rho) := by
        rw [← hbit]
        unfold seg45AccX195
        linear_combination -r5552
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY196 rho = seg45AccY195 rho - Bool.toZMod bit * (seg45AccY195 rho - rho 43779) := by
      have hd : rho 43781 = Bool.toZMod bit * (rho 43779 - seg45AccY195 rho) := by
        rw [← hbit]
        unfold seg45AccY195
        linear_combination -r5553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43771 * rho 43772 = rho 43782 := by linear_combination r5554
    have hd1 : rho 43771 * rho 43771 = rho 43783 := by linear_combination r5555
    have hd2 : rho 43772 * rho 43772 = rho 43784 := by linear_combination r5556
    have hd3 : rho 43785 * (rho 43772 * rho 43772 + rho 43771 * rho 43771 * (-1)) = 2 * (rho 43771 * rho 43772) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 43786 * (2 - (rho 43772 * rho 43772 + rho 43771 * rho 43771 * (-1))) = rho 43772 * rho 43772 - rho 43771 * rho 43771 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX195 rho : Seg45.F), (seg45AccY195 rho : Seg45.F)⟩
      ⟨(rho 43771 : Seg45.F), (rho 43772 : Seg45.F)⟩
      ⟨(rho 43778 : Seg45.F), (rho 43779 : Seg45.F)⟩
      ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
      ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg45_rows196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5559 rho ∧ Seg45.relationRow5560 rho ∧ Seg45.relationRow5561 rho ∧ Seg45.relationRow5562 rho ∧ Seg45.relationRow5563 rho ∧ Seg45.relationRow5564 rho ∧ Seg45.relationRow5565 rho ∧ Seg45.relationRow5566 rho ∧ Seg45.relationRow5567 rho ∧ Seg45.relationRow5568 rho ∧ Seg45.relationRow5569 rho ∧ Seg45.relationRow5570 rho ∧ Seg45.relationRow5571 rho ∧ Seg45.relationRow5572 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩

theorem seg45_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41144 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩ := by
  obtain ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩ := seg45_rows196 rho h
  unfold Seg45.relationRow5559 at r5559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559
  unfold Seg45.relationRow5560 at r5560
  unfold Seg45.relationRow5561 at r5561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561
  unfold Seg45.relationRow5562 at r5562
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562
  unfold Seg45.relationRow5563 at r5563
  unfold Seg45.relationRow5564 at r5564
  unfold Seg45.relationRow5565 at r5565
  unfold Seg45.relationRow5566 at r5566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5566
  unfold Seg45.relationRow5567 at r5567
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567
  unfold Seg45.relationRow5568 at r5568
  unfold Seg45.relationRow5569 at r5569
  unfold Seg45.relationRow5570 at r5570
  unfold Seg45.relationRow5571 at r5571
  unfold Seg45.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 41144 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
        ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩ := by
    have hnextx : seg45AccX197 rho = seg45AccX196 rho + rho 43794 := by
      unfold seg45AccX197 seg45AccX196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 46]
      ring
    have hnexty : seg45AccY197 rho = seg45AccY196 rho + rho 43795 := by
      unfold seg45AccY197 seg45AccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 46]
      ring
    have hsum : seg45AccX196 rho + seg45AccY196 rho = rho 43787 := by
      unfold seg45AccX196 seg45AccY196
      linear_combination r5559
    have ha0 : (rho 43785 + rho 43786) * (seg45AccX196 rho + seg45AccY196 rho) = rho 43788 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 43786 * seg45AccX196 rho = rho 43789 := by
      unfold seg45AccX196
      linear_combination r5561
    have ha2 : rho 43785 * seg45AccY196 rho = rho 43790 := by
      unfold seg45AccY196
      linear_combination r5562
    have ha3 : 3021 * rho 43789 * rho 43790 = rho 43791 := by
      linear_combination r5563
    have ha4 : rho 43792 * (1 + rho 43791) = rho 43789 + rho 43790 := by
      linear_combination r5564
    have ha5 : rho 43793 * (1 - rho 43791) = rho 43788 - rho 43789 - rho 43790 := by
      linear_combination r5565
    have haddx :
        rho 43792 * (1 + 3021 * (rho 43786 * seg45AccX196 rho) * (rho 43785 * seg45AccY196 rho)) =
          rho 43786 * seg45AccX196 rho + rho 43785 * seg45AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43793 * (1 - 3021 * (rho 43786 * seg45AccX196 rho) * (rho 43785 * seg45AccY196 rho)) =
          (-1) * (rho 43786 * seg45AccX196 rho) - rho 43785 * seg45AccY196 rho +
            (seg45AccY196 rho - seg45AccX196 rho * (-1)) * (rho 43785 + rho 43786) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43793 * (1 - rho 43791) = rho 43788 - rho 43789 - rho 43790 := ha5
        _ = (-1) * rho 43789 - rho 43790 + (seg45AccY196 rho - seg45AccX196 rho * (-1)) * (rho 43785 + rho 43786) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX197 rho = seg45AccX196 rho - Bool.toZMod bit * (seg45AccX196 rho - rho 43792) := by
      have hd : rho 43794 = Bool.toZMod bit * (rho 43792 - seg45AccX196 rho) := by
        rw [← hbit]
        unfold seg45AccX196
        linear_combination -r5566
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY197 rho = seg45AccY196 rho - Bool.toZMod bit * (seg45AccY196 rho - rho 43793) := by
      have hd : rho 43795 = Bool.toZMod bit * (rho 43793 - seg45AccY196 rho) := by
        rw [← hbit]
        unfold seg45AccY196
        linear_combination -r5567
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43785 * rho 43786 = rho 43796 := by linear_combination r5568
    have hd1 : rho 43785 * rho 43785 = rho 43797 := by linear_combination r5569
    have hd2 : rho 43786 * rho 43786 = rho 43798 := by linear_combination r5570
    have hd3 : rho 43799 * (rho 43786 * rho 43786 + rho 43785 * rho 43785 * (-1)) = 2 * (rho 43785 * rho 43786) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 43800 * (2 - (rho 43786 * rho 43786 + rho 43785 * rho 43785 * (-1))) = rho 43786 * rho 43786 - rho 43785 * rho 43785 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX196 rho : Seg45.F), (seg45AccY196 rho : Seg45.F)⟩
      ⟨(rho 43785 : Seg45.F), (rho 43786 : Seg45.F)⟩
      ⟨(rho 43792 : Seg45.F), (rho 43793 : Seg45.F)⟩
      ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
      ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg45_rows197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    Seg45.relationRow5573 rho ∧ Seg45.relationRow5574 rho ∧ Seg45.relationRow5575 rho ∧ Seg45.relationRow5576 rho ∧ Seg45.relationRow5577 rho ∧ Seg45.relationRow5578 rho ∧ Seg45.relationRow5579 rho ∧ Seg45.relationRow5580 rho ∧ Seg45.relationRow5581 rho ∧ Seg45.relationRow5582 rho ∧ Seg45.relationRow5583 rho ∧ Seg45.relationRow5584 rho ∧ Seg45.relationRow5585 rho ∧ Seg45.relationRow5586 rho := by
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem seg45_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg45.relation rho) :
    ∀ (bit : Bool), rho 41145 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩ := by
  obtain ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := seg45_rows197 rho h
  unfold Seg45.relationRow5573 at r5573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573
  unfold Seg45.relationRow5574 at r5574
  unfold Seg45.relationRow5575 at r5575
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575
  unfold Seg45.relationRow5576 at r5576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576
  unfold Seg45.relationRow5577 at r5577
  unfold Seg45.relationRow5578 at r5578
  unfold Seg45.relationRow5579 at r5579
  unfold Seg45.relationRow5580 at r5580
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580
  unfold Seg45.relationRow5581 at r5581
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581
  unfold Seg45.relationRow5582 at r5582
  unfold Seg45.relationRow5583 at r5583
  unfold Seg45.relationRow5584 at r5584
  unfold Seg45.relationRow5585 at r5585
  unfold Seg45.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 41145 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
        ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
        ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
        ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩ := by
    have hnextx : seg45AccX198 rho = seg45AccX197 rho + rho 43808 := by
      unfold seg45AccX198 seg45AccX197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43150 14 47]
      ring
    have hnexty : seg45AccY198 rho = seg45AccY197 rho + rho 43809 := by
      unfold seg45AccY198 seg45AccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 43151 14 47]
      ring
    have hsum : seg45AccX197 rho + seg45AccY197 rho = rho 43801 := by
      unfold seg45AccX197 seg45AccY197
      linear_combination r5573
    have ha0 : (rho 43799 + rho 43800) * (seg45AccX197 rho + seg45AccY197 rho) = rho 43802 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 43800 * seg45AccX197 rho = rho 43803 := by
      unfold seg45AccX197
      linear_combination r5575
    have ha2 : rho 43799 * seg45AccY197 rho = rho 43804 := by
      unfold seg45AccY197
      linear_combination r5576
    have ha3 : 3021 * rho 43803 * rho 43804 = rho 43805 := by
      linear_combination r5577
    have ha4 : rho 43806 * (1 + rho 43805) = rho 43803 + rho 43804 := by
      linear_combination r5578
    have ha5 : rho 43807 * (1 - rho 43805) = rho 43802 - rho 43803 - rho 43804 := by
      linear_combination r5579
    have haddx :
        rho 43806 * (1 + 3021 * (rho 43800 * seg45AccX197 rho) * (rho 43799 * seg45AccY197 rho)) =
          rho 43800 * seg45AccX197 rho + rho 43799 * seg45AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 43807 * (1 - 3021 * (rho 43800 * seg45AccX197 rho) * (rho 43799 * seg45AccY197 rho)) =
          (-1) * (rho 43800 * seg45AccX197 rho) - rho 43799 * seg45AccY197 rho +
            (seg45AccY197 rho - seg45AccX197 rho * (-1)) * (rho 43799 + rho 43800) := by
      rw [ha1, ha2, ha3]
      calc
        rho 43807 * (1 - rho 43805) = rho 43802 - rho 43803 - rho 43804 := ha5
        _ = (-1) * rho 43803 - rho 43804 + (seg45AccY197 rho - seg45AccX197 rho * (-1)) * (rho 43799 + rho 43800) := by
          rw [← ha0]
          ring
    have hselx : seg45AccX198 rho = seg45AccX197 rho - Bool.toZMod bit * (seg45AccX197 rho - rho 43806) := by
      have hd : rho 43808 = Bool.toZMod bit * (rho 43806 - seg45AccX197 rho) := by
        rw [← hbit]
        unfold seg45AccX197
        linear_combination -r5580
      rw [hnextx]
      linear_combination hd
    have hsely : seg45AccY198 rho = seg45AccY197 rho - Bool.toZMod bit * (seg45AccY197 rho - rho 43807) := by
      have hd : rho 43809 = Bool.toZMod bit * (rho 43807 - seg45AccY197 rho) := by
        rw [← hbit]
        unfold seg45AccY197
        linear_combination -r5581
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 43799 * rho 43800 = rho 43810 := by linear_combination r5582
    have hd1 : rho 43799 * rho 43799 = rho 43811 := by linear_combination r5583
    have hd2 : rho 43800 * rho 43800 = rho 43812 := by linear_combination r5584
    have hd3 : rho 43813 * (rho 43800 * rho 43800 + rho 43799 * rho 43799 * (-1)) = 2 * (rho 43799 * rho 43800) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 43814 * (2 - (rho 43800 * rho 43800 + rho 43799 * rho 43799 * (-1))) = rho 43800 * rho 43800 - rho 43799 * rho 43799 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg45AccX197 rho : Seg45.F), (seg45AccY197 rho : Seg45.F)⟩
      ⟨(rho 43799 : Seg45.F), (rho 43800 : Seg45.F)⟩
      ⟨(rho 43806 : Seg45.F), (rho 43807 : Seg45.F)⟩
      ⟨(seg45AccX198 rho : Seg45.F), (seg45AccY198 rho : Seg45.F)⟩
      ⟨(rho 43813 : Seg45.F), (rho 43814 : Seg45.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg45_hstep_c17 (rho : Nat -> Seg45.F) (h : Seg45.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (40948 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 187 ≤ i → i < 198 →
      EdwardsBridge.onCurve (seg45LadderAccState rho i) →
      EdwardsBridge.onCurve (seg45LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg45LadderAccState rho i) (seg45LadderCurState rho i)
        (seg45LadderAccState rho (i + 1)) (seg45LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg45_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg45_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg45_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg45_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg45_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
  · exact seg45_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg45_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg45_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg45_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg45_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg45_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
