import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5335 rho ∧ Seg6.relationRow5336 rho ∧ Seg6.relationRow5337 rho ∧ Seg6.relationRow5338 rho ∧ Seg6.relationRow5339 rho ∧ Seg6.relationRow5340 rho ∧ Seg6.relationRow5341 rho ∧ Seg6.relationRow5342 rho ∧ Seg6.relationRow5343 rho ∧ Seg6.relationRow5344 rho ∧ Seg6.relationRow5345 rho ∧ Seg6.relationRow5346 rho ∧ Seg6.relationRow5347 rho ∧ Seg6.relationRow5348 rho := by
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
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩

theorem seg6_rung198 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2082 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5726 : Seg6.F), (rho 5727 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩
        ⟨(rho 5726 : Seg6.F), (rho 5727 : Seg6.F)⟩
        ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩
        ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩ := by
  obtain ⟨r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348⟩ := seg6_rows198 rho h
  unfold Seg6.relationRow5335 Seg6.relationLc1078 at r5335
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5335
  unfold Seg6.relationRow5336 at r5336
  unfold Seg6.relationRow5337 Seg6.relationLc1079 at r5337
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5337
  unfold Seg6.relationRow5338 Seg6.relationLc1080 at r5338
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5338
  unfold Seg6.relationRow5339 at r5339
  unfold Seg6.relationRow5340 at r5340
  unfold Seg6.relationRow5341 at r5341
  unfold Seg6.relationRow5342 Seg6.relationLc1081 at r5342
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5342
  unfold Seg6.relationRow5343 Seg6.relationLc1082 at r5343
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5343
  unfold Seg6.relationRow5344 at r5344
  unfold Seg6.relationRow5345 at r5345
  unfold Seg6.relationRow5346 at r5346
  unfold Seg6.relationRow5347 at r5347
  unfold Seg6.relationRow5348 at r5348
  have hrung198 (bit : Bool) (hbit : rho 2082 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5726 : Seg6.F), (rho 5727 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩
        ⟨(rho 5726 : Seg6.F), (rho 5727 : Seg6.F)⟩
        ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩
        ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩ := by
    have hnextx : seg6AccX199 rho = seg6AccX198 rho + rho 5735 := by
      unfold seg6AccX199 seg6AccX198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 48]
      ring
    have hnexty : seg6AccY199 rho = seg6AccY198 rho + rho 5736 := by
      unfold seg6AccY199 seg6AccY198
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 48]
      ring
    have hsum : seg6AccX198 rho + seg6AccY198 rho = rho 5728 := by
      unfold seg6AccX198 seg6AccY198
      linear_combination r5335
    have ha0 : (rho 5726 + rho 5727) * (seg6AccX198 rho + seg6AccY198 rho) = rho 5729 := by
      rw [hsum]
      linear_combination r5336
    have ha1 : rho 5727 * seg6AccX198 rho = rho 5730 := by
      unfold seg6AccX198
      linear_combination r5337
    have ha2 : rho 5726 * seg6AccY198 rho = rho 5731 := by
      unfold seg6AccY198
      linear_combination r5338
    have ha3 : 3021 * rho 5730 * rho 5731 = rho 5732 := by
      linear_combination r5339
    have ha4 : rho 5733 * (1 + rho 5732) = rho 5730 + rho 5731 := by
      linear_combination r5340
    have ha5 : rho 5734 * (1 - rho 5732) = rho 5729 - rho 5730 - rho 5731 := by
      linear_combination r5341
    have haddx :
        rho 5733 * (1 + 3021 * (rho 5727 * seg6AccX198 rho) * (rho 5726 * seg6AccY198 rho)) =
          rho 5727 * seg6AccX198 rho + rho 5726 * seg6AccY198 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5734 * (1 - 3021 * (rho 5727 * seg6AccX198 rho) * (rho 5726 * seg6AccY198 rho)) =
          (-1) * (rho 5727 * seg6AccX198 rho) - rho 5726 * seg6AccY198 rho +
            (seg6AccY198 rho - seg6AccX198 rho * (-1)) * (rho 5726 + rho 5727) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5734 * (1 - rho 5732) = rho 5729 - rho 5730 - rho 5731 := ha5
        _ = (-1) * rho 5730 - rho 5731 + (seg6AccY198 rho - seg6AccX198 rho * (-1)) * (rho 5726 + rho 5727) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX199 rho = seg6AccX198 rho - Bool.toZMod bit * (seg6AccX198 rho - rho 5733) := by
      have hd : rho 5735 = Bool.toZMod bit * (rho 5733 - seg6AccX198 rho) := by
        rw [← hbit]
        unfold seg6AccX198
        linear_combination -r5342
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY199 rho = seg6AccY198 rho - Bool.toZMod bit * (seg6AccY198 rho - rho 5734) := by
      have hd : rho 5736 = Bool.toZMod bit * (rho 5734 - seg6AccY198 rho) := by
        rw [← hbit]
        unfold seg6AccY198
        linear_combination -r5343
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5726 * rho 5727 = rho 5737 := by linear_combination r5344
    have hd1 : rho 5726 * rho 5726 = rho 5738 := by linear_combination r5345
    have hd2 : rho 5727 * rho 5727 = rho 5739 := by linear_combination r5346
    have hd3 : rho 5740 * (rho 5727 * rho 5727 + rho 5726 * rho 5726 * (-1)) = 2 * (rho 5726 * rho 5727) := by
      rw [hd0, hd1, hd2]
      linear_combination r5347
    have hd4 : rho 5741 * (2 - (rho 5727 * rho 5727 + rho 5726 * rho 5726 * (-1))) = rho 5727 * rho 5727 - rho 5726 * rho 5726 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5348
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX198 rho : Seg6.F), (seg6AccY198 rho : Seg6.F)⟩
      ⟨(rho 5726 : Seg6.F), (rho 5727 : Seg6.F)⟩
      ⟨(rho 5733 : Seg6.F), (rho 5734 : Seg6.F)⟩
      ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩
      ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung198

theorem seg6_rows199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5349 rho ∧ Seg6.relationRow5350 rho ∧ Seg6.relationRow5351 rho ∧ Seg6.relationRow5352 rho ∧ Seg6.relationRow5353 rho ∧ Seg6.relationRow5354 rho ∧ Seg6.relationRow5355 rho ∧ Seg6.relationRow5356 rho ∧ Seg6.relationRow5357 rho ∧ Seg6.relationRow5358 rho ∧ Seg6.relationRow5359 rho ∧ Seg6.relationRow5360 rho ∧ Seg6.relationRow5361 rho ∧ Seg6.relationRow5362 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, p67, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩

theorem seg6_rung199 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2083 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩
        ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩
        ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩
        ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩ := by
  obtain ⟨r5349, r5350, r5351, r5352, r5353, r5354, r5355, r5356, r5357, r5358, r5359, r5360, r5361, r5362⟩ := seg6_rows199 rho h
  unfold Seg6.relationRow5349 Seg6.relationLc1083 at r5349
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5349
  unfold Seg6.relationRow5350 at r5350
  unfold Seg6.relationRow5351 Seg6.relationLc1084 at r5351
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5351
  unfold Seg6.relationRow5352 Seg6.relationLc1085 at r5352
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5352
  unfold Seg6.relationRow5353 at r5353
  unfold Seg6.relationRow5354 at r5354
  unfold Seg6.relationRow5355 at r5355
  unfold Seg6.relationRow5356 Seg6.relationLc1086 at r5356
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5356
  unfold Seg6.relationRow5357 Seg6.relationLc1087 at r5357
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5357
  unfold Seg6.relationRow5358 at r5358
  unfold Seg6.relationRow5359 at r5359
  unfold Seg6.relationRow5360 at r5360
  unfold Seg6.relationRow5361 at r5361
  unfold Seg6.relationRow5362 at r5362
  have hrung199 (bit : Bool) (hbit : rho 2083 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩
        ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩
        ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩
        ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩ := by
    have hnextx : seg6AccX200 rho = seg6AccX199 rho + rho 5749 := by
      unfold seg6AccX200 seg6AccX199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 49]
      ring
    have hnexty : seg6AccY200 rho = seg6AccY199 rho + rho 5750 := by
      unfold seg6AccY200 seg6AccY199
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 49]
      ring
    have hsum : seg6AccX199 rho + seg6AccY199 rho = rho 5742 := by
      unfold seg6AccX199 seg6AccY199
      linear_combination r5349
    have ha0 : (rho 5740 + rho 5741) * (seg6AccX199 rho + seg6AccY199 rho) = rho 5743 := by
      rw [hsum]
      linear_combination r5350
    have ha1 : rho 5741 * seg6AccX199 rho = rho 5744 := by
      unfold seg6AccX199
      linear_combination r5351
    have ha2 : rho 5740 * seg6AccY199 rho = rho 5745 := by
      unfold seg6AccY199
      linear_combination r5352
    have ha3 : 3021 * rho 5744 * rho 5745 = rho 5746 := by
      linear_combination r5353
    have ha4 : rho 5747 * (1 + rho 5746) = rho 5744 + rho 5745 := by
      linear_combination r5354
    have ha5 : rho 5748 * (1 - rho 5746) = rho 5743 - rho 5744 - rho 5745 := by
      linear_combination r5355
    have haddx :
        rho 5747 * (1 + 3021 * (rho 5741 * seg6AccX199 rho) * (rho 5740 * seg6AccY199 rho)) =
          rho 5741 * seg6AccX199 rho + rho 5740 * seg6AccY199 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5748 * (1 - 3021 * (rho 5741 * seg6AccX199 rho) * (rho 5740 * seg6AccY199 rho)) =
          (-1) * (rho 5741 * seg6AccX199 rho) - rho 5740 * seg6AccY199 rho +
            (seg6AccY199 rho - seg6AccX199 rho * (-1)) * (rho 5740 + rho 5741) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5748 * (1 - rho 5746) = rho 5743 - rho 5744 - rho 5745 := ha5
        _ = (-1) * rho 5744 - rho 5745 + (seg6AccY199 rho - seg6AccX199 rho * (-1)) * (rho 5740 + rho 5741) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX200 rho = seg6AccX199 rho - Bool.toZMod bit * (seg6AccX199 rho - rho 5747) := by
      have hd : rho 5749 = Bool.toZMod bit * (rho 5747 - seg6AccX199 rho) := by
        rw [← hbit]
        unfold seg6AccX199
        linear_combination -r5356
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY200 rho = seg6AccY199 rho - Bool.toZMod bit * (seg6AccY199 rho - rho 5748) := by
      have hd : rho 5750 = Bool.toZMod bit * (rho 5748 - seg6AccY199 rho) := by
        rw [← hbit]
        unfold seg6AccY199
        linear_combination -r5357
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5740 * rho 5741 = rho 5751 := by linear_combination r5358
    have hd1 : rho 5740 * rho 5740 = rho 5752 := by linear_combination r5359
    have hd2 : rho 5741 * rho 5741 = rho 5753 := by linear_combination r5360
    have hd3 : rho 5754 * (rho 5741 * rho 5741 + rho 5740 * rho 5740 * (-1)) = 2 * (rho 5740 * rho 5741) := by
      rw [hd0, hd1, hd2]
      linear_combination r5361
    have hd4 : rho 5755 * (2 - (rho 5741 * rho 5741 + rho 5740 * rho 5740 * (-1))) = rho 5741 * rho 5741 - rho 5740 * rho 5740 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5362
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX199 rho : Seg6.F), (seg6AccY199 rho : Seg6.F)⟩
      ⟨(rho 5740 : Seg6.F), (rho 5741 : Seg6.F)⟩
      ⟨(rho 5747 : Seg6.F), (rho 5748 : Seg6.F)⟩
      ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩
      ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung199

theorem seg6_rows200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5363 rho ∧ Seg6.relationRow5364 rho ∧ Seg6.relationRow5365 rho ∧ Seg6.relationRow5366 rho ∧ Seg6.relationRow5367 rho ∧ Seg6.relationRow5368 rho ∧ Seg6.relationRow5369 rho ∧ Seg6.relationRow5370 rho ∧ Seg6.relationRow5371 rho ∧ Seg6.relationRow5372 rho ∧ Seg6.relationRow5373 rho ∧ Seg6.relationRow5374 rho ∧ Seg6.relationRow5375 rho ∧ Seg6.relationRow5376 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨_, _, _, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩

theorem seg6_rung200 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2084 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩
        ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩
        ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩
        ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩ := by
  obtain ⟨r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, r5376⟩ := seg6_rows200 rho h
  unfold Seg6.relationRow5363 Seg6.relationLc1088 at r5363
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5363
  unfold Seg6.relationRow5364 at r5364
  unfold Seg6.relationRow5365 Seg6.relationLc1089 at r5365
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5365
  unfold Seg6.relationRow5366 Seg6.relationLc1090 at r5366
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5366
  unfold Seg6.relationRow5367 at r5367
  unfold Seg6.relationRow5368 at r5368
  unfold Seg6.relationRow5369 at r5369
  unfold Seg6.relationRow5370 Seg6.relationLc1091 at r5370
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5370
  unfold Seg6.relationRow5371 Seg6.relationLc1092 at r5371
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5371
  unfold Seg6.relationRow5372 at r5372
  unfold Seg6.relationRow5373 at r5373
  unfold Seg6.relationRow5374 at r5374
  unfold Seg6.relationRow5375 at r5375
  unfold Seg6.relationRow5376 at r5376
  have hrung200 (bit : Bool) (hbit : rho 2084 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩
        ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩
        ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩
        ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩ := by
    have hnextx : seg6AccX201 rho = seg6AccX200 rho + rho 5763 := by
      unfold seg6AccX201 seg6AccX200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 50]
      ring
    have hnexty : seg6AccY201 rho = seg6AccY200 rho + rho 5764 := by
      unfold seg6AccY201 seg6AccY200
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 50]
      ring
    have hsum : seg6AccX200 rho + seg6AccY200 rho = rho 5756 := by
      unfold seg6AccX200 seg6AccY200
      linear_combination r5363
    have ha0 : (rho 5754 + rho 5755) * (seg6AccX200 rho + seg6AccY200 rho) = rho 5757 := by
      rw [hsum]
      linear_combination r5364
    have ha1 : rho 5755 * seg6AccX200 rho = rho 5758 := by
      unfold seg6AccX200
      linear_combination r5365
    have ha2 : rho 5754 * seg6AccY200 rho = rho 5759 := by
      unfold seg6AccY200
      linear_combination r5366
    have ha3 : 3021 * rho 5758 * rho 5759 = rho 5760 := by
      linear_combination r5367
    have ha4 : rho 5761 * (1 + rho 5760) = rho 5758 + rho 5759 := by
      linear_combination r5368
    have ha5 : rho 5762 * (1 - rho 5760) = rho 5757 - rho 5758 - rho 5759 := by
      linear_combination r5369
    have haddx :
        rho 5761 * (1 + 3021 * (rho 5755 * seg6AccX200 rho) * (rho 5754 * seg6AccY200 rho)) =
          rho 5755 * seg6AccX200 rho + rho 5754 * seg6AccY200 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5762 * (1 - 3021 * (rho 5755 * seg6AccX200 rho) * (rho 5754 * seg6AccY200 rho)) =
          (-1) * (rho 5755 * seg6AccX200 rho) - rho 5754 * seg6AccY200 rho +
            (seg6AccY200 rho - seg6AccX200 rho * (-1)) * (rho 5754 + rho 5755) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5762 * (1 - rho 5760) = rho 5757 - rho 5758 - rho 5759 := ha5
        _ = (-1) * rho 5758 - rho 5759 + (seg6AccY200 rho - seg6AccX200 rho * (-1)) * (rho 5754 + rho 5755) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX201 rho = seg6AccX200 rho - Bool.toZMod bit * (seg6AccX200 rho - rho 5761) := by
      have hd : rho 5763 = Bool.toZMod bit * (rho 5761 - seg6AccX200 rho) := by
        rw [← hbit]
        unfold seg6AccX200
        linear_combination -r5370
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY201 rho = seg6AccY200 rho - Bool.toZMod bit * (seg6AccY200 rho - rho 5762) := by
      have hd : rho 5764 = Bool.toZMod bit * (rho 5762 - seg6AccY200 rho) := by
        rw [← hbit]
        unfold seg6AccY200
        linear_combination -r5371
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5754 * rho 5755 = rho 5765 := by linear_combination r5372
    have hd1 : rho 5754 * rho 5754 = rho 5766 := by linear_combination r5373
    have hd2 : rho 5755 * rho 5755 = rho 5767 := by linear_combination r5374
    have hd3 : rho 5768 * (rho 5755 * rho 5755 + rho 5754 * rho 5754 * (-1)) = 2 * (rho 5754 * rho 5755) := by
      rw [hd0, hd1, hd2]
      linear_combination r5375
    have hd4 : rho 5769 * (2 - (rho 5755 * rho 5755 + rho 5754 * rho 5754 * (-1))) = rho 5755 * rho 5755 - rho 5754 * rho 5754 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5376
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX200 rho : Seg6.F), (seg6AccY200 rho : Seg6.F)⟩
      ⟨(rho 5754 : Seg6.F), (rho 5755 : Seg6.F)⟩
      ⟨(rho 5761 : Seg6.F), (rho 5762 : Seg6.F)⟩
      ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩
      ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung200

theorem seg6_rows201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5377 rho ∧ Seg6.relationRow5378 rho ∧ Seg6.relationRow5379 rho ∧ Seg6.relationRow5380 rho ∧ Seg6.relationRow5381 rho ∧ Seg6.relationRow5382 rho ∧ Seg6.relationRow5383 rho ∧ Seg6.relationRow5384 rho ∧ Seg6.relationRow5385 rho ∧ Seg6.relationRow5386 rho ∧ Seg6.relationRow5387 rho ∧ Seg6.relationRow5388 rho ∧ Seg6.relationRow5389 rho ∧ Seg6.relationRow5390 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩

theorem seg6_rung201 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2085 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩
        ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩
        ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩
        ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩ := by
  obtain ⟨r5377, r5378, r5379, r5380, r5381, r5382, r5383, r5384, r5385, r5386, r5387, r5388, r5389, r5390⟩ := seg6_rows201 rho h
  unfold Seg6.relationRow5377 Seg6.relationLc1093 at r5377
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5377
  unfold Seg6.relationRow5378 at r5378
  unfold Seg6.relationRow5379 Seg6.relationLc1094 at r5379
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5379
  unfold Seg6.relationRow5380 Seg6.relationLc1095 at r5380
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5380
  unfold Seg6.relationRow5381 at r5381
  unfold Seg6.relationRow5382 at r5382
  unfold Seg6.relationRow5383 at r5383
  unfold Seg6.relationRow5384 Seg6.relationLc1096 at r5384
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5384
  unfold Seg6.relationRow5385 Seg6.relationLc1097 at r5385
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5385
  unfold Seg6.relationRow5386 at r5386
  unfold Seg6.relationRow5387 at r5387
  unfold Seg6.relationRow5388 at r5388
  unfold Seg6.relationRow5389 at r5389
  unfold Seg6.relationRow5390 at r5390
  have hrung201 (bit : Bool) (hbit : rho 2085 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩
        ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩
        ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩
        ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩ := by
    have hnextx : seg6AccX202 rho = seg6AccX201 rho + rho 5777 := by
      unfold seg6AccX202 seg6AccX201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 51]
      ring
    have hnexty : seg6AccY202 rho = seg6AccY201 rho + rho 5778 := by
      unfold seg6AccY202 seg6AccY201
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 51]
      ring
    have hsum : seg6AccX201 rho + seg6AccY201 rho = rho 5770 := by
      unfold seg6AccX201 seg6AccY201
      linear_combination r5377
    have ha0 : (rho 5768 + rho 5769) * (seg6AccX201 rho + seg6AccY201 rho) = rho 5771 := by
      rw [hsum]
      linear_combination r5378
    have ha1 : rho 5769 * seg6AccX201 rho = rho 5772 := by
      unfold seg6AccX201
      linear_combination r5379
    have ha2 : rho 5768 * seg6AccY201 rho = rho 5773 := by
      unfold seg6AccY201
      linear_combination r5380
    have ha3 : 3021 * rho 5772 * rho 5773 = rho 5774 := by
      linear_combination r5381
    have ha4 : rho 5775 * (1 + rho 5774) = rho 5772 + rho 5773 := by
      linear_combination r5382
    have ha5 : rho 5776 * (1 - rho 5774) = rho 5771 - rho 5772 - rho 5773 := by
      linear_combination r5383
    have haddx :
        rho 5775 * (1 + 3021 * (rho 5769 * seg6AccX201 rho) * (rho 5768 * seg6AccY201 rho)) =
          rho 5769 * seg6AccX201 rho + rho 5768 * seg6AccY201 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5776 * (1 - 3021 * (rho 5769 * seg6AccX201 rho) * (rho 5768 * seg6AccY201 rho)) =
          (-1) * (rho 5769 * seg6AccX201 rho) - rho 5768 * seg6AccY201 rho +
            (seg6AccY201 rho - seg6AccX201 rho * (-1)) * (rho 5768 + rho 5769) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5776 * (1 - rho 5774) = rho 5771 - rho 5772 - rho 5773 := ha5
        _ = (-1) * rho 5772 - rho 5773 + (seg6AccY201 rho - seg6AccX201 rho * (-1)) * (rho 5768 + rho 5769) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX202 rho = seg6AccX201 rho - Bool.toZMod bit * (seg6AccX201 rho - rho 5775) := by
      have hd : rho 5777 = Bool.toZMod bit * (rho 5775 - seg6AccX201 rho) := by
        rw [← hbit]
        unfold seg6AccX201
        linear_combination -r5384
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY202 rho = seg6AccY201 rho - Bool.toZMod bit * (seg6AccY201 rho - rho 5776) := by
      have hd : rho 5778 = Bool.toZMod bit * (rho 5776 - seg6AccY201 rho) := by
        rw [← hbit]
        unfold seg6AccY201
        linear_combination -r5385
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5768 * rho 5769 = rho 5779 := by linear_combination r5386
    have hd1 : rho 5768 * rho 5768 = rho 5780 := by linear_combination r5387
    have hd2 : rho 5769 * rho 5769 = rho 5781 := by linear_combination r5388
    have hd3 : rho 5782 * (rho 5769 * rho 5769 + rho 5768 * rho 5768 * (-1)) = 2 * (rho 5768 * rho 5769) := by
      rw [hd0, hd1, hd2]
      linear_combination r5389
    have hd4 : rho 5783 * (2 - (rho 5769 * rho 5769 + rho 5768 * rho 5768 * (-1))) = rho 5769 * rho 5769 - rho 5768 * rho 5768 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5390
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX201 rho : Seg6.F), (seg6AccY201 rho : Seg6.F)⟩
      ⟨(rho 5768 : Seg6.F), (rho 5769 : Seg6.F)⟩
      ⟨(rho 5775 : Seg6.F), (rho 5776 : Seg6.F)⟩
      ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩
      ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung201

theorem seg6_rows202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5391 rho ∧ Seg6.relationRow5392 rho ∧ Seg6.relationRow5393 rho ∧ Seg6.relationRow5394 rho ∧ Seg6.relationRow5395 rho ∧ Seg6.relationRow5396 rho ∧ Seg6.relationRow5397 rho ∧ Seg6.relationRow5398 rho ∧ Seg6.relationRow5399 rho ∧ Seg6.relationRow5400 rho ∧ Seg6.relationRow5401 rho ∧ Seg6.relationRow5402 rho ∧ Seg6.relationRow5403 rho ∧ Seg6.relationRow5404 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩

theorem seg6_rung202 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2086 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩
        ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩
        ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩
        ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩ := by
  obtain ⟨r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404⟩ := seg6_rows202 rho h
  unfold Seg6.relationRow5391 Seg6.relationLc1098 at r5391
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5391
  unfold Seg6.relationRow5392 at r5392
  unfold Seg6.relationRow5393 Seg6.relationLc1099 at r5393
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5393
  unfold Seg6.relationRow5394 Seg6.relationLc1100 at r5394
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5394
  unfold Seg6.relationRow5395 at r5395
  unfold Seg6.relationRow5396 at r5396
  unfold Seg6.relationRow5397 at r5397
  unfold Seg6.relationRow5398 Seg6.relationLc1101 at r5398
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5398
  unfold Seg6.relationRow5399 Seg6.relationLc1102 at r5399
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5399
  unfold Seg6.relationRow5400 at r5400
  unfold Seg6.relationRow5401 at r5401
  unfold Seg6.relationRow5402 at r5402
  unfold Seg6.relationRow5403 at r5403
  unfold Seg6.relationRow5404 at r5404
  have hrung202 (bit : Bool) (hbit : rho 2086 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩
        ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩
        ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩
        ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩ := by
    have hnextx : seg6AccX203 rho = seg6AccX202 rho + rho 5791 := by
      unfold seg6AccX203 seg6AccX202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 52]
      ring
    have hnexty : seg6AccY203 rho = seg6AccY202 rho + rho 5792 := by
      unfold seg6AccY203 seg6AccY202
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 52]
      ring
    have hsum : seg6AccX202 rho + seg6AccY202 rho = rho 5784 := by
      unfold seg6AccX202 seg6AccY202
      linear_combination r5391
    have ha0 : (rho 5782 + rho 5783) * (seg6AccX202 rho + seg6AccY202 rho) = rho 5785 := by
      rw [hsum]
      linear_combination r5392
    have ha1 : rho 5783 * seg6AccX202 rho = rho 5786 := by
      unfold seg6AccX202
      linear_combination r5393
    have ha2 : rho 5782 * seg6AccY202 rho = rho 5787 := by
      unfold seg6AccY202
      linear_combination r5394
    have ha3 : 3021 * rho 5786 * rho 5787 = rho 5788 := by
      linear_combination r5395
    have ha4 : rho 5789 * (1 + rho 5788) = rho 5786 + rho 5787 := by
      linear_combination r5396
    have ha5 : rho 5790 * (1 - rho 5788) = rho 5785 - rho 5786 - rho 5787 := by
      linear_combination r5397
    have haddx :
        rho 5789 * (1 + 3021 * (rho 5783 * seg6AccX202 rho) * (rho 5782 * seg6AccY202 rho)) =
          rho 5783 * seg6AccX202 rho + rho 5782 * seg6AccY202 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5790 * (1 - 3021 * (rho 5783 * seg6AccX202 rho) * (rho 5782 * seg6AccY202 rho)) =
          (-1) * (rho 5783 * seg6AccX202 rho) - rho 5782 * seg6AccY202 rho +
            (seg6AccY202 rho - seg6AccX202 rho * (-1)) * (rho 5782 + rho 5783) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5790 * (1 - rho 5788) = rho 5785 - rho 5786 - rho 5787 := ha5
        _ = (-1) * rho 5786 - rho 5787 + (seg6AccY202 rho - seg6AccX202 rho * (-1)) * (rho 5782 + rho 5783) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX203 rho = seg6AccX202 rho - Bool.toZMod bit * (seg6AccX202 rho - rho 5789) := by
      have hd : rho 5791 = Bool.toZMod bit * (rho 5789 - seg6AccX202 rho) := by
        rw [← hbit]
        unfold seg6AccX202
        linear_combination -r5398
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY203 rho = seg6AccY202 rho - Bool.toZMod bit * (seg6AccY202 rho - rho 5790) := by
      have hd : rho 5792 = Bool.toZMod bit * (rho 5790 - seg6AccY202 rho) := by
        rw [← hbit]
        unfold seg6AccY202
        linear_combination -r5399
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5782 * rho 5783 = rho 5793 := by linear_combination r5400
    have hd1 : rho 5782 * rho 5782 = rho 5794 := by linear_combination r5401
    have hd2 : rho 5783 * rho 5783 = rho 5795 := by linear_combination r5402
    have hd3 : rho 5796 * (rho 5783 * rho 5783 + rho 5782 * rho 5782 * (-1)) = 2 * (rho 5782 * rho 5783) := by
      rw [hd0, hd1, hd2]
      linear_combination r5403
    have hd4 : rho 5797 * (2 - (rho 5783 * rho 5783 + rho 5782 * rho 5782 * (-1))) = rho 5783 * rho 5783 - rho 5782 * rho 5782 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5404
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX202 rho : Seg6.F), (seg6AccY202 rho : Seg6.F)⟩
      ⟨(rho 5782 : Seg6.F), (rho 5783 : Seg6.F)⟩
      ⟨(rho 5789 : Seg6.F), (rho 5790 : Seg6.F)⟩
      ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩
      ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung202

theorem seg6_rows203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5405 rho ∧ Seg6.relationRow5406 rho ∧ Seg6.relationRow5407 rho ∧ Seg6.relationRow5408 rho ∧ Seg6.relationRow5409 rho ∧ Seg6.relationRow5410 rho ∧ Seg6.relationRow5411 rho ∧ Seg6.relationRow5412 rho ∧ Seg6.relationRow5413 rho ∧ Seg6.relationRow5414 rho ∧ Seg6.relationRow5415 rho ∧ Seg6.relationRow5416 rho ∧ Seg6.relationRow5417 rho ∧ Seg6.relationRow5418 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩

theorem seg6_rung203 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2087 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩
        ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩
        ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩
        ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩ := by
  obtain ⟨r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418⟩ := seg6_rows203 rho h
  unfold Seg6.relationRow5405 Seg6.relationLc1103 at r5405
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5405
  unfold Seg6.relationRow5406 at r5406
  unfold Seg6.relationRow5407 Seg6.relationLc1104 at r5407
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5407
  unfold Seg6.relationRow5408 Seg6.relationLc1105 at r5408
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5408
  unfold Seg6.relationRow5409 at r5409
  unfold Seg6.relationRow5410 at r5410
  unfold Seg6.relationRow5411 at r5411
  unfold Seg6.relationRow5412 Seg6.relationLc1106 at r5412
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5412
  unfold Seg6.relationRow5413 Seg6.relationLc1107 at r5413
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5413
  unfold Seg6.relationRow5414 at r5414
  unfold Seg6.relationRow5415 at r5415
  unfold Seg6.relationRow5416 at r5416
  unfold Seg6.relationRow5417 at r5417
  unfold Seg6.relationRow5418 at r5418
  have hrung203 (bit : Bool) (hbit : rho 2087 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩
        ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩
        ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩
        ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩ := by
    have hnextx : seg6AccX204 rho = seg6AccX203 rho + rho 5805 := by
      unfold seg6AccX204 seg6AccX203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 53]
      ring
    have hnexty : seg6AccY204 rho = seg6AccY203 rho + rho 5806 := by
      unfold seg6AccY204 seg6AccY203
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 53]
      ring
    have hsum : seg6AccX203 rho + seg6AccY203 rho = rho 5798 := by
      unfold seg6AccX203 seg6AccY203
      linear_combination r5405
    have ha0 : (rho 5796 + rho 5797) * (seg6AccX203 rho + seg6AccY203 rho) = rho 5799 := by
      rw [hsum]
      linear_combination r5406
    have ha1 : rho 5797 * seg6AccX203 rho = rho 5800 := by
      unfold seg6AccX203
      linear_combination r5407
    have ha2 : rho 5796 * seg6AccY203 rho = rho 5801 := by
      unfold seg6AccY203
      linear_combination r5408
    have ha3 : 3021 * rho 5800 * rho 5801 = rho 5802 := by
      linear_combination r5409
    have ha4 : rho 5803 * (1 + rho 5802) = rho 5800 + rho 5801 := by
      linear_combination r5410
    have ha5 : rho 5804 * (1 - rho 5802) = rho 5799 - rho 5800 - rho 5801 := by
      linear_combination r5411
    have haddx :
        rho 5803 * (1 + 3021 * (rho 5797 * seg6AccX203 rho) * (rho 5796 * seg6AccY203 rho)) =
          rho 5797 * seg6AccX203 rho + rho 5796 * seg6AccY203 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5804 * (1 - 3021 * (rho 5797 * seg6AccX203 rho) * (rho 5796 * seg6AccY203 rho)) =
          (-1) * (rho 5797 * seg6AccX203 rho) - rho 5796 * seg6AccY203 rho +
            (seg6AccY203 rho - seg6AccX203 rho * (-1)) * (rho 5796 + rho 5797) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5804 * (1 - rho 5802) = rho 5799 - rho 5800 - rho 5801 := ha5
        _ = (-1) * rho 5800 - rho 5801 + (seg6AccY203 rho - seg6AccX203 rho * (-1)) * (rho 5796 + rho 5797) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX204 rho = seg6AccX203 rho - Bool.toZMod bit * (seg6AccX203 rho - rho 5803) := by
      have hd : rho 5805 = Bool.toZMod bit * (rho 5803 - seg6AccX203 rho) := by
        rw [← hbit]
        unfold seg6AccX203
        linear_combination -r5412
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY204 rho = seg6AccY203 rho - Bool.toZMod bit * (seg6AccY203 rho - rho 5804) := by
      have hd : rho 5806 = Bool.toZMod bit * (rho 5804 - seg6AccY203 rho) := by
        rw [← hbit]
        unfold seg6AccY203
        linear_combination -r5413
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5796 * rho 5797 = rho 5807 := by linear_combination r5414
    have hd1 : rho 5796 * rho 5796 = rho 5808 := by linear_combination r5415
    have hd2 : rho 5797 * rho 5797 = rho 5809 := by linear_combination r5416
    have hd3 : rho 5810 * (rho 5797 * rho 5797 + rho 5796 * rho 5796 * (-1)) = 2 * (rho 5796 * rho 5797) := by
      rw [hd0, hd1, hd2]
      linear_combination r5417
    have hd4 : rho 5811 * (2 - (rho 5797 * rho 5797 + rho 5796 * rho 5796 * (-1))) = rho 5797 * rho 5797 - rho 5796 * rho 5796 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5418
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX203 rho : Seg6.F), (seg6AccY203 rho : Seg6.F)⟩
      ⟨(rho 5796 : Seg6.F), (rho 5797 : Seg6.F)⟩
      ⟨(rho 5803 : Seg6.F), (rho 5804 : Seg6.F)⟩
      ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩
      ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung203

theorem seg6_rows204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5419 rho ∧ Seg6.relationRow5420 rho ∧ Seg6.relationRow5421 rho ∧ Seg6.relationRow5422 rho ∧ Seg6.relationRow5423 rho ∧ Seg6.relationRow5424 rho ∧ Seg6.relationRow5425 rho ∧ Seg6.relationRow5426 rho ∧ Seg6.relationRow5427 rho ∧ Seg6.relationRow5428 rho ∧ Seg6.relationRow5429 rho ∧ Seg6.relationRow5430 rho ∧ Seg6.relationRow5431 rho ∧ Seg6.relationRow5432 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, _, _, _, _, _, _, _⟩
  exact ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩

theorem seg6_rung204 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2088 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩
        ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩
        ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩
        ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩ := by
  obtain ⟨r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432⟩ := seg6_rows204 rho h
  unfold Seg6.relationRow5419 Seg6.relationLc1108 at r5419
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5419
  unfold Seg6.relationRow5420 at r5420
  unfold Seg6.relationRow5421 Seg6.relationLc1109 at r5421
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5421
  unfold Seg6.relationRow5422 Seg6.relationLc1110 at r5422
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5422
  unfold Seg6.relationRow5423 at r5423
  unfold Seg6.relationRow5424 at r5424
  unfold Seg6.relationRow5425 at r5425
  unfold Seg6.relationRow5426 Seg6.relationLc1111 at r5426
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5426
  unfold Seg6.relationRow5427 Seg6.relationLc1112 at r5427
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5427
  unfold Seg6.relationRow5428 at r5428
  unfold Seg6.relationRow5429 at r5429
  unfold Seg6.relationRow5430 at r5430
  unfold Seg6.relationRow5431 at r5431
  unfold Seg6.relationRow5432 at r5432
  have hrung204 (bit : Bool) (hbit : rho 2088 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩
        ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩
        ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩
        ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩ := by
    have hnextx : seg6AccX205 rho = seg6AccX204 rho + rho 5819 := by
      unfold seg6AccX205 seg6AccX204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 54]
      ring
    have hnexty : seg6AccY205 rho = seg6AccY204 rho + rho 5820 := by
      unfold seg6AccY205 seg6AccY204
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 54]
      ring
    have hsum : seg6AccX204 rho + seg6AccY204 rho = rho 5812 := by
      unfold seg6AccX204 seg6AccY204
      linear_combination r5419
    have ha0 : (rho 5810 + rho 5811) * (seg6AccX204 rho + seg6AccY204 rho) = rho 5813 := by
      rw [hsum]
      linear_combination r5420
    have ha1 : rho 5811 * seg6AccX204 rho = rho 5814 := by
      unfold seg6AccX204
      linear_combination r5421
    have ha2 : rho 5810 * seg6AccY204 rho = rho 5815 := by
      unfold seg6AccY204
      linear_combination r5422
    have ha3 : 3021 * rho 5814 * rho 5815 = rho 5816 := by
      linear_combination r5423
    have ha4 : rho 5817 * (1 + rho 5816) = rho 5814 + rho 5815 := by
      linear_combination r5424
    have ha5 : rho 5818 * (1 - rho 5816) = rho 5813 - rho 5814 - rho 5815 := by
      linear_combination r5425
    have haddx :
        rho 5817 * (1 + 3021 * (rho 5811 * seg6AccX204 rho) * (rho 5810 * seg6AccY204 rho)) =
          rho 5811 * seg6AccX204 rho + rho 5810 * seg6AccY204 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5818 * (1 - 3021 * (rho 5811 * seg6AccX204 rho) * (rho 5810 * seg6AccY204 rho)) =
          (-1) * (rho 5811 * seg6AccX204 rho) - rho 5810 * seg6AccY204 rho +
            (seg6AccY204 rho - seg6AccX204 rho * (-1)) * (rho 5810 + rho 5811) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5818 * (1 - rho 5816) = rho 5813 - rho 5814 - rho 5815 := ha5
        _ = (-1) * rho 5814 - rho 5815 + (seg6AccY204 rho - seg6AccX204 rho * (-1)) * (rho 5810 + rho 5811) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX205 rho = seg6AccX204 rho - Bool.toZMod bit * (seg6AccX204 rho - rho 5817) := by
      have hd : rho 5819 = Bool.toZMod bit * (rho 5817 - seg6AccX204 rho) := by
        rw [← hbit]
        unfold seg6AccX204
        linear_combination -r5426
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY205 rho = seg6AccY204 rho - Bool.toZMod bit * (seg6AccY204 rho - rho 5818) := by
      have hd : rho 5820 = Bool.toZMod bit * (rho 5818 - seg6AccY204 rho) := by
        rw [← hbit]
        unfold seg6AccY204
        linear_combination -r5427
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5810 * rho 5811 = rho 5821 := by linear_combination r5428
    have hd1 : rho 5810 * rho 5810 = rho 5822 := by linear_combination r5429
    have hd2 : rho 5811 * rho 5811 = rho 5823 := by linear_combination r5430
    have hd3 : rho 5824 * (rho 5811 * rho 5811 + rho 5810 * rho 5810 * (-1)) = 2 * (rho 5810 * rho 5811) := by
      rw [hd0, hd1, hd2]
      linear_combination r5431
    have hd4 : rho 5825 * (2 - (rho 5811 * rho 5811 + rho 5810 * rho 5810 * (-1))) = rho 5811 * rho 5811 - rho 5810 * rho 5810 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5432
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX204 rho : Seg6.F), (seg6AccY204 rho : Seg6.F)⟩
      ⟨(rho 5810 : Seg6.F), (rho 5811 : Seg6.F)⟩
      ⟨(rho 5817 : Seg6.F), (rho 5818 : Seg6.F)⟩
      ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩
      ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung204

theorem seg6_rows205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5433 rho ∧ Seg6.relationRow5434 rho ∧ Seg6.relationRow5435 rho ∧ Seg6.relationRow5436 rho ∧ Seg6.relationRow5437 rho ∧ Seg6.relationRow5438 rho ∧ Seg6.relationRow5439 rho ∧ Seg6.relationRow5440 rho ∧ Seg6.relationRow5441 rho ∧ Seg6.relationRow5442 rho ∧ Seg6.relationRow5443 rho ∧ Seg6.relationRow5444 rho ∧ Seg6.relationRow5445 rho ∧ Seg6.relationRow5446 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩

theorem seg6_rung205 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2089 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩
        ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩
        ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩
        ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩ := by
  obtain ⟨r5433, r5434, r5435, r5436, r5437, r5438, r5439, r5440, r5441, r5442, r5443, r5444, r5445, r5446⟩ := seg6_rows205 rho h
  unfold Seg6.relationRow5433 Seg6.relationLc1113 at r5433
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5433
  unfold Seg6.relationRow5434 at r5434
  unfold Seg6.relationRow5435 Seg6.relationLc1114 at r5435
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5435
  unfold Seg6.relationRow5436 Seg6.relationLc1115 at r5436
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5436
  unfold Seg6.relationRow5437 at r5437
  unfold Seg6.relationRow5438 at r5438
  unfold Seg6.relationRow5439 at r5439
  unfold Seg6.relationRow5440 Seg6.relationLc1116 at r5440
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5440
  unfold Seg6.relationRow5441 Seg6.relationLc1117 at r5441
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5441
  unfold Seg6.relationRow5442 at r5442
  unfold Seg6.relationRow5443 at r5443
  unfold Seg6.relationRow5444 at r5444
  unfold Seg6.relationRow5445 at r5445
  unfold Seg6.relationRow5446 at r5446
  have hrung205 (bit : Bool) (hbit : rho 2089 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩
        ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩
        ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩
        ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩ := by
    have hnextx : seg6AccX206 rho = seg6AccX205 rho + rho 5833 := by
      unfold seg6AccX206 seg6AccX205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 55]
      ring
    have hnexty : seg6AccY206 rho = seg6AccY205 rho + rho 5834 := by
      unfold seg6AccY206 seg6AccY205
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 55]
      ring
    have hsum : seg6AccX205 rho + seg6AccY205 rho = rho 5826 := by
      unfold seg6AccX205 seg6AccY205
      linear_combination r5433
    have ha0 : (rho 5824 + rho 5825) * (seg6AccX205 rho + seg6AccY205 rho) = rho 5827 := by
      rw [hsum]
      linear_combination r5434
    have ha1 : rho 5825 * seg6AccX205 rho = rho 5828 := by
      unfold seg6AccX205
      linear_combination r5435
    have ha2 : rho 5824 * seg6AccY205 rho = rho 5829 := by
      unfold seg6AccY205
      linear_combination r5436
    have ha3 : 3021 * rho 5828 * rho 5829 = rho 5830 := by
      linear_combination r5437
    have ha4 : rho 5831 * (1 + rho 5830) = rho 5828 + rho 5829 := by
      linear_combination r5438
    have ha5 : rho 5832 * (1 - rho 5830) = rho 5827 - rho 5828 - rho 5829 := by
      linear_combination r5439
    have haddx :
        rho 5831 * (1 + 3021 * (rho 5825 * seg6AccX205 rho) * (rho 5824 * seg6AccY205 rho)) =
          rho 5825 * seg6AccX205 rho + rho 5824 * seg6AccY205 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5832 * (1 - 3021 * (rho 5825 * seg6AccX205 rho) * (rho 5824 * seg6AccY205 rho)) =
          (-1) * (rho 5825 * seg6AccX205 rho) - rho 5824 * seg6AccY205 rho +
            (seg6AccY205 rho - seg6AccX205 rho * (-1)) * (rho 5824 + rho 5825) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5832 * (1 - rho 5830) = rho 5827 - rho 5828 - rho 5829 := ha5
        _ = (-1) * rho 5828 - rho 5829 + (seg6AccY205 rho - seg6AccX205 rho * (-1)) * (rho 5824 + rho 5825) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX206 rho = seg6AccX205 rho - Bool.toZMod bit * (seg6AccX205 rho - rho 5831) := by
      have hd : rho 5833 = Bool.toZMod bit * (rho 5831 - seg6AccX205 rho) := by
        rw [← hbit]
        unfold seg6AccX205
        linear_combination -r5440
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY206 rho = seg6AccY205 rho - Bool.toZMod bit * (seg6AccY205 rho - rho 5832) := by
      have hd : rho 5834 = Bool.toZMod bit * (rho 5832 - seg6AccY205 rho) := by
        rw [← hbit]
        unfold seg6AccY205
        linear_combination -r5441
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5824 * rho 5825 = rho 5835 := by linear_combination r5442
    have hd1 : rho 5824 * rho 5824 = rho 5836 := by linear_combination r5443
    have hd2 : rho 5825 * rho 5825 = rho 5837 := by linear_combination r5444
    have hd3 : rho 5838 * (rho 5825 * rho 5825 + rho 5824 * rho 5824 * (-1)) = 2 * (rho 5824 * rho 5825) := by
      rw [hd0, hd1, hd2]
      linear_combination r5445
    have hd4 : rho 5839 * (2 - (rho 5825 * rho 5825 + rho 5824 * rho 5824 * (-1))) = rho 5825 * rho 5825 - rho 5824 * rho 5824 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5446
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX205 rho : Seg6.F), (seg6AccY205 rho : Seg6.F)⟩
      ⟨(rho 5824 : Seg6.F), (rho 5825 : Seg6.F)⟩
      ⟨(rho 5831 : Seg6.F), (rho 5832 : Seg6.F)⟩
      ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩
      ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung205

theorem seg6_rows206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5447 rho ∧ Seg6.relationRow5448 rho ∧ Seg6.relationRow5449 rho ∧ Seg6.relationRow5450 rho ∧ Seg6.relationRow5451 rho ∧ Seg6.relationRow5452 rho ∧ Seg6.relationRow5453 rho ∧ Seg6.relationRow5454 rho ∧ Seg6.relationRow5455 rho ∧ Seg6.relationRow5456 rho ∧ Seg6.relationRow5457 rho ∧ Seg6.relationRow5458 rho ∧ Seg6.relationRow5459 rho ∧ Seg6.relationRow5460 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩

theorem seg6_rung206 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2090 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩
        ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩
        ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩
        ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩ := by
  obtain ⟨r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460⟩ := seg6_rows206 rho h
  unfold Seg6.relationRow5447 Seg6.relationLc1118 at r5447
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5447
  unfold Seg6.relationRow5448 at r5448
  unfold Seg6.relationRow5449 Seg6.relationLc1119 at r5449
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5449
  unfold Seg6.relationRow5450 Seg6.relationLc1120 at r5450
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5450
  unfold Seg6.relationRow5451 at r5451
  unfold Seg6.relationRow5452 at r5452
  unfold Seg6.relationRow5453 at r5453
  unfold Seg6.relationRow5454 Seg6.relationLc1121 at r5454
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5454
  unfold Seg6.relationRow5455 Seg6.relationLc1122 at r5455
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5455
  unfold Seg6.relationRow5456 at r5456
  unfold Seg6.relationRow5457 at r5457
  unfold Seg6.relationRow5458 at r5458
  unfold Seg6.relationRow5459 at r5459
  unfold Seg6.relationRow5460 at r5460
  have hrung206 (bit : Bool) (hbit : rho 2090 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩
        ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩
        ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩
        ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩ := by
    have hnextx : seg6AccX207 rho = seg6AccX206 rho + rho 5847 := by
      unfold seg6AccX207 seg6AccX206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 56]
      ring
    have hnexty : seg6AccY207 rho = seg6AccY206 rho + rho 5848 := by
      unfold seg6AccY207 seg6AccY206
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 56]
      ring
    have hsum : seg6AccX206 rho + seg6AccY206 rho = rho 5840 := by
      unfold seg6AccX206 seg6AccY206
      linear_combination r5447
    have ha0 : (rho 5838 + rho 5839) * (seg6AccX206 rho + seg6AccY206 rho) = rho 5841 := by
      rw [hsum]
      linear_combination r5448
    have ha1 : rho 5839 * seg6AccX206 rho = rho 5842 := by
      unfold seg6AccX206
      linear_combination r5449
    have ha2 : rho 5838 * seg6AccY206 rho = rho 5843 := by
      unfold seg6AccY206
      linear_combination r5450
    have ha3 : 3021 * rho 5842 * rho 5843 = rho 5844 := by
      linear_combination r5451
    have ha4 : rho 5845 * (1 + rho 5844) = rho 5842 + rho 5843 := by
      linear_combination r5452
    have ha5 : rho 5846 * (1 - rho 5844) = rho 5841 - rho 5842 - rho 5843 := by
      linear_combination r5453
    have haddx :
        rho 5845 * (1 + 3021 * (rho 5839 * seg6AccX206 rho) * (rho 5838 * seg6AccY206 rho)) =
          rho 5839 * seg6AccX206 rho + rho 5838 * seg6AccY206 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5846 * (1 - 3021 * (rho 5839 * seg6AccX206 rho) * (rho 5838 * seg6AccY206 rho)) =
          (-1) * (rho 5839 * seg6AccX206 rho) - rho 5838 * seg6AccY206 rho +
            (seg6AccY206 rho - seg6AccX206 rho * (-1)) * (rho 5838 + rho 5839) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5846 * (1 - rho 5844) = rho 5841 - rho 5842 - rho 5843 := ha5
        _ = (-1) * rho 5842 - rho 5843 + (seg6AccY206 rho - seg6AccX206 rho * (-1)) * (rho 5838 + rho 5839) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX207 rho = seg6AccX206 rho - Bool.toZMod bit * (seg6AccX206 rho - rho 5845) := by
      have hd : rho 5847 = Bool.toZMod bit * (rho 5845 - seg6AccX206 rho) := by
        rw [← hbit]
        unfold seg6AccX206
        linear_combination -r5454
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY207 rho = seg6AccY206 rho - Bool.toZMod bit * (seg6AccY206 rho - rho 5846) := by
      have hd : rho 5848 = Bool.toZMod bit * (rho 5846 - seg6AccY206 rho) := by
        rw [← hbit]
        unfold seg6AccY206
        linear_combination -r5455
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5838 * rho 5839 = rho 5849 := by linear_combination r5456
    have hd1 : rho 5838 * rho 5838 = rho 5850 := by linear_combination r5457
    have hd2 : rho 5839 * rho 5839 = rho 5851 := by linear_combination r5458
    have hd3 : rho 5852 * (rho 5839 * rho 5839 + rho 5838 * rho 5838 * (-1)) = 2 * (rho 5838 * rho 5839) := by
      rw [hd0, hd1, hd2]
      linear_combination r5459
    have hd4 : rho 5853 * (2 - (rho 5839 * rho 5839 + rho 5838 * rho 5838 * (-1))) = rho 5839 * rho 5839 - rho 5838 * rho 5838 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5460
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX206 rho : Seg6.F), (seg6AccY206 rho : Seg6.F)⟩
      ⟨(rho 5838 : Seg6.F), (rho 5839 : Seg6.F)⟩
      ⟨(rho 5845 : Seg6.F), (rho 5846 : Seg6.F)⟩
      ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩
      ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung206

theorem seg6_rows207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5461 rho ∧ Seg6.relationRow5462 rho ∧ Seg6.relationRow5463 rho ∧ Seg6.relationRow5464 rho ∧ Seg6.relationRow5465 rho ∧ Seg6.relationRow5466 rho ∧ Seg6.relationRow5467 rho ∧ Seg6.relationRow5468 rho ∧ Seg6.relationRow5469 rho ∧ Seg6.relationRow5470 rho ∧ Seg6.relationRow5471 rho ∧ Seg6.relationRow5472 rho ∧ Seg6.relationRow5473 rho ∧ Seg6.relationRow5474 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩

theorem seg6_rung207 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2091 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩
        ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩
        ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩
        ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩ := by
  obtain ⟨r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474⟩ := seg6_rows207 rho h
  unfold Seg6.relationRow5461 Seg6.relationLc1123 at r5461
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5461
  unfold Seg6.relationRow5462 at r5462
  unfold Seg6.relationRow5463 Seg6.relationLc1124 at r5463
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5463
  unfold Seg6.relationRow5464 Seg6.relationLc1125 at r5464
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5464
  unfold Seg6.relationRow5465 at r5465
  unfold Seg6.relationRow5466 at r5466
  unfold Seg6.relationRow5467 at r5467
  unfold Seg6.relationRow5468 Seg6.relationLc1126 at r5468
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5468
  unfold Seg6.relationRow5469 Seg6.relationLc1127 at r5469
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5469
  unfold Seg6.relationRow5470 at r5470
  unfold Seg6.relationRow5471 at r5471
  unfold Seg6.relationRow5472 at r5472
  unfold Seg6.relationRow5473 at r5473
  unfold Seg6.relationRow5474 at r5474
  have hrung207 (bit : Bool) (hbit : rho 2091 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩
        ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩
        ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩
        ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩ := by
    have hnextx : seg6AccX208 rho = seg6AccX207 rho + rho 5861 := by
      unfold seg6AccX208 seg6AccX207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 57]
      ring
    have hnexty : seg6AccY208 rho = seg6AccY207 rho + rho 5862 := by
      unfold seg6AccY208 seg6AccY207
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 57]
      ring
    have hsum : seg6AccX207 rho + seg6AccY207 rho = rho 5854 := by
      unfold seg6AccX207 seg6AccY207
      linear_combination r5461
    have ha0 : (rho 5852 + rho 5853) * (seg6AccX207 rho + seg6AccY207 rho) = rho 5855 := by
      rw [hsum]
      linear_combination r5462
    have ha1 : rho 5853 * seg6AccX207 rho = rho 5856 := by
      unfold seg6AccX207
      linear_combination r5463
    have ha2 : rho 5852 * seg6AccY207 rho = rho 5857 := by
      unfold seg6AccY207
      linear_combination r5464
    have ha3 : 3021 * rho 5856 * rho 5857 = rho 5858 := by
      linear_combination r5465
    have ha4 : rho 5859 * (1 + rho 5858) = rho 5856 + rho 5857 := by
      linear_combination r5466
    have ha5 : rho 5860 * (1 - rho 5858) = rho 5855 - rho 5856 - rho 5857 := by
      linear_combination r5467
    have haddx :
        rho 5859 * (1 + 3021 * (rho 5853 * seg6AccX207 rho) * (rho 5852 * seg6AccY207 rho)) =
          rho 5853 * seg6AccX207 rho + rho 5852 * seg6AccY207 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5860 * (1 - 3021 * (rho 5853 * seg6AccX207 rho) * (rho 5852 * seg6AccY207 rho)) =
          (-1) * (rho 5853 * seg6AccX207 rho) - rho 5852 * seg6AccY207 rho +
            (seg6AccY207 rho - seg6AccX207 rho * (-1)) * (rho 5852 + rho 5853) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5860 * (1 - rho 5858) = rho 5855 - rho 5856 - rho 5857 := ha5
        _ = (-1) * rho 5856 - rho 5857 + (seg6AccY207 rho - seg6AccX207 rho * (-1)) * (rho 5852 + rho 5853) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX208 rho = seg6AccX207 rho - Bool.toZMod bit * (seg6AccX207 rho - rho 5859) := by
      have hd : rho 5861 = Bool.toZMod bit * (rho 5859 - seg6AccX207 rho) := by
        rw [← hbit]
        unfold seg6AccX207
        linear_combination -r5468
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY208 rho = seg6AccY207 rho - Bool.toZMod bit * (seg6AccY207 rho - rho 5860) := by
      have hd : rho 5862 = Bool.toZMod bit * (rho 5860 - seg6AccY207 rho) := by
        rw [← hbit]
        unfold seg6AccY207
        linear_combination -r5469
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5852 * rho 5853 = rho 5863 := by linear_combination r5470
    have hd1 : rho 5852 * rho 5852 = rho 5864 := by linear_combination r5471
    have hd2 : rho 5853 * rho 5853 = rho 5865 := by linear_combination r5472
    have hd3 : rho 5866 * (rho 5853 * rho 5853 + rho 5852 * rho 5852 * (-1)) = 2 * (rho 5852 * rho 5853) := by
      rw [hd0, hd1, hd2]
      linear_combination r5473
    have hd4 : rho 5867 * (2 - (rho 5853 * rho 5853 + rho 5852 * rho 5852 * (-1))) = rho 5853 * rho 5853 - rho 5852 * rho 5852 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5474
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX207 rho : Seg6.F), (seg6AccY207 rho : Seg6.F)⟩
      ⟨(rho 5852 : Seg6.F), (rho 5853 : Seg6.F)⟩
      ⟨(rho 5859 : Seg6.F), (rho 5860 : Seg6.F)⟩
      ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩
      ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung207

theorem seg6_rows208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5475 rho ∧ Seg6.relationRow5476 rho ∧ Seg6.relationRow5477 rho ∧ Seg6.relationRow5478 rho ∧ Seg6.relationRow5479 rho ∧ Seg6.relationRow5480 rho ∧ Seg6.relationRow5481 rho ∧ Seg6.relationRow5482 rho ∧ Seg6.relationRow5483 rho ∧ Seg6.relationRow5484 rho ∧ Seg6.relationRow5485 rho ∧ Seg6.relationRow5486 rho ∧ Seg6.relationRow5487 rho ∧ Seg6.relationRow5488 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p68, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart68 at p68
  rcases p68 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩

theorem seg6_rung208 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2092 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩
        ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩
        ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩
        ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩ := by
  obtain ⟨r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488⟩ := seg6_rows208 rho h
  unfold Seg6.relationRow5475 Seg6.relationLc1128 at r5475
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5475
  unfold Seg6.relationRow5476 at r5476
  unfold Seg6.relationRow5477 Seg6.relationLc1129 at r5477
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5477
  unfold Seg6.relationRow5478 Seg6.relationLc1130 at r5478
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5478
  unfold Seg6.relationRow5479 at r5479
  unfold Seg6.relationRow5480 at r5480
  unfold Seg6.relationRow5481 at r5481
  unfold Seg6.relationRow5482 Seg6.relationLc1131 at r5482
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5482
  unfold Seg6.relationRow5483 Seg6.relationLc1132 at r5483
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5483
  unfold Seg6.relationRow5484 at r5484
  unfold Seg6.relationRow5485 at r5485
  unfold Seg6.relationRow5486 at r5486
  unfold Seg6.relationRow5487 at r5487
  unfold Seg6.relationRow5488 at r5488
  have hrung208 (bit : Bool) (hbit : rho 2092 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩
        ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩
        ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩
        ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩ := by
    have hnextx : seg6AccX209 rho = seg6AccX208 rho + rho 5875 := by
      unfold seg6AccX209 seg6AccX208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 58]
      ring
    have hnexty : seg6AccY209 rho = seg6AccY208 rho + rho 5876 := by
      unfold seg6AccY209 seg6AccY208
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 58]
      ring
    have hsum : seg6AccX208 rho + seg6AccY208 rho = rho 5868 := by
      unfold seg6AccX208 seg6AccY208
      linear_combination r5475
    have ha0 : (rho 5866 + rho 5867) * (seg6AccX208 rho + seg6AccY208 rho) = rho 5869 := by
      rw [hsum]
      linear_combination r5476
    have ha1 : rho 5867 * seg6AccX208 rho = rho 5870 := by
      unfold seg6AccX208
      linear_combination r5477
    have ha2 : rho 5866 * seg6AccY208 rho = rho 5871 := by
      unfold seg6AccY208
      linear_combination r5478
    have ha3 : 3021 * rho 5870 * rho 5871 = rho 5872 := by
      linear_combination r5479
    have ha4 : rho 5873 * (1 + rho 5872) = rho 5870 + rho 5871 := by
      linear_combination r5480
    have ha5 : rho 5874 * (1 - rho 5872) = rho 5869 - rho 5870 - rho 5871 := by
      linear_combination r5481
    have haddx :
        rho 5873 * (1 + 3021 * (rho 5867 * seg6AccX208 rho) * (rho 5866 * seg6AccY208 rho)) =
          rho 5867 * seg6AccX208 rho + rho 5866 * seg6AccY208 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5874 * (1 - 3021 * (rho 5867 * seg6AccX208 rho) * (rho 5866 * seg6AccY208 rho)) =
          (-1) * (rho 5867 * seg6AccX208 rho) - rho 5866 * seg6AccY208 rho +
            (seg6AccY208 rho - seg6AccX208 rho * (-1)) * (rho 5866 + rho 5867) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5874 * (1 - rho 5872) = rho 5869 - rho 5870 - rho 5871 := ha5
        _ = (-1) * rho 5870 - rho 5871 + (seg6AccY208 rho - seg6AccX208 rho * (-1)) * (rho 5866 + rho 5867) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX209 rho = seg6AccX208 rho - Bool.toZMod bit * (seg6AccX208 rho - rho 5873) := by
      have hd : rho 5875 = Bool.toZMod bit * (rho 5873 - seg6AccX208 rho) := by
        rw [← hbit]
        unfold seg6AccX208
        linear_combination -r5482
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY209 rho = seg6AccY208 rho - Bool.toZMod bit * (seg6AccY208 rho - rho 5874) := by
      have hd : rho 5876 = Bool.toZMod bit * (rho 5874 - seg6AccY208 rho) := by
        rw [← hbit]
        unfold seg6AccY208
        linear_combination -r5483
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5866 * rho 5867 = rho 5877 := by linear_combination r5484
    have hd1 : rho 5866 * rho 5866 = rho 5878 := by linear_combination r5485
    have hd2 : rho 5867 * rho 5867 = rho 5879 := by linear_combination r5486
    have hd3 : rho 5880 * (rho 5867 * rho 5867 + rho 5866 * rho 5866 * (-1)) = 2 * (rho 5866 * rho 5867) := by
      rw [hd0, hd1, hd2]
      linear_combination r5487
    have hd4 : rho 5881 * (2 - (rho 5867 * rho 5867 + rho 5866 * rho 5866 * (-1))) = rho 5867 * rho 5867 - rho 5866 * rho 5866 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5488
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX208 rho : Seg6.F), (seg6AccY208 rho : Seg6.F)⟩
      ⟨(rho 5866 : Seg6.F), (rho 5867 : Seg6.F)⟩
      ⟨(rho 5873 : Seg6.F), (rho 5874 : Seg6.F)⟩
      ⟨(seg6AccX209 rho : Seg6.F), (seg6AccY209 rho : Seg6.F)⟩
      ⟨(rho 5880 : Seg6.F), (rho 5881 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung208

theorem seg6_hstep_c18 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 198 ≤ i → i < 209 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung198 rho h bits[198]! (hbitAt 198 (by omega)) hacc hcur
  · exact seg6_rung199 rho h bits[199]! (hbitAt 199 (by omega)) hacc hcur
  · exact seg6_rung200 rho h bits[200]! (hbitAt 200 (by omega)) hacc hcur
  · exact seg6_rung201 rho h bits[201]! (hbitAt 201 (by omega)) hacc hcur
  · exact seg6_rung202 rho h bits[202]! (hbitAt 202 (by omega)) hacc hcur
  · exact seg6_rung203 rho h bits[203]! (hbitAt 203 (by omega)) hacc hcur
  · exact seg6_rung204 rho h bits[204]! (hbitAt 204 (by omega)) hacc hcur
  · exact seg6_rung205 rho h bits[205]! (hbitAt 205 (by omega)) hacc hcur
  · exact seg6_rung206 rho h bits[206]! (hbitAt 206 (by omega)) hacc hcur
  · exact seg6_rung207 rho h bits[207]! (hbitAt 207 (by omega)) hacc hcur
  · exact seg6_rung208 rho h bits[208]! (hbitAt 208 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
