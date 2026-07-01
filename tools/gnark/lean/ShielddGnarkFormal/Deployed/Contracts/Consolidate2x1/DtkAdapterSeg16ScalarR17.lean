import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg16_rows187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5433 rho ∧ Seg16.relationRow5434 rho ∧ Seg16.relationRow5435 rho ∧ Seg16.relationRow5436 rho ∧ Seg16.relationRow5437 rho ∧ Seg16.relationRow5438 rho ∧ Seg16.relationRow5439 rho ∧ Seg16.relationRow5440 rho ∧ Seg16.relationRow5441 rho ∧ Seg16.relationRow5442 rho ∧ Seg16.relationRow5443 rho ∧ Seg16.relationRow5444 rho ∧ Seg16.relationRow5445 rho ∧ Seg16.relationRow5446 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩

theorem seg16_rung187 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15479 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩ := by
  obtain ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩ := seg16_rows187 rho h
  unfold Seg16.relationRow5433 at r5433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5433
  unfold Seg16.relationRow5434 at r5434
  unfold Seg16.relationRow5435 at r5435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435
  unfold Seg16.relationRow5436 at r5436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5436
  unfold Seg16.relationRow5437 at r5437
  unfold Seg16.relationRow5438 at r5438
  unfold Seg16.relationRow5439 at r5439
  unfold Seg16.relationRow5440 at r5440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5440
  unfold Seg16.relationRow5441 at r5441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441
  unfold Seg16.relationRow5442 at r5442
  unfold Seg16.relationRow5443 at r5443
  unfold Seg16.relationRow5444 at r5444
  unfold Seg16.relationRow5445 at r5445
  unfold Seg16.relationRow5446 at r5446
  have hrung187 (bit : Bool) (hbit : rho 15479 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
        ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩ := by
    have hnextx : seg16AccX188 rho = seg16AccX187 rho + rho 18012 := by
      unfold seg16AccX188 seg16AccX187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 37]
      ring
    have hnexty : seg16AccY188 rho = seg16AccY187 rho + rho 18013 := by
      unfold seg16AccY188 seg16AccY187
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 37]
      ring
    have hsum : seg16AccX187 rho + seg16AccY187 rho = rho 18005 := by
      unfold seg16AccX187 seg16AccY187
      linear_combination r5433
    have ha0 : (rho 18003 + rho 18004) * (seg16AccX187 rho + seg16AccY187 rho) = rho 18006 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 18004 * seg16AccX187 rho = rho 18007 := by
      unfold seg16AccX187
      linear_combination r5435
    have ha2 : rho 18003 * seg16AccY187 rho = rho 18008 := by
      unfold seg16AccY187
      linear_combination r5436
    have ha3 : 3021 * rho 18007 * rho 18008 = rho 18009 := by
      linear_combination r5437
    have ha4 : rho 18010 * (1 + rho 18009) = rho 18007 + rho 18008 := by
      linear_combination r5438
    have ha5 : rho 18011 * (1 - rho 18009) = rho 18006 - rho 18007 - rho 18008 := by
      linear_combination r5439
    have haddx :
        rho 18010 * (1 + 3021 * (rho 18004 * seg16AccX187 rho) * (rho 18003 * seg16AccY187 rho)) =
          rho 18004 * seg16AccX187 rho + rho 18003 * seg16AccY187 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18011 * (1 - 3021 * (rho 18004 * seg16AccX187 rho) * (rho 18003 * seg16AccY187 rho)) =
          (-1) * (rho 18004 * seg16AccX187 rho) - rho 18003 * seg16AccY187 rho +
            (seg16AccY187 rho - seg16AccX187 rho * (-1)) * (rho 18003 + rho 18004) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18011 * (1 - rho 18009) = rho 18006 - rho 18007 - rho 18008 := ha5
        _ = (-1) * rho 18007 - rho 18008 + (seg16AccY187 rho - seg16AccX187 rho * (-1)) * (rho 18003 + rho 18004) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX188 rho = seg16AccX187 rho - Bool.toZMod bit * (seg16AccX187 rho - rho 18010) := by
      have hd : rho 18012 = Bool.toZMod bit * (rho 18010 - seg16AccX187 rho) := by
        rw [← hbit]
        unfold seg16AccX187
        linear_combination -r5440
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY188 rho = seg16AccY187 rho - Bool.toZMod bit * (seg16AccY187 rho - rho 18011) := by
      have hd : rho 18013 = Bool.toZMod bit * (rho 18011 - seg16AccY187 rho) := by
        rw [← hbit]
        unfold seg16AccY187
        linear_combination -r5441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18003 * rho 18004 = rho 18014 := by linear_combination r5442
    have hd1 : rho 18003 * rho 18003 = rho 18015 := by linear_combination r5443
    have hd2 : rho 18004 * rho 18004 = rho 18016 := by linear_combination r5444
    have hd3 : rho 18017 * (rho 18004 * rho 18004 + rho 18003 * rho 18003 * (-1)) = 2 * (rho 18003 * rho 18004) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 18018 * (2 - (rho 18004 * rho 18004 + rho 18003 * rho 18003 * (-1))) = rho 18004 * rho 18004 - rho 18003 * rho 18003 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX187 rho : Seg16.F), (seg16AccY187 rho : Seg16.F)⟩
      ⟨(rho 18003 : Seg16.F), (rho 18004 : Seg16.F)⟩
      ⟨(rho 18010 : Seg16.F), (rho 18011 : Seg16.F)⟩
      ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
      ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung187

theorem seg16_rows188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5447 rho ∧ Seg16.relationRow5448 rho ∧ Seg16.relationRow5449 rho ∧ Seg16.relationRow5450 rho ∧ Seg16.relationRow5451 rho ∧ Seg16.relationRow5452 rho ∧ Seg16.relationRow5453 rho ∧ Seg16.relationRow5454 rho ∧ Seg16.relationRow5455 rho ∧ Seg16.relationRow5456 rho ∧ Seg16.relationRow5457 rho ∧ Seg16.relationRow5458 rho ∧ Seg16.relationRow5459 rho ∧ Seg16.relationRow5460 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩

theorem seg16_rung188 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15480 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩ := by
  obtain ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩ := seg16_rows188 rho h
  unfold Seg16.relationRow5447 at r5447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447
  unfold Seg16.relationRow5448 at r5448
  unfold Seg16.relationRow5449 at r5449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5449
  unfold Seg16.relationRow5450 at r5450
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5450
  unfold Seg16.relationRow5451 at r5451
  unfold Seg16.relationRow5452 at r5452
  unfold Seg16.relationRow5453 at r5453
  unfold Seg16.relationRow5454 at r5454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454
  unfold Seg16.relationRow5455 at r5455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455
  unfold Seg16.relationRow5456 at r5456
  unfold Seg16.relationRow5457 at r5457
  unfold Seg16.relationRow5458 at r5458
  unfold Seg16.relationRow5459 at r5459
  unfold Seg16.relationRow5460 at r5460
  have hrung188 (bit : Bool) (hbit : rho 15480 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
        ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩ := by
    have hnextx : seg16AccX189 rho = seg16AccX188 rho + rho 18026 := by
      unfold seg16AccX189 seg16AccX188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 38]
      ring
    have hnexty : seg16AccY189 rho = seg16AccY188 rho + rho 18027 := by
      unfold seg16AccY189 seg16AccY188
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 38]
      ring
    have hsum : seg16AccX188 rho + seg16AccY188 rho = rho 18019 := by
      unfold seg16AccX188 seg16AccY188
      linear_combination r5447
    have ha0 : (rho 18017 + rho 18018) * (seg16AccX188 rho + seg16AccY188 rho) = rho 18020 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 18018 * seg16AccX188 rho = rho 18021 := by
      unfold seg16AccX188
      linear_combination r5449
    have ha2 : rho 18017 * seg16AccY188 rho = rho 18022 := by
      unfold seg16AccY188
      linear_combination r5450
    have ha3 : 3021 * rho 18021 * rho 18022 = rho 18023 := by
      linear_combination r5451
    have ha4 : rho 18024 * (1 + rho 18023) = rho 18021 + rho 18022 := by
      linear_combination r5452
    have ha5 : rho 18025 * (1 - rho 18023) = rho 18020 - rho 18021 - rho 18022 := by
      linear_combination r5453
    have haddx :
        rho 18024 * (1 + 3021 * (rho 18018 * seg16AccX188 rho) * (rho 18017 * seg16AccY188 rho)) =
          rho 18018 * seg16AccX188 rho + rho 18017 * seg16AccY188 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18025 * (1 - 3021 * (rho 18018 * seg16AccX188 rho) * (rho 18017 * seg16AccY188 rho)) =
          (-1) * (rho 18018 * seg16AccX188 rho) - rho 18017 * seg16AccY188 rho +
            (seg16AccY188 rho - seg16AccX188 rho * (-1)) * (rho 18017 + rho 18018) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18025 * (1 - rho 18023) = rho 18020 - rho 18021 - rho 18022 := ha5
        _ = (-1) * rho 18021 - rho 18022 + (seg16AccY188 rho - seg16AccX188 rho * (-1)) * (rho 18017 + rho 18018) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX189 rho = seg16AccX188 rho - Bool.toZMod bit * (seg16AccX188 rho - rho 18024) := by
      have hd : rho 18026 = Bool.toZMod bit * (rho 18024 - seg16AccX188 rho) := by
        rw [← hbit]
        unfold seg16AccX188
        linear_combination -r5454
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY189 rho = seg16AccY188 rho - Bool.toZMod bit * (seg16AccY188 rho - rho 18025) := by
      have hd : rho 18027 = Bool.toZMod bit * (rho 18025 - seg16AccY188 rho) := by
        rw [← hbit]
        unfold seg16AccY188
        linear_combination -r5455
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18017 * rho 18018 = rho 18028 := by linear_combination r5456
    have hd1 : rho 18017 * rho 18017 = rho 18029 := by linear_combination r5457
    have hd2 : rho 18018 * rho 18018 = rho 18030 := by linear_combination r5458
    have hd3 : rho 18031 * (rho 18018 * rho 18018 + rho 18017 * rho 18017 * (-1)) = 2 * (rho 18017 * rho 18018) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 18032 * (2 - (rho 18018 * rho 18018 + rho 18017 * rho 18017 * (-1))) = rho 18018 * rho 18018 - rho 18017 * rho 18017 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX188 rho : Seg16.F), (seg16AccY188 rho : Seg16.F)⟩
      ⟨(rho 18017 : Seg16.F), (rho 18018 : Seg16.F)⟩
      ⟨(rho 18024 : Seg16.F), (rho 18025 : Seg16.F)⟩
      ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
      ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung188

theorem seg16_rows189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5461 rho ∧ Seg16.relationRow5462 rho ∧ Seg16.relationRow5463 rho ∧ Seg16.relationRow5464 rho ∧ Seg16.relationRow5465 rho ∧ Seg16.relationRow5466 rho ∧ Seg16.relationRow5467 rho ∧ Seg16.relationRow5468 rho ∧ Seg16.relationRow5469 rho ∧ Seg16.relationRow5470 rho ∧ Seg16.relationRow5471 rho ∧ Seg16.relationRow5472 rho ∧ Seg16.relationRow5473 rho ∧ Seg16.relationRow5474 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩

theorem seg16_rung189 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15481 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩ := by
  obtain ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩ := seg16_rows189 rho h
  unfold Seg16.relationRow5461 at r5461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461
  unfold Seg16.relationRow5462 at r5462
  unfold Seg16.relationRow5463 at r5463
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5463
  unfold Seg16.relationRow5464 at r5464
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5464
  unfold Seg16.relationRow5465 at r5465
  unfold Seg16.relationRow5466 at r5466
  unfold Seg16.relationRow5467 at r5467
  unfold Seg16.relationRow5468 at r5468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468
  unfold Seg16.relationRow5469 at r5469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469
  unfold Seg16.relationRow5470 at r5470
  unfold Seg16.relationRow5471 at r5471
  unfold Seg16.relationRow5472 at r5472
  unfold Seg16.relationRow5473 at r5473
  unfold Seg16.relationRow5474 at r5474
  have hrung189 (bit : Bool) (hbit : rho 15481 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
        ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩ := by
    have hnextx : seg16AccX190 rho = seg16AccX189 rho + rho 18040 := by
      unfold seg16AccX190 seg16AccX189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 39]
      ring
    have hnexty : seg16AccY190 rho = seg16AccY189 rho + rho 18041 := by
      unfold seg16AccY190 seg16AccY189
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 39]
      ring
    have hsum : seg16AccX189 rho + seg16AccY189 rho = rho 18033 := by
      unfold seg16AccX189 seg16AccY189
      linear_combination r5461
    have ha0 : (rho 18031 + rho 18032) * (seg16AccX189 rho + seg16AccY189 rho) = rho 18034 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 18032 * seg16AccX189 rho = rho 18035 := by
      unfold seg16AccX189
      linear_combination r5463
    have ha2 : rho 18031 * seg16AccY189 rho = rho 18036 := by
      unfold seg16AccY189
      linear_combination r5464
    have ha3 : 3021 * rho 18035 * rho 18036 = rho 18037 := by
      linear_combination r5465
    have ha4 : rho 18038 * (1 + rho 18037) = rho 18035 + rho 18036 := by
      linear_combination r5466
    have ha5 : rho 18039 * (1 - rho 18037) = rho 18034 - rho 18035 - rho 18036 := by
      linear_combination r5467
    have haddx :
        rho 18038 * (1 + 3021 * (rho 18032 * seg16AccX189 rho) * (rho 18031 * seg16AccY189 rho)) =
          rho 18032 * seg16AccX189 rho + rho 18031 * seg16AccY189 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18039 * (1 - 3021 * (rho 18032 * seg16AccX189 rho) * (rho 18031 * seg16AccY189 rho)) =
          (-1) * (rho 18032 * seg16AccX189 rho) - rho 18031 * seg16AccY189 rho +
            (seg16AccY189 rho - seg16AccX189 rho * (-1)) * (rho 18031 + rho 18032) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18039 * (1 - rho 18037) = rho 18034 - rho 18035 - rho 18036 := ha5
        _ = (-1) * rho 18035 - rho 18036 + (seg16AccY189 rho - seg16AccX189 rho * (-1)) * (rho 18031 + rho 18032) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX190 rho = seg16AccX189 rho - Bool.toZMod bit * (seg16AccX189 rho - rho 18038) := by
      have hd : rho 18040 = Bool.toZMod bit * (rho 18038 - seg16AccX189 rho) := by
        rw [← hbit]
        unfold seg16AccX189
        linear_combination -r5468
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY190 rho = seg16AccY189 rho - Bool.toZMod bit * (seg16AccY189 rho - rho 18039) := by
      have hd : rho 18041 = Bool.toZMod bit * (rho 18039 - seg16AccY189 rho) := by
        rw [← hbit]
        unfold seg16AccY189
        linear_combination -r5469
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18031 * rho 18032 = rho 18042 := by linear_combination r5470
    have hd1 : rho 18031 * rho 18031 = rho 18043 := by linear_combination r5471
    have hd2 : rho 18032 * rho 18032 = rho 18044 := by linear_combination r5472
    have hd3 : rho 18045 * (rho 18032 * rho 18032 + rho 18031 * rho 18031 * (-1)) = 2 * (rho 18031 * rho 18032) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 18046 * (2 - (rho 18032 * rho 18032 + rho 18031 * rho 18031 * (-1))) = rho 18032 * rho 18032 - rho 18031 * rho 18031 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX189 rho : Seg16.F), (seg16AccY189 rho : Seg16.F)⟩
      ⟨(rho 18031 : Seg16.F), (rho 18032 : Seg16.F)⟩
      ⟨(rho 18038 : Seg16.F), (rho 18039 : Seg16.F)⟩
      ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
      ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung189

theorem seg16_rows190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5475 rho ∧ Seg16.relationRow5476 rho ∧ Seg16.relationRow5477 rho ∧ Seg16.relationRow5478 rho ∧ Seg16.relationRow5479 rho ∧ Seg16.relationRow5480 rho ∧ Seg16.relationRow5481 rho ∧ Seg16.relationRow5482 rho ∧ Seg16.relationRow5483 rho ∧ Seg16.relationRow5484 rho ∧ Seg16.relationRow5485 rho ∧ Seg16.relationRow5486 rho ∧ Seg16.relationRow5487 rho ∧ Seg16.relationRow5488 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩

theorem seg16_rung190 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15482 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩ := by
  obtain ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩ := seg16_rows190 rho h
  unfold Seg16.relationRow5475 at r5475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5475
  unfold Seg16.relationRow5476 at r5476
  unfold Seg16.relationRow5477 at r5477
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5477
  unfold Seg16.relationRow5478 at r5478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5478
  unfold Seg16.relationRow5479 at r5479
  unfold Seg16.relationRow5480 at r5480
  unfold Seg16.relationRow5481 at r5481
  unfold Seg16.relationRow5482 at r5482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482
  unfold Seg16.relationRow5483 at r5483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5483
  unfold Seg16.relationRow5484 at r5484
  unfold Seg16.relationRow5485 at r5485
  unfold Seg16.relationRow5486 at r5486
  unfold Seg16.relationRow5487 at r5487
  unfold Seg16.relationRow5488 at r5488
  have hrung190 (bit : Bool) (hbit : rho 15482 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
        ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩ := by
    have hnextx : seg16AccX191 rho = seg16AccX190 rho + rho 18054 := by
      unfold seg16AccX191 seg16AccX190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 40]
      ring
    have hnexty : seg16AccY191 rho = seg16AccY190 rho + rho 18055 := by
      unfold seg16AccY191 seg16AccY190
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 40]
      ring
    have hsum : seg16AccX190 rho + seg16AccY190 rho = rho 18047 := by
      unfold seg16AccX190 seg16AccY190
      linear_combination r5475
    have ha0 : (rho 18045 + rho 18046) * (seg16AccX190 rho + seg16AccY190 rho) = rho 18048 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 18046 * seg16AccX190 rho = rho 18049 := by
      unfold seg16AccX190
      linear_combination r5477
    have ha2 : rho 18045 * seg16AccY190 rho = rho 18050 := by
      unfold seg16AccY190
      linear_combination r5478
    have ha3 : 3021 * rho 18049 * rho 18050 = rho 18051 := by
      linear_combination r5479
    have ha4 : rho 18052 * (1 + rho 18051) = rho 18049 + rho 18050 := by
      linear_combination r5480
    have ha5 : rho 18053 * (1 - rho 18051) = rho 18048 - rho 18049 - rho 18050 := by
      linear_combination r5481
    have haddx :
        rho 18052 * (1 + 3021 * (rho 18046 * seg16AccX190 rho) * (rho 18045 * seg16AccY190 rho)) =
          rho 18046 * seg16AccX190 rho + rho 18045 * seg16AccY190 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18053 * (1 - 3021 * (rho 18046 * seg16AccX190 rho) * (rho 18045 * seg16AccY190 rho)) =
          (-1) * (rho 18046 * seg16AccX190 rho) - rho 18045 * seg16AccY190 rho +
            (seg16AccY190 rho - seg16AccX190 rho * (-1)) * (rho 18045 + rho 18046) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18053 * (1 - rho 18051) = rho 18048 - rho 18049 - rho 18050 := ha5
        _ = (-1) * rho 18049 - rho 18050 + (seg16AccY190 rho - seg16AccX190 rho * (-1)) * (rho 18045 + rho 18046) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX191 rho = seg16AccX190 rho - Bool.toZMod bit * (seg16AccX190 rho - rho 18052) := by
      have hd : rho 18054 = Bool.toZMod bit * (rho 18052 - seg16AccX190 rho) := by
        rw [← hbit]
        unfold seg16AccX190
        linear_combination -r5482
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY191 rho = seg16AccY190 rho - Bool.toZMod bit * (seg16AccY190 rho - rho 18053) := by
      have hd : rho 18055 = Bool.toZMod bit * (rho 18053 - seg16AccY190 rho) := by
        rw [← hbit]
        unfold seg16AccY190
        linear_combination -r5483
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18045 * rho 18046 = rho 18056 := by linear_combination r5484
    have hd1 : rho 18045 * rho 18045 = rho 18057 := by linear_combination r5485
    have hd2 : rho 18046 * rho 18046 = rho 18058 := by linear_combination r5486
    have hd3 : rho 18059 * (rho 18046 * rho 18046 + rho 18045 * rho 18045 * (-1)) = 2 * (rho 18045 * rho 18046) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 18060 * (2 - (rho 18046 * rho 18046 + rho 18045 * rho 18045 * (-1))) = rho 18046 * rho 18046 - rho 18045 * rho 18045 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX190 rho : Seg16.F), (seg16AccY190 rho : Seg16.F)⟩
      ⟨(rho 18045 : Seg16.F), (rho 18046 : Seg16.F)⟩
      ⟨(rho 18052 : Seg16.F), (rho 18053 : Seg16.F)⟩
      ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
      ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung190

theorem seg16_rows191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5489 rho ∧ Seg16.relationRow5490 rho ∧ Seg16.relationRow5491 rho ∧ Seg16.relationRow5492 rho ∧ Seg16.relationRow5493 rho ∧ Seg16.relationRow5494 rho ∧ Seg16.relationRow5495 rho ∧ Seg16.relationRow5496 rho ∧ Seg16.relationRow5497 rho ∧ Seg16.relationRow5498 rho ∧ Seg16.relationRow5499 rho ∧ Seg16.relationRow5500 rho ∧ Seg16.relationRow5501 rho ∧ Seg16.relationRow5502 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩

theorem seg16_rung191 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15483 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩ := by
  obtain ⟨r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502⟩ := seg16_rows191 rho h
  unfold Seg16.relationRow5489 at r5489
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5489
  unfold Seg16.relationRow5490 at r5490
  unfold Seg16.relationRow5491 at r5491
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5491
  unfold Seg16.relationRow5492 at r5492
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5492
  unfold Seg16.relationRow5493 at r5493
  unfold Seg16.relationRow5494 at r5494
  unfold Seg16.relationRow5495 at r5495
  unfold Seg16.relationRow5496 at r5496
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5496
  unfold Seg16.relationRow5497 at r5497
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5497
  unfold Seg16.relationRow5498 at r5498
  unfold Seg16.relationRow5499 at r5499
  unfold Seg16.relationRow5500 at r5500
  unfold Seg16.relationRow5501 at r5501
  unfold Seg16.relationRow5502 at r5502
  have hrung191 (bit : Bool) (hbit : rho 15483 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
        ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩ := by
    have hnextx : seg16AccX192 rho = seg16AccX191 rho + rho 18068 := by
      unfold seg16AccX192 seg16AccX191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 41]
      ring
    have hnexty : seg16AccY192 rho = seg16AccY191 rho + rho 18069 := by
      unfold seg16AccY192 seg16AccY191
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 41]
      ring
    have hsum : seg16AccX191 rho + seg16AccY191 rho = rho 18061 := by
      unfold seg16AccX191 seg16AccY191
      linear_combination r5489
    have ha0 : (rho 18059 + rho 18060) * (seg16AccX191 rho + seg16AccY191 rho) = rho 18062 := by
      rw [hsum]
      linear_combination r5490
    have ha1 : rho 18060 * seg16AccX191 rho = rho 18063 := by
      unfold seg16AccX191
      linear_combination r5491
    have ha2 : rho 18059 * seg16AccY191 rho = rho 18064 := by
      unfold seg16AccY191
      linear_combination r5492
    have ha3 : 3021 * rho 18063 * rho 18064 = rho 18065 := by
      linear_combination r5493
    have ha4 : rho 18066 * (1 + rho 18065) = rho 18063 + rho 18064 := by
      linear_combination r5494
    have ha5 : rho 18067 * (1 - rho 18065) = rho 18062 - rho 18063 - rho 18064 := by
      linear_combination r5495
    have haddx :
        rho 18066 * (1 + 3021 * (rho 18060 * seg16AccX191 rho) * (rho 18059 * seg16AccY191 rho)) =
          rho 18060 * seg16AccX191 rho + rho 18059 * seg16AccY191 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18067 * (1 - 3021 * (rho 18060 * seg16AccX191 rho) * (rho 18059 * seg16AccY191 rho)) =
          (-1) * (rho 18060 * seg16AccX191 rho) - rho 18059 * seg16AccY191 rho +
            (seg16AccY191 rho - seg16AccX191 rho * (-1)) * (rho 18059 + rho 18060) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18067 * (1 - rho 18065) = rho 18062 - rho 18063 - rho 18064 := ha5
        _ = (-1) * rho 18063 - rho 18064 + (seg16AccY191 rho - seg16AccX191 rho * (-1)) * (rho 18059 + rho 18060) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX192 rho = seg16AccX191 rho - Bool.toZMod bit * (seg16AccX191 rho - rho 18066) := by
      have hd : rho 18068 = Bool.toZMod bit * (rho 18066 - seg16AccX191 rho) := by
        rw [← hbit]
        unfold seg16AccX191
        linear_combination -r5496
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY192 rho = seg16AccY191 rho - Bool.toZMod bit * (seg16AccY191 rho - rho 18067) := by
      have hd : rho 18069 = Bool.toZMod bit * (rho 18067 - seg16AccY191 rho) := by
        rw [← hbit]
        unfold seg16AccY191
        linear_combination -r5497
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18059 * rho 18060 = rho 18070 := by linear_combination r5498
    have hd1 : rho 18059 * rho 18059 = rho 18071 := by linear_combination r5499
    have hd2 : rho 18060 * rho 18060 = rho 18072 := by linear_combination r5500
    have hd3 : rho 18073 * (rho 18060 * rho 18060 + rho 18059 * rho 18059 * (-1)) = 2 * (rho 18059 * rho 18060) := by
      rw [hd0, hd1, hd2]
      linear_combination r5501
    have hd4 : rho 18074 * (2 - (rho 18060 * rho 18060 + rho 18059 * rho 18059 * (-1))) = rho 18060 * rho 18060 - rho 18059 * rho 18059 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5502
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX191 rho : Seg16.F), (seg16AccY191 rho : Seg16.F)⟩
      ⟨(rho 18059 : Seg16.F), (rho 18060 : Seg16.F)⟩
      ⟨(rho 18066 : Seg16.F), (rho 18067 : Seg16.F)⟩
      ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
      ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung191

theorem seg16_rows192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5503 rho ∧ Seg16.relationRow5504 rho ∧ Seg16.relationRow5505 rho ∧ Seg16.relationRow5506 rho ∧ Seg16.relationRow5507 rho ∧ Seg16.relationRow5508 rho ∧ Seg16.relationRow5509 rho ∧ Seg16.relationRow5510 rho ∧ Seg16.relationRow5511 rho ∧ Seg16.relationRow5512 rho ∧ Seg16.relationRow5513 rho ∧ Seg16.relationRow5514 rho ∧ Seg16.relationRow5515 rho ∧ Seg16.relationRow5516 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, _, _, _⟩
  exact ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩

theorem seg16_rung192 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15484 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩ := by
  obtain ⟨r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516⟩ := seg16_rows192 rho h
  unfold Seg16.relationRow5503 at r5503
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5503
  unfold Seg16.relationRow5504 at r5504
  unfold Seg16.relationRow5505 at r5505
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5505
  unfold Seg16.relationRow5506 at r5506
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5506
  unfold Seg16.relationRow5507 at r5507
  unfold Seg16.relationRow5508 at r5508
  unfold Seg16.relationRow5509 at r5509
  unfold Seg16.relationRow5510 at r5510
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5510
  unfold Seg16.relationRow5511 at r5511
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5511
  unfold Seg16.relationRow5512 at r5512
  unfold Seg16.relationRow5513 at r5513
  unfold Seg16.relationRow5514 at r5514
  unfold Seg16.relationRow5515 at r5515
  unfold Seg16.relationRow5516 at r5516
  have hrung192 (bit : Bool) (hbit : rho 15484 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
        ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩ := by
    have hnextx : seg16AccX193 rho = seg16AccX192 rho + rho 18082 := by
      unfold seg16AccX193 seg16AccX192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 42]
      ring
    have hnexty : seg16AccY193 rho = seg16AccY192 rho + rho 18083 := by
      unfold seg16AccY193 seg16AccY192
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 42]
      ring
    have hsum : seg16AccX192 rho + seg16AccY192 rho = rho 18075 := by
      unfold seg16AccX192 seg16AccY192
      linear_combination r5503
    have ha0 : (rho 18073 + rho 18074) * (seg16AccX192 rho + seg16AccY192 rho) = rho 18076 := by
      rw [hsum]
      linear_combination r5504
    have ha1 : rho 18074 * seg16AccX192 rho = rho 18077 := by
      unfold seg16AccX192
      linear_combination r5505
    have ha2 : rho 18073 * seg16AccY192 rho = rho 18078 := by
      unfold seg16AccY192
      linear_combination r5506
    have ha3 : 3021 * rho 18077 * rho 18078 = rho 18079 := by
      linear_combination r5507
    have ha4 : rho 18080 * (1 + rho 18079) = rho 18077 + rho 18078 := by
      linear_combination r5508
    have ha5 : rho 18081 * (1 - rho 18079) = rho 18076 - rho 18077 - rho 18078 := by
      linear_combination r5509
    have haddx :
        rho 18080 * (1 + 3021 * (rho 18074 * seg16AccX192 rho) * (rho 18073 * seg16AccY192 rho)) =
          rho 18074 * seg16AccX192 rho + rho 18073 * seg16AccY192 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18081 * (1 - 3021 * (rho 18074 * seg16AccX192 rho) * (rho 18073 * seg16AccY192 rho)) =
          (-1) * (rho 18074 * seg16AccX192 rho) - rho 18073 * seg16AccY192 rho +
            (seg16AccY192 rho - seg16AccX192 rho * (-1)) * (rho 18073 + rho 18074) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18081 * (1 - rho 18079) = rho 18076 - rho 18077 - rho 18078 := ha5
        _ = (-1) * rho 18077 - rho 18078 + (seg16AccY192 rho - seg16AccX192 rho * (-1)) * (rho 18073 + rho 18074) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX193 rho = seg16AccX192 rho - Bool.toZMod bit * (seg16AccX192 rho - rho 18080) := by
      have hd : rho 18082 = Bool.toZMod bit * (rho 18080 - seg16AccX192 rho) := by
        rw [← hbit]
        unfold seg16AccX192
        linear_combination -r5510
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY193 rho = seg16AccY192 rho - Bool.toZMod bit * (seg16AccY192 rho - rho 18081) := by
      have hd : rho 18083 = Bool.toZMod bit * (rho 18081 - seg16AccY192 rho) := by
        rw [← hbit]
        unfold seg16AccY192
        linear_combination -r5511
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18073 * rho 18074 = rho 18084 := by linear_combination r5512
    have hd1 : rho 18073 * rho 18073 = rho 18085 := by linear_combination r5513
    have hd2 : rho 18074 * rho 18074 = rho 18086 := by linear_combination r5514
    have hd3 : rho 18087 * (rho 18074 * rho 18074 + rho 18073 * rho 18073 * (-1)) = 2 * (rho 18073 * rho 18074) := by
      rw [hd0, hd1, hd2]
      linear_combination r5515
    have hd4 : rho 18088 * (2 - (rho 18074 * rho 18074 + rho 18073 * rho 18073 * (-1))) = rho 18074 * rho 18074 - rho 18073 * rho 18073 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5516
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX192 rho : Seg16.F), (seg16AccY192 rho : Seg16.F)⟩
      ⟨(rho 18073 : Seg16.F), (rho 18074 : Seg16.F)⟩
      ⟨(rho 18080 : Seg16.F), (rho 18081 : Seg16.F)⟩
      ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
      ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung192

theorem seg16_rows193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5517 rho ∧ Seg16.relationRow5518 rho ∧ Seg16.relationRow5519 rho ∧ Seg16.relationRow5520 rho ∧ Seg16.relationRow5521 rho ∧ Seg16.relationRow5522 rho ∧ Seg16.relationRow5523 rho ∧ Seg16.relationRow5524 rho ∧ Seg16.relationRow5525 rho ∧ Seg16.relationRow5526 rho ∧ Seg16.relationRow5527 rho ∧ Seg16.relationRow5528 rho ∧ Seg16.relationRow5529 rho ∧ Seg16.relationRow5530 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5517, r5518, r5519⟩
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩

theorem seg16_rung193 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15485 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩ := by
  obtain ⟨r5517, r5518, r5519, r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530⟩ := seg16_rows193 rho h
  unfold Seg16.relationRow5517 at r5517
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5517
  unfold Seg16.relationRow5518 at r5518
  unfold Seg16.relationRow5519 at r5519
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5519
  unfold Seg16.relationRow5520 at r5520
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5520
  unfold Seg16.relationRow5521 at r5521
  unfold Seg16.relationRow5522 at r5522
  unfold Seg16.relationRow5523 at r5523
  unfold Seg16.relationRow5524 at r5524
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5524
  unfold Seg16.relationRow5525 at r5525
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5525
  unfold Seg16.relationRow5526 at r5526
  unfold Seg16.relationRow5527 at r5527
  unfold Seg16.relationRow5528 at r5528
  unfold Seg16.relationRow5529 at r5529
  unfold Seg16.relationRow5530 at r5530
  have hrung193 (bit : Bool) (hbit : rho 15485 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
        ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩ := by
    have hnextx : seg16AccX194 rho = seg16AccX193 rho + rho 18096 := by
      unfold seg16AccX194 seg16AccX193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 43]
      ring
    have hnexty : seg16AccY194 rho = seg16AccY193 rho + rho 18097 := by
      unfold seg16AccY194 seg16AccY193
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 43]
      ring
    have hsum : seg16AccX193 rho + seg16AccY193 rho = rho 18089 := by
      unfold seg16AccX193 seg16AccY193
      linear_combination r5517
    have ha0 : (rho 18087 + rho 18088) * (seg16AccX193 rho + seg16AccY193 rho) = rho 18090 := by
      rw [hsum]
      linear_combination r5518
    have ha1 : rho 18088 * seg16AccX193 rho = rho 18091 := by
      unfold seg16AccX193
      linear_combination r5519
    have ha2 : rho 18087 * seg16AccY193 rho = rho 18092 := by
      unfold seg16AccY193
      linear_combination r5520
    have ha3 : 3021 * rho 18091 * rho 18092 = rho 18093 := by
      linear_combination r5521
    have ha4 : rho 18094 * (1 + rho 18093) = rho 18091 + rho 18092 := by
      linear_combination r5522
    have ha5 : rho 18095 * (1 - rho 18093) = rho 18090 - rho 18091 - rho 18092 := by
      linear_combination r5523
    have haddx :
        rho 18094 * (1 + 3021 * (rho 18088 * seg16AccX193 rho) * (rho 18087 * seg16AccY193 rho)) =
          rho 18088 * seg16AccX193 rho + rho 18087 * seg16AccY193 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18095 * (1 - 3021 * (rho 18088 * seg16AccX193 rho) * (rho 18087 * seg16AccY193 rho)) =
          (-1) * (rho 18088 * seg16AccX193 rho) - rho 18087 * seg16AccY193 rho +
            (seg16AccY193 rho - seg16AccX193 rho * (-1)) * (rho 18087 + rho 18088) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18095 * (1 - rho 18093) = rho 18090 - rho 18091 - rho 18092 := ha5
        _ = (-1) * rho 18091 - rho 18092 + (seg16AccY193 rho - seg16AccX193 rho * (-1)) * (rho 18087 + rho 18088) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX194 rho = seg16AccX193 rho - Bool.toZMod bit * (seg16AccX193 rho - rho 18094) := by
      have hd : rho 18096 = Bool.toZMod bit * (rho 18094 - seg16AccX193 rho) := by
        rw [← hbit]
        unfold seg16AccX193
        linear_combination -r5524
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY194 rho = seg16AccY193 rho - Bool.toZMod bit * (seg16AccY193 rho - rho 18095) := by
      have hd : rho 18097 = Bool.toZMod bit * (rho 18095 - seg16AccY193 rho) := by
        rw [← hbit]
        unfold seg16AccY193
        linear_combination -r5525
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18087 * rho 18088 = rho 18098 := by linear_combination r5526
    have hd1 : rho 18087 * rho 18087 = rho 18099 := by linear_combination r5527
    have hd2 : rho 18088 * rho 18088 = rho 18100 := by linear_combination r5528
    have hd3 : rho 18101 * (rho 18088 * rho 18088 + rho 18087 * rho 18087 * (-1)) = 2 * (rho 18087 * rho 18088) := by
      rw [hd0, hd1, hd2]
      linear_combination r5529
    have hd4 : rho 18102 * (2 - (rho 18088 * rho 18088 + rho 18087 * rho 18087 * (-1))) = rho 18088 * rho 18088 - rho 18087 * rho 18087 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5530
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX193 rho : Seg16.F), (seg16AccY193 rho : Seg16.F)⟩
      ⟨(rho 18087 : Seg16.F), (rho 18088 : Seg16.F)⟩
      ⟨(rho 18094 : Seg16.F), (rho 18095 : Seg16.F)⟩
      ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
      ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung193

theorem seg16_rows194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5531 rho ∧ Seg16.relationRow5532 rho ∧ Seg16.relationRow5533 rho ∧ Seg16.relationRow5534 rho ∧ Seg16.relationRow5535 rho ∧ Seg16.relationRow5536 rho ∧ Seg16.relationRow5537 rho ∧ Seg16.relationRow5538 rho ∧ Seg16.relationRow5539 rho ∧ Seg16.relationRow5540 rho ∧ Seg16.relationRow5541 rho ∧ Seg16.relationRow5542 rho ∧ Seg16.relationRow5543 rho ∧ Seg16.relationRow5544 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩

theorem seg16_rung194 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15486 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩ := by
  obtain ⟨r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544⟩ := seg16_rows194 rho h
  unfold Seg16.relationRow5531 at r5531
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5531
  unfold Seg16.relationRow5532 at r5532
  unfold Seg16.relationRow5533 at r5533
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5533
  unfold Seg16.relationRow5534 at r5534
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5534
  unfold Seg16.relationRow5535 at r5535
  unfold Seg16.relationRow5536 at r5536
  unfold Seg16.relationRow5537 at r5537
  unfold Seg16.relationRow5538 at r5538
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5538
  unfold Seg16.relationRow5539 at r5539
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5539
  unfold Seg16.relationRow5540 at r5540
  unfold Seg16.relationRow5541 at r5541
  unfold Seg16.relationRow5542 at r5542
  unfold Seg16.relationRow5543 at r5543
  unfold Seg16.relationRow5544 at r5544
  have hrung194 (bit : Bool) (hbit : rho 15486 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
        ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩ := by
    have hnextx : seg16AccX195 rho = seg16AccX194 rho + rho 18110 := by
      unfold seg16AccX195 seg16AccX194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 44]
      ring
    have hnexty : seg16AccY195 rho = seg16AccY194 rho + rho 18111 := by
      unfold seg16AccY195 seg16AccY194
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 44]
      ring
    have hsum : seg16AccX194 rho + seg16AccY194 rho = rho 18103 := by
      unfold seg16AccX194 seg16AccY194
      linear_combination r5531
    have ha0 : (rho 18101 + rho 18102) * (seg16AccX194 rho + seg16AccY194 rho) = rho 18104 := by
      rw [hsum]
      linear_combination r5532
    have ha1 : rho 18102 * seg16AccX194 rho = rho 18105 := by
      unfold seg16AccX194
      linear_combination r5533
    have ha2 : rho 18101 * seg16AccY194 rho = rho 18106 := by
      unfold seg16AccY194
      linear_combination r5534
    have ha3 : 3021 * rho 18105 * rho 18106 = rho 18107 := by
      linear_combination r5535
    have ha4 : rho 18108 * (1 + rho 18107) = rho 18105 + rho 18106 := by
      linear_combination r5536
    have ha5 : rho 18109 * (1 - rho 18107) = rho 18104 - rho 18105 - rho 18106 := by
      linear_combination r5537
    have haddx :
        rho 18108 * (1 + 3021 * (rho 18102 * seg16AccX194 rho) * (rho 18101 * seg16AccY194 rho)) =
          rho 18102 * seg16AccX194 rho + rho 18101 * seg16AccY194 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18109 * (1 - 3021 * (rho 18102 * seg16AccX194 rho) * (rho 18101 * seg16AccY194 rho)) =
          (-1) * (rho 18102 * seg16AccX194 rho) - rho 18101 * seg16AccY194 rho +
            (seg16AccY194 rho - seg16AccX194 rho * (-1)) * (rho 18101 + rho 18102) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18109 * (1 - rho 18107) = rho 18104 - rho 18105 - rho 18106 := ha5
        _ = (-1) * rho 18105 - rho 18106 + (seg16AccY194 rho - seg16AccX194 rho * (-1)) * (rho 18101 + rho 18102) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX195 rho = seg16AccX194 rho - Bool.toZMod bit * (seg16AccX194 rho - rho 18108) := by
      have hd : rho 18110 = Bool.toZMod bit * (rho 18108 - seg16AccX194 rho) := by
        rw [← hbit]
        unfold seg16AccX194
        linear_combination -r5538
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY195 rho = seg16AccY194 rho - Bool.toZMod bit * (seg16AccY194 rho - rho 18109) := by
      have hd : rho 18111 = Bool.toZMod bit * (rho 18109 - seg16AccY194 rho) := by
        rw [← hbit]
        unfold seg16AccY194
        linear_combination -r5539
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18101 * rho 18102 = rho 18112 := by linear_combination r5540
    have hd1 : rho 18101 * rho 18101 = rho 18113 := by linear_combination r5541
    have hd2 : rho 18102 * rho 18102 = rho 18114 := by linear_combination r5542
    have hd3 : rho 18115 * (rho 18102 * rho 18102 + rho 18101 * rho 18101 * (-1)) = 2 * (rho 18101 * rho 18102) := by
      rw [hd0, hd1, hd2]
      linear_combination r5543
    have hd4 : rho 18116 * (2 - (rho 18102 * rho 18102 + rho 18101 * rho 18101 * (-1))) = rho 18102 * rho 18102 - rho 18101 * rho 18101 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5544
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX194 rho : Seg16.F), (seg16AccY194 rho : Seg16.F)⟩
      ⟨(rho 18101 : Seg16.F), (rho 18102 : Seg16.F)⟩
      ⟨(rho 18108 : Seg16.F), (rho 18109 : Seg16.F)⟩
      ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
      ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung194

theorem seg16_rows195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5545 rho ∧ Seg16.relationRow5546 rho ∧ Seg16.relationRow5547 rho ∧ Seg16.relationRow5548 rho ∧ Seg16.relationRow5549 rho ∧ Seg16.relationRow5550 rho ∧ Seg16.relationRow5551 rho ∧ Seg16.relationRow5552 rho ∧ Seg16.relationRow5553 rho ∧ Seg16.relationRow5554 rho ∧ Seg16.relationRow5555 rho ∧ Seg16.relationRow5556 rho ∧ Seg16.relationRow5557 rho ∧ Seg16.relationRow5558 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩

theorem seg16_rung195 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15487 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩ := by
  obtain ⟨r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558⟩ := seg16_rows195 rho h
  unfold Seg16.relationRow5545 at r5545
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5545
  unfold Seg16.relationRow5546 at r5546
  unfold Seg16.relationRow5547 at r5547
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5547
  unfold Seg16.relationRow5548 at r5548
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548
  unfold Seg16.relationRow5549 at r5549
  unfold Seg16.relationRow5550 at r5550
  unfold Seg16.relationRow5551 at r5551
  unfold Seg16.relationRow5552 at r5552
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5552
  unfold Seg16.relationRow5553 at r5553
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5553
  unfold Seg16.relationRow5554 at r5554
  unfold Seg16.relationRow5555 at r5555
  unfold Seg16.relationRow5556 at r5556
  unfold Seg16.relationRow5557 at r5557
  unfold Seg16.relationRow5558 at r5558
  have hrung195 (bit : Bool) (hbit : rho 15487 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
        ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩ := by
    have hnextx : seg16AccX196 rho = seg16AccX195 rho + rho 18124 := by
      unfold seg16AccX196 seg16AccX195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 45]
      ring
    have hnexty : seg16AccY196 rho = seg16AccY195 rho + rho 18125 := by
      unfold seg16AccY196 seg16AccY195
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 45]
      ring
    have hsum : seg16AccX195 rho + seg16AccY195 rho = rho 18117 := by
      unfold seg16AccX195 seg16AccY195
      linear_combination r5545
    have ha0 : (rho 18115 + rho 18116) * (seg16AccX195 rho + seg16AccY195 rho) = rho 18118 := by
      rw [hsum]
      linear_combination r5546
    have ha1 : rho 18116 * seg16AccX195 rho = rho 18119 := by
      unfold seg16AccX195
      linear_combination r5547
    have ha2 : rho 18115 * seg16AccY195 rho = rho 18120 := by
      unfold seg16AccY195
      linear_combination r5548
    have ha3 : 3021 * rho 18119 * rho 18120 = rho 18121 := by
      linear_combination r5549
    have ha4 : rho 18122 * (1 + rho 18121) = rho 18119 + rho 18120 := by
      linear_combination r5550
    have ha5 : rho 18123 * (1 - rho 18121) = rho 18118 - rho 18119 - rho 18120 := by
      linear_combination r5551
    have haddx :
        rho 18122 * (1 + 3021 * (rho 18116 * seg16AccX195 rho) * (rho 18115 * seg16AccY195 rho)) =
          rho 18116 * seg16AccX195 rho + rho 18115 * seg16AccY195 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18123 * (1 - 3021 * (rho 18116 * seg16AccX195 rho) * (rho 18115 * seg16AccY195 rho)) =
          (-1) * (rho 18116 * seg16AccX195 rho) - rho 18115 * seg16AccY195 rho +
            (seg16AccY195 rho - seg16AccX195 rho * (-1)) * (rho 18115 + rho 18116) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18123 * (1 - rho 18121) = rho 18118 - rho 18119 - rho 18120 := ha5
        _ = (-1) * rho 18119 - rho 18120 + (seg16AccY195 rho - seg16AccX195 rho * (-1)) * (rho 18115 + rho 18116) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX196 rho = seg16AccX195 rho - Bool.toZMod bit * (seg16AccX195 rho - rho 18122) := by
      have hd : rho 18124 = Bool.toZMod bit * (rho 18122 - seg16AccX195 rho) := by
        rw [← hbit]
        unfold seg16AccX195
        linear_combination -r5552
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY196 rho = seg16AccY195 rho - Bool.toZMod bit * (seg16AccY195 rho - rho 18123) := by
      have hd : rho 18125 = Bool.toZMod bit * (rho 18123 - seg16AccY195 rho) := by
        rw [← hbit]
        unfold seg16AccY195
        linear_combination -r5553
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18115 * rho 18116 = rho 18126 := by linear_combination r5554
    have hd1 : rho 18115 * rho 18115 = rho 18127 := by linear_combination r5555
    have hd2 : rho 18116 * rho 18116 = rho 18128 := by linear_combination r5556
    have hd3 : rho 18129 * (rho 18116 * rho 18116 + rho 18115 * rho 18115 * (-1)) = 2 * (rho 18115 * rho 18116) := by
      rw [hd0, hd1, hd2]
      linear_combination r5557
    have hd4 : rho 18130 * (2 - (rho 18116 * rho 18116 + rho 18115 * rho 18115 * (-1))) = rho 18116 * rho 18116 - rho 18115 * rho 18115 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5558
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX195 rho : Seg16.F), (seg16AccY195 rho : Seg16.F)⟩
      ⟨(rho 18115 : Seg16.F), (rho 18116 : Seg16.F)⟩
      ⟨(rho 18122 : Seg16.F), (rho 18123 : Seg16.F)⟩
      ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
      ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung195

theorem seg16_rows196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5559 rho ∧ Seg16.relationRow5560 rho ∧ Seg16.relationRow5561 rho ∧ Seg16.relationRow5562 rho ∧ Seg16.relationRow5563 rho ∧ Seg16.relationRow5564 rho ∧ Seg16.relationRow5565 rho ∧ Seg16.relationRow5566 rho ∧ Seg16.relationRow5567 rho ∧ Seg16.relationRow5568 rho ∧ Seg16.relationRow5569 rho ∧ Seg16.relationRow5570 rho ∧ Seg16.relationRow5571 rho ∧ Seg16.relationRow5572 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩

theorem seg16_rung196 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15488 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩ := by
  obtain ⟨r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572⟩ := seg16_rows196 rho h
  unfold Seg16.relationRow5559 at r5559
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5559
  unfold Seg16.relationRow5560 at r5560
  unfold Seg16.relationRow5561 at r5561
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561
  unfold Seg16.relationRow5562 at r5562
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562
  unfold Seg16.relationRow5563 at r5563
  unfold Seg16.relationRow5564 at r5564
  unfold Seg16.relationRow5565 at r5565
  unfold Seg16.relationRow5566 at r5566
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5566
  unfold Seg16.relationRow5567 at r5567
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567
  unfold Seg16.relationRow5568 at r5568
  unfold Seg16.relationRow5569 at r5569
  unfold Seg16.relationRow5570 at r5570
  unfold Seg16.relationRow5571 at r5571
  unfold Seg16.relationRow5572 at r5572
  have hrung196 (bit : Bool) (hbit : rho 15488 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
        ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩ := by
    have hnextx : seg16AccX197 rho = seg16AccX196 rho + rho 18138 := by
      unfold seg16AccX197 seg16AccX196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 46]
      ring
    have hnexty : seg16AccY197 rho = seg16AccY196 rho + rho 18139 := by
      unfold seg16AccY197 seg16AccY196
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 46]
      ring
    have hsum : seg16AccX196 rho + seg16AccY196 rho = rho 18131 := by
      unfold seg16AccX196 seg16AccY196
      linear_combination r5559
    have ha0 : (rho 18129 + rho 18130) * (seg16AccX196 rho + seg16AccY196 rho) = rho 18132 := by
      rw [hsum]
      linear_combination r5560
    have ha1 : rho 18130 * seg16AccX196 rho = rho 18133 := by
      unfold seg16AccX196
      linear_combination r5561
    have ha2 : rho 18129 * seg16AccY196 rho = rho 18134 := by
      unfold seg16AccY196
      linear_combination r5562
    have ha3 : 3021 * rho 18133 * rho 18134 = rho 18135 := by
      linear_combination r5563
    have ha4 : rho 18136 * (1 + rho 18135) = rho 18133 + rho 18134 := by
      linear_combination r5564
    have ha5 : rho 18137 * (1 - rho 18135) = rho 18132 - rho 18133 - rho 18134 := by
      linear_combination r5565
    have haddx :
        rho 18136 * (1 + 3021 * (rho 18130 * seg16AccX196 rho) * (rho 18129 * seg16AccY196 rho)) =
          rho 18130 * seg16AccX196 rho + rho 18129 * seg16AccY196 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18137 * (1 - 3021 * (rho 18130 * seg16AccX196 rho) * (rho 18129 * seg16AccY196 rho)) =
          (-1) * (rho 18130 * seg16AccX196 rho) - rho 18129 * seg16AccY196 rho +
            (seg16AccY196 rho - seg16AccX196 rho * (-1)) * (rho 18129 + rho 18130) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18137 * (1 - rho 18135) = rho 18132 - rho 18133 - rho 18134 := ha5
        _ = (-1) * rho 18133 - rho 18134 + (seg16AccY196 rho - seg16AccX196 rho * (-1)) * (rho 18129 + rho 18130) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX197 rho = seg16AccX196 rho - Bool.toZMod bit * (seg16AccX196 rho - rho 18136) := by
      have hd : rho 18138 = Bool.toZMod bit * (rho 18136 - seg16AccX196 rho) := by
        rw [← hbit]
        unfold seg16AccX196
        linear_combination -r5566
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY197 rho = seg16AccY196 rho - Bool.toZMod bit * (seg16AccY196 rho - rho 18137) := by
      have hd : rho 18139 = Bool.toZMod bit * (rho 18137 - seg16AccY196 rho) := by
        rw [← hbit]
        unfold seg16AccY196
        linear_combination -r5567
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18129 * rho 18130 = rho 18140 := by linear_combination r5568
    have hd1 : rho 18129 * rho 18129 = rho 18141 := by linear_combination r5569
    have hd2 : rho 18130 * rho 18130 = rho 18142 := by linear_combination r5570
    have hd3 : rho 18143 * (rho 18130 * rho 18130 + rho 18129 * rho 18129 * (-1)) = 2 * (rho 18129 * rho 18130) := by
      rw [hd0, hd1, hd2]
      linear_combination r5571
    have hd4 : rho 18144 * (2 - (rho 18130 * rho 18130 + rho 18129 * rho 18129 * (-1))) = rho 18130 * rho 18130 - rho 18129 * rho 18129 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5572
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX196 rho : Seg16.F), (seg16AccY196 rho : Seg16.F)⟩
      ⟨(rho 18129 : Seg16.F), (rho 18130 : Seg16.F)⟩
      ⟨(rho 18136 : Seg16.F), (rho 18137 : Seg16.F)⟩
      ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
      ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung196

theorem seg16_rows197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    Seg16.relationRow5573 rho ∧ Seg16.relationRow5574 rho ∧ Seg16.relationRow5575 rho ∧ Seg16.relationRow5576 rho ∧ Seg16.relationRow5577 rho ∧ Seg16.relationRow5578 rho ∧ Seg16.relationRow5579 rho ∧ Seg16.relationRow5580 rho ∧ Seg16.relationRow5581 rho ∧ Seg16.relationRow5582 rho ∧ Seg16.relationRow5583 rho ∧ Seg16.relationRow5584 rho ∧ Seg16.relationRow5585 rho ∧ Seg16.relationRow5586 rho := by
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart69 at p69
  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem seg16_rung197 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg16.relation rho) :
    ∀ (bit : Bool), rho 15489 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩ := by
  obtain ⟨r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := seg16_rows197 rho h
  unfold Seg16.relationRow5573 at r5573
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5573
  unfold Seg16.relationRow5574 at r5574
  unfold Seg16.relationRow5575 at r5575
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575
  unfold Seg16.relationRow5576 at r5576
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576
  unfold Seg16.relationRow5577 at r5577
  unfold Seg16.relationRow5578 at r5578
  unfold Seg16.relationRow5579 at r5579
  unfold Seg16.relationRow5580 at r5580
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580
  unfold Seg16.relationRow5581 at r5581
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581
  unfold Seg16.relationRow5582 at r5582
  unfold Seg16.relationRow5583 at r5583
  unfold Seg16.relationRow5584 at r5584
  unfold Seg16.relationRow5585 at r5585
  unfold Seg16.relationRow5586 at r5586
  have hrung197 (bit : Bool) (hbit : rho 15489 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
        ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
        ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
        ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩ := by
    have hnextx : seg16AccX198 rho = seg16AccX197 rho + rho 18152 := by
      unfold seg16AccX198 seg16AccX197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17494 14 47]
      ring
    have hnexty : seg16AccY198 rho = seg16AccY197 rho + rho 18153 := by
      unfold seg16AccY198 seg16AccY197
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 17495 14 47]
      ring
    have hsum : seg16AccX197 rho + seg16AccY197 rho = rho 18145 := by
      unfold seg16AccX197 seg16AccY197
      linear_combination r5573
    have ha0 : (rho 18143 + rho 18144) * (seg16AccX197 rho + seg16AccY197 rho) = rho 18146 := by
      rw [hsum]
      linear_combination r5574
    have ha1 : rho 18144 * seg16AccX197 rho = rho 18147 := by
      unfold seg16AccX197
      linear_combination r5575
    have ha2 : rho 18143 * seg16AccY197 rho = rho 18148 := by
      unfold seg16AccY197
      linear_combination r5576
    have ha3 : 3021 * rho 18147 * rho 18148 = rho 18149 := by
      linear_combination r5577
    have ha4 : rho 18150 * (1 + rho 18149) = rho 18147 + rho 18148 := by
      linear_combination r5578
    have ha5 : rho 18151 * (1 - rho 18149) = rho 18146 - rho 18147 - rho 18148 := by
      linear_combination r5579
    have haddx :
        rho 18150 * (1 + 3021 * (rho 18144 * seg16AccX197 rho) * (rho 18143 * seg16AccY197 rho)) =
          rho 18144 * seg16AccX197 rho + rho 18143 * seg16AccY197 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 18151 * (1 - 3021 * (rho 18144 * seg16AccX197 rho) * (rho 18143 * seg16AccY197 rho)) =
          (-1) * (rho 18144 * seg16AccX197 rho) - rho 18143 * seg16AccY197 rho +
            (seg16AccY197 rho - seg16AccX197 rho * (-1)) * (rho 18143 + rho 18144) := by
      rw [ha1, ha2, ha3]
      calc
        rho 18151 * (1 - rho 18149) = rho 18146 - rho 18147 - rho 18148 := ha5
        _ = (-1) * rho 18147 - rho 18148 + (seg16AccY197 rho - seg16AccX197 rho * (-1)) * (rho 18143 + rho 18144) := by
          rw [← ha0]
          ring
    have hselx : seg16AccX198 rho = seg16AccX197 rho - Bool.toZMod bit * (seg16AccX197 rho - rho 18150) := by
      have hd : rho 18152 = Bool.toZMod bit * (rho 18150 - seg16AccX197 rho) := by
        rw [← hbit]
        unfold seg16AccX197
        linear_combination -r5580
      rw [hnextx]
      linear_combination hd
    have hsely : seg16AccY198 rho = seg16AccY197 rho - Bool.toZMod bit * (seg16AccY197 rho - rho 18151) := by
      have hd : rho 18153 = Bool.toZMod bit * (rho 18151 - seg16AccY197 rho) := by
        rw [← hbit]
        unfold seg16AccY197
        linear_combination -r5581
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 18143 * rho 18144 = rho 18154 := by linear_combination r5582
    have hd1 : rho 18143 * rho 18143 = rho 18155 := by linear_combination r5583
    have hd2 : rho 18144 * rho 18144 = rho 18156 := by linear_combination r5584
    have hd3 : rho 18157 * (rho 18144 * rho 18144 + rho 18143 * rho 18143 * (-1)) = 2 * (rho 18143 * rho 18144) := by
      rw [hd0, hd1, hd2]
      linear_combination r5585
    have hd4 : rho 18158 * (2 - (rho 18144 * rho 18144 + rho 18143 * rho 18143 * (-1))) = rho 18144 * rho 18144 - rho 18143 * rho 18143 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5586
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg16AccX197 rho : Seg16.F), (seg16AccY197 rho : Seg16.F)⟩
      ⟨(rho 18143 : Seg16.F), (rho 18144 : Seg16.F)⟩
      ⟨(rho 18150 : Seg16.F), (rho 18151 : Seg16.F)⟩
      ⟨(seg16AccX198 rho : Seg16.F), (seg16AccY198 rho : Seg16.F)⟩
      ⟨(rho 18157 : Seg16.F), (rho 18158 : Seg16.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung197

theorem seg16_hstep_c17 (rho : Nat -> Seg16.F) (h : Seg16.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (15292 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 187 ≤ i → i < 198 →
      EdwardsBridge.onCurve (seg16LadderAccState rho i) →
      EdwardsBridge.onCurve (seg16LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg16LadderAccState rho i) (seg16LadderCurState rho i)
        (seg16LadderAccState rho (i + 1)) (seg16LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg16_rung187 rho h bits[187]! (hbitAt 187 (by omega)) hacc hcur
  · exact seg16_rung188 rho h bits[188]! (hbitAt 188 (by omega)) hacc hcur
  · exact seg16_rung189 rho h bits[189]! (hbitAt 189 (by omega)) hacc hcur
  · exact seg16_rung190 rho h bits[190]! (hbitAt 190 (by omega)) hacc hcur
  · exact seg16_rung191 rho h bits[191]! (hbitAt 191 (by omega)) hacc hcur
  · exact seg16_rung192 rho h bits[192]! (hbitAt 192 (by omega)) hacc hcur
  · exact seg16_rung193 rho h bits[193]! (hbitAt 193 (by omega)) hacc hcur
  · exact seg16_rung194 rho h bits[194]! (hbitAt 194 (by omega)) hacc hcur
  · exact seg16_rung195 rho h bits[195]! (hbitAt 195 (by omega)) hacc hcur
  · exact seg16_rung196 rho h bits[196]! (hbitAt 196 (by omega)) hacc hcur
  · exact seg16_rung197 rho h bits[197]! (hbitAt 197 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
