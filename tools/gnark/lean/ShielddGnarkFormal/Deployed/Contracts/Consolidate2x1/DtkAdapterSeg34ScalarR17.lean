import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg34_rows187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5433 rho ∧ Seg34.relationRow5434 rho ∧ Seg34.relationRow5435 rho ∧ Seg34.relationRow5436 rho ∧ Seg34.relationRow5437 rho ∧ Seg34.relationRow5438 rho ∧ Seg34.relationRow5439 rho ∧ Seg34.relationRow5440 rho ∧ Seg34.relationRow5441 rho ∧ Seg34.relationRow5442 rho ∧ Seg34.relationRow5443 rho ∧ Seg34.relationRow5444 rho ∧ Seg34.relationRow5445 rho ∧ Seg34.relationRow5446 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩

theorem seg34_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩ := by
  obtain ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩ := seg34_rows187 rho h
  unfold Seg34.relationRow5433 at r5433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5433
  unfold Seg34.relationRow5434 at r5434
  unfold Seg34.relationRow5435 at r5435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435
  unfold Seg34.relationRow5436 at r5436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5436
  unfold Seg34.relationRow5437 at r5437
  unfold Seg34.relationRow5438 at r5438
  unfold Seg34.relationRow5439 at r5439
  unfold Seg34.relationRow5440 at r5440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5440
  unfold Seg34.relationRow5441 at r5441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441
  unfold Seg34.relationRow5442 at r5442
  unfold Seg34.relationRow5443 at r5443
  unfold Seg34.relationRow5444 at r5444
  unfold Seg34.relationRow5445 at r5445
  unfold Seg34.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 34179 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
        ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩ := by
    have hnextx : seg34AccX188 rho = seg34AccX187 rho + rho 36712 := by
      unfold seg34AccX188 seg34AccX187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 37]
      ring
    have hnexty : seg34AccY188 rho = seg34AccY187 rho + rho 36713 := by
      unfold seg34AccY188 seg34AccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 37]
      ring
    have hsum : seg34AccX187 rho + seg34AccY187 rho = rho 36705 := by
      unfold seg34AccX187 seg34AccY187
      linear_combination r5433
    have ha0 : (rho 36703 + rho 36704) * (seg34AccX187 rho + seg34AccY187 rho) = rho 36706 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 36704 * seg34AccX187 rho = rho 36707 := by
      unfold seg34AccX187
      linear_combination r5435
    have ha2 : rho 36703 * seg34AccY187 rho = rho 36708 := by
      unfold seg34AccY187
      linear_combination r5436
    have ha3 : 3021 * rho 36707 * rho 36708 = rho 36709 := by
      linear_combination r5437
    have ha4 : rho 36710 * (1 + rho 36709) = rho 36707 + rho 36708 := by
      linear_combination r5438
    have ha5 : rho 36711 * (1 - rho 36709) = rho 36706 - rho 36707 - rho 36708 := by
      linear_combination r5439
    have haddx :
        rho 36710 * (1 + 3021 * (rho 36704 * seg34AccX187 rho) * (rho 36703 * seg34AccY187 rho)) =
          rho 36704 * seg34AccX187 rho + rho 36703 * seg34AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36711 * (1 - 3021 * (rho 36704 * seg34AccX187 rho) * (rho 36703 * seg34AccY187 rho)) =
          (-1) * (rho 36704 * seg34AccX187 rho) - rho 36703 * seg34AccY187 rho +
            (seg34AccY187 rho - seg34AccX187 rho * (-1)) * (rho 36703 + rho 36704) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36711 * (1 - rho 36709) = rho 36706 - rho 36707 - rho 36708 := ha5
        _ = (-1) * rho 36707 - rho 36708 + (seg34AccY187 rho - seg34AccX187 rho * (-1)) * (rho 36703 + rho 36704) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX188 rho = seg34AccX187 rho - Bool.toZMod bit * (seg34AccX187 rho - rho 36710) := by
      have hd : rho 36712 = Bool.toZMod bit * (rho 36710 - seg34AccX187 rho) := by
        rw [← hbit]
        unfold seg34AccX187
        linear_combination -r5440
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY188 rho = seg34AccY187 rho - Bool.toZMod bit * (seg34AccY187 rho - rho 36711) := by
      have hd : rho 36713 = Bool.toZMod bit * (rho 36711 - seg34AccY187 rho) := by
        rw [← hbit]
        unfold seg34AccY187
        linear_combination -r5441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36703 * rho 36704 = rho 36714 := by linear_combination r5442
    have hd1 : rho 36703 * rho 36703 = rho 36715 := by linear_combination r5443
    have hd2 : rho 36704 * rho 36704 = rho 36716 := by linear_combination r5444
    have hd3 : rho 36717 * (rho 36704 * rho 36704 + rho 36703 * rho 36703 * (-1)) = 2 * (rho 36703 * rho 36704) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 36718 * (2 - (rho 36704 * rho 36704 + rho 36703 * rho 36703 * (-1))) = rho 36704 * rho 36704 - rho 36703 * rho 36703 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX187 rho : Seg34.F), (seg34AccY187 rho : Seg34.F)⟩
      ⟨(rho 36703 : Seg34.F), (rho 36704 : Seg34.F)⟩
      ⟨(rho 36710 : Seg34.F), (rho 36711 : Seg34.F)⟩
      ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
      ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg34_rows188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5447 rho ∧ Seg34.relationRow5448 rho ∧ Seg34.relationRow5449 rho ∧ Seg34.relationRow5450 rho ∧ Seg34.relationRow5451 rho ∧ Seg34.relationRow5452 rho ∧ Seg34.relationRow5453 rho ∧ Seg34.relationRow5454 rho ∧ Seg34.relationRow5455 rho ∧ Seg34.relationRow5456 rho ∧ Seg34.relationRow5457 rho ∧ Seg34.relationRow5458 rho ∧ Seg34.relationRow5459 rho ∧ Seg34.relationRow5460 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩

theorem seg34_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩ := by
  obtain ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩ := seg34_rows188 rho h
  unfold Seg34.relationRow5447 at r5447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447
  unfold Seg34.relationRow5448 at r5448
  unfold Seg34.relationRow5449 at r5449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5449
  unfold Seg34.relationRow5450 at r5450
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5450
  unfold Seg34.relationRow5451 at r5451
  unfold Seg34.relationRow5452 at r5452
  unfold Seg34.relationRow5453 at r5453
  unfold Seg34.relationRow5454 at r5454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454
  unfold Seg34.relationRow5455 at r5455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455
  unfold Seg34.relationRow5456 at r5456
  unfold Seg34.relationRow5457 at r5457
  unfold Seg34.relationRow5458 at r5458
  unfold Seg34.relationRow5459 at r5459
  unfold Seg34.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 34180 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
        ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩ := by
    have hnextx : seg34AccX189 rho = seg34AccX188 rho + rho 36726 := by
      unfold seg34AccX189 seg34AccX188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 38]
      ring
    have hnexty : seg34AccY189 rho = seg34AccY188 rho + rho 36727 := by
      unfold seg34AccY189 seg34AccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 38]
      ring
    have hsum : seg34AccX188 rho + seg34AccY188 rho = rho 36719 := by
      unfold seg34AccX188 seg34AccY188
      linear_combination r5447
    have ha0 : (rho 36717 + rho 36718) * (seg34AccX188 rho + seg34AccY188 rho) = rho 36720 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 36718 * seg34AccX188 rho = rho 36721 := by
      unfold seg34AccX188
      linear_combination r5449
    have ha2 : rho 36717 * seg34AccY188 rho = rho 36722 := by
      unfold seg34AccY188
      linear_combination r5450
    have ha3 : 3021 * rho 36721 * rho 36722 = rho 36723 := by
      linear_combination r5451
    have ha4 : rho 36724 * (1 + rho 36723) = rho 36721 + rho 36722 := by
      linear_combination r5452
    have ha5 : rho 36725 * (1 - rho 36723) = rho 36720 - rho 36721 - rho 36722 := by
      linear_combination r5453
    have haddx :
        rho 36724 * (1 + 3021 * (rho 36718 * seg34AccX188 rho) * (rho 36717 * seg34AccY188 rho)) =
          rho 36718 * seg34AccX188 rho + rho 36717 * seg34AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36725 * (1 - 3021 * (rho 36718 * seg34AccX188 rho) * (rho 36717 * seg34AccY188 rho)) =
          (-1) * (rho 36718 * seg34AccX188 rho) - rho 36717 * seg34AccY188 rho +
            (seg34AccY188 rho - seg34AccX188 rho * (-1)) * (rho 36717 + rho 36718) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36725 * (1 - rho 36723) = rho 36720 - rho 36721 - rho 36722 := ha5
        _ = (-1) * rho 36721 - rho 36722 + (seg34AccY188 rho - seg34AccX188 rho * (-1)) * (rho 36717 + rho 36718) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX189 rho = seg34AccX188 rho - Bool.toZMod bit * (seg34AccX188 rho - rho 36724) := by
      have hd : rho 36726 = Bool.toZMod bit * (rho 36724 - seg34AccX188 rho) := by
        rw [← hbit]
        unfold seg34AccX188
        linear_combination -r5454
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY189 rho = seg34AccY188 rho - Bool.toZMod bit * (seg34AccY188 rho - rho 36725) := by
      have hd : rho 36727 = Bool.toZMod bit * (rho 36725 - seg34AccY188 rho) := by
        rw [← hbit]
        unfold seg34AccY188
        linear_combination -r5455
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36717 * rho 36718 = rho 36728 := by linear_combination r5456
    have hd1 : rho 36717 * rho 36717 = rho 36729 := by linear_combination r5457
    have hd2 : rho 36718 * rho 36718 = rho 36730 := by linear_combination r5458
    have hd3 : rho 36731 * (rho 36718 * rho 36718 + rho 36717 * rho 36717 * (-1)) = 2 * (rho 36717 * rho 36718) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 36732 * (2 - (rho 36718 * rho 36718 + rho 36717 * rho 36717 * (-1))) = rho 36718 * rho 36718 - rho 36717 * rho 36717 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX188 rho : Seg34.F), (seg34AccY188 rho : Seg34.F)⟩
      ⟨(rho 36717 : Seg34.F), (rho 36718 : Seg34.F)⟩
      ⟨(rho 36724 : Seg34.F), (rho 36725 : Seg34.F)⟩
      ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
      ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg34_rows189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5461 rho ∧ Seg34.relationRow5462 rho ∧ Seg34.relationRow5463 rho ∧ Seg34.relationRow5464 rho ∧ Seg34.relationRow5465 rho ∧ Seg34.relationRow5466 rho ∧ Seg34.relationRow5467 rho ∧ Seg34.relationRow5468 rho ∧ Seg34.relationRow5469 rho ∧ Seg34.relationRow5470 rho ∧ Seg34.relationRow5471 rho ∧ Seg34.relationRow5472 rho ∧ Seg34.relationRow5473 rho ∧ Seg34.relationRow5474 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩

theorem seg34_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34181 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩ := by
  obtain ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩ := seg34_rows189 rho h
  unfold Seg34.relationRow5461 at r5461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461
  unfold Seg34.relationRow5462 at r5462
  unfold Seg34.relationRow5463 at r5463
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5463
  unfold Seg34.relationRow5464 at r5464
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5464
  unfold Seg34.relationRow5465 at r5465
  unfold Seg34.relationRow5466 at r5466
  unfold Seg34.relationRow5467 at r5467
  unfold Seg34.relationRow5468 at r5468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468
  unfold Seg34.relationRow5469 at r5469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469
  unfold Seg34.relationRow5470 at r5470
  unfold Seg34.relationRow5471 at r5471
  unfold Seg34.relationRow5472 at r5472
  unfold Seg34.relationRow5473 at r5473
  unfold Seg34.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 34181 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
        ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩ := by
    have hnextx : seg34AccX190 rho = seg34AccX189 rho + rho 36740 := by
      unfold seg34AccX190 seg34AccX189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 39]
      ring
    have hnexty : seg34AccY190 rho = seg34AccY189 rho + rho 36741 := by
      unfold seg34AccY190 seg34AccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 39]
      ring
    have hsum : seg34AccX189 rho + seg34AccY189 rho = rho 36733 := by
      unfold seg34AccX189 seg34AccY189
      linear_combination r5461
    have ha0 : (rho 36731 + rho 36732) * (seg34AccX189 rho + seg34AccY189 rho) = rho 36734 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 36732 * seg34AccX189 rho = rho 36735 := by
      unfold seg34AccX189
      linear_combination r5463
    have ha2 : rho 36731 * seg34AccY189 rho = rho 36736 := by
      unfold seg34AccY189
      linear_combination r5464
    have ha3 : 3021 * rho 36735 * rho 36736 = rho 36737 := by
      linear_combination r5465
    have ha4 : rho 36738 * (1 + rho 36737) = rho 36735 + rho 36736 := by
      linear_combination r5466
    have ha5 : rho 36739 * (1 - rho 36737) = rho 36734 - rho 36735 - rho 36736 := by
      linear_combination r5467
    have haddx :
        rho 36738 * (1 + 3021 * (rho 36732 * seg34AccX189 rho) * (rho 36731 * seg34AccY189 rho)) =
          rho 36732 * seg34AccX189 rho + rho 36731 * seg34AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36739 * (1 - 3021 * (rho 36732 * seg34AccX189 rho) * (rho 36731 * seg34AccY189 rho)) =
          (-1) * (rho 36732 * seg34AccX189 rho) - rho 36731 * seg34AccY189 rho +
            (seg34AccY189 rho - seg34AccX189 rho * (-1)) * (rho 36731 + rho 36732) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36739 * (1 - rho 36737) = rho 36734 - rho 36735 - rho 36736 := ha5
        _ = (-1) * rho 36735 - rho 36736 + (seg34AccY189 rho - seg34AccX189 rho * (-1)) * (rho 36731 + rho 36732) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX190 rho = seg34AccX189 rho - Bool.toZMod bit * (seg34AccX189 rho - rho 36738) := by
      have hd : rho 36740 = Bool.toZMod bit * (rho 36738 - seg34AccX189 rho) := by
        rw [← hbit]
        unfold seg34AccX189
        linear_combination -r5468
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY190 rho = seg34AccY189 rho - Bool.toZMod bit * (seg34AccY189 rho - rho 36739) := by
      have hd : rho 36741 = Bool.toZMod bit * (rho 36739 - seg34AccY189 rho) := by
        rw [← hbit]
        unfold seg34AccY189
        linear_combination -r5469
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36731 * rho 36732 = rho 36742 := by linear_combination r5470
    have hd1 : rho 36731 * rho 36731 = rho 36743 := by linear_combination r5471
    have hd2 : rho 36732 * rho 36732 = rho 36744 := by linear_combination r5472
    have hd3 : rho 36745 * (rho 36732 * rho 36732 + rho 36731 * rho 36731 * (-1)) = 2 * (rho 36731 * rho 36732) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 36746 * (2 - (rho 36732 * rho 36732 + rho 36731 * rho 36731 * (-1))) = rho 36732 * rho 36732 - rho 36731 * rho 36731 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX189 rho : Seg34.F), (seg34AccY189 rho : Seg34.F)⟩
      ⟨(rho 36731 : Seg34.F), (rho 36732 : Seg34.F)⟩
      ⟨(rho 36738 : Seg34.F), (rho 36739 : Seg34.F)⟩
      ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
      ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg34_rows190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5475 rho ∧ Seg34.relationRow5476 rho ∧ Seg34.relationRow5477 rho ∧ Seg34.relationRow5478 rho ∧ Seg34.relationRow5479 rho ∧ Seg34.relationRow5480 rho ∧ Seg34.relationRow5481 rho ∧ Seg34.relationRow5482 rho ∧ Seg34.relationRow5483 rho ∧ Seg34.relationRow5484 rho ∧ Seg34.relationRow5485 rho ∧ Seg34.relationRow5486 rho ∧ Seg34.relationRow5487 rho ∧ Seg34.relationRow5488 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩

theorem seg34_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34182 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩ := by
  obtain ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩ := seg34_rows190 rho h
  unfold Seg34.relationRow5475 at r5475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5475
  unfold Seg34.relationRow5476 at r5476
  unfold Seg34.relationRow5477 at r5477
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5477
  unfold Seg34.relationRow5478 at r5478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5478
  unfold Seg34.relationRow5479 at r5479
  unfold Seg34.relationRow5480 at r5480
  unfold Seg34.relationRow5481 at r5481
  unfold Seg34.relationRow5482 at r5482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482
  unfold Seg34.relationRow5483 at r5483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5483
  unfold Seg34.relationRow5484 at r5484
  unfold Seg34.relationRow5485 at r5485
  unfold Seg34.relationRow5486 at r5486
  unfold Seg34.relationRow5487 at r5487
  unfold Seg34.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 34182 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
        ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩ := by
    have hnextx : seg34AccX191 rho = seg34AccX190 rho + rho 36754 := by
      unfold seg34AccX191 seg34AccX190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 40]
      ring
    have hnexty : seg34AccY191 rho = seg34AccY190 rho + rho 36755 := by
      unfold seg34AccY191 seg34AccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 40]
      ring
    have hsum : seg34AccX190 rho + seg34AccY190 rho = rho 36747 := by
      unfold seg34AccX190 seg34AccY190
      linear_combination r5475
    have ha0 : (rho 36745 + rho 36746) * (seg34AccX190 rho + seg34AccY190 rho) = rho 36748 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 36746 * seg34AccX190 rho = rho 36749 := by
      unfold seg34AccX190
      linear_combination r5477
    have ha2 : rho 36745 * seg34AccY190 rho = rho 36750 := by
      unfold seg34AccY190
      linear_combination r5478
    have ha3 : 3021 * rho 36749 * rho 36750 = rho 36751 := by
      linear_combination r5479
    have ha4 : rho 36752 * (1 + rho 36751) = rho 36749 + rho 36750 := by
      linear_combination r5480
    have ha5 : rho 36753 * (1 - rho 36751) = rho 36748 - rho 36749 - rho 36750 := by
      linear_combination r5481
    have haddx :
        rho 36752 * (1 + 3021 * (rho 36746 * seg34AccX190 rho) * (rho 36745 * seg34AccY190 rho)) =
          rho 36746 * seg34AccX190 rho + rho 36745 * seg34AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36753 * (1 - 3021 * (rho 36746 * seg34AccX190 rho) * (rho 36745 * seg34AccY190 rho)) =
          (-1) * (rho 36746 * seg34AccX190 rho) - rho 36745 * seg34AccY190 rho +
            (seg34AccY190 rho - seg34AccX190 rho * (-1)) * (rho 36745 + rho 36746) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36753 * (1 - rho 36751) = rho 36748 - rho 36749 - rho 36750 := ha5
        _ = (-1) * rho 36749 - rho 36750 + (seg34AccY190 rho - seg34AccX190 rho * (-1)) * (rho 36745 + rho 36746) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX191 rho = seg34AccX190 rho - Bool.toZMod bit * (seg34AccX190 rho - rho 36752) := by
      have hd : rho 36754 = Bool.toZMod bit * (rho 36752 - seg34AccX190 rho) := by
        rw [← hbit]
        unfold seg34AccX190
        linear_combination -r5482
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY191 rho = seg34AccY190 rho - Bool.toZMod bit * (seg34AccY190 rho - rho 36753) := by
      have hd : rho 36755 = Bool.toZMod bit * (rho 36753 - seg34AccY190 rho) := by
        rw [← hbit]
        unfold seg34AccY190
        linear_combination -r5483
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36745 * rho 36746 = rho 36756 := by linear_combination r5484
    have hd1 : rho 36745 * rho 36745 = rho 36757 := by linear_combination r5485
    have hd2 : rho 36746 * rho 36746 = rho 36758 := by linear_combination r5486
    have hd3 : rho 36759 * (rho 36746 * rho 36746 + rho 36745 * rho 36745 * (-1)) = 2 * (rho 36745 * rho 36746) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 36760 * (2 - (rho 36746 * rho 36746 + rho 36745 * rho 36745 * (-1))) = rho 36746 * rho 36746 - rho 36745 * rho 36745 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX190 rho : Seg34.F), (seg34AccY190 rho : Seg34.F)⟩
      ⟨(rho 36745 : Seg34.F), (rho 36746 : Seg34.F)⟩
      ⟨(rho 36752 : Seg34.F), (rho 36753 : Seg34.F)⟩
      ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
      ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg34_rows191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5489 rho ∧ Seg34.relationRow5490 rho ∧ Seg34.relationRow5491 rho ∧ Seg34.relationRow5492 rho ∧ Seg34.relationRow5493 rho ∧ Seg34.relationRow5494 rho ∧ Seg34.relationRow5495 rho ∧ Seg34.relationRow5496 rho ∧ Seg34.relationRow5497 rho ∧ Seg34.relationRow5498 rho ∧ Seg34.relationRow5499 rho ∧ Seg34.relationRow5500 rho ∧ Seg34.relationRow5501 rho ∧ Seg34.relationRow5502 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩

theorem seg34_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34183 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩ := by
  obtain ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩ := seg34_rows191 rho h
  unfold Seg34.relationRow5489 at r5489
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5489
  unfold Seg34.relationRow5490 at r5490
  unfold Seg34.relationRow5491 at r5491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5491
  unfold Seg34.relationRow5492 at r5492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5492
  unfold Seg34.relationRow5493 at r5493
  unfold Seg34.relationRow5494 at r5494
  unfold Seg34.relationRow5495 at r5495
  unfold Seg34.relationRow5496 at r5496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5496
  unfold Seg34.relationRow5497 at r5497
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5497
  unfold Seg34.relationRow5498 at r5498
  unfold Seg34.relationRow5499 at r5499
  unfold Seg34.relationRow5500 at r5500
  unfold Seg34.relationRow5501 at r5501
  unfold Seg34.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 34183 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
        ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩ := by
    have hnextx : seg34AccX192 rho = seg34AccX191 rho + rho 36768 := by
      unfold seg34AccX192 seg34AccX191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 41]
      ring
    have hnexty : seg34AccY192 rho = seg34AccY191 rho + rho 36769 := by
      unfold seg34AccY192 seg34AccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 41]
      ring
    have hsum : seg34AccX191 rho + seg34AccY191 rho = rho 36761 := by
      unfold seg34AccX191 seg34AccY191
      linear_combination r5489
    have ha0 : (rho 36759 + rho 36760) * (seg34AccX191 rho + seg34AccY191 rho) = rho 36762 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 36760 * seg34AccX191 rho = rho 36763 := by
      unfold seg34AccX191
      linear_combination r5491
    have ha2 : rho 36759 * seg34AccY191 rho = rho 36764 := by
      unfold seg34AccY191
      linear_combination r5492
    have ha3 : 3021 * rho 36763 * rho 36764 = rho 36765 := by
      linear_combination r5493
    have ha4 : rho 36766 * (1 + rho 36765) = rho 36763 + rho 36764 := by
      linear_combination r5494
    have ha5 : rho 36767 * (1 - rho 36765) = rho 36762 - rho 36763 - rho 36764 := by
      linear_combination r5495
    have haddx :
        rho 36766 * (1 + 3021 * (rho 36760 * seg34AccX191 rho) * (rho 36759 * seg34AccY191 rho)) =
          rho 36760 * seg34AccX191 rho + rho 36759 * seg34AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36767 * (1 - 3021 * (rho 36760 * seg34AccX191 rho) * (rho 36759 * seg34AccY191 rho)) =
          (-1) * (rho 36760 * seg34AccX191 rho) - rho 36759 * seg34AccY191 rho +
            (seg34AccY191 rho - seg34AccX191 rho * (-1)) * (rho 36759 + rho 36760) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36767 * (1 - rho 36765) = rho 36762 - rho 36763 - rho 36764 := ha5
        _ = (-1) * rho 36763 - rho 36764 + (seg34AccY191 rho - seg34AccX191 rho * (-1)) * (rho 36759 + rho 36760) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX192 rho = seg34AccX191 rho - Bool.toZMod bit * (seg34AccX191 rho - rho 36766) := by
      have hd : rho 36768 = Bool.toZMod bit * (rho 36766 - seg34AccX191 rho) := by
        rw [← hbit]
        unfold seg34AccX191
        linear_combination -r5496
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY192 rho = seg34AccY191 rho - Bool.toZMod bit * (seg34AccY191 rho - rho 36767) := by
      have hd : rho 36769 = Bool.toZMod bit * (rho 36767 - seg34AccY191 rho) := by
        rw [← hbit]
        unfold seg34AccY191
        linear_combination -r5497
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36759 * rho 36760 = rho 36770 := by linear_combination r5498
    have hd1 : rho 36759 * rho 36759 = rho 36771 := by linear_combination r5499
    have hd2 : rho 36760 * rho 36760 = rho 36772 := by linear_combination r5500
    have hd3 : rho 36773 * (rho 36760 * rho 36760 + rho 36759 * rho 36759 * (-1)) = 2 * (rho 36759 * rho 36760) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 36774 * (2 - (rho 36760 * rho 36760 + rho 36759 * rho 36759 * (-1))) = rho 36760 * rho 36760 - rho 36759 * rho 36759 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX191 rho : Seg34.F), (seg34AccY191 rho : Seg34.F)⟩
      ⟨(rho 36759 : Seg34.F), (rho 36760 : Seg34.F)⟩
      ⟨(rho 36766 : Seg34.F), (rho 36767 : Seg34.F)⟩
      ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
      ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg34_rows192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5503 rho ∧ Seg34.relationRow5504 rho ∧ Seg34.relationRow5505 rho ∧ Seg34.relationRow5506 rho ∧ Seg34.relationRow5507 rho ∧ Seg34.relationRow5508 rho ∧ Seg34.relationRow5509 rho ∧ Seg34.relationRow5510 rho ∧ Seg34.relationRow5511 rho ∧ Seg34.relationRow5512 rho ∧ Seg34.relationRow5513 rho ∧ Seg34.relationRow5514 rho ∧ Seg34.relationRow5515 rho ∧ Seg34.relationRow5516 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  exact ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩

theorem seg34_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34184 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩ := by
  obtain ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩ := seg34_rows192 rho h
  unfold Seg34.relationRow5503 at r5503
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503
  unfold Seg34.relationRow5504 at r5504
  unfold Seg34.relationRow5505 at r5505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5505
  unfold Seg34.relationRow5506 at r5506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506
  unfold Seg34.relationRow5507 at r5507
  unfold Seg34.relationRow5508 at r5508
  unfold Seg34.relationRow5509 at r5509
  unfold Seg34.relationRow5510 at r5510
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510
  unfold Seg34.relationRow5511 at r5511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511
  unfold Seg34.relationRow5512 at r5512
  unfold Seg34.relationRow5513 at r5513
  unfold Seg34.relationRow5514 at r5514
  unfold Seg34.relationRow5515 at r5515
  unfold Seg34.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 34184 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
        ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩ := by
    have hnextx : seg34AccX193 rho = seg34AccX192 rho + rho 36782 := by
      unfold seg34AccX193 seg34AccX192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 42]
      ring
    have hnexty : seg34AccY193 rho = seg34AccY192 rho + rho 36783 := by
      unfold seg34AccY193 seg34AccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 42]
      ring
    have hsum : seg34AccX192 rho + seg34AccY192 rho = rho 36775 := by
      unfold seg34AccX192 seg34AccY192
      linear_combination r5503
    have ha0 : (rho 36773 + rho 36774) * (seg34AccX192 rho + seg34AccY192 rho) = rho 36776 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 36774 * seg34AccX192 rho = rho 36777 := by
      unfold seg34AccX192
      linear_combination r5505
    have ha2 : rho 36773 * seg34AccY192 rho = rho 36778 := by
      unfold seg34AccY192
      linear_combination r5506
    have ha3 : 3021 * rho 36777 * rho 36778 = rho 36779 := by
      linear_combination r5507
    have ha4 : rho 36780 * (1 + rho 36779) = rho 36777 + rho 36778 := by
      linear_combination r5508
    have ha5 : rho 36781 * (1 - rho 36779) = rho 36776 - rho 36777 - rho 36778 := by
      linear_combination r5509
    have haddx :
        rho 36780 * (1 + 3021 * (rho 36774 * seg34AccX192 rho) * (rho 36773 * seg34AccY192 rho)) =
          rho 36774 * seg34AccX192 rho + rho 36773 * seg34AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36781 * (1 - 3021 * (rho 36774 * seg34AccX192 rho) * (rho 36773 * seg34AccY192 rho)) =
          (-1) * (rho 36774 * seg34AccX192 rho) - rho 36773 * seg34AccY192 rho +
            (seg34AccY192 rho - seg34AccX192 rho * (-1)) * (rho 36773 + rho 36774) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36781 * (1 - rho 36779) = rho 36776 - rho 36777 - rho 36778 := ha5
        _ = (-1) * rho 36777 - rho 36778 + (seg34AccY192 rho - seg34AccX192 rho * (-1)) * (rho 36773 + rho 36774) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX193 rho = seg34AccX192 rho - Bool.toZMod bit * (seg34AccX192 rho - rho 36780) := by
      have hd : rho 36782 = Bool.toZMod bit * (rho 36780 - seg34AccX192 rho) := by
        rw [← hbit]
        unfold seg34AccX192
        linear_combination -r5510
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY193 rho = seg34AccY192 rho - Bool.toZMod bit * (seg34AccY192 rho - rho 36781) := by
      have hd : rho 36783 = Bool.toZMod bit * (rho 36781 - seg34AccY192 rho) := by
        rw [← hbit]
        unfold seg34AccY192
        linear_combination -r5511
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36773 * rho 36774 = rho 36784 := by linear_combination r5512
    have hd1 : rho 36773 * rho 36773 = rho 36785 := by linear_combination r5513
    have hd2 : rho 36774 * rho 36774 = rho 36786 := by linear_combination r5514
    have hd3 : rho 36787 * (rho 36774 * rho 36774 + rho 36773 * rho 36773 * (-1)) = 2 * (rho 36773 * rho 36774) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 36788 * (2 - (rho 36774 * rho 36774 + rho 36773 * rho 36773 * (-1))) = rho 36774 * rho 36774 - rho 36773 * rho 36773 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX192 rho : Seg34.F), (seg34AccY192 rho : Seg34.F)⟩
      ⟨(rho 36773 : Seg34.F), (rho 36774 : Seg34.F)⟩
      ⟨(rho 36780 : Seg34.F), (rho 36781 : Seg34.F)⟩
      ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
      ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg34_rows193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5517 rho ∧ Seg34.relationRow5518 rho ∧ Seg34.relationRow5519 rho ∧ Seg34.relationRow5520 rho ∧ Seg34.relationRow5521 rho ∧ Seg34.relationRow5522 rho ∧ Seg34.relationRow5523 rho ∧ Seg34.relationRow5524 rho ∧ Seg34.relationRow5525 rho ∧ Seg34.relationRow5526 rho ∧ Seg34.relationRow5527 rho ∧ Seg34.relationRow5528 rho ∧ Seg34.relationRow5529 rho ∧ Seg34.relationRow5530 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩

theorem seg34_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34185 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩ := by
  obtain ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩ := seg34_rows193 rho h
  unfold Seg34.relationRow5517 at r5517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5517
  unfold Seg34.relationRow5518 at r5518
  unfold Seg34.relationRow5519 at r5519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519
  unfold Seg34.relationRow5520 at r5520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520
  unfold Seg34.relationRow5521 at r5521
  unfold Seg34.relationRow5522 at r5522
  unfold Seg34.relationRow5523 at r5523
  unfold Seg34.relationRow5524 at r5524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524
  unfold Seg34.relationRow5525 at r5525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525
  unfold Seg34.relationRow5526 at r5526
  unfold Seg34.relationRow5527 at r5527
  unfold Seg34.relationRow5528 at r5528
  unfold Seg34.relationRow5529 at r5529
  unfold Seg34.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 34185 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
        ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩ := by
    have hnextx : seg34AccX194 rho = seg34AccX193 rho + rho 36796 := by
      unfold seg34AccX194 seg34AccX193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 43]
      ring
    have hnexty : seg34AccY194 rho = seg34AccY193 rho + rho 36797 := by
      unfold seg34AccY194 seg34AccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 43]
      ring
    have hsum : seg34AccX193 rho + seg34AccY193 rho = rho 36789 := by
      unfold seg34AccX193 seg34AccY193
      linear_combination r5517
    have ha0 : (rho 36787 + rho 36788) * (seg34AccX193 rho + seg34AccY193 rho) = rho 36790 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 36788 * seg34AccX193 rho = rho 36791 := by
      unfold seg34AccX193
      linear_combination r5519
    have ha2 : rho 36787 * seg34AccY193 rho = rho 36792 := by
      unfold seg34AccY193
      linear_combination r5520
    have ha3 : 3021 * rho 36791 * rho 36792 = rho 36793 := by
      linear_combination r5521
    have ha4 : rho 36794 * (1 + rho 36793) = rho 36791 + rho 36792 := by
      linear_combination r5522
    have ha5 : rho 36795 * (1 - rho 36793) = rho 36790 - rho 36791 - rho 36792 := by
      linear_combination r5523
    have haddx :
        rho 36794 * (1 + 3021 * (rho 36788 * seg34AccX193 rho) * (rho 36787 * seg34AccY193 rho)) =
          rho 36788 * seg34AccX193 rho + rho 36787 * seg34AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36795 * (1 - 3021 * (rho 36788 * seg34AccX193 rho) * (rho 36787 * seg34AccY193 rho)) =
          (-1) * (rho 36788 * seg34AccX193 rho) - rho 36787 * seg34AccY193 rho +
            (seg34AccY193 rho - seg34AccX193 rho * (-1)) * (rho 36787 + rho 36788) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36795 * (1 - rho 36793) = rho 36790 - rho 36791 - rho 36792 := ha5
        _ = (-1) * rho 36791 - rho 36792 + (seg34AccY193 rho - seg34AccX193 rho * (-1)) * (rho 36787 + rho 36788) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX194 rho = seg34AccX193 rho - Bool.toZMod bit * (seg34AccX193 rho - rho 36794) := by
      have hd : rho 36796 = Bool.toZMod bit * (rho 36794 - seg34AccX193 rho) := by
        rw [← hbit]
        unfold seg34AccX193
        linear_combination -r5524
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY194 rho = seg34AccY193 rho - Bool.toZMod bit * (seg34AccY193 rho - rho 36795) := by
      have hd : rho 36797 = Bool.toZMod bit * (rho 36795 - seg34AccY193 rho) := by
        rw [← hbit]
        unfold seg34AccY193
        linear_combination -r5525
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36787 * rho 36788 = rho 36798 := by linear_combination r5526
    have hd1 : rho 36787 * rho 36787 = rho 36799 := by linear_combination r5527
    have hd2 : rho 36788 * rho 36788 = rho 36800 := by linear_combination r5528
    have hd3 : rho 36801 * (rho 36788 * rho 36788 + rho 36787 * rho 36787 * (-1)) = 2 * (rho 36787 * rho 36788) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 36802 * (2 - (rho 36788 * rho 36788 + rho 36787 * rho 36787 * (-1))) = rho 36788 * rho 36788 - rho 36787 * rho 36787 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX193 rho : Seg34.F), (seg34AccY193 rho : Seg34.F)⟩
      ⟨(rho 36787 : Seg34.F), (rho 36788 : Seg34.F)⟩
      ⟨(rho 36794 : Seg34.F), (rho 36795 : Seg34.F)⟩
      ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
      ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg34_rows194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5531 rho ∧ Seg34.relationRow5532 rho ∧ Seg34.relationRow5533 rho ∧ Seg34.relationRow5534 rho ∧ Seg34.relationRow5535 rho ∧ Seg34.relationRow5536 rho ∧ Seg34.relationRow5537 rho ∧ Seg34.relationRow5538 rho ∧ Seg34.relationRow5539 rho ∧ Seg34.relationRow5540 rho ∧ Seg34.relationRow5541 rho ∧ Seg34.relationRow5542 rho ∧ Seg34.relationRow5543 rho ∧ Seg34.relationRow5544 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg34_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34186 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩ := by
  obtain ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg34_rows194 rho h
  unfold Seg34.relationRow5531 at r5531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5531
  unfold Seg34.relationRow5532 at r5532
  unfold Seg34.relationRow5533 at r5533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533
  unfold Seg34.relationRow5534 at r5534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534
  unfold Seg34.relationRow5535 at r5535
  unfold Seg34.relationRow5536 at r5536
  unfold Seg34.relationRow5537 at r5537
  unfold Seg34.relationRow5538 at r5538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538
  unfold Seg34.relationRow5539 at r5539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539
  unfold Seg34.relationRow5540 at r5540
  unfold Seg34.relationRow5541 at r5541
  unfold Seg34.relationRow5542 at r5542
  unfold Seg34.relationRow5543 at r5543
  unfold Seg34.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 34186 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
        ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩ := by
    have hnextx : seg34AccX195 rho = seg34AccX194 rho + rho 36810 := by
      unfold seg34AccX195 seg34AccX194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 44]
      ring
    have hnexty : seg34AccY195 rho = seg34AccY194 rho + rho 36811 := by
      unfold seg34AccY195 seg34AccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 44]
      ring
    have hsum : seg34AccX194 rho + seg34AccY194 rho = rho 36803 := by
      unfold seg34AccX194 seg34AccY194
      linear_combination r5531
    have ha0 : (rho 36801 + rho 36802) * (seg34AccX194 rho + seg34AccY194 rho) = rho 36804 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 36802 * seg34AccX194 rho = rho 36805 := by
      unfold seg34AccX194
      linear_combination r5533
    have ha2 : rho 36801 * seg34AccY194 rho = rho 36806 := by
      unfold seg34AccY194
      linear_combination r5534
    have ha3 : 3021 * rho 36805 * rho 36806 = rho 36807 := by
      linear_combination r5535
    have ha4 : rho 36808 * (1 + rho 36807) = rho 36805 + rho 36806 := by
      linear_combination r5536
    have ha5 : rho 36809 * (1 - rho 36807) = rho 36804 - rho 36805 - rho 36806 := by
      linear_combination r5537
    have haddx :
        rho 36808 * (1 + 3021 * (rho 36802 * seg34AccX194 rho) * (rho 36801 * seg34AccY194 rho)) =
          rho 36802 * seg34AccX194 rho + rho 36801 * seg34AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36809 * (1 - 3021 * (rho 36802 * seg34AccX194 rho) * (rho 36801 * seg34AccY194 rho)) =
          (-1) * (rho 36802 * seg34AccX194 rho) - rho 36801 * seg34AccY194 rho +
            (seg34AccY194 rho - seg34AccX194 rho * (-1)) * (rho 36801 + rho 36802) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36809 * (1 - rho 36807) = rho 36804 - rho 36805 - rho 36806 := ha5
        _ = (-1) * rho 36805 - rho 36806 + (seg34AccY194 rho - seg34AccX194 rho * (-1)) * (rho 36801 + rho 36802) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX195 rho = seg34AccX194 rho - Bool.toZMod bit * (seg34AccX194 rho - rho 36808) := by
      have hd : rho 36810 = Bool.toZMod bit * (rho 36808 - seg34AccX194 rho) := by
        rw [← hbit]
        unfold seg34AccX194
        linear_combination -r5538
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY195 rho = seg34AccY194 rho - Bool.toZMod bit * (seg34AccY194 rho - rho 36809) := by
      have hd : rho 36811 = Bool.toZMod bit * (rho 36809 - seg34AccY194 rho) := by
        rw [← hbit]
        unfold seg34AccY194
        linear_combination -r5539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36801 * rho 36802 = rho 36812 := by linear_combination r5540
    have hd1 : rho 36801 * rho 36801 = rho 36813 := by linear_combination r5541
    have hd2 : rho 36802 * rho 36802 = rho 36814 := by linear_combination r5542
    have hd3 : rho 36815 * (rho 36802 * rho 36802 + rho 36801 * rho 36801 * (-1)) = 2 * (rho 36801 * rho 36802) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 36816 * (2 - (rho 36802 * rho 36802 + rho 36801 * rho 36801 * (-1))) = rho 36802 * rho 36802 - rho 36801 * rho 36801 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX194 rho : Seg34.F), (seg34AccY194 rho : Seg34.F)⟩
      ⟨(rho 36801 : Seg34.F), (rho 36802 : Seg34.F)⟩
      ⟨(rho 36808 : Seg34.F), (rho 36809 : Seg34.F)⟩
      ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
      ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg34_rows195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5545 rho ∧ Seg34.relationRow5546 rho ∧ Seg34.relationRow5547 rho ∧ Seg34.relationRow5548 rho ∧ Seg34.relationRow5549 rho ∧ Seg34.relationRow5550 rho ∧ Seg34.relationRow5551 rho ∧ Seg34.relationRow5552 rho ∧ Seg34.relationRow5553 rho ∧ Seg34.relationRow5554 rho ∧ Seg34.relationRow5555 rho ∧ Seg34.relationRow5556 rho ∧ Seg34.relationRow5557 rho ∧ Seg34.relationRow5558 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩

theorem seg34_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34187 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩ := seg34_rows195 rho h
  unfold Seg34.relationRow5545 at r5545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545
  unfold Seg34.relationRow5546 at r5546
  unfold Seg34.relationRow5547 at r5547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547
  unfold Seg34.relationRow5548 at r5548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548
  unfold Seg34.relationRow5549 at r5549
  unfold Seg34.relationRow5550 at r5550
  unfold Seg34.relationRow5551 at r5551
  unfold Seg34.relationRow5552 at r5552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552
  unfold Seg34.relationRow5553 at r5553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5553
  unfold Seg34.relationRow5554 at r5554
  unfold Seg34.relationRow5555 at r5555
  unfold Seg34.relationRow5556 at r5556
  unfold Seg34.relationRow5557 at r5557
  unfold Seg34.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 34187 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
        ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩ := by
    have hnextx : seg34AccX196 rho = seg34AccX195 rho + rho 36824 := by
      unfold seg34AccX196 seg34AccX195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 45]
      ring
    have hnexty : seg34AccY196 rho = seg34AccY195 rho + rho 36825 := by
      unfold seg34AccY196 seg34AccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 45]
      ring
    have hsum : seg34AccX195 rho + seg34AccY195 rho = rho 36817 := by
      unfold seg34AccX195 seg34AccY195
      linear_combination r5545
    have ha0 : (rho 36815 + rho 36816) * (seg34AccX195 rho + seg34AccY195 rho) = rho 36818 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 36816 * seg34AccX195 rho = rho 36819 := by
      unfold seg34AccX195
      linear_combination r5547
    have ha2 : rho 36815 * seg34AccY195 rho = rho 36820 := by
      unfold seg34AccY195
      linear_combination r5548
    have ha3 : 3021 * rho 36819 * rho 36820 = rho 36821 := by
      linear_combination r5549
    have ha4 : rho 36822 * (1 + rho 36821) = rho 36819 + rho 36820 := by
      linear_combination r5550
    have ha5 : rho 36823 * (1 - rho 36821) = rho 36818 - rho 36819 - rho 36820 := by
      linear_combination r5551
    have haddx :
        rho 36822 * (1 + 3021 * (rho 36816 * seg34AccX195 rho) * (rho 36815 * seg34AccY195 rho)) =
          rho 36816 * seg34AccX195 rho + rho 36815 * seg34AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36823 * (1 - 3021 * (rho 36816 * seg34AccX195 rho) * (rho 36815 * seg34AccY195 rho)) =
          (-1) * (rho 36816 * seg34AccX195 rho) - rho 36815 * seg34AccY195 rho +
            (seg34AccY195 rho - seg34AccX195 rho * (-1)) * (rho 36815 + rho 36816) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36823 * (1 - rho 36821) = rho 36818 - rho 36819 - rho 36820 := ha5
        _ = (-1) * rho 36819 - rho 36820 + (seg34AccY195 rho - seg34AccX195 rho * (-1)) * (rho 36815 + rho 36816) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX196 rho = seg34AccX195 rho - Bool.toZMod bit * (seg34AccX195 rho - rho 36822) := by
      have hd : rho 36824 = Bool.toZMod bit * (rho 36822 - seg34AccX195 rho) := by
        rw [← hbit]
        unfold seg34AccX195
        linear_combination -r5552
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY196 rho = seg34AccY195 rho - Bool.toZMod bit * (seg34AccY195 rho - rho 36823) := by
      have hd : rho 36825 = Bool.toZMod bit * (rho 36823 - seg34AccY195 rho) := by
        rw [← hbit]
        unfold seg34AccY195
        linear_combination -r5553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36815 * rho 36816 = rho 36826 := by linear_combination r5554
    have hd1 : rho 36815 * rho 36815 = rho 36827 := by linear_combination r5555
    have hd2 : rho 36816 * rho 36816 = rho 36828 := by linear_combination r5556
    have hd3 : rho 36829 * (rho 36816 * rho 36816 + rho 36815 * rho 36815 * (-1)) = 2 * (rho 36815 * rho 36816) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 36830 * (2 - (rho 36816 * rho 36816 + rho 36815 * rho 36815 * (-1))) = rho 36816 * rho 36816 - rho 36815 * rho 36815 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX195 rho : Seg34.F), (seg34AccY195 rho : Seg34.F)⟩
      ⟨(rho 36815 : Seg34.F), (rho 36816 : Seg34.F)⟩
      ⟨(rho 36822 : Seg34.F), (rho 36823 : Seg34.F)⟩
      ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
      ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg34_rows196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5559 rho ∧ Seg34.relationRow5560 rho ∧ Seg34.relationRow5561 rho ∧ Seg34.relationRow5562 rho ∧ Seg34.relationRow5563 rho ∧ Seg34.relationRow5564 rho ∧ Seg34.relationRow5565 rho ∧ Seg34.relationRow5566 rho ∧ Seg34.relationRow5567 rho ∧ Seg34.relationRow5568 rho ∧ Seg34.relationRow5569 rho ∧ Seg34.relationRow5570 rho ∧ Seg34.relationRow5571 rho ∧ Seg34.relationRow5572 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩

theorem seg34_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34188 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩ := by
  obtain ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩ := seg34_rows196 rho h
  unfold Seg34.relationRow5559 at r5559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559
  unfold Seg34.relationRow5560 at r5560
  unfold Seg34.relationRow5561 at r5561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561
  unfold Seg34.relationRow5562 at r5562
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562
  unfold Seg34.relationRow5563 at r5563
  unfold Seg34.relationRow5564 at r5564
  unfold Seg34.relationRow5565 at r5565
  unfold Seg34.relationRow5566 at r5566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5566
  unfold Seg34.relationRow5567 at r5567
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567
  unfold Seg34.relationRow5568 at r5568
  unfold Seg34.relationRow5569 at r5569
  unfold Seg34.relationRow5570 at r5570
  unfold Seg34.relationRow5571 at r5571
  unfold Seg34.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 34188 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
        ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩ := by
    have hnextx : seg34AccX197 rho = seg34AccX196 rho + rho 36838 := by
      unfold seg34AccX197 seg34AccX196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 46]
      ring
    have hnexty : seg34AccY197 rho = seg34AccY196 rho + rho 36839 := by
      unfold seg34AccY197 seg34AccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 46]
      ring
    have hsum : seg34AccX196 rho + seg34AccY196 rho = rho 36831 := by
      unfold seg34AccX196 seg34AccY196
      linear_combination r5559
    have ha0 : (rho 36829 + rho 36830) * (seg34AccX196 rho + seg34AccY196 rho) = rho 36832 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 36830 * seg34AccX196 rho = rho 36833 := by
      unfold seg34AccX196
      linear_combination r5561
    have ha2 : rho 36829 * seg34AccY196 rho = rho 36834 := by
      unfold seg34AccY196
      linear_combination r5562
    have ha3 : 3021 * rho 36833 * rho 36834 = rho 36835 := by
      linear_combination r5563
    have ha4 : rho 36836 * (1 + rho 36835) = rho 36833 + rho 36834 := by
      linear_combination r5564
    have ha5 : rho 36837 * (1 - rho 36835) = rho 36832 - rho 36833 - rho 36834 := by
      linear_combination r5565
    have haddx :
        rho 36836 * (1 + 3021 * (rho 36830 * seg34AccX196 rho) * (rho 36829 * seg34AccY196 rho)) =
          rho 36830 * seg34AccX196 rho + rho 36829 * seg34AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36837 * (1 - 3021 * (rho 36830 * seg34AccX196 rho) * (rho 36829 * seg34AccY196 rho)) =
          (-1) * (rho 36830 * seg34AccX196 rho) - rho 36829 * seg34AccY196 rho +
            (seg34AccY196 rho - seg34AccX196 rho * (-1)) * (rho 36829 + rho 36830) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36837 * (1 - rho 36835) = rho 36832 - rho 36833 - rho 36834 := ha5
        _ = (-1) * rho 36833 - rho 36834 + (seg34AccY196 rho - seg34AccX196 rho * (-1)) * (rho 36829 + rho 36830) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX197 rho = seg34AccX196 rho - Bool.toZMod bit * (seg34AccX196 rho - rho 36836) := by
      have hd : rho 36838 = Bool.toZMod bit * (rho 36836 - seg34AccX196 rho) := by
        rw [← hbit]
        unfold seg34AccX196
        linear_combination -r5566
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY197 rho = seg34AccY196 rho - Bool.toZMod bit * (seg34AccY196 rho - rho 36837) := by
      have hd : rho 36839 = Bool.toZMod bit * (rho 36837 - seg34AccY196 rho) := by
        rw [← hbit]
        unfold seg34AccY196
        linear_combination -r5567
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36829 * rho 36830 = rho 36840 := by linear_combination r5568
    have hd1 : rho 36829 * rho 36829 = rho 36841 := by linear_combination r5569
    have hd2 : rho 36830 * rho 36830 = rho 36842 := by linear_combination r5570
    have hd3 : rho 36843 * (rho 36830 * rho 36830 + rho 36829 * rho 36829 * (-1)) = 2 * (rho 36829 * rho 36830) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 36844 * (2 - (rho 36830 * rho 36830 + rho 36829 * rho 36829 * (-1))) = rho 36830 * rho 36830 - rho 36829 * rho 36829 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX196 rho : Seg34.F), (seg34AccY196 rho : Seg34.F)⟩
      ⟨(rho 36829 : Seg34.F), (rho 36830 : Seg34.F)⟩
      ⟨(rho 36836 : Seg34.F), (rho 36837 : Seg34.F)⟩
      ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
      ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg34_rows197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    Seg34.relationRow5573 rho ∧ Seg34.relationRow5574 rho ∧ Seg34.relationRow5575 rho ∧ Seg34.relationRow5576 rho ∧ Seg34.relationRow5577 rho ∧ Seg34.relationRow5578 rho ∧ Seg34.relationRow5579 rho ∧ Seg34.relationRow5580 rho ∧ Seg34.relationRow5581 rho ∧ Seg34.relationRow5582 rho ∧ Seg34.relationRow5583 rho ∧ Seg34.relationRow5584 rho ∧ Seg34.relationRow5585 rho ∧ Seg34.relationRow5586 rho := by
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem seg34_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg34.relation rho) :
    ∀ (bit : Bool), rho 34189 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩ := by
  obtain ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := seg34_rows197 rho h
  unfold Seg34.relationRow5573 at r5573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573
  unfold Seg34.relationRow5574 at r5574
  unfold Seg34.relationRow5575 at r5575
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575
  unfold Seg34.relationRow5576 at r5576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576
  unfold Seg34.relationRow5577 at r5577
  unfold Seg34.relationRow5578 at r5578
  unfold Seg34.relationRow5579 at r5579
  unfold Seg34.relationRow5580 at r5580
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580
  unfold Seg34.relationRow5581 at r5581
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581
  unfold Seg34.relationRow5582 at r5582
  unfold Seg34.relationRow5583 at r5583
  unfold Seg34.relationRow5584 at r5584
  unfold Seg34.relationRow5585 at r5585
  unfold Seg34.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 34189 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
        ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
        ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
        ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩ := by
    have hnextx : seg34AccX198 rho = seg34AccX197 rho + rho 36852 := by
      unfold seg34AccX198 seg34AccX197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36194 14 47]
      ring
    have hnexty : seg34AccY198 rho = seg34AccY197 rho + rho 36853 := by
      unfold seg34AccY198 seg34AccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 36195 14 47]
      ring
    have hsum : seg34AccX197 rho + seg34AccY197 rho = rho 36845 := by
      unfold seg34AccX197 seg34AccY197
      linear_combination r5573
    have ha0 : (rho 36843 + rho 36844) * (seg34AccX197 rho + seg34AccY197 rho) = rho 36846 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 36844 * seg34AccX197 rho = rho 36847 := by
      unfold seg34AccX197
      linear_combination r5575
    have ha2 : rho 36843 * seg34AccY197 rho = rho 36848 := by
      unfold seg34AccY197
      linear_combination r5576
    have ha3 : 3021 * rho 36847 * rho 36848 = rho 36849 := by
      linear_combination r5577
    have ha4 : rho 36850 * (1 + rho 36849) = rho 36847 + rho 36848 := by
      linear_combination r5578
    have ha5 : rho 36851 * (1 - rho 36849) = rho 36846 - rho 36847 - rho 36848 := by
      linear_combination r5579
    have haddx :
        rho 36850 * (1 + 3021 * (rho 36844 * seg34AccX197 rho) * (rho 36843 * seg34AccY197 rho)) =
          rho 36844 * seg34AccX197 rho + rho 36843 * seg34AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 36851 * (1 - 3021 * (rho 36844 * seg34AccX197 rho) * (rho 36843 * seg34AccY197 rho)) =
          (-1) * (rho 36844 * seg34AccX197 rho) - rho 36843 * seg34AccY197 rho +
            (seg34AccY197 rho - seg34AccX197 rho * (-1)) * (rho 36843 + rho 36844) := by
      rw [ha1, ha2, ha3]
      calc
        rho 36851 * (1 - rho 36849) = rho 36846 - rho 36847 - rho 36848 := ha5
        _ = (-1) * rho 36847 - rho 36848 + (seg34AccY197 rho - seg34AccX197 rho * (-1)) * (rho 36843 + rho 36844) := by
          rw [← ha0]
          ring
    have hselx : seg34AccX198 rho = seg34AccX197 rho - Bool.toZMod bit * (seg34AccX197 rho - rho 36850) := by
      have hd : rho 36852 = Bool.toZMod bit * (rho 36850 - seg34AccX197 rho) := by
        rw [← hbit]
        unfold seg34AccX197
        linear_combination -r5580
      rw [hnextx]
      linear_combination hd
    have hsely : seg34AccY198 rho = seg34AccY197 rho - Bool.toZMod bit * (seg34AccY197 rho - rho 36851) := by
      have hd : rho 36853 = Bool.toZMod bit * (rho 36851 - seg34AccY197 rho) := by
        rw [← hbit]
        unfold seg34AccY197
        linear_combination -r5581
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 36843 * rho 36844 = rho 36854 := by linear_combination r5582
    have hd1 : rho 36843 * rho 36843 = rho 36855 := by linear_combination r5583
    have hd2 : rho 36844 * rho 36844 = rho 36856 := by linear_combination r5584
    have hd3 : rho 36857 * (rho 36844 * rho 36844 + rho 36843 * rho 36843 * (-1)) = 2 * (rho 36843 * rho 36844) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 36858 * (2 - (rho 36844 * rho 36844 + rho 36843 * rho 36843 * (-1))) = rho 36844 * rho 36844 - rho 36843 * rho 36843 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg34AccX197 rho : Seg34.F), (seg34AccY197 rho : Seg34.F)⟩
      ⟨(rho 36843 : Seg34.F), (rho 36844 : Seg34.F)⟩
      ⟨(rho 36850 : Seg34.F), (rho 36851 : Seg34.F)⟩
      ⟨(seg34AccX198 rho : Seg34.F), (seg34AccY198 rho : Seg34.F)⟩
      ⟨(rho 36857 : Seg34.F), (rho 36858 : Seg34.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg34_hstep_c17 (rho : Nat -> Seg34.F) (h : Seg34.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (33992 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 187 ≤ i → i < 198 →
      EdwardsBridge.onCurve (seg34LadderAccState rho i) →
      EdwardsBridge.onCurve (seg34LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg34LadderAccState rho i) (seg34LadderCurState rho i)
        (seg34LadderAccState rho (i + 1)) (seg34LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg34_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg34_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg34_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg34_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg34_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
  · exact seg34_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg34_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg34_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg34_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg34_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg34_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
