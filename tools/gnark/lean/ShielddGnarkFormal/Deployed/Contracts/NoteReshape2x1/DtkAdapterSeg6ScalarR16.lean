import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5027 rho ∧ Seg6.relationRow5028 rho ∧ Seg6.relationRow5029 rho ∧ Seg6.relationRow5030 rho ∧ Seg6.relationRow5031 rho ∧ Seg6.relationRow5032 rho ∧ Seg6.relationRow5033 rho ∧ Seg6.relationRow5034 rho ∧ Seg6.relationRow5035 rho ∧ Seg6.relationRow5036 rho ∧ Seg6.relationRow5037 rho ∧ Seg6.relationRow5038 rho ∧ Seg6.relationRow5039 rho ∧ Seg6.relationRow5040 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨r5040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩

theorem seg6_rung176 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2066 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5424 : Seg6.F), (rho 5425 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩
        ⟨(rho 5424 : Seg6.F), (rho 5425 : Seg6.F)⟩
        ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩
        ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩ := by
  obtain ⟨r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039, r5040⟩ := seg6_rows176 rho h
  unfold Seg6.relationRow5027 at r5027
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027
  unfold Seg6.relationRow5028 at r5028
  unfold Seg6.relationRow5029 at r5029
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5029
  unfold Seg6.relationRow5030 at r5030
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5030
  unfold Seg6.relationRow5031 at r5031
  unfold Seg6.relationRow5032 at r5032
  unfold Seg6.relationRow5033 at r5033
  unfold Seg6.relationRow5034 at r5034
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5034
  unfold Seg6.relationRow5035 at r5035
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5035
  unfold Seg6.relationRow5036 at r5036
  unfold Seg6.relationRow5037 at r5037
  unfold Seg6.relationRow5038 at r5038
  unfold Seg6.relationRow5039 at r5039
  unfold Seg6.relationRow5040 at r5040
  have hrung176 (bit : Bool) (hbit : rho 2066 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5424 : Seg6.F), (rho 5425 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩
        ⟨(rho 5424 : Seg6.F), (rho 5425 : Seg6.F)⟩
        ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩
        ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩ := by
    have hnextx : seg6AccX177 rho = seg6AccX176 rho + rho 5433 := by
      unfold seg6AccX177 seg6AccX176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 26]
      ring
    have hnexty : seg6AccY177 rho = seg6AccY176 rho + rho 5434 := by
      unfold seg6AccY177 seg6AccY176
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 26]
      ring
    have hsum : seg6AccX176 rho + seg6AccY176 rho = rho 5426 := by
      unfold seg6AccX176 seg6AccY176
      linear_combination r5027
    have ha0 : (rho 5424 + rho 5425) * (seg6AccX176 rho + seg6AccY176 rho) = rho 5427 := by
      rw [hsum]
      linear_combination r5028
    have ha1 : rho 5425 * seg6AccX176 rho = rho 5428 := by
      unfold seg6AccX176
      linear_combination r5029
    have ha2 : rho 5424 * seg6AccY176 rho = rho 5429 := by
      unfold seg6AccY176
      linear_combination r5030
    have ha3 : 3021 * rho 5428 * rho 5429 = rho 5430 := by
      linear_combination r5031
    have ha4 : rho 5431 * (1 + rho 5430) = rho 5428 + rho 5429 := by
      linear_combination r5032
    have ha5 : rho 5432 * (1 - rho 5430) = rho 5427 - rho 5428 - rho 5429 := by
      linear_combination r5033
    have haddx :
        rho 5431 * (1 + 3021 * (rho 5425 * seg6AccX176 rho) * (rho 5424 * seg6AccY176 rho)) =
          rho 5425 * seg6AccX176 rho + rho 5424 * seg6AccY176 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5432 * (1 - 3021 * (rho 5425 * seg6AccX176 rho) * (rho 5424 * seg6AccY176 rho)) =
          (-1) * (rho 5425 * seg6AccX176 rho) - rho 5424 * seg6AccY176 rho +
            (seg6AccY176 rho - seg6AccX176 rho * (-1)) * (rho 5424 + rho 5425) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5432 * (1 - rho 5430) = rho 5427 - rho 5428 - rho 5429 := ha5
        _ = (-1) * rho 5428 - rho 5429 + (seg6AccY176 rho - seg6AccX176 rho * (-1)) * (rho 5424 + rho 5425) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX177 rho = seg6AccX176 rho - Bool.toZMod bit * (seg6AccX176 rho - rho 5431) := by
      have hd : rho 5433 = Bool.toZMod bit * (rho 5431 - seg6AccX176 rho) := by
        rw [← hbit]
        unfold seg6AccX176
        linear_combination -r5034
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY177 rho = seg6AccY176 rho - Bool.toZMod bit * (seg6AccY176 rho - rho 5432) := by
      have hd : rho 5434 = Bool.toZMod bit * (rho 5432 - seg6AccY176 rho) := by
        rw [← hbit]
        unfold seg6AccY176
        linear_combination -r5035
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5424 * rho 5425 = rho 5435 := by linear_combination r5036
    have hd1 : rho 5424 * rho 5424 = rho 5436 := by linear_combination r5037
    have hd2 : rho 5425 * rho 5425 = rho 5437 := by linear_combination r5038
    have hd3 : rho 5438 * (rho 5425 * rho 5425 + rho 5424 * rho 5424 * (-1)) = 2 * (rho 5424 * rho 5425) := by
      rw [hd0, hd1, hd2]
      linear_combination r5039
    have hd4 : rho 5439 * (2 - (rho 5425 * rho 5425 + rho 5424 * rho 5424 * (-1))) = rho 5425 * rho 5425 - rho 5424 * rho 5424 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5040
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩
      ⟨(rho 5424 : Seg6.F), (rho 5425 : Seg6.F)⟩
      ⟨(rho 5431 : Seg6.F), (rho 5432 : Seg6.F)⟩
      ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩
      ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung176

theorem seg6_rows177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5041 rho ∧ Seg6.relationRow5042 rho ∧ Seg6.relationRow5043 rho ∧ Seg6.relationRow5044 rho ∧ Seg6.relationRow5045 rho ∧ Seg6.relationRow5046 rho ∧ Seg6.relationRow5047 rho ∧ Seg6.relationRow5048 rho ∧ Seg6.relationRow5049 rho ∧ Seg6.relationRow5050 rho ∧ Seg6.relationRow5051 rho ∧ Seg6.relationRow5052 rho ∧ Seg6.relationRow5053 rho ∧ Seg6.relationRow5054 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨_, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩

theorem seg6_rung177 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2067 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩
        ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩
        ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩
        ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩ := by
  obtain ⟨r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054⟩ := seg6_rows177 rho h
  unfold Seg6.relationRow5041 at r5041
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5041
  unfold Seg6.relationRow5042 at r5042
  unfold Seg6.relationRow5043 at r5043
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5043
  unfold Seg6.relationRow5044 at r5044
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044
  unfold Seg6.relationRow5045 at r5045
  unfold Seg6.relationRow5046 at r5046
  unfold Seg6.relationRow5047 at r5047
  unfold Seg6.relationRow5048 at r5048
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5048
  unfold Seg6.relationRow5049 at r5049
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5049
  unfold Seg6.relationRow5050 at r5050
  unfold Seg6.relationRow5051 at r5051
  unfold Seg6.relationRow5052 at r5052
  unfold Seg6.relationRow5053 at r5053
  unfold Seg6.relationRow5054 at r5054
  have hrung177 (bit : Bool) (hbit : rho 2067 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩
        ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩
        ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩
        ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩ := by
    have hnextx : seg6AccX178 rho = seg6AccX177 rho + rho 5447 := by
      unfold seg6AccX178 seg6AccX177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 27]
      ring
    have hnexty : seg6AccY178 rho = seg6AccY177 rho + rho 5448 := by
      unfold seg6AccY178 seg6AccY177
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 27]
      ring
    have hsum : seg6AccX177 rho + seg6AccY177 rho = rho 5440 := by
      unfold seg6AccX177 seg6AccY177
      linear_combination r5041
    have ha0 : (rho 5438 + rho 5439) * (seg6AccX177 rho + seg6AccY177 rho) = rho 5441 := by
      rw [hsum]
      linear_combination r5042
    have ha1 : rho 5439 * seg6AccX177 rho = rho 5442 := by
      unfold seg6AccX177
      linear_combination r5043
    have ha2 : rho 5438 * seg6AccY177 rho = rho 5443 := by
      unfold seg6AccY177
      linear_combination r5044
    have ha3 : 3021 * rho 5442 * rho 5443 = rho 5444 := by
      linear_combination r5045
    have ha4 : rho 5445 * (1 + rho 5444) = rho 5442 + rho 5443 := by
      linear_combination r5046
    have ha5 : rho 5446 * (1 - rho 5444) = rho 5441 - rho 5442 - rho 5443 := by
      linear_combination r5047
    have haddx :
        rho 5445 * (1 + 3021 * (rho 5439 * seg6AccX177 rho) * (rho 5438 * seg6AccY177 rho)) =
          rho 5439 * seg6AccX177 rho + rho 5438 * seg6AccY177 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5446 * (1 - 3021 * (rho 5439 * seg6AccX177 rho) * (rho 5438 * seg6AccY177 rho)) =
          (-1) * (rho 5439 * seg6AccX177 rho) - rho 5438 * seg6AccY177 rho +
            (seg6AccY177 rho - seg6AccX177 rho * (-1)) * (rho 5438 + rho 5439) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5446 * (1 - rho 5444) = rho 5441 - rho 5442 - rho 5443 := ha5
        _ = (-1) * rho 5442 - rho 5443 + (seg6AccY177 rho - seg6AccX177 rho * (-1)) * (rho 5438 + rho 5439) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX178 rho = seg6AccX177 rho - Bool.toZMod bit * (seg6AccX177 rho - rho 5445) := by
      have hd : rho 5447 = Bool.toZMod bit * (rho 5445 - seg6AccX177 rho) := by
        rw [← hbit]
        unfold seg6AccX177
        linear_combination -r5048
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY178 rho = seg6AccY177 rho - Bool.toZMod bit * (seg6AccY177 rho - rho 5446) := by
      have hd : rho 5448 = Bool.toZMod bit * (rho 5446 - seg6AccY177 rho) := by
        rw [← hbit]
        unfold seg6AccY177
        linear_combination -r5049
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5438 * rho 5439 = rho 5449 := by linear_combination r5050
    have hd1 : rho 5438 * rho 5438 = rho 5450 := by linear_combination r5051
    have hd2 : rho 5439 * rho 5439 = rho 5451 := by linear_combination r5052
    have hd3 : rho 5452 * (rho 5439 * rho 5439 + rho 5438 * rho 5438 * (-1)) = 2 * (rho 5438 * rho 5439) := by
      rw [hd0, hd1, hd2]
      linear_combination r5053
    have hd4 : rho 5453 * (2 - (rho 5439 * rho 5439 + rho 5438 * rho 5438 * (-1))) = rho 5439 * rho 5439 - rho 5438 * rho 5438 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5054
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX177 rho : Seg6.F), (seg6AccY177 rho : Seg6.F)⟩
      ⟨(rho 5438 : Seg6.F), (rho 5439 : Seg6.F)⟩
      ⟨(rho 5445 : Seg6.F), (rho 5446 : Seg6.F)⟩
      ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩
      ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung177

theorem seg6_rows178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5055 rho ∧ Seg6.relationRow5056 rho ∧ Seg6.relationRow5057 rho ∧ Seg6.relationRow5058 rho ∧ Seg6.relationRow5059 rho ∧ Seg6.relationRow5060 rho ∧ Seg6.relationRow5061 rho ∧ Seg6.relationRow5062 rho ∧ Seg6.relationRow5063 rho ∧ Seg6.relationRow5064 rho ∧ Seg6.relationRow5065 rho ∧ Seg6.relationRow5066 rho ∧ Seg6.relationRow5067 rho ∧ Seg6.relationRow5068 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩

theorem seg6_rung178 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2068 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩
        ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩
        ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩
        ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩ := by
  obtain ⟨r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068⟩ := seg6_rows178 rho h
  unfold Seg6.relationRow5055 at r5055
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5055
  unfold Seg6.relationRow5056 at r5056
  unfold Seg6.relationRow5057 at r5057
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5057
  unfold Seg6.relationRow5058 at r5058
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5058
  unfold Seg6.relationRow5059 at r5059
  unfold Seg6.relationRow5060 at r5060
  unfold Seg6.relationRow5061 at r5061
  unfold Seg6.relationRow5062 at r5062
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5062
  unfold Seg6.relationRow5063 at r5063
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5063
  unfold Seg6.relationRow5064 at r5064
  unfold Seg6.relationRow5065 at r5065
  unfold Seg6.relationRow5066 at r5066
  unfold Seg6.relationRow5067 at r5067
  unfold Seg6.relationRow5068 at r5068
  have hrung178 (bit : Bool) (hbit : rho 2068 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩
        ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩
        ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩
        ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩ := by
    have hnextx : seg6AccX179 rho = seg6AccX178 rho + rho 5461 := by
      unfold seg6AccX179 seg6AccX178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 28]
      ring
    have hnexty : seg6AccY179 rho = seg6AccY178 rho + rho 5462 := by
      unfold seg6AccY179 seg6AccY178
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 28]
      ring
    have hsum : seg6AccX178 rho + seg6AccY178 rho = rho 5454 := by
      unfold seg6AccX178 seg6AccY178
      linear_combination r5055
    have ha0 : (rho 5452 + rho 5453) * (seg6AccX178 rho + seg6AccY178 rho) = rho 5455 := by
      rw [hsum]
      linear_combination r5056
    have ha1 : rho 5453 * seg6AccX178 rho = rho 5456 := by
      unfold seg6AccX178
      linear_combination r5057
    have ha2 : rho 5452 * seg6AccY178 rho = rho 5457 := by
      unfold seg6AccY178
      linear_combination r5058
    have ha3 : 3021 * rho 5456 * rho 5457 = rho 5458 := by
      linear_combination r5059
    have ha4 : rho 5459 * (1 + rho 5458) = rho 5456 + rho 5457 := by
      linear_combination r5060
    have ha5 : rho 5460 * (1 - rho 5458) = rho 5455 - rho 5456 - rho 5457 := by
      linear_combination r5061
    have haddx :
        rho 5459 * (1 + 3021 * (rho 5453 * seg6AccX178 rho) * (rho 5452 * seg6AccY178 rho)) =
          rho 5453 * seg6AccX178 rho + rho 5452 * seg6AccY178 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5460 * (1 - 3021 * (rho 5453 * seg6AccX178 rho) * (rho 5452 * seg6AccY178 rho)) =
          (-1) * (rho 5453 * seg6AccX178 rho) - rho 5452 * seg6AccY178 rho +
            (seg6AccY178 rho - seg6AccX178 rho * (-1)) * (rho 5452 + rho 5453) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5460 * (1 - rho 5458) = rho 5455 - rho 5456 - rho 5457 := ha5
        _ = (-1) * rho 5456 - rho 5457 + (seg6AccY178 rho - seg6AccX178 rho * (-1)) * (rho 5452 + rho 5453) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX179 rho = seg6AccX178 rho - Bool.toZMod bit * (seg6AccX178 rho - rho 5459) := by
      have hd : rho 5461 = Bool.toZMod bit * (rho 5459 - seg6AccX178 rho) := by
        rw [← hbit]
        unfold seg6AccX178
        linear_combination -r5062
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY179 rho = seg6AccY178 rho - Bool.toZMod bit * (seg6AccY178 rho - rho 5460) := by
      have hd : rho 5462 = Bool.toZMod bit * (rho 5460 - seg6AccY178 rho) := by
        rw [← hbit]
        unfold seg6AccY178
        linear_combination -r5063
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5452 * rho 5453 = rho 5463 := by linear_combination r5064
    have hd1 : rho 5452 * rho 5452 = rho 5464 := by linear_combination r5065
    have hd2 : rho 5453 * rho 5453 = rho 5465 := by linear_combination r5066
    have hd3 : rho 5466 * (rho 5453 * rho 5453 + rho 5452 * rho 5452 * (-1)) = 2 * (rho 5452 * rho 5453) := by
      rw [hd0, hd1, hd2]
      linear_combination r5067
    have hd4 : rho 5467 * (2 - (rho 5453 * rho 5453 + rho 5452 * rho 5452 * (-1))) = rho 5453 * rho 5453 - rho 5452 * rho 5452 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5068
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX178 rho : Seg6.F), (seg6AccY178 rho : Seg6.F)⟩
      ⟨(rho 5452 : Seg6.F), (rho 5453 : Seg6.F)⟩
      ⟨(rho 5459 : Seg6.F), (rho 5460 : Seg6.F)⟩
      ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩
      ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung178

theorem seg6_rows179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5069 rho ∧ Seg6.relationRow5070 rho ∧ Seg6.relationRow5071 rho ∧ Seg6.relationRow5072 rho ∧ Seg6.relationRow5073 rho ∧ Seg6.relationRow5074 rho ∧ Seg6.relationRow5075 rho ∧ Seg6.relationRow5076 rho ∧ Seg6.relationRow5077 rho ∧ Seg6.relationRow5078 rho ∧ Seg6.relationRow5079 rho ∧ Seg6.relationRow5080 rho ∧ Seg6.relationRow5081 rho ∧ Seg6.relationRow5082 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩

theorem seg6_rung179 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2069 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩
        ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩
        ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩
        ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩ := by
  obtain ⟨r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082⟩ := seg6_rows179 rho h
  unfold Seg6.relationRow5069 at r5069
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5069
  unfold Seg6.relationRow5070 at r5070
  unfold Seg6.relationRow5071 at r5071
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5071
  unfold Seg6.relationRow5072 at r5072
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5072
  unfold Seg6.relationRow5073 at r5073
  unfold Seg6.relationRow5074 at r5074
  unfold Seg6.relationRow5075 at r5075
  unfold Seg6.relationRow5076 at r5076
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5076
  unfold Seg6.relationRow5077 at r5077
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5077
  unfold Seg6.relationRow5078 at r5078
  unfold Seg6.relationRow5079 at r5079
  unfold Seg6.relationRow5080 at r5080
  unfold Seg6.relationRow5081 at r5081
  unfold Seg6.relationRow5082 at r5082
  have hrung179 (bit : Bool) (hbit : rho 2069 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩
        ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩
        ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩
        ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩ := by
    have hnextx : seg6AccX180 rho = seg6AccX179 rho + rho 5475 := by
      unfold seg6AccX180 seg6AccX179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 29]
      ring
    have hnexty : seg6AccY180 rho = seg6AccY179 rho + rho 5476 := by
      unfold seg6AccY180 seg6AccY179
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 29]
      ring
    have hsum : seg6AccX179 rho + seg6AccY179 rho = rho 5468 := by
      unfold seg6AccX179 seg6AccY179
      linear_combination r5069
    have ha0 : (rho 5466 + rho 5467) * (seg6AccX179 rho + seg6AccY179 rho) = rho 5469 := by
      rw [hsum]
      linear_combination r5070
    have ha1 : rho 5467 * seg6AccX179 rho = rho 5470 := by
      unfold seg6AccX179
      linear_combination r5071
    have ha2 : rho 5466 * seg6AccY179 rho = rho 5471 := by
      unfold seg6AccY179
      linear_combination r5072
    have ha3 : 3021 * rho 5470 * rho 5471 = rho 5472 := by
      linear_combination r5073
    have ha4 : rho 5473 * (1 + rho 5472) = rho 5470 + rho 5471 := by
      linear_combination r5074
    have ha5 : rho 5474 * (1 - rho 5472) = rho 5469 - rho 5470 - rho 5471 := by
      linear_combination r5075
    have haddx :
        rho 5473 * (1 + 3021 * (rho 5467 * seg6AccX179 rho) * (rho 5466 * seg6AccY179 rho)) =
          rho 5467 * seg6AccX179 rho + rho 5466 * seg6AccY179 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5474 * (1 - 3021 * (rho 5467 * seg6AccX179 rho) * (rho 5466 * seg6AccY179 rho)) =
          (-1) * (rho 5467 * seg6AccX179 rho) - rho 5466 * seg6AccY179 rho +
            (seg6AccY179 rho - seg6AccX179 rho * (-1)) * (rho 5466 + rho 5467) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5474 * (1 - rho 5472) = rho 5469 - rho 5470 - rho 5471 := ha5
        _ = (-1) * rho 5470 - rho 5471 + (seg6AccY179 rho - seg6AccX179 rho * (-1)) * (rho 5466 + rho 5467) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX180 rho = seg6AccX179 rho - Bool.toZMod bit * (seg6AccX179 rho - rho 5473) := by
      have hd : rho 5475 = Bool.toZMod bit * (rho 5473 - seg6AccX179 rho) := by
        rw [← hbit]
        unfold seg6AccX179
        linear_combination -r5076
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY180 rho = seg6AccY179 rho - Bool.toZMod bit * (seg6AccY179 rho - rho 5474) := by
      have hd : rho 5476 = Bool.toZMod bit * (rho 5474 - seg6AccY179 rho) := by
        rw [← hbit]
        unfold seg6AccY179
        linear_combination -r5077
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5466 * rho 5467 = rho 5477 := by linear_combination r5078
    have hd1 : rho 5466 * rho 5466 = rho 5478 := by linear_combination r5079
    have hd2 : rho 5467 * rho 5467 = rho 5479 := by linear_combination r5080
    have hd3 : rho 5480 * (rho 5467 * rho 5467 + rho 5466 * rho 5466 * (-1)) = 2 * (rho 5466 * rho 5467) := by
      rw [hd0, hd1, hd2]
      linear_combination r5081
    have hd4 : rho 5481 * (2 - (rho 5467 * rho 5467 + rho 5466 * rho 5466 * (-1))) = rho 5467 * rho 5467 - rho 5466 * rho 5466 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5082
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX179 rho : Seg6.F), (seg6AccY179 rho : Seg6.F)⟩
      ⟨(rho 5466 : Seg6.F), (rho 5467 : Seg6.F)⟩
      ⟨(rho 5473 : Seg6.F), (rho 5474 : Seg6.F)⟩
      ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩
      ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung179

theorem seg6_rows180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5083 rho ∧ Seg6.relationRow5084 rho ∧ Seg6.relationRow5085 rho ∧ Seg6.relationRow5086 rho ∧ Seg6.relationRow5087 rho ∧ Seg6.relationRow5088 rho ∧ Seg6.relationRow5089 rho ∧ Seg6.relationRow5090 rho ∧ Seg6.relationRow5091 rho ∧ Seg6.relationRow5092 rho ∧ Seg6.relationRow5093 rho ∧ Seg6.relationRow5094 rho ∧ Seg6.relationRow5095 rho ∧ Seg6.relationRow5096 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩

theorem seg6_rung180 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2070 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩
        ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩
        ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩
        ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩ := by
  obtain ⟨r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096⟩ := seg6_rows180 rho h
  unfold Seg6.relationRow5083 at r5083
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5083
  unfold Seg6.relationRow5084 at r5084
  unfold Seg6.relationRow5085 at r5085
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5085
  unfold Seg6.relationRow5086 at r5086
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5086
  unfold Seg6.relationRow5087 at r5087
  unfold Seg6.relationRow5088 at r5088
  unfold Seg6.relationRow5089 at r5089
  unfold Seg6.relationRow5090 at r5090
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5090
  unfold Seg6.relationRow5091 at r5091
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5091
  unfold Seg6.relationRow5092 at r5092
  unfold Seg6.relationRow5093 at r5093
  unfold Seg6.relationRow5094 at r5094
  unfold Seg6.relationRow5095 at r5095
  unfold Seg6.relationRow5096 at r5096
  have hrung180 (bit : Bool) (hbit : rho 2070 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩
        ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩
        ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩
        ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩ := by
    have hnextx : seg6AccX181 rho = seg6AccX180 rho + rho 5489 := by
      unfold seg6AccX181 seg6AccX180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 30]
      ring
    have hnexty : seg6AccY181 rho = seg6AccY180 rho + rho 5490 := by
      unfold seg6AccY181 seg6AccY180
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 30]
      ring
    have hsum : seg6AccX180 rho + seg6AccY180 rho = rho 5482 := by
      unfold seg6AccX180 seg6AccY180
      linear_combination r5083
    have ha0 : (rho 5480 + rho 5481) * (seg6AccX180 rho + seg6AccY180 rho) = rho 5483 := by
      rw [hsum]
      linear_combination r5084
    have ha1 : rho 5481 * seg6AccX180 rho = rho 5484 := by
      unfold seg6AccX180
      linear_combination r5085
    have ha2 : rho 5480 * seg6AccY180 rho = rho 5485 := by
      unfold seg6AccY180
      linear_combination r5086
    have ha3 : 3021 * rho 5484 * rho 5485 = rho 5486 := by
      linear_combination r5087
    have ha4 : rho 5487 * (1 + rho 5486) = rho 5484 + rho 5485 := by
      linear_combination r5088
    have ha5 : rho 5488 * (1 - rho 5486) = rho 5483 - rho 5484 - rho 5485 := by
      linear_combination r5089
    have haddx :
        rho 5487 * (1 + 3021 * (rho 5481 * seg6AccX180 rho) * (rho 5480 * seg6AccY180 rho)) =
          rho 5481 * seg6AccX180 rho + rho 5480 * seg6AccY180 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5488 * (1 - 3021 * (rho 5481 * seg6AccX180 rho) * (rho 5480 * seg6AccY180 rho)) =
          (-1) * (rho 5481 * seg6AccX180 rho) - rho 5480 * seg6AccY180 rho +
            (seg6AccY180 rho - seg6AccX180 rho * (-1)) * (rho 5480 + rho 5481) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5488 * (1 - rho 5486) = rho 5483 - rho 5484 - rho 5485 := ha5
        _ = (-1) * rho 5484 - rho 5485 + (seg6AccY180 rho - seg6AccX180 rho * (-1)) * (rho 5480 + rho 5481) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX181 rho = seg6AccX180 rho - Bool.toZMod bit * (seg6AccX180 rho - rho 5487) := by
      have hd : rho 5489 = Bool.toZMod bit * (rho 5487 - seg6AccX180 rho) := by
        rw [← hbit]
        unfold seg6AccX180
        linear_combination -r5090
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY181 rho = seg6AccY180 rho - Bool.toZMod bit * (seg6AccY180 rho - rho 5488) := by
      have hd : rho 5490 = Bool.toZMod bit * (rho 5488 - seg6AccY180 rho) := by
        rw [← hbit]
        unfold seg6AccY180
        linear_combination -r5091
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5480 * rho 5481 = rho 5491 := by linear_combination r5092
    have hd1 : rho 5480 * rho 5480 = rho 5492 := by linear_combination r5093
    have hd2 : rho 5481 * rho 5481 = rho 5493 := by linear_combination r5094
    have hd3 : rho 5494 * (rho 5481 * rho 5481 + rho 5480 * rho 5480 * (-1)) = 2 * (rho 5480 * rho 5481) := by
      rw [hd0, hd1, hd2]
      linear_combination r5095
    have hd4 : rho 5495 * (2 - (rho 5481 * rho 5481 + rho 5480 * rho 5480 * (-1))) = rho 5481 * rho 5481 - rho 5480 * rho 5480 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5096
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX180 rho : Seg6.F), (seg6AccY180 rho : Seg6.F)⟩
      ⟨(rho 5480 : Seg6.F), (rho 5481 : Seg6.F)⟩
      ⟨(rho 5487 : Seg6.F), (rho 5488 : Seg6.F)⟩
      ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩
      ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung180

theorem seg6_rows181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5097 rho ∧ Seg6.relationRow5098 rho ∧ Seg6.relationRow5099 rho ∧ Seg6.relationRow5100 rho ∧ Seg6.relationRow5101 rho ∧ Seg6.relationRow5102 rho ∧ Seg6.relationRow5103 rho ∧ Seg6.relationRow5104 rho ∧ Seg6.relationRow5105 rho ∧ Seg6.relationRow5106 rho ∧ Seg6.relationRow5107 rho ∧ Seg6.relationRow5108 rho ∧ Seg6.relationRow5109 rho ∧ Seg6.relationRow5110 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩

theorem seg6_rung181 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2071 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩
        ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩
        ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩
        ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩ := by
  obtain ⟨r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110⟩ := seg6_rows181 rho h
  unfold Seg6.relationRow5097 at r5097
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5097
  unfold Seg6.relationRow5098 at r5098
  unfold Seg6.relationRow5099 at r5099
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5099
  unfold Seg6.relationRow5100 at r5100
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5100
  unfold Seg6.relationRow5101 at r5101
  unfold Seg6.relationRow5102 at r5102
  unfold Seg6.relationRow5103 at r5103
  unfold Seg6.relationRow5104 at r5104
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5104
  unfold Seg6.relationRow5105 at r5105
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5105
  unfold Seg6.relationRow5106 at r5106
  unfold Seg6.relationRow5107 at r5107
  unfold Seg6.relationRow5108 at r5108
  unfold Seg6.relationRow5109 at r5109
  unfold Seg6.relationRow5110 at r5110
  have hrung181 (bit : Bool) (hbit : rho 2071 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩
        ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩
        ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩
        ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩ := by
    have hnextx : seg6AccX182 rho = seg6AccX181 rho + rho 5503 := by
      unfold seg6AccX182 seg6AccX181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 31]
      ring
    have hnexty : seg6AccY182 rho = seg6AccY181 rho + rho 5504 := by
      unfold seg6AccY182 seg6AccY181
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 31]
      ring
    have hsum : seg6AccX181 rho + seg6AccY181 rho = rho 5496 := by
      unfold seg6AccX181 seg6AccY181
      linear_combination r5097
    have ha0 : (rho 5494 + rho 5495) * (seg6AccX181 rho + seg6AccY181 rho) = rho 5497 := by
      rw [hsum]
      linear_combination r5098
    have ha1 : rho 5495 * seg6AccX181 rho = rho 5498 := by
      unfold seg6AccX181
      linear_combination r5099
    have ha2 : rho 5494 * seg6AccY181 rho = rho 5499 := by
      unfold seg6AccY181
      linear_combination r5100
    have ha3 : 3021 * rho 5498 * rho 5499 = rho 5500 := by
      linear_combination r5101
    have ha4 : rho 5501 * (1 + rho 5500) = rho 5498 + rho 5499 := by
      linear_combination r5102
    have ha5 : rho 5502 * (1 - rho 5500) = rho 5497 - rho 5498 - rho 5499 := by
      linear_combination r5103
    have haddx :
        rho 5501 * (1 + 3021 * (rho 5495 * seg6AccX181 rho) * (rho 5494 * seg6AccY181 rho)) =
          rho 5495 * seg6AccX181 rho + rho 5494 * seg6AccY181 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5502 * (1 - 3021 * (rho 5495 * seg6AccX181 rho) * (rho 5494 * seg6AccY181 rho)) =
          (-1) * (rho 5495 * seg6AccX181 rho) - rho 5494 * seg6AccY181 rho +
            (seg6AccY181 rho - seg6AccX181 rho * (-1)) * (rho 5494 + rho 5495) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5502 * (1 - rho 5500) = rho 5497 - rho 5498 - rho 5499 := ha5
        _ = (-1) * rho 5498 - rho 5499 + (seg6AccY181 rho - seg6AccX181 rho * (-1)) * (rho 5494 + rho 5495) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX182 rho = seg6AccX181 rho - Bool.toZMod bit * (seg6AccX181 rho - rho 5501) := by
      have hd : rho 5503 = Bool.toZMod bit * (rho 5501 - seg6AccX181 rho) := by
        rw [← hbit]
        unfold seg6AccX181
        linear_combination -r5104
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY182 rho = seg6AccY181 rho - Bool.toZMod bit * (seg6AccY181 rho - rho 5502) := by
      have hd : rho 5504 = Bool.toZMod bit * (rho 5502 - seg6AccY181 rho) := by
        rw [← hbit]
        unfold seg6AccY181
        linear_combination -r5105
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5494 * rho 5495 = rho 5505 := by linear_combination r5106
    have hd1 : rho 5494 * rho 5494 = rho 5506 := by linear_combination r5107
    have hd2 : rho 5495 * rho 5495 = rho 5507 := by linear_combination r5108
    have hd3 : rho 5508 * (rho 5495 * rho 5495 + rho 5494 * rho 5494 * (-1)) = 2 * (rho 5494 * rho 5495) := by
      rw [hd0, hd1, hd2]
      linear_combination r5109
    have hd4 : rho 5509 * (2 - (rho 5495 * rho 5495 + rho 5494 * rho 5494 * (-1))) = rho 5495 * rho 5495 - rho 5494 * rho 5494 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5110
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX181 rho : Seg6.F), (seg6AccY181 rho : Seg6.F)⟩
      ⟨(rho 5494 : Seg6.F), (rho 5495 : Seg6.F)⟩
      ⟨(rho 5501 : Seg6.F), (rho 5502 : Seg6.F)⟩
      ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩
      ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung181

theorem seg6_rows182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5111 rho ∧ Seg6.relationRow5112 rho ∧ Seg6.relationRow5113 rho ∧ Seg6.relationRow5114 rho ∧ Seg6.relationRow5115 rho ∧ Seg6.relationRow5116 rho ∧ Seg6.relationRow5117 rho ∧ Seg6.relationRow5118 rho ∧ Seg6.relationRow5119 rho ∧ Seg6.relationRow5120 rho ∧ Seg6.relationRow5121 rho ∧ Seg6.relationRow5122 rho ∧ Seg6.relationRow5123 rho ∧ Seg6.relationRow5124 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p63, p64, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart63 at p63
  rcases p63 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Seg6.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩

theorem seg6_rung182 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2072 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩
        ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩
        ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩
        ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩ := by
  obtain ⟨r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119, r5120, r5121, r5122, r5123, r5124⟩ := seg6_rows182 rho h
  unfold Seg6.relationRow5111 at r5111
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5111
  unfold Seg6.relationRow5112 at r5112
  unfold Seg6.relationRow5113 at r5113
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5113
  unfold Seg6.relationRow5114 at r5114
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5114
  unfold Seg6.relationRow5115 at r5115
  unfold Seg6.relationRow5116 at r5116
  unfold Seg6.relationRow5117 at r5117
  unfold Seg6.relationRow5118 at r5118
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5118
  unfold Seg6.relationRow5119 at r5119
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5119
  unfold Seg6.relationRow5120 at r5120
  unfold Seg6.relationRow5121 at r5121
  unfold Seg6.relationRow5122 at r5122
  unfold Seg6.relationRow5123 at r5123
  unfold Seg6.relationRow5124 at r5124
  have hrung182 (bit : Bool) (hbit : rho 2072 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩
        ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩
        ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩
        ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩ := by
    have hnextx : seg6AccX183 rho = seg6AccX182 rho + rho 5517 := by
      unfold seg6AccX183 seg6AccX182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 32]
      ring
    have hnexty : seg6AccY183 rho = seg6AccY182 rho + rho 5518 := by
      unfold seg6AccY183 seg6AccY182
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 32]
      ring
    have hsum : seg6AccX182 rho + seg6AccY182 rho = rho 5510 := by
      unfold seg6AccX182 seg6AccY182
      linear_combination r5111
    have ha0 : (rho 5508 + rho 5509) * (seg6AccX182 rho + seg6AccY182 rho) = rho 5511 := by
      rw [hsum]
      linear_combination r5112
    have ha1 : rho 5509 * seg6AccX182 rho = rho 5512 := by
      unfold seg6AccX182
      linear_combination r5113
    have ha2 : rho 5508 * seg6AccY182 rho = rho 5513 := by
      unfold seg6AccY182
      linear_combination r5114
    have ha3 : 3021 * rho 5512 * rho 5513 = rho 5514 := by
      linear_combination r5115
    have ha4 : rho 5515 * (1 + rho 5514) = rho 5512 + rho 5513 := by
      linear_combination r5116
    have ha5 : rho 5516 * (1 - rho 5514) = rho 5511 - rho 5512 - rho 5513 := by
      linear_combination r5117
    have haddx :
        rho 5515 * (1 + 3021 * (rho 5509 * seg6AccX182 rho) * (rho 5508 * seg6AccY182 rho)) =
          rho 5509 * seg6AccX182 rho + rho 5508 * seg6AccY182 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5516 * (1 - 3021 * (rho 5509 * seg6AccX182 rho) * (rho 5508 * seg6AccY182 rho)) =
          (-1) * (rho 5509 * seg6AccX182 rho) - rho 5508 * seg6AccY182 rho +
            (seg6AccY182 rho - seg6AccX182 rho * (-1)) * (rho 5508 + rho 5509) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5516 * (1 - rho 5514) = rho 5511 - rho 5512 - rho 5513 := ha5
        _ = (-1) * rho 5512 - rho 5513 + (seg6AccY182 rho - seg6AccX182 rho * (-1)) * (rho 5508 + rho 5509) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX183 rho = seg6AccX182 rho - Bool.toZMod bit * (seg6AccX182 rho - rho 5515) := by
      have hd : rho 5517 = Bool.toZMod bit * (rho 5515 - seg6AccX182 rho) := by
        rw [← hbit]
        unfold seg6AccX182
        linear_combination -r5118
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY183 rho = seg6AccY182 rho - Bool.toZMod bit * (seg6AccY182 rho - rho 5516) := by
      have hd : rho 5518 = Bool.toZMod bit * (rho 5516 - seg6AccY182 rho) := by
        rw [← hbit]
        unfold seg6AccY182
        linear_combination -r5119
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5508 * rho 5509 = rho 5519 := by linear_combination r5120
    have hd1 : rho 5508 * rho 5508 = rho 5520 := by linear_combination r5121
    have hd2 : rho 5509 * rho 5509 = rho 5521 := by linear_combination r5122
    have hd3 : rho 5522 * (rho 5509 * rho 5509 + rho 5508 * rho 5508 * (-1)) = 2 * (rho 5508 * rho 5509) := by
      rw [hd0, hd1, hd2]
      linear_combination r5123
    have hd4 : rho 5523 * (2 - (rho 5509 * rho 5509 + rho 5508 * rho 5508 * (-1))) = rho 5509 * rho 5509 - rho 5508 * rho 5508 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5124
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX182 rho : Seg6.F), (seg6AccY182 rho : Seg6.F)⟩
      ⟨(rho 5508 : Seg6.F), (rho 5509 : Seg6.F)⟩
      ⟨(rho 5515 : Seg6.F), (rho 5516 : Seg6.F)⟩
      ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩
      ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung182

theorem seg6_rows183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5125 rho ∧ Seg6.relationRow5126 rho ∧ Seg6.relationRow5127 rho ∧ Seg6.relationRow5128 rho ∧ Seg6.relationRow5129 rho ∧ Seg6.relationRow5130 rho ∧ Seg6.relationRow5131 rho ∧ Seg6.relationRow5132 rho ∧ Seg6.relationRow5133 rho ∧ Seg6.relationRow5134 rho ∧ Seg6.relationRow5135 rho ∧ Seg6.relationRow5136 rho ∧ Seg6.relationRow5137 rho ∧ Seg6.relationRow5138 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩

theorem seg6_rung183 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2073 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩
        ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩
        ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩
        ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131, r5132, r5133, r5134, r5135, r5136, r5137, r5138⟩ := seg6_rows183 rho h
  unfold Seg6.relationRow5125 at r5125
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5125
  unfold Seg6.relationRow5126 at r5126
  unfold Seg6.relationRow5127 at r5127
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5127
  unfold Seg6.relationRow5128 at r5128
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5128
  unfold Seg6.relationRow5129 at r5129
  unfold Seg6.relationRow5130 at r5130
  unfold Seg6.relationRow5131 at r5131
  unfold Seg6.relationRow5132 at r5132
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5132
  unfold Seg6.relationRow5133 at r5133
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5133
  unfold Seg6.relationRow5134 at r5134
  unfold Seg6.relationRow5135 at r5135
  unfold Seg6.relationRow5136 at r5136
  unfold Seg6.relationRow5137 at r5137
  unfold Seg6.relationRow5138 at r5138
  have hrung183 (bit : Bool) (hbit : rho 2073 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩
        ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩
        ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩
        ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩ := by
    have hnextx : seg6AccX184 rho = seg6AccX183 rho + rho 5531 := by
      unfold seg6AccX184 seg6AccX183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 33]
      ring
    have hnexty : seg6AccY184 rho = seg6AccY183 rho + rho 5532 := by
      unfold seg6AccY184 seg6AccY183
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 33]
      ring
    have hsum : seg6AccX183 rho + seg6AccY183 rho = rho 5524 := by
      unfold seg6AccX183 seg6AccY183
      linear_combination r5125
    have ha0 : (rho 5522 + rho 5523) * (seg6AccX183 rho + seg6AccY183 rho) = rho 5525 := by
      rw [hsum]
      linear_combination r5126
    have ha1 : rho 5523 * seg6AccX183 rho = rho 5526 := by
      unfold seg6AccX183
      linear_combination r5127
    have ha2 : rho 5522 * seg6AccY183 rho = rho 5527 := by
      unfold seg6AccY183
      linear_combination r5128
    have ha3 : 3021 * rho 5526 * rho 5527 = rho 5528 := by
      linear_combination r5129
    have ha4 : rho 5529 * (1 + rho 5528) = rho 5526 + rho 5527 := by
      linear_combination r5130
    have ha5 : rho 5530 * (1 - rho 5528) = rho 5525 - rho 5526 - rho 5527 := by
      linear_combination r5131
    have haddx :
        rho 5529 * (1 + 3021 * (rho 5523 * seg6AccX183 rho) * (rho 5522 * seg6AccY183 rho)) =
          rho 5523 * seg6AccX183 rho + rho 5522 * seg6AccY183 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5530 * (1 - 3021 * (rho 5523 * seg6AccX183 rho) * (rho 5522 * seg6AccY183 rho)) =
          (-1) * (rho 5523 * seg6AccX183 rho) - rho 5522 * seg6AccY183 rho +
            (seg6AccY183 rho - seg6AccX183 rho * (-1)) * (rho 5522 + rho 5523) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5530 * (1 - rho 5528) = rho 5525 - rho 5526 - rho 5527 := ha5
        _ = (-1) * rho 5526 - rho 5527 + (seg6AccY183 rho - seg6AccX183 rho * (-1)) * (rho 5522 + rho 5523) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX184 rho = seg6AccX183 rho - Bool.toZMod bit * (seg6AccX183 rho - rho 5529) := by
      have hd : rho 5531 = Bool.toZMod bit * (rho 5529 - seg6AccX183 rho) := by
        rw [← hbit]
        unfold seg6AccX183
        linear_combination -r5132
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY184 rho = seg6AccY183 rho - Bool.toZMod bit * (seg6AccY183 rho - rho 5530) := by
      have hd : rho 5532 = Bool.toZMod bit * (rho 5530 - seg6AccY183 rho) := by
        rw [← hbit]
        unfold seg6AccY183
        linear_combination -r5133
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5522 * rho 5523 = rho 5533 := by linear_combination r5134
    have hd1 : rho 5522 * rho 5522 = rho 5534 := by linear_combination r5135
    have hd2 : rho 5523 * rho 5523 = rho 5535 := by linear_combination r5136
    have hd3 : rho 5536 * (rho 5523 * rho 5523 + rho 5522 * rho 5522 * (-1)) = 2 * (rho 5522 * rho 5523) := by
      rw [hd0, hd1, hd2]
      linear_combination r5137
    have hd4 : rho 5537 * (2 - (rho 5523 * rho 5523 + rho 5522 * rho 5522 * (-1))) = rho 5523 * rho 5523 - rho 5522 * rho 5522 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5138
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX183 rho : Seg6.F), (seg6AccY183 rho : Seg6.F)⟩
      ⟨(rho 5522 : Seg6.F), (rho 5523 : Seg6.F)⟩
      ⟨(rho 5529 : Seg6.F), (rho 5530 : Seg6.F)⟩
      ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩
      ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung183

theorem seg6_rows184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5139 rho ∧ Seg6.relationRow5140 rho ∧ Seg6.relationRow5141 rho ∧ Seg6.relationRow5142 rho ∧ Seg6.relationRow5143 rho ∧ Seg6.relationRow5144 rho ∧ Seg6.relationRow5145 rho ∧ Seg6.relationRow5146 rho ∧ Seg6.relationRow5147 rho ∧ Seg6.relationRow5148 rho ∧ Seg6.relationRow5149 rho ∧ Seg6.relationRow5150 rho ∧ Seg6.relationRow5151 rho ∧ Seg6.relationRow5152 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩

theorem seg6_rung184 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2074 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩
        ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩
        ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩
        ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩ := by
  obtain ⟨r5139, r5140, r5141, r5142, r5143, r5144, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152⟩ := seg6_rows184 rho h
  unfold Seg6.relationRow5139 at r5139
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5139
  unfold Seg6.relationRow5140 at r5140
  unfold Seg6.relationRow5141 at r5141
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5141
  unfold Seg6.relationRow5142 at r5142
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5142
  unfold Seg6.relationRow5143 at r5143
  unfold Seg6.relationRow5144 at r5144
  unfold Seg6.relationRow5145 at r5145
  unfold Seg6.relationRow5146 at r5146
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5146
  unfold Seg6.relationRow5147 at r5147
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5147
  unfold Seg6.relationRow5148 at r5148
  unfold Seg6.relationRow5149 at r5149
  unfold Seg6.relationRow5150 at r5150
  unfold Seg6.relationRow5151 at r5151
  unfold Seg6.relationRow5152 at r5152
  have hrung184 (bit : Bool) (hbit : rho 2074 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩
        ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩
        ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩
        ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩ := by
    have hnextx : seg6AccX185 rho = seg6AccX184 rho + rho 5545 := by
      unfold seg6AccX185 seg6AccX184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 34]
      ring
    have hnexty : seg6AccY185 rho = seg6AccY184 rho + rho 5546 := by
      unfold seg6AccY185 seg6AccY184
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 34]
      ring
    have hsum : seg6AccX184 rho + seg6AccY184 rho = rho 5538 := by
      unfold seg6AccX184 seg6AccY184
      linear_combination r5139
    have ha0 : (rho 5536 + rho 5537) * (seg6AccX184 rho + seg6AccY184 rho) = rho 5539 := by
      rw [hsum]
      linear_combination r5140
    have ha1 : rho 5537 * seg6AccX184 rho = rho 5540 := by
      unfold seg6AccX184
      linear_combination r5141
    have ha2 : rho 5536 * seg6AccY184 rho = rho 5541 := by
      unfold seg6AccY184
      linear_combination r5142
    have ha3 : 3021 * rho 5540 * rho 5541 = rho 5542 := by
      linear_combination r5143
    have ha4 : rho 5543 * (1 + rho 5542) = rho 5540 + rho 5541 := by
      linear_combination r5144
    have ha5 : rho 5544 * (1 - rho 5542) = rho 5539 - rho 5540 - rho 5541 := by
      linear_combination r5145
    have haddx :
        rho 5543 * (1 + 3021 * (rho 5537 * seg6AccX184 rho) * (rho 5536 * seg6AccY184 rho)) =
          rho 5537 * seg6AccX184 rho + rho 5536 * seg6AccY184 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5544 * (1 - 3021 * (rho 5537 * seg6AccX184 rho) * (rho 5536 * seg6AccY184 rho)) =
          (-1) * (rho 5537 * seg6AccX184 rho) - rho 5536 * seg6AccY184 rho +
            (seg6AccY184 rho - seg6AccX184 rho * (-1)) * (rho 5536 + rho 5537) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5544 * (1 - rho 5542) = rho 5539 - rho 5540 - rho 5541 := ha5
        _ = (-1) * rho 5540 - rho 5541 + (seg6AccY184 rho - seg6AccX184 rho * (-1)) * (rho 5536 + rho 5537) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX185 rho = seg6AccX184 rho - Bool.toZMod bit * (seg6AccX184 rho - rho 5543) := by
      have hd : rho 5545 = Bool.toZMod bit * (rho 5543 - seg6AccX184 rho) := by
        rw [← hbit]
        unfold seg6AccX184
        linear_combination -r5146
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY185 rho = seg6AccY184 rho - Bool.toZMod bit * (seg6AccY184 rho - rho 5544) := by
      have hd : rho 5546 = Bool.toZMod bit * (rho 5544 - seg6AccY184 rho) := by
        rw [← hbit]
        unfold seg6AccY184
        linear_combination -r5147
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5536 * rho 5537 = rho 5547 := by linear_combination r5148
    have hd1 : rho 5536 * rho 5536 = rho 5548 := by linear_combination r5149
    have hd2 : rho 5537 * rho 5537 = rho 5549 := by linear_combination r5150
    have hd3 : rho 5550 * (rho 5537 * rho 5537 + rho 5536 * rho 5536 * (-1)) = 2 * (rho 5536 * rho 5537) := by
      rw [hd0, hd1, hd2]
      linear_combination r5151
    have hd4 : rho 5551 * (2 - (rho 5537 * rho 5537 + rho 5536 * rho 5536 * (-1))) = rho 5537 * rho 5537 - rho 5536 * rho 5536 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5152
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX184 rho : Seg6.F), (seg6AccY184 rho : Seg6.F)⟩
      ⟨(rho 5536 : Seg6.F), (rho 5537 : Seg6.F)⟩
      ⟨(rho 5543 : Seg6.F), (rho 5544 : Seg6.F)⟩
      ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩
      ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung184

theorem seg6_rows185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5153 rho ∧ Seg6.relationRow5154 rho ∧ Seg6.relationRow5155 rho ∧ Seg6.relationRow5156 rho ∧ Seg6.relationRow5157 rho ∧ Seg6.relationRow5158 rho ∧ Seg6.relationRow5159 rho ∧ Seg6.relationRow5160 rho ∧ Seg6.relationRow5161 rho ∧ Seg6.relationRow5162 rho ∧ Seg6.relationRow5163 rho ∧ Seg6.relationRow5164 rho ∧ Seg6.relationRow5165 rho ∧ Seg6.relationRow5166 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩

theorem seg6_rung185 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2075 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩
        ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩
        ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩
        ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩ := by
  obtain ⟨r5153, r5154, r5155, r5156, r5157, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166⟩ := seg6_rows185 rho h
  unfold Seg6.relationRow5153 at r5153
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5153
  unfold Seg6.relationRow5154 at r5154
  unfold Seg6.relationRow5155 at r5155
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5155
  unfold Seg6.relationRow5156 at r5156
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5156
  unfold Seg6.relationRow5157 at r5157
  unfold Seg6.relationRow5158 at r5158
  unfold Seg6.relationRow5159 at r5159
  unfold Seg6.relationRow5160 at r5160
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5160
  unfold Seg6.relationRow5161 at r5161
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5161
  unfold Seg6.relationRow5162 at r5162
  unfold Seg6.relationRow5163 at r5163
  unfold Seg6.relationRow5164 at r5164
  unfold Seg6.relationRow5165 at r5165
  unfold Seg6.relationRow5166 at r5166
  have hrung185 (bit : Bool) (hbit : rho 2075 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩
        ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩
        ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩
        ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩ := by
    have hnextx : seg6AccX186 rho = seg6AccX185 rho + rho 5559 := by
      unfold seg6AccX186 seg6AccX185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 35]
      ring
    have hnexty : seg6AccY186 rho = seg6AccY185 rho + rho 5560 := by
      unfold seg6AccY186 seg6AccY185
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 35]
      ring
    have hsum : seg6AccX185 rho + seg6AccY185 rho = rho 5552 := by
      unfold seg6AccX185 seg6AccY185
      linear_combination r5153
    have ha0 : (rho 5550 + rho 5551) * (seg6AccX185 rho + seg6AccY185 rho) = rho 5553 := by
      rw [hsum]
      linear_combination r5154
    have ha1 : rho 5551 * seg6AccX185 rho = rho 5554 := by
      unfold seg6AccX185
      linear_combination r5155
    have ha2 : rho 5550 * seg6AccY185 rho = rho 5555 := by
      unfold seg6AccY185
      linear_combination r5156
    have ha3 : 3021 * rho 5554 * rho 5555 = rho 5556 := by
      linear_combination r5157
    have ha4 : rho 5557 * (1 + rho 5556) = rho 5554 + rho 5555 := by
      linear_combination r5158
    have ha5 : rho 5558 * (1 - rho 5556) = rho 5553 - rho 5554 - rho 5555 := by
      linear_combination r5159
    have haddx :
        rho 5557 * (1 + 3021 * (rho 5551 * seg6AccX185 rho) * (rho 5550 * seg6AccY185 rho)) =
          rho 5551 * seg6AccX185 rho + rho 5550 * seg6AccY185 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5558 * (1 - 3021 * (rho 5551 * seg6AccX185 rho) * (rho 5550 * seg6AccY185 rho)) =
          (-1) * (rho 5551 * seg6AccX185 rho) - rho 5550 * seg6AccY185 rho +
            (seg6AccY185 rho - seg6AccX185 rho * (-1)) * (rho 5550 + rho 5551) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5558 * (1 - rho 5556) = rho 5553 - rho 5554 - rho 5555 := ha5
        _ = (-1) * rho 5554 - rho 5555 + (seg6AccY185 rho - seg6AccX185 rho * (-1)) * (rho 5550 + rho 5551) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX186 rho = seg6AccX185 rho - Bool.toZMod bit * (seg6AccX185 rho - rho 5557) := by
      have hd : rho 5559 = Bool.toZMod bit * (rho 5557 - seg6AccX185 rho) := by
        rw [← hbit]
        unfold seg6AccX185
        linear_combination -r5160
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY186 rho = seg6AccY185 rho - Bool.toZMod bit * (seg6AccY185 rho - rho 5558) := by
      have hd : rho 5560 = Bool.toZMod bit * (rho 5558 - seg6AccY185 rho) := by
        rw [← hbit]
        unfold seg6AccY185
        linear_combination -r5161
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5550 * rho 5551 = rho 5561 := by linear_combination r5162
    have hd1 : rho 5550 * rho 5550 = rho 5562 := by linear_combination r5163
    have hd2 : rho 5551 * rho 5551 = rho 5563 := by linear_combination r5164
    have hd3 : rho 5564 * (rho 5551 * rho 5551 + rho 5550 * rho 5550 * (-1)) = 2 * (rho 5550 * rho 5551) := by
      rw [hd0, hd1, hd2]
      linear_combination r5165
    have hd4 : rho 5565 * (2 - (rho 5551 * rho 5551 + rho 5550 * rho 5550 * (-1))) = rho 5551 * rho 5551 - rho 5550 * rho 5550 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5166
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX185 rho : Seg6.F), (seg6AccY185 rho : Seg6.F)⟩
      ⟨(rho 5550 : Seg6.F), (rho 5551 : Seg6.F)⟩
      ⟨(rho 5557 : Seg6.F), (rho 5558 : Seg6.F)⟩
      ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩
      ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung185

theorem seg6_rows186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5167 rho ∧ Seg6.relationRow5168 rho ∧ Seg6.relationRow5169 rho ∧ Seg6.relationRow5170 rho ∧ Seg6.relationRow5171 rho ∧ Seg6.relationRow5172 rho ∧ Seg6.relationRow5173 rho ∧ Seg6.relationRow5174 rho ∧ Seg6.relationRow5175 rho ∧ Seg6.relationRow5176 rho ∧ Seg6.relationRow5177 rho ∧ Seg6.relationRow5178 rho ∧ Seg6.relationRow5179 rho ∧ Seg6.relationRow5180 rho := by
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
  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩

theorem seg6_rung186 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2076 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩
        ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩
        ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩
        ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩ := by
  obtain ⟨r5167, r5168, r5169, r5170, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180⟩ := seg6_rows186 rho h
  unfold Seg6.relationRow5167 at r5167
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5167
  unfold Seg6.relationRow5168 at r5168
  unfold Seg6.relationRow5169 at r5169
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5169
  unfold Seg6.relationRow5170 at r5170
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5170
  unfold Seg6.relationRow5171 at r5171
  unfold Seg6.relationRow5172 at r5172
  unfold Seg6.relationRow5173 at r5173
  unfold Seg6.relationRow5174 at r5174
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5174
  unfold Seg6.relationRow5175 at r5175
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5175
  unfold Seg6.relationRow5176 at r5176
  unfold Seg6.relationRow5177 at r5177
  unfold Seg6.relationRow5178 at r5178
  unfold Seg6.relationRow5179 at r5179
  unfold Seg6.relationRow5180 at r5180
  have hrung186 (bit : Bool) (hbit : rho 2076 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩
        ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩
        ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩
        ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩ := by
    have hnextx : seg6AccX187 rho = seg6AccX186 rho + rho 5573 := by
      unfold seg6AccX187 seg6AccX186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5069 14 36]
      ring
    have hnexty : seg6AccY187 rho = seg6AccY186 rho + rho 5574 := by
      unfold seg6AccY187 seg6AccY186
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5070 14 36]
      ring
    have hsum : seg6AccX186 rho + seg6AccY186 rho = rho 5566 := by
      unfold seg6AccX186 seg6AccY186
      linear_combination r5167
    have ha0 : (rho 5564 + rho 5565) * (seg6AccX186 rho + seg6AccY186 rho) = rho 5567 := by
      rw [hsum]
      linear_combination r5168
    have ha1 : rho 5565 * seg6AccX186 rho = rho 5568 := by
      unfold seg6AccX186
      linear_combination r5169
    have ha2 : rho 5564 * seg6AccY186 rho = rho 5569 := by
      unfold seg6AccY186
      linear_combination r5170
    have ha3 : 3021 * rho 5568 * rho 5569 = rho 5570 := by
      linear_combination r5171
    have ha4 : rho 5571 * (1 + rho 5570) = rho 5568 + rho 5569 := by
      linear_combination r5172
    have ha5 : rho 5572 * (1 - rho 5570) = rho 5567 - rho 5568 - rho 5569 := by
      linear_combination r5173
    have haddx :
        rho 5571 * (1 + 3021 * (rho 5565 * seg6AccX186 rho) * (rho 5564 * seg6AccY186 rho)) =
          rho 5565 * seg6AccX186 rho + rho 5564 * seg6AccY186 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5572 * (1 - 3021 * (rho 5565 * seg6AccX186 rho) * (rho 5564 * seg6AccY186 rho)) =
          (-1) * (rho 5565 * seg6AccX186 rho) - rho 5564 * seg6AccY186 rho +
            (seg6AccY186 rho - seg6AccX186 rho * (-1)) * (rho 5564 + rho 5565) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5572 * (1 - rho 5570) = rho 5567 - rho 5568 - rho 5569 := ha5
        _ = (-1) * rho 5568 - rho 5569 + (seg6AccY186 rho - seg6AccX186 rho * (-1)) * (rho 5564 + rho 5565) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX187 rho = seg6AccX186 rho - Bool.toZMod bit * (seg6AccX186 rho - rho 5571) := by
      have hd : rho 5573 = Bool.toZMod bit * (rho 5571 - seg6AccX186 rho) := by
        rw [← hbit]
        unfold seg6AccX186
        linear_combination -r5174
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY187 rho = seg6AccY186 rho - Bool.toZMod bit * (seg6AccY186 rho - rho 5572) := by
      have hd : rho 5574 = Bool.toZMod bit * (rho 5572 - seg6AccY186 rho) := by
        rw [← hbit]
        unfold seg6AccY186
        linear_combination -r5175
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5564 * rho 5565 = rho 5575 := by linear_combination r5176
    have hd1 : rho 5564 * rho 5564 = rho 5576 := by linear_combination r5177
    have hd2 : rho 5565 * rho 5565 = rho 5577 := by linear_combination r5178
    have hd3 : rho 5578 * (rho 5565 * rho 5565 + rho 5564 * rho 5564 * (-1)) = 2 * (rho 5564 * rho 5565) := by
      rw [hd0, hd1, hd2]
      linear_combination r5179
    have hd4 : rho 5579 * (2 - (rho 5565 * rho 5565 + rho 5564 * rho 5564 * (-1))) = rho 5565 * rho 5565 - rho 5564 * rho 5564 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5180
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX186 rho : Seg6.F), (seg6AccY186 rho : Seg6.F)⟩
      ⟨(rho 5564 : Seg6.F), (rho 5565 : Seg6.F)⟩
      ⟨(rho 5571 : Seg6.F), (rho 5572 : Seg6.F)⟩
      ⟨(seg6AccX187 rho : Seg6.F), (seg6AccY187 rho : Seg6.F)⟩
      ⟨(rho 5578 : Seg6.F), (rho 5579 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung186

theorem seg6_hstep_c16 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 176 ≤ i → i < 187 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung176 rho h bits[176]! (hbitAt 176 (by omega)) hacc hcur
  · exact seg6_rung177 rho h bits[177]! (hbitAt 177 (by omega)) hacc hcur
  · exact seg6_rung178 rho h bits[178]! (hbitAt 178 (by omega)) hacc hcur
  · exact seg6_rung179 rho h bits[179]! (hbitAt 179 (by omega)) hacc hcur
  · exact seg6_rung180 rho h bits[180]! (hbitAt 180 (by omega)) hacc hcur
  · exact seg6_rung181 rho h bits[181]! (hbitAt 181 (by omega)) hacc hcur
  · exact seg6_rung182 rho h bits[182]! (hbitAt 182 (by omega)) hacc hcur
  · exact seg6_rung183 rho h bits[183]! (hbitAt 183 (by omega)) hacc hcur
  · exact seg6_rung184 rho h bits[184]! (hbitAt 184 (by omega)) hacc hcur
  · exact seg6_rung185 rho h bits[185]! (hbitAt 185 (by omega)) hacc hcur
  · exact seg6_rung186 rho h bits[186]! (hbitAt 186 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
