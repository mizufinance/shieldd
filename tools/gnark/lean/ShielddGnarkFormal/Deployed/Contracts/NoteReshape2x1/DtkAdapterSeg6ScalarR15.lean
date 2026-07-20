import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4873 rho ∧ Seg6.relationRow4874 rho ∧ Seg6.relationRow4875 rho ∧ Seg6.relationRow4876 rho ∧ Seg6.relationRow4877 rho ∧ Seg6.relationRow4878 rho ∧ Seg6.relationRow4879 rho ∧ Seg6.relationRow4880 rho ∧ Seg6.relationRow4881 rho ∧ Seg6.relationRow4882 rho ∧ Seg6.relationRow4883 rho ∧ Seg6.relationRow4884 rho ∧ Seg6.relationRow4885 rho ∧ Seg6.relationRow4886 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886⟩

theorem seg6_rung165 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2049 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5264 : Seg6.F), (rho 5265 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩
        ⟨(rho 5264 : Seg6.F), (rho 5265 : Seg6.F)⟩
        ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩
        ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩ := by
  obtain ⟨r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885, r4886⟩ := seg6_rows165 rho h
  unfold Seg6.relationRow4873 Seg6.relationLc913 at r4873
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4873
  unfold Seg6.relationRow4874 at r4874
  unfold Seg6.relationRow4875 Seg6.relationLc914 at r4875
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4875
  unfold Seg6.relationRow4876 Seg6.relationLc915 at r4876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4876
  unfold Seg6.relationRow4877 at r4877
  unfold Seg6.relationRow4878 at r4878
  unfold Seg6.relationRow4879 at r4879
  unfold Seg6.relationRow4880 Seg6.relationLc916 at r4880
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4880
  unfold Seg6.relationRow4881 Seg6.relationLc917 at r4881
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4881
  unfold Seg6.relationRow4882 at r4882
  unfold Seg6.relationRow4883 at r4883
  unfold Seg6.relationRow4884 at r4884
  unfold Seg6.relationRow4885 at r4885
  unfold Seg6.relationRow4886 at r4886
  have hrung165 (bit : Bool) (hbit : rho 2049 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5264 : Seg6.F), (rho 5265 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩
        ⟨(rho 5264 : Seg6.F), (rho 5265 : Seg6.F)⟩
        ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩
        ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩ := by
    have hnextx : seg6AccX166 rho = seg6AccX165 rho + rho 5273 := by
      unfold seg6AccX166 seg6AccX165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 5063 14]
      ring
    have hnexty : seg6AccY166 rho = seg6AccY165 rho + rho 5274 := by
      unfold seg6AccY166 seg6AccY165
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 5064 14]
      ring
    have hsum : seg6AccX165 rho + seg6AccY165 rho = rho 5266 := by
      unfold seg6AccX165 seg6AccY165
      linear_combination r4873
    have ha0 : (rho 5264 + rho 5265) * (seg6AccX165 rho + seg6AccY165 rho) = rho 5267 := by
      rw [hsum]
      linear_combination r4874
    have ha1 : rho 5265 * seg6AccX165 rho = rho 5268 := by
      unfold seg6AccX165
      linear_combination r4875
    have ha2 : rho 5264 * seg6AccY165 rho = rho 5269 := by
      unfold seg6AccY165
      linear_combination r4876
    have ha3 : 3021 * rho 5268 * rho 5269 = rho 5270 := by
      linear_combination r4877
    have ha4 : rho 5271 * (1 + rho 5270) = rho 5268 + rho 5269 := by
      linear_combination r4878
    have ha5 : rho 5272 * (1 - rho 5270) = rho 5267 - rho 5268 - rho 5269 := by
      linear_combination r4879
    have haddx :
        rho 5271 * (1 + 3021 * (rho 5265 * seg6AccX165 rho) * (rho 5264 * seg6AccY165 rho)) =
          rho 5265 * seg6AccX165 rho + rho 5264 * seg6AccY165 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5272 * (1 - 3021 * (rho 5265 * seg6AccX165 rho) * (rho 5264 * seg6AccY165 rho)) =
          (-1) * (rho 5265 * seg6AccX165 rho) - rho 5264 * seg6AccY165 rho +
            (seg6AccY165 rho - seg6AccX165 rho * (-1)) * (rho 5264 + rho 5265) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5272 * (1 - rho 5270) = rho 5267 - rho 5268 - rho 5269 := ha5
        _ = (-1) * rho 5268 - rho 5269 + (seg6AccY165 rho - seg6AccX165 rho * (-1)) * (rho 5264 + rho 5265) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX166 rho = seg6AccX165 rho - Bool.toZMod bit * (seg6AccX165 rho - rho 5271) := by
      have hd : rho 5273 = Bool.toZMod bit * (rho 5271 - seg6AccX165 rho) := by
        rw [← hbit]
        unfold seg6AccX165
        linear_combination -r4880
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY166 rho = seg6AccY165 rho - Bool.toZMod bit * (seg6AccY165 rho - rho 5272) := by
      have hd : rho 5274 = Bool.toZMod bit * (rho 5272 - seg6AccY165 rho) := by
        rw [← hbit]
        unfold seg6AccY165
        linear_combination -r4881
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5264 * rho 5265 = rho 5275 := by linear_combination r4882
    have hd1 : rho 5264 * rho 5264 = rho 5276 := by linear_combination r4883
    have hd2 : rho 5265 * rho 5265 = rho 5277 := by linear_combination r4884
    have hd3 : rho 5278 * (rho 5265 * rho 5265 + rho 5264 * rho 5264 * (-1)) = 2 * (rho 5264 * rho 5265) := by
      rw [hd0, hd1, hd2]
      linear_combination r4885
    have hd4 : rho 5279 * (2 - (rho 5265 * rho 5265 + rho 5264 * rho 5264 * (-1))) = rho 5265 * rho 5265 - rho 5264 * rho 5264 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4886
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX165 rho : Seg6.F), (seg6AccY165 rho : Seg6.F)⟩
      ⟨(rho 5264 : Seg6.F), (rho 5265 : Seg6.F)⟩
      ⟨(rho 5271 : Seg6.F), (rho 5272 : Seg6.F)⟩
      ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩
      ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung165

theorem seg6_rows166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4887 rho ∧ Seg6.relationRow4888 rho ∧ Seg6.relationRow4889 rho ∧ Seg6.relationRow4890 rho ∧ Seg6.relationRow4891 rho ∧ Seg6.relationRow4892 rho ∧ Seg6.relationRow4893 rho ∧ Seg6.relationRow4894 rho ∧ Seg6.relationRow4895 rho ∧ Seg6.relationRow4896 rho ∧ Seg6.relationRow4897 rho ∧ Seg6.relationRow4898 rho ∧ Seg6.relationRow4899 rho ∧ Seg6.relationRow4900 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900⟩

theorem seg6_rung166 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2050 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩
        ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩
        ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩
        ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩ := by
  obtain ⟨r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900⟩ := seg6_rows166 rho h
  unfold Seg6.relationRow4887 Seg6.relationLc918 at r4887
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4887
  unfold Seg6.relationRow4888 at r4888
  unfold Seg6.relationRow4889 Seg6.relationLc919 at r4889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4889
  unfold Seg6.relationRow4890 Seg6.relationLc920 at r4890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4890
  unfold Seg6.relationRow4891 at r4891
  unfold Seg6.relationRow4892 at r4892
  unfold Seg6.relationRow4893 at r4893
  unfold Seg6.relationRow4894 Seg6.relationLc921 at r4894
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4894
  unfold Seg6.relationRow4895 Seg6.relationLc922 at r4895
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4895
  unfold Seg6.relationRow4896 at r4896
  unfold Seg6.relationRow4897 at r4897
  unfold Seg6.relationRow4898 at r4898
  unfold Seg6.relationRow4899 at r4899
  unfold Seg6.relationRow4900 at r4900
  have hrung166 (bit : Bool) (hbit : rho 2050 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩
        ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩
        ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩
        ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩ := by
    have hnextx : seg6AccX167 rho = seg6AccX166 rho + rho 5287 := by
      unfold seg6AccX167 seg6AccX166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 16]
      ring
    have hnexty : seg6AccY167 rho = seg6AccY166 rho + rho 5288 := by
      unfold seg6AccY167 seg6AccY166
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 16]
      ring
    have hsum : seg6AccX166 rho + seg6AccY166 rho = rho 5280 := by
      unfold seg6AccX166 seg6AccY166
      linear_combination r4887
    have ha0 : (rho 5278 + rho 5279) * (seg6AccX166 rho + seg6AccY166 rho) = rho 5281 := by
      rw [hsum]
      linear_combination r4888
    have ha1 : rho 5279 * seg6AccX166 rho = rho 5282 := by
      unfold seg6AccX166
      linear_combination r4889
    have ha2 : rho 5278 * seg6AccY166 rho = rho 5283 := by
      unfold seg6AccY166
      linear_combination r4890
    have ha3 : 3021 * rho 5282 * rho 5283 = rho 5284 := by
      linear_combination r4891
    have ha4 : rho 5285 * (1 + rho 5284) = rho 5282 + rho 5283 := by
      linear_combination r4892
    have ha5 : rho 5286 * (1 - rho 5284) = rho 5281 - rho 5282 - rho 5283 := by
      linear_combination r4893
    have haddx :
        rho 5285 * (1 + 3021 * (rho 5279 * seg6AccX166 rho) * (rho 5278 * seg6AccY166 rho)) =
          rho 5279 * seg6AccX166 rho + rho 5278 * seg6AccY166 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5286 * (1 - 3021 * (rho 5279 * seg6AccX166 rho) * (rho 5278 * seg6AccY166 rho)) =
          (-1) * (rho 5279 * seg6AccX166 rho) - rho 5278 * seg6AccY166 rho +
            (seg6AccY166 rho - seg6AccX166 rho * (-1)) * (rho 5278 + rho 5279) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5286 * (1 - rho 5284) = rho 5281 - rho 5282 - rho 5283 := ha5
        _ = (-1) * rho 5282 - rho 5283 + (seg6AccY166 rho - seg6AccX166 rho * (-1)) * (rho 5278 + rho 5279) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX167 rho = seg6AccX166 rho - Bool.toZMod bit * (seg6AccX166 rho - rho 5285) := by
      have hd : rho 5287 = Bool.toZMod bit * (rho 5285 - seg6AccX166 rho) := by
        rw [← hbit]
        unfold seg6AccX166
        linear_combination -r4894
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY167 rho = seg6AccY166 rho - Bool.toZMod bit * (seg6AccY166 rho - rho 5286) := by
      have hd : rho 5288 = Bool.toZMod bit * (rho 5286 - seg6AccY166 rho) := by
        rw [← hbit]
        unfold seg6AccY166
        linear_combination -r4895
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5278 * rho 5279 = rho 5289 := by linear_combination r4896
    have hd1 : rho 5278 * rho 5278 = rho 5290 := by linear_combination r4897
    have hd2 : rho 5279 * rho 5279 = rho 5291 := by linear_combination r4898
    have hd3 : rho 5292 * (rho 5279 * rho 5279 + rho 5278 * rho 5278 * (-1)) = 2 * (rho 5278 * rho 5279) := by
      rw [hd0, hd1, hd2]
      linear_combination r4899
    have hd4 : rho 5293 * (2 - (rho 5279 * rho 5279 + rho 5278 * rho 5278 * (-1))) = rho 5279 * rho 5279 - rho 5278 * rho 5278 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4900
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX166 rho : Seg6.F), (seg6AccY166 rho : Seg6.F)⟩
      ⟨(rho 5278 : Seg6.F), (rho 5279 : Seg6.F)⟩
      ⟨(rho 5285 : Seg6.F), (rho 5286 : Seg6.F)⟩
      ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩
      ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung166

theorem seg6_rows167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4901 rho ∧ Seg6.relationRow4902 rho ∧ Seg6.relationRow4903 rho ∧ Seg6.relationRow4904 rho ∧ Seg6.relationRow4905 rho ∧ Seg6.relationRow4906 rho ∧ Seg6.relationRow4907 rho ∧ Seg6.relationRow4908 rho ∧ Seg6.relationRow4909 rho ∧ Seg6.relationRow4910 rho ∧ Seg6.relationRow4911 rho ∧ Seg6.relationRow4912 rho ∧ Seg6.relationRow4913 rho ∧ Seg6.relationRow4914 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩

theorem seg6_rung167 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2051 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩
        ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩
        ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩
        ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩ := by
  obtain ⟨r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914⟩ := seg6_rows167 rho h
  unfold Seg6.relationRow4901 Seg6.relationLc923 at r4901
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4901
  unfold Seg6.relationRow4902 at r4902
  unfold Seg6.relationRow4903 Seg6.relationLc924 at r4903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4903
  unfold Seg6.relationRow4904 Seg6.relationLc925 at r4904
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4904
  unfold Seg6.relationRow4905 at r4905
  unfold Seg6.relationRow4906 at r4906
  unfold Seg6.relationRow4907 at r4907
  unfold Seg6.relationRow4908 Seg6.relationLc926 at r4908
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908
  unfold Seg6.relationRow4909 Seg6.relationLc927 at r4909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909
  unfold Seg6.relationRow4910 at r4910
  unfold Seg6.relationRow4911 at r4911
  unfold Seg6.relationRow4912 at r4912
  unfold Seg6.relationRow4913 at r4913
  unfold Seg6.relationRow4914 at r4914
  have hrung167 (bit : Bool) (hbit : rho 2051 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩
        ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩
        ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩
        ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩ := by
    have hnextx : seg6AccX168 rho = seg6AccX167 rho + rho 5301 := by
      unfold seg6AccX168 seg6AccX167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 17]
      ring
    have hnexty : seg6AccY168 rho = seg6AccY167 rho + rho 5302 := by
      unfold seg6AccY168 seg6AccY167
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 17]
      ring
    have hsum : seg6AccX167 rho + seg6AccY167 rho = rho 5294 := by
      unfold seg6AccX167 seg6AccY167
      linear_combination r4901
    have ha0 : (rho 5292 + rho 5293) * (seg6AccX167 rho + seg6AccY167 rho) = rho 5295 := by
      rw [hsum]
      linear_combination r4902
    have ha1 : rho 5293 * seg6AccX167 rho = rho 5296 := by
      unfold seg6AccX167
      linear_combination r4903
    have ha2 : rho 5292 * seg6AccY167 rho = rho 5297 := by
      unfold seg6AccY167
      linear_combination r4904
    have ha3 : 3021 * rho 5296 * rho 5297 = rho 5298 := by
      linear_combination r4905
    have ha4 : rho 5299 * (1 + rho 5298) = rho 5296 + rho 5297 := by
      linear_combination r4906
    have ha5 : rho 5300 * (1 - rho 5298) = rho 5295 - rho 5296 - rho 5297 := by
      linear_combination r4907
    have haddx :
        rho 5299 * (1 + 3021 * (rho 5293 * seg6AccX167 rho) * (rho 5292 * seg6AccY167 rho)) =
          rho 5293 * seg6AccX167 rho + rho 5292 * seg6AccY167 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5300 * (1 - 3021 * (rho 5293 * seg6AccX167 rho) * (rho 5292 * seg6AccY167 rho)) =
          (-1) * (rho 5293 * seg6AccX167 rho) - rho 5292 * seg6AccY167 rho +
            (seg6AccY167 rho - seg6AccX167 rho * (-1)) * (rho 5292 + rho 5293) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5300 * (1 - rho 5298) = rho 5295 - rho 5296 - rho 5297 := ha5
        _ = (-1) * rho 5296 - rho 5297 + (seg6AccY167 rho - seg6AccX167 rho * (-1)) * (rho 5292 + rho 5293) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX168 rho = seg6AccX167 rho - Bool.toZMod bit * (seg6AccX167 rho - rho 5299) := by
      have hd : rho 5301 = Bool.toZMod bit * (rho 5299 - seg6AccX167 rho) := by
        rw [← hbit]
        unfold seg6AccX167
        linear_combination -r4908
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY168 rho = seg6AccY167 rho - Bool.toZMod bit * (seg6AccY167 rho - rho 5300) := by
      have hd : rho 5302 = Bool.toZMod bit * (rho 5300 - seg6AccY167 rho) := by
        rw [← hbit]
        unfold seg6AccY167
        linear_combination -r4909
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5292 * rho 5293 = rho 5303 := by linear_combination r4910
    have hd1 : rho 5292 * rho 5292 = rho 5304 := by linear_combination r4911
    have hd2 : rho 5293 * rho 5293 = rho 5305 := by linear_combination r4912
    have hd3 : rho 5306 * (rho 5293 * rho 5293 + rho 5292 * rho 5292 * (-1)) = 2 * (rho 5292 * rho 5293) := by
      rw [hd0, hd1, hd2]
      linear_combination r4913
    have hd4 : rho 5307 * (2 - (rho 5293 * rho 5293 + rho 5292 * rho 5292 * (-1))) = rho 5293 * rho 5293 - rho 5292 * rho 5292 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4914
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX167 rho : Seg6.F), (seg6AccY167 rho : Seg6.F)⟩
      ⟨(rho 5292 : Seg6.F), (rho 5293 : Seg6.F)⟩
      ⟨(rho 5299 : Seg6.F), (rho 5300 : Seg6.F)⟩
      ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩
      ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung167

theorem seg6_rows168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4915 rho ∧ Seg6.relationRow4916 rho ∧ Seg6.relationRow4917 rho ∧ Seg6.relationRow4918 rho ∧ Seg6.relationRow4919 rho ∧ Seg6.relationRow4920 rho ∧ Seg6.relationRow4921 rho ∧ Seg6.relationRow4922 rho ∧ Seg6.relationRow4923 rho ∧ Seg6.relationRow4924 rho ∧ Seg6.relationRow4925 rho ∧ Seg6.relationRow4926 rho ∧ Seg6.relationRow4927 rho ∧ Seg6.relationRow4928 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩

theorem seg6_rung168 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2052 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩
        ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩
        ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩
        ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩ := by
  obtain ⟨r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928⟩ := seg6_rows168 rho h
  unfold Seg6.relationRow4915 Seg6.relationLc928 at r4915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915
  unfold Seg6.relationRow4916 at r4916
  unfold Seg6.relationRow4917 Seg6.relationLc929 at r4917
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4917
  unfold Seg6.relationRow4918 Seg6.relationLc930 at r4918
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918
  unfold Seg6.relationRow4919 at r4919
  unfold Seg6.relationRow4920 at r4920
  unfold Seg6.relationRow4921 at r4921
  unfold Seg6.relationRow4922 Seg6.relationLc931 at r4922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922
  unfold Seg6.relationRow4923 Seg6.relationLc932 at r4923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923
  unfold Seg6.relationRow4924 at r4924
  unfold Seg6.relationRow4925 at r4925
  unfold Seg6.relationRow4926 at r4926
  unfold Seg6.relationRow4927 at r4927
  unfold Seg6.relationRow4928 at r4928
  have hrung168 (bit : Bool) (hbit : rho 2052 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩
        ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩
        ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩
        ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩ := by
    have hnextx : seg6AccX169 rho = seg6AccX168 rho + rho 5315 := by
      unfold seg6AccX169 seg6AccX168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 18]
      ring
    have hnexty : seg6AccY169 rho = seg6AccY168 rho + rho 5316 := by
      unfold seg6AccY169 seg6AccY168
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 18]
      ring
    have hsum : seg6AccX168 rho + seg6AccY168 rho = rho 5308 := by
      unfold seg6AccX168 seg6AccY168
      linear_combination r4915
    have ha0 : (rho 5306 + rho 5307) * (seg6AccX168 rho + seg6AccY168 rho) = rho 5309 := by
      rw [hsum]
      linear_combination r4916
    have ha1 : rho 5307 * seg6AccX168 rho = rho 5310 := by
      unfold seg6AccX168
      linear_combination r4917
    have ha2 : rho 5306 * seg6AccY168 rho = rho 5311 := by
      unfold seg6AccY168
      linear_combination r4918
    have ha3 : 3021 * rho 5310 * rho 5311 = rho 5312 := by
      linear_combination r4919
    have ha4 : rho 5313 * (1 + rho 5312) = rho 5310 + rho 5311 := by
      linear_combination r4920
    have ha5 : rho 5314 * (1 - rho 5312) = rho 5309 - rho 5310 - rho 5311 := by
      linear_combination r4921
    have haddx :
        rho 5313 * (1 + 3021 * (rho 5307 * seg6AccX168 rho) * (rho 5306 * seg6AccY168 rho)) =
          rho 5307 * seg6AccX168 rho + rho 5306 * seg6AccY168 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5314 * (1 - 3021 * (rho 5307 * seg6AccX168 rho) * (rho 5306 * seg6AccY168 rho)) =
          (-1) * (rho 5307 * seg6AccX168 rho) - rho 5306 * seg6AccY168 rho +
            (seg6AccY168 rho - seg6AccX168 rho * (-1)) * (rho 5306 + rho 5307) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5314 * (1 - rho 5312) = rho 5309 - rho 5310 - rho 5311 := ha5
        _ = (-1) * rho 5310 - rho 5311 + (seg6AccY168 rho - seg6AccX168 rho * (-1)) * (rho 5306 + rho 5307) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX169 rho = seg6AccX168 rho - Bool.toZMod bit * (seg6AccX168 rho - rho 5313) := by
      have hd : rho 5315 = Bool.toZMod bit * (rho 5313 - seg6AccX168 rho) := by
        rw [← hbit]
        unfold seg6AccX168
        linear_combination -r4922
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY169 rho = seg6AccY168 rho - Bool.toZMod bit * (seg6AccY168 rho - rho 5314) := by
      have hd : rho 5316 = Bool.toZMod bit * (rho 5314 - seg6AccY168 rho) := by
        rw [← hbit]
        unfold seg6AccY168
        linear_combination -r4923
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5306 * rho 5307 = rho 5317 := by linear_combination r4924
    have hd1 : rho 5306 * rho 5306 = rho 5318 := by linear_combination r4925
    have hd2 : rho 5307 * rho 5307 = rho 5319 := by linear_combination r4926
    have hd3 : rho 5320 * (rho 5307 * rho 5307 + rho 5306 * rho 5306 * (-1)) = 2 * (rho 5306 * rho 5307) := by
      rw [hd0, hd1, hd2]
      linear_combination r4927
    have hd4 : rho 5321 * (2 - (rho 5307 * rho 5307 + rho 5306 * rho 5306 * (-1))) = rho 5307 * rho 5307 - rho 5306 * rho 5306 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4928
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX168 rho : Seg6.F), (seg6AccY168 rho : Seg6.F)⟩
      ⟨(rho 5306 : Seg6.F), (rho 5307 : Seg6.F)⟩
      ⟨(rho 5313 : Seg6.F), (rho 5314 : Seg6.F)⟩
      ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩
      ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung168

theorem seg6_rows169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4929 rho ∧ Seg6.relationRow4930 rho ∧ Seg6.relationRow4931 rho ∧ Seg6.relationRow4932 rho ∧ Seg6.relationRow4933 rho ∧ Seg6.relationRow4934 rho ∧ Seg6.relationRow4935 rho ∧ Seg6.relationRow4936 rho ∧ Seg6.relationRow4937 rho ∧ Seg6.relationRow4938 rho ∧ Seg6.relationRow4939 rho ∧ Seg6.relationRow4940 rho ∧ Seg6.relationRow4941 rho ∧ Seg6.relationRow4942 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩

theorem seg6_rung169 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2053 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩
        ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩
        ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩
        ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩ := by
  obtain ⟨r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942⟩ := seg6_rows169 rho h
  unfold Seg6.relationRow4929 Seg6.relationLc933 at r4929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4929
  unfold Seg6.relationRow4930 at r4930
  unfold Seg6.relationRow4931 Seg6.relationLc934 at r4931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931
  unfold Seg6.relationRow4932 Seg6.relationLc935 at r4932
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932
  unfold Seg6.relationRow4933 at r4933
  unfold Seg6.relationRow4934 at r4934
  unfold Seg6.relationRow4935 at r4935
  unfold Seg6.relationRow4936 Seg6.relationLc936 at r4936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936
  unfold Seg6.relationRow4937 Seg6.relationLc937 at r4937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4937
  unfold Seg6.relationRow4938 at r4938
  unfold Seg6.relationRow4939 at r4939
  unfold Seg6.relationRow4940 at r4940
  unfold Seg6.relationRow4941 at r4941
  unfold Seg6.relationRow4942 at r4942
  have hrung169 (bit : Bool) (hbit : rho 2053 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩
        ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩
        ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩
        ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩ := by
    have hnextx : seg6AccX170 rho = seg6AccX169 rho + rho 5329 := by
      unfold seg6AccX170 seg6AccX169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 19]
      ring
    have hnexty : seg6AccY170 rho = seg6AccY169 rho + rho 5330 := by
      unfold seg6AccY170 seg6AccY169
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 19]
      ring
    have hsum : seg6AccX169 rho + seg6AccY169 rho = rho 5322 := by
      unfold seg6AccX169 seg6AccY169
      linear_combination r4929
    have ha0 : (rho 5320 + rho 5321) * (seg6AccX169 rho + seg6AccY169 rho) = rho 5323 := by
      rw [hsum]
      linear_combination r4930
    have ha1 : rho 5321 * seg6AccX169 rho = rho 5324 := by
      unfold seg6AccX169
      linear_combination r4931
    have ha2 : rho 5320 * seg6AccY169 rho = rho 5325 := by
      unfold seg6AccY169
      linear_combination r4932
    have ha3 : 3021 * rho 5324 * rho 5325 = rho 5326 := by
      linear_combination r4933
    have ha4 : rho 5327 * (1 + rho 5326) = rho 5324 + rho 5325 := by
      linear_combination r4934
    have ha5 : rho 5328 * (1 - rho 5326) = rho 5323 - rho 5324 - rho 5325 := by
      linear_combination r4935
    have haddx :
        rho 5327 * (1 + 3021 * (rho 5321 * seg6AccX169 rho) * (rho 5320 * seg6AccY169 rho)) =
          rho 5321 * seg6AccX169 rho + rho 5320 * seg6AccY169 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5328 * (1 - 3021 * (rho 5321 * seg6AccX169 rho) * (rho 5320 * seg6AccY169 rho)) =
          (-1) * (rho 5321 * seg6AccX169 rho) - rho 5320 * seg6AccY169 rho +
            (seg6AccY169 rho - seg6AccX169 rho * (-1)) * (rho 5320 + rho 5321) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5328 * (1 - rho 5326) = rho 5323 - rho 5324 - rho 5325 := ha5
        _ = (-1) * rho 5324 - rho 5325 + (seg6AccY169 rho - seg6AccX169 rho * (-1)) * (rho 5320 + rho 5321) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX170 rho = seg6AccX169 rho - Bool.toZMod bit * (seg6AccX169 rho - rho 5327) := by
      have hd : rho 5329 = Bool.toZMod bit * (rho 5327 - seg6AccX169 rho) := by
        rw [← hbit]
        unfold seg6AccX169
        linear_combination -r4936
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY170 rho = seg6AccY169 rho - Bool.toZMod bit * (seg6AccY169 rho - rho 5328) := by
      have hd : rho 5330 = Bool.toZMod bit * (rho 5328 - seg6AccY169 rho) := by
        rw [← hbit]
        unfold seg6AccY169
        linear_combination -r4937
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5320 * rho 5321 = rho 5331 := by linear_combination r4938
    have hd1 : rho 5320 * rho 5320 = rho 5332 := by linear_combination r4939
    have hd2 : rho 5321 * rho 5321 = rho 5333 := by linear_combination r4940
    have hd3 : rho 5334 * (rho 5321 * rho 5321 + rho 5320 * rho 5320 * (-1)) = 2 * (rho 5320 * rho 5321) := by
      rw [hd0, hd1, hd2]
      linear_combination r4941
    have hd4 : rho 5335 * (2 - (rho 5321 * rho 5321 + rho 5320 * rho 5320 * (-1))) = rho 5321 * rho 5321 - rho 5320 * rho 5320 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4942
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX169 rho : Seg6.F), (seg6AccY169 rho : Seg6.F)⟩
      ⟨(rho 5320 : Seg6.F), (rho 5321 : Seg6.F)⟩
      ⟨(rho 5327 : Seg6.F), (rho 5328 : Seg6.F)⟩
      ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩
      ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung169

theorem seg6_rows170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4943 rho ∧ Seg6.relationRow4944 rho ∧ Seg6.relationRow4945 rho ∧ Seg6.relationRow4946 rho ∧ Seg6.relationRow4947 rho ∧ Seg6.relationRow4948 rho ∧ Seg6.relationRow4949 rho ∧ Seg6.relationRow4950 rho ∧ Seg6.relationRow4951 rho ∧ Seg6.relationRow4952 rho ∧ Seg6.relationRow4953 rho ∧ Seg6.relationRow4954 rho ∧ Seg6.relationRow4955 rho ∧ Seg6.relationRow4956 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, _, _, _⟩
  exact ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩

theorem seg6_rung170 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2054 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩
        ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩
        ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩
        ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩ := by
  obtain ⟨r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956⟩ := seg6_rows170 rho h
  unfold Seg6.relationRow4943 Seg6.relationLc938 at r4943
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4943
  unfold Seg6.relationRow4944 at r4944
  unfold Seg6.relationRow4945 Seg6.relationLc939 at r4945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945
  unfold Seg6.relationRow4946 Seg6.relationLc940 at r4946
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4946
  unfold Seg6.relationRow4947 at r4947
  unfold Seg6.relationRow4948 at r4948
  unfold Seg6.relationRow4949 at r4949
  unfold Seg6.relationRow4950 Seg6.relationLc941 at r4950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4950
  unfold Seg6.relationRow4951 Seg6.relationLc942 at r4951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951
  unfold Seg6.relationRow4952 at r4952
  unfold Seg6.relationRow4953 at r4953
  unfold Seg6.relationRow4954 at r4954
  unfold Seg6.relationRow4955 at r4955
  unfold Seg6.relationRow4956 at r4956
  have hrung170 (bit : Bool) (hbit : rho 2054 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩
        ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩
        ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩
        ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩ := by
    have hnextx : seg6AccX171 rho = seg6AccX170 rho + rho 5343 := by
      unfold seg6AccX171 seg6AccX170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 20]
      ring
    have hnexty : seg6AccY171 rho = seg6AccY170 rho + rho 5344 := by
      unfold seg6AccY171 seg6AccY170
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 20]
      ring
    have hsum : seg6AccX170 rho + seg6AccY170 rho = rho 5336 := by
      unfold seg6AccX170 seg6AccY170
      linear_combination r4943
    have ha0 : (rho 5334 + rho 5335) * (seg6AccX170 rho + seg6AccY170 rho) = rho 5337 := by
      rw [hsum]
      linear_combination r4944
    have ha1 : rho 5335 * seg6AccX170 rho = rho 5338 := by
      unfold seg6AccX170
      linear_combination r4945
    have ha2 : rho 5334 * seg6AccY170 rho = rho 5339 := by
      unfold seg6AccY170
      linear_combination r4946
    have ha3 : 3021 * rho 5338 * rho 5339 = rho 5340 := by
      linear_combination r4947
    have ha4 : rho 5341 * (1 + rho 5340) = rho 5338 + rho 5339 := by
      linear_combination r4948
    have ha5 : rho 5342 * (1 - rho 5340) = rho 5337 - rho 5338 - rho 5339 := by
      linear_combination r4949
    have haddx :
        rho 5341 * (1 + 3021 * (rho 5335 * seg6AccX170 rho) * (rho 5334 * seg6AccY170 rho)) =
          rho 5335 * seg6AccX170 rho + rho 5334 * seg6AccY170 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5342 * (1 - 3021 * (rho 5335 * seg6AccX170 rho) * (rho 5334 * seg6AccY170 rho)) =
          (-1) * (rho 5335 * seg6AccX170 rho) - rho 5334 * seg6AccY170 rho +
            (seg6AccY170 rho - seg6AccX170 rho * (-1)) * (rho 5334 + rho 5335) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5342 * (1 - rho 5340) = rho 5337 - rho 5338 - rho 5339 := ha5
        _ = (-1) * rho 5338 - rho 5339 + (seg6AccY170 rho - seg6AccX170 rho * (-1)) * (rho 5334 + rho 5335) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX171 rho = seg6AccX170 rho - Bool.toZMod bit * (seg6AccX170 rho - rho 5341) := by
      have hd : rho 5343 = Bool.toZMod bit * (rho 5341 - seg6AccX170 rho) := by
        rw [← hbit]
        unfold seg6AccX170
        linear_combination -r4950
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY171 rho = seg6AccY170 rho - Bool.toZMod bit * (seg6AccY170 rho - rho 5342) := by
      have hd : rho 5344 = Bool.toZMod bit * (rho 5342 - seg6AccY170 rho) := by
        rw [← hbit]
        unfold seg6AccY170
        linear_combination -r4951
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5334 * rho 5335 = rho 5345 := by linear_combination r4952
    have hd1 : rho 5334 * rho 5334 = rho 5346 := by linear_combination r4953
    have hd2 : rho 5335 * rho 5335 = rho 5347 := by linear_combination r4954
    have hd3 : rho 5348 * (rho 5335 * rho 5335 + rho 5334 * rho 5334 * (-1)) = 2 * (rho 5334 * rho 5335) := by
      rw [hd0, hd1, hd2]
      linear_combination r4955
    have hd4 : rho 5349 * (2 - (rho 5335 * rho 5335 + rho 5334 * rho 5334 * (-1))) = rho 5335 * rho 5335 - rho 5334 * rho 5334 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4956
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX170 rho : Seg6.F), (seg6AccY170 rho : Seg6.F)⟩
      ⟨(rho 5334 : Seg6.F), (rho 5335 : Seg6.F)⟩
      ⟨(rho 5341 : Seg6.F), (rho 5342 : Seg6.F)⟩
      ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩
      ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung170

theorem seg6_rows171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4957 rho ∧ Seg6.relationRow4958 rho ∧ Seg6.relationRow4959 rho ∧ Seg6.relationRow4960 rho ∧ Seg6.relationRow4961 rho ∧ Seg6.relationRow4962 rho ∧ Seg6.relationRow4963 rho ∧ Seg6.relationRow4964 rho ∧ Seg6.relationRow4965 rho ∧ Seg6.relationRow4966 rho ∧ Seg6.relationRow4967 rho ∧ Seg6.relationRow4968 rho ∧ Seg6.relationRow4969 rho ∧ Seg6.relationRow4970 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart61 at p61
  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4957, r4958, r4959⟩
  unfold Seg6.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩

theorem seg6_rung171 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2055 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩
        ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩
        ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩
        ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩ := by
  obtain ⟨r4957, r4958, r4959, r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970⟩ := seg6_rows171 rho h
  unfold Seg6.relationRow4957 Seg6.relationLc943 at r4957
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957
  unfold Seg6.relationRow4958 at r4958
  unfold Seg6.relationRow4959 Seg6.relationLc944 at r4959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4959
  unfold Seg6.relationRow4960 Seg6.relationLc945 at r4960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960
  unfold Seg6.relationRow4961 at r4961
  unfold Seg6.relationRow4962 at r4962
  unfold Seg6.relationRow4963 at r4963
  unfold Seg6.relationRow4964 Seg6.relationLc946 at r4964
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964
  unfold Seg6.relationRow4965 Seg6.relationLc947 at r4965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965
  unfold Seg6.relationRow4966 at r4966
  unfold Seg6.relationRow4967 at r4967
  unfold Seg6.relationRow4968 at r4968
  unfold Seg6.relationRow4969 at r4969
  unfold Seg6.relationRow4970 at r4970
  have hrung171 (bit : Bool) (hbit : rho 2055 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩
        ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩
        ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩
        ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩ := by
    have hnextx : seg6AccX172 rho = seg6AccX171 rho + rho 5357 := by
      unfold seg6AccX172 seg6AccX171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 21]
      ring
    have hnexty : seg6AccY172 rho = seg6AccY171 rho + rho 5358 := by
      unfold seg6AccY172 seg6AccY171
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 21]
      ring
    have hsum : seg6AccX171 rho + seg6AccY171 rho = rho 5350 := by
      unfold seg6AccX171 seg6AccY171
      linear_combination r4957
    have ha0 : (rho 5348 + rho 5349) * (seg6AccX171 rho + seg6AccY171 rho) = rho 5351 := by
      rw [hsum]
      linear_combination r4958
    have ha1 : rho 5349 * seg6AccX171 rho = rho 5352 := by
      unfold seg6AccX171
      linear_combination r4959
    have ha2 : rho 5348 * seg6AccY171 rho = rho 5353 := by
      unfold seg6AccY171
      linear_combination r4960
    have ha3 : 3021 * rho 5352 * rho 5353 = rho 5354 := by
      linear_combination r4961
    have ha4 : rho 5355 * (1 + rho 5354) = rho 5352 + rho 5353 := by
      linear_combination r4962
    have ha5 : rho 5356 * (1 - rho 5354) = rho 5351 - rho 5352 - rho 5353 := by
      linear_combination r4963
    have haddx :
        rho 5355 * (1 + 3021 * (rho 5349 * seg6AccX171 rho) * (rho 5348 * seg6AccY171 rho)) =
          rho 5349 * seg6AccX171 rho + rho 5348 * seg6AccY171 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5356 * (1 - 3021 * (rho 5349 * seg6AccX171 rho) * (rho 5348 * seg6AccY171 rho)) =
          (-1) * (rho 5349 * seg6AccX171 rho) - rho 5348 * seg6AccY171 rho +
            (seg6AccY171 rho - seg6AccX171 rho * (-1)) * (rho 5348 + rho 5349) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5356 * (1 - rho 5354) = rho 5351 - rho 5352 - rho 5353 := ha5
        _ = (-1) * rho 5352 - rho 5353 + (seg6AccY171 rho - seg6AccX171 rho * (-1)) * (rho 5348 + rho 5349) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX172 rho = seg6AccX171 rho - Bool.toZMod bit * (seg6AccX171 rho - rho 5355) := by
      have hd : rho 5357 = Bool.toZMod bit * (rho 5355 - seg6AccX171 rho) := by
        rw [← hbit]
        unfold seg6AccX171
        linear_combination -r4964
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY172 rho = seg6AccY171 rho - Bool.toZMod bit * (seg6AccY171 rho - rho 5356) := by
      have hd : rho 5358 = Bool.toZMod bit * (rho 5356 - seg6AccY171 rho) := by
        rw [← hbit]
        unfold seg6AccY171
        linear_combination -r4965
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5348 * rho 5349 = rho 5359 := by linear_combination r4966
    have hd1 : rho 5348 * rho 5348 = rho 5360 := by linear_combination r4967
    have hd2 : rho 5349 * rho 5349 = rho 5361 := by linear_combination r4968
    have hd3 : rho 5362 * (rho 5349 * rho 5349 + rho 5348 * rho 5348 * (-1)) = 2 * (rho 5348 * rho 5349) := by
      rw [hd0, hd1, hd2]
      linear_combination r4969
    have hd4 : rho 5363 * (2 - (rho 5349 * rho 5349 + rho 5348 * rho 5348 * (-1))) = rho 5349 * rho 5349 - rho 5348 * rho 5348 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4970
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX171 rho : Seg6.F), (seg6AccY171 rho : Seg6.F)⟩
      ⟨(rho 5348 : Seg6.F), (rho 5349 : Seg6.F)⟩
      ⟨(rho 5355 : Seg6.F), (rho 5356 : Seg6.F)⟩
      ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩
      ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung171

theorem seg6_rows172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4971 rho ∧ Seg6.relationRow4972 rho ∧ Seg6.relationRow4973 rho ∧ Seg6.relationRow4974 rho ∧ Seg6.relationRow4975 rho ∧ Seg6.relationRow4976 rho ∧ Seg6.relationRow4977 rho ∧ Seg6.relationRow4978 rho ∧ Seg6.relationRow4979 rho ∧ Seg6.relationRow4980 rho ∧ Seg6.relationRow4981 rho ∧ Seg6.relationRow4982 rho ∧ Seg6.relationRow4983 rho ∧ Seg6.relationRow4984 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩

theorem seg6_rung172 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2056 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩
        ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩
        ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩
        ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩ := by
  obtain ⟨r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984⟩ := seg6_rows172 rho h
  unfold Seg6.relationRow4971 Seg6.relationLc948 at r4971
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971
  unfold Seg6.relationRow4972 at r4972
  unfold Seg6.relationRow4973 Seg6.relationLc949 at r4973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973
  unfold Seg6.relationRow4974 Seg6.relationLc950 at r4974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974
  unfold Seg6.relationRow4975 at r4975
  unfold Seg6.relationRow4976 at r4976
  unfold Seg6.relationRow4977 at r4977
  unfold Seg6.relationRow4978 Seg6.relationLc951 at r4978
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978
  unfold Seg6.relationRow4979 Seg6.relationLc952 at r4979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979
  unfold Seg6.relationRow4980 at r4980
  unfold Seg6.relationRow4981 at r4981
  unfold Seg6.relationRow4982 at r4982
  unfold Seg6.relationRow4983 at r4983
  unfold Seg6.relationRow4984 at r4984
  have hrung172 (bit : Bool) (hbit : rho 2056 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩
        ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩
        ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩
        ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩ := by
    have hnextx : seg6AccX173 rho = seg6AccX172 rho + rho 5371 := by
      unfold seg6AccX173 seg6AccX172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 22]
      ring
    have hnexty : seg6AccY173 rho = seg6AccY172 rho + rho 5372 := by
      unfold seg6AccY173 seg6AccY172
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 22]
      ring
    have hsum : seg6AccX172 rho + seg6AccY172 rho = rho 5364 := by
      unfold seg6AccX172 seg6AccY172
      linear_combination r4971
    have ha0 : (rho 5362 + rho 5363) * (seg6AccX172 rho + seg6AccY172 rho) = rho 5365 := by
      rw [hsum]
      linear_combination r4972
    have ha1 : rho 5363 * seg6AccX172 rho = rho 5366 := by
      unfold seg6AccX172
      linear_combination r4973
    have ha2 : rho 5362 * seg6AccY172 rho = rho 5367 := by
      unfold seg6AccY172
      linear_combination r4974
    have ha3 : 3021 * rho 5366 * rho 5367 = rho 5368 := by
      linear_combination r4975
    have ha4 : rho 5369 * (1 + rho 5368) = rho 5366 + rho 5367 := by
      linear_combination r4976
    have ha5 : rho 5370 * (1 - rho 5368) = rho 5365 - rho 5366 - rho 5367 := by
      linear_combination r4977
    have haddx :
        rho 5369 * (1 + 3021 * (rho 5363 * seg6AccX172 rho) * (rho 5362 * seg6AccY172 rho)) =
          rho 5363 * seg6AccX172 rho + rho 5362 * seg6AccY172 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5370 * (1 - 3021 * (rho 5363 * seg6AccX172 rho) * (rho 5362 * seg6AccY172 rho)) =
          (-1) * (rho 5363 * seg6AccX172 rho) - rho 5362 * seg6AccY172 rho +
            (seg6AccY172 rho - seg6AccX172 rho * (-1)) * (rho 5362 + rho 5363) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5370 * (1 - rho 5368) = rho 5365 - rho 5366 - rho 5367 := ha5
        _ = (-1) * rho 5366 - rho 5367 + (seg6AccY172 rho - seg6AccX172 rho * (-1)) * (rho 5362 + rho 5363) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX173 rho = seg6AccX172 rho - Bool.toZMod bit * (seg6AccX172 rho - rho 5369) := by
      have hd : rho 5371 = Bool.toZMod bit * (rho 5369 - seg6AccX172 rho) := by
        rw [← hbit]
        unfold seg6AccX172
        linear_combination -r4978
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY173 rho = seg6AccY172 rho - Bool.toZMod bit * (seg6AccY172 rho - rho 5370) := by
      have hd : rho 5372 = Bool.toZMod bit * (rho 5370 - seg6AccY172 rho) := by
        rw [← hbit]
        unfold seg6AccY172
        linear_combination -r4979
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5362 * rho 5363 = rho 5373 := by linear_combination r4980
    have hd1 : rho 5362 * rho 5362 = rho 5374 := by linear_combination r4981
    have hd2 : rho 5363 * rho 5363 = rho 5375 := by linear_combination r4982
    have hd3 : rho 5376 * (rho 5363 * rho 5363 + rho 5362 * rho 5362 * (-1)) = 2 * (rho 5362 * rho 5363) := by
      rw [hd0, hd1, hd2]
      linear_combination r4983
    have hd4 : rho 5377 * (2 - (rho 5363 * rho 5363 + rho 5362 * rho 5362 * (-1))) = rho 5363 * rho 5363 - rho 5362 * rho 5362 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4984
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX172 rho : Seg6.F), (seg6AccY172 rho : Seg6.F)⟩
      ⟨(rho 5362 : Seg6.F), (rho 5363 : Seg6.F)⟩
      ⟨(rho 5369 : Seg6.F), (rho 5370 : Seg6.F)⟩
      ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩
      ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung172

theorem seg6_rows173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4985 rho ∧ Seg6.relationRow4986 rho ∧ Seg6.relationRow4987 rho ∧ Seg6.relationRow4988 rho ∧ Seg6.relationRow4989 rho ∧ Seg6.relationRow4990 rho ∧ Seg6.relationRow4991 rho ∧ Seg6.relationRow4992 rho ∧ Seg6.relationRow4993 rho ∧ Seg6.relationRow4994 rho ∧ Seg6.relationRow4995 rho ∧ Seg6.relationRow4996 rho ∧ Seg6.relationRow4997 rho ∧ Seg6.relationRow4998 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg6_rung173 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2057 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩
        ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩
        ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩
        ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩ := by
  obtain ⟨r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg6_rows173 rho h
  unfold Seg6.relationRow4985 Seg6.relationLc953 at r4985
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4985
  unfold Seg6.relationRow4986 at r4986
  unfold Seg6.relationRow4987 Seg6.relationLc954 at r4987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987
  unfold Seg6.relationRow4988 Seg6.relationLc955 at r4988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988
  unfold Seg6.relationRow4989 at r4989
  unfold Seg6.relationRow4990 at r4990
  unfold Seg6.relationRow4991 at r4991
  unfold Seg6.relationRow4992 Seg6.relationLc956 at r4992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992
  unfold Seg6.relationRow4993 Seg6.relationLc957 at r4993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993
  unfold Seg6.relationRow4994 at r4994
  unfold Seg6.relationRow4995 at r4995
  unfold Seg6.relationRow4996 at r4996
  unfold Seg6.relationRow4997 at r4997
  unfold Seg6.relationRow4998 at r4998
  have hrung173 (bit : Bool) (hbit : rho 2057 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩
        ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩
        ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩
        ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩ := by
    have hnextx : seg6AccX174 rho = seg6AccX173 rho + rho 5385 := by
      unfold seg6AccX174 seg6AccX173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 23]
      ring
    have hnexty : seg6AccY174 rho = seg6AccY173 rho + rho 5386 := by
      unfold seg6AccY174 seg6AccY173
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 23]
      ring
    have hsum : seg6AccX173 rho + seg6AccY173 rho = rho 5378 := by
      unfold seg6AccX173 seg6AccY173
      linear_combination r4985
    have ha0 : (rho 5376 + rho 5377) * (seg6AccX173 rho + seg6AccY173 rho) = rho 5379 := by
      rw [hsum]
      linear_combination r4986
    have ha1 : rho 5377 * seg6AccX173 rho = rho 5380 := by
      unfold seg6AccX173
      linear_combination r4987
    have ha2 : rho 5376 * seg6AccY173 rho = rho 5381 := by
      unfold seg6AccY173
      linear_combination r4988
    have ha3 : 3021 * rho 5380 * rho 5381 = rho 5382 := by
      linear_combination r4989
    have ha4 : rho 5383 * (1 + rho 5382) = rho 5380 + rho 5381 := by
      linear_combination r4990
    have ha5 : rho 5384 * (1 - rho 5382) = rho 5379 - rho 5380 - rho 5381 := by
      linear_combination r4991
    have haddx :
        rho 5383 * (1 + 3021 * (rho 5377 * seg6AccX173 rho) * (rho 5376 * seg6AccY173 rho)) =
          rho 5377 * seg6AccX173 rho + rho 5376 * seg6AccY173 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5384 * (1 - 3021 * (rho 5377 * seg6AccX173 rho) * (rho 5376 * seg6AccY173 rho)) =
          (-1) * (rho 5377 * seg6AccX173 rho) - rho 5376 * seg6AccY173 rho +
            (seg6AccY173 rho - seg6AccX173 rho * (-1)) * (rho 5376 + rho 5377) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5384 * (1 - rho 5382) = rho 5379 - rho 5380 - rho 5381 := ha5
        _ = (-1) * rho 5380 - rho 5381 + (seg6AccY173 rho - seg6AccX173 rho * (-1)) * (rho 5376 + rho 5377) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX174 rho = seg6AccX173 rho - Bool.toZMod bit * (seg6AccX173 rho - rho 5383) := by
      have hd : rho 5385 = Bool.toZMod bit * (rho 5383 - seg6AccX173 rho) := by
        rw [← hbit]
        unfold seg6AccX173
        linear_combination -r4992
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY174 rho = seg6AccY173 rho - Bool.toZMod bit * (seg6AccY173 rho - rho 5384) := by
      have hd : rho 5386 = Bool.toZMod bit * (rho 5384 - seg6AccY173 rho) := by
        rw [← hbit]
        unfold seg6AccY173
        linear_combination -r4993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5376 * rho 5377 = rho 5387 := by linear_combination r4994
    have hd1 : rho 5376 * rho 5376 = rho 5388 := by linear_combination r4995
    have hd2 : rho 5377 * rho 5377 = rho 5389 := by linear_combination r4996
    have hd3 : rho 5390 * (rho 5377 * rho 5377 + rho 5376 * rho 5376 * (-1)) = 2 * (rho 5376 * rho 5377) := by
      rw [hd0, hd1, hd2]
      linear_combination r4997
    have hd4 : rho 5391 * (2 - (rho 5377 * rho 5377 + rho 5376 * rho 5376 * (-1))) = rho 5377 * rho 5377 - rho 5376 * rho 5376 * (-1) := by
      rw [hd1, hd2]
      linear_combination r4998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX173 rho : Seg6.F), (seg6AccY173 rho : Seg6.F)⟩
      ⟨(rho 5376 : Seg6.F), (rho 5377 : Seg6.F)⟩
      ⟨(rho 5383 : Seg6.F), (rho 5384 : Seg6.F)⟩
      ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩
      ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung173

theorem seg6_rows174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow4999 rho ∧ Seg6.relationRow5000 rho ∧ Seg6.relationRow5001 rho ∧ Seg6.relationRow5002 rho ∧ Seg6.relationRow5003 rho ∧ Seg6.relationRow5004 rho ∧ Seg6.relationRow5005 rho ∧ Seg6.relationRow5006 rho ∧ Seg6.relationRow5007 rho ∧ Seg6.relationRow5008 rho ∧ Seg6.relationRow5009 rho ∧ Seg6.relationRow5010 rho ∧ Seg6.relationRow5011 rho ∧ Seg6.relationRow5012 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩

theorem seg6_rung174 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2058 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩
        ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩
        ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩
        ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012⟩ := seg6_rows174 rho h
  unfold Seg6.relationRow4999 Seg6.relationLc958 at r4999
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999
  unfold Seg6.relationRow5000 at r5000
  unfold Seg6.relationRow5001 Seg6.relationLc959 at r5001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001
  unfold Seg6.relationRow5002 Seg6.relationLc960 at r5002
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5002
  unfold Seg6.relationRow5003 at r5003
  unfold Seg6.relationRow5004 at r5004
  unfold Seg6.relationRow5005 at r5005
  unfold Seg6.relationRow5006 Seg6.relationLc961 at r5006
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006
  unfold Seg6.relationRow5007 Seg6.relationLc962 at r5007
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5007
  unfold Seg6.relationRow5008 at r5008
  unfold Seg6.relationRow5009 at r5009
  unfold Seg6.relationRow5010 at r5010
  unfold Seg6.relationRow5011 at r5011
  unfold Seg6.relationRow5012 at r5012
  have hrung174 (bit : Bool) (hbit : rho 2058 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩
        ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩
        ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩
        ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩ := by
    have hnextx : seg6AccX175 rho = seg6AccX174 rho + rho 5399 := by
      unfold seg6AccX175 seg6AccX174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 24]
      ring
    have hnexty : seg6AccY175 rho = seg6AccY174 rho + rho 5400 := by
      unfold seg6AccY175 seg6AccY174
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 24]
      ring
    have hsum : seg6AccX174 rho + seg6AccY174 rho = rho 5392 := by
      unfold seg6AccX174 seg6AccY174
      linear_combination r4999
    have ha0 : (rho 5390 + rho 5391) * (seg6AccX174 rho + seg6AccY174 rho) = rho 5393 := by
      rw [hsum]
      linear_combination r5000
    have ha1 : rho 5391 * seg6AccX174 rho = rho 5394 := by
      unfold seg6AccX174
      linear_combination r5001
    have ha2 : rho 5390 * seg6AccY174 rho = rho 5395 := by
      unfold seg6AccY174
      linear_combination r5002
    have ha3 : 3021 * rho 5394 * rho 5395 = rho 5396 := by
      linear_combination r5003
    have ha4 : rho 5397 * (1 + rho 5396) = rho 5394 + rho 5395 := by
      linear_combination r5004
    have ha5 : rho 5398 * (1 - rho 5396) = rho 5393 - rho 5394 - rho 5395 := by
      linear_combination r5005
    have haddx :
        rho 5397 * (1 + 3021 * (rho 5391 * seg6AccX174 rho) * (rho 5390 * seg6AccY174 rho)) =
          rho 5391 * seg6AccX174 rho + rho 5390 * seg6AccY174 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5398 * (1 - 3021 * (rho 5391 * seg6AccX174 rho) * (rho 5390 * seg6AccY174 rho)) =
          (-1) * (rho 5391 * seg6AccX174 rho) - rho 5390 * seg6AccY174 rho +
            (seg6AccY174 rho - seg6AccX174 rho * (-1)) * (rho 5390 + rho 5391) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5398 * (1 - rho 5396) = rho 5393 - rho 5394 - rho 5395 := ha5
        _ = (-1) * rho 5394 - rho 5395 + (seg6AccY174 rho - seg6AccX174 rho * (-1)) * (rho 5390 + rho 5391) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX175 rho = seg6AccX174 rho - Bool.toZMod bit * (seg6AccX174 rho - rho 5397) := by
      have hd : rho 5399 = Bool.toZMod bit * (rho 5397 - seg6AccX174 rho) := by
        rw [← hbit]
        unfold seg6AccX174
        linear_combination -r5006
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY175 rho = seg6AccY174 rho - Bool.toZMod bit * (seg6AccY174 rho - rho 5398) := by
      have hd : rho 5400 = Bool.toZMod bit * (rho 5398 - seg6AccY174 rho) := by
        rw [← hbit]
        unfold seg6AccY174
        linear_combination -r5007
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5390 * rho 5391 = rho 5401 := by linear_combination r5008
    have hd1 : rho 5390 * rho 5390 = rho 5402 := by linear_combination r5009
    have hd2 : rho 5391 * rho 5391 = rho 5403 := by linear_combination r5010
    have hd3 : rho 5404 * (rho 5391 * rho 5391 + rho 5390 * rho 5390 * (-1)) = 2 * (rho 5390 * rho 5391) := by
      rw [hd0, hd1, hd2]
      linear_combination r5011
    have hd4 : rho 5405 * (2 - (rho 5391 * rho 5391 + rho 5390 * rho 5390 * (-1))) = rho 5391 * rho 5391 - rho 5390 * rho 5390 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5012
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX174 rho : Seg6.F), (seg6AccY174 rho : Seg6.F)⟩
      ⟨(rho 5390 : Seg6.F), (rho 5391 : Seg6.F)⟩
      ⟨(rho 5397 : Seg6.F), (rho 5398 : Seg6.F)⟩
      ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩
      ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung174

theorem seg6_rows175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow5013 rho ∧ Seg6.relationRow5014 rho ∧ Seg6.relationRow5015 rho ∧ Seg6.relationRow5016 rho ∧ Seg6.relationRow5017 rho ∧ Seg6.relationRow5018 rho ∧ Seg6.relationRow5019 rho ∧ Seg6.relationRow5020 rho ∧ Seg6.relationRow5021 rho ∧ Seg6.relationRow5022 rho ∧ Seg6.relationRow5023 rho ∧ Seg6.relationRow5024 rho ∧ Seg6.relationRow5025 rho ∧ Seg6.relationRow5026 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart62 at p62
  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩

theorem seg6_rung175 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 2059 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩
        ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩
        ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩
        ⟨(rho 5418 : Seg6.F), (rho 5419 : Seg6.F)⟩ := by
  obtain ⟨r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026⟩ := seg6_rows175 rho h
  unfold Seg6.relationRow5013 Seg6.relationLc963 at r5013
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013
  unfold Seg6.relationRow5014 at r5014
  unfold Seg6.relationRow5015 Seg6.relationLc964 at r5015
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5015
  unfold Seg6.relationRow5016 Seg6.relationLc965 at r5016
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5016
  unfold Seg6.relationRow5017 at r5017
  unfold Seg6.relationRow5018 at r5018
  unfold Seg6.relationRow5019 at r5019
  unfold Seg6.relationRow5020 Seg6.relationLc966 at r5020
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5020
  unfold Seg6.relationRow5021 Seg6.relationLc967 at r5021
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5021
  unfold Seg6.relationRow5022 at r5022
  unfold Seg6.relationRow5023 at r5023
  unfold Seg6.relationRow5024 at r5024
  unfold Seg6.relationRow5025 at r5025
  unfold Seg6.relationRow5026 at r5026
  have hrung175 (bit : Bool) (hbit : rho 2059 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩
        ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩
        ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩
        ⟨(rho 5418 : Seg6.F), (rho 5419 : Seg6.F)⟩ := by
    have hnextx : seg6AccX176 rho = seg6AccX175 rho + rho 5413 := by
      unfold seg6AccX176 seg6AccX175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5063 14 25]
      ring
    have hnexty : seg6AccY176 rho = seg6AccY175 rho + rho 5414 := by
      unfold seg6AccY176 seg6AccY175
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 5064 14 25]
      ring
    have hsum : seg6AccX175 rho + seg6AccY175 rho = rho 5406 := by
      unfold seg6AccX175 seg6AccY175
      linear_combination r5013
    have ha0 : (rho 5404 + rho 5405) * (seg6AccX175 rho + seg6AccY175 rho) = rho 5407 := by
      rw [hsum]
      linear_combination r5014
    have ha1 : rho 5405 * seg6AccX175 rho = rho 5408 := by
      unfold seg6AccX175
      linear_combination r5015
    have ha2 : rho 5404 * seg6AccY175 rho = rho 5409 := by
      unfold seg6AccY175
      linear_combination r5016
    have ha3 : 3021 * rho 5408 * rho 5409 = rho 5410 := by
      linear_combination r5017
    have ha4 : rho 5411 * (1 + rho 5410) = rho 5408 + rho 5409 := by
      linear_combination r5018
    have ha5 : rho 5412 * (1 - rho 5410) = rho 5407 - rho 5408 - rho 5409 := by
      linear_combination r5019
    have haddx :
        rho 5411 * (1 + 3021 * (rho 5405 * seg6AccX175 rho) * (rho 5404 * seg6AccY175 rho)) =
          rho 5405 * seg6AccX175 rho + rho 5404 * seg6AccY175 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5412 * (1 - 3021 * (rho 5405 * seg6AccX175 rho) * (rho 5404 * seg6AccY175 rho)) =
          (-1) * (rho 5405 * seg6AccX175 rho) - rho 5404 * seg6AccY175 rho +
            (seg6AccY175 rho - seg6AccX175 rho * (-1)) * (rho 5404 + rho 5405) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5412 * (1 - rho 5410) = rho 5407 - rho 5408 - rho 5409 := ha5
        _ = (-1) * rho 5408 - rho 5409 + (seg6AccY175 rho - seg6AccX175 rho * (-1)) * (rho 5404 + rho 5405) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX176 rho = seg6AccX175 rho - Bool.toZMod bit * (seg6AccX175 rho - rho 5411) := by
      have hd : rho 5413 = Bool.toZMod bit * (rho 5411 - seg6AccX175 rho) := by
        rw [← hbit]
        unfold seg6AccX175
        linear_combination -r5020
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY176 rho = seg6AccY175 rho - Bool.toZMod bit * (seg6AccY175 rho - rho 5412) := by
      have hd : rho 5414 = Bool.toZMod bit * (rho 5412 - seg6AccY175 rho) := by
        rw [← hbit]
        unfold seg6AccY175
        linear_combination -r5021
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5404 * rho 5405 = rho 5415 := by linear_combination r5022
    have hd1 : rho 5404 * rho 5404 = rho 5416 := by linear_combination r5023
    have hd2 : rho 5405 * rho 5405 = rho 5417 := by linear_combination r5024
    have hd3 : rho 5418 * (rho 5405 * rho 5405 + rho 5404 * rho 5404 * (-1)) = 2 * (rho 5404 * rho 5405) := by
      rw [hd0, hd1, hd2]
      linear_combination r5025
    have hd4 : rho 5419 * (2 - (rho 5405 * rho 5405 + rho 5404 * rho 5404 * (-1))) = rho 5405 * rho 5405 - rho 5404 * rho 5404 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5026
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX175 rho : Seg6.F), (seg6AccY175 rho : Seg6.F)⟩
      ⟨(rho 5404 : Seg6.F), (rho 5405 : Seg6.F)⟩
      ⟨(rho 5411 : Seg6.F), (rho 5412 : Seg6.F)⟩
      ⟨(seg6AccX176 rho : Seg6.F), (seg6AccY176 rho : Seg6.F)⟩
      ⟨(rho 5418 : Seg6.F), (rho 5419 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung175

theorem seg6_hstep_c15 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 165 ≤ i → i < 176 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung165 rho h bits[165]! (hbitAt 165 (by omega)) hacc hcur
  · exact seg6_rung166 rho h bits[166]! (hbitAt 166 (by omega)) hacc hcur
  · exact seg6_rung167 rho h bits[167]! (hbitAt 167 (by omega)) hacc hcur
  · exact seg6_rung168 rho h bits[168]! (hbitAt 168 (by omega)) hacc hcur
  · exact seg6_rung169 rho h bits[169]! (hbitAt 169 (by omega)) hacc hcur
  · exact seg6_rung170 rho h bits[170]! (hbitAt 170 (by omega)) hacc hcur
  · exact seg6_rung171 rho h bits[171]! (hbitAt 171 (by omega)) hacc hcur
  · exact seg6_rung172 rho h bits[172]! (hbitAt 172 (by omega)) hacc hcur
  · exact seg6_rung173 rho h bits[173]! (hbitAt 173 (by omega)) hacc hcur
  · exact seg6_rung174 rho h bits[174]! (hbitAt 174 (by omega)) hacc hcur
  · exact seg6_rung175 rho h bits[175]! (hbitAt 175 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
