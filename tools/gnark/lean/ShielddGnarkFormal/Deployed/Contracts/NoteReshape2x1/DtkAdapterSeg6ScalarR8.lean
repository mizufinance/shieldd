import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3857 rho ∧ Seg6.relationRow3858 rho ∧ Seg6.relationRow3859 rho ∧ Seg6.relationRow3860 rho ∧ Seg6.relationRow3861 rho ∧ Seg6.relationRow3862 rho ∧ Seg6.relationRow3863 rho ∧ Seg6.relationRow3864 rho ∧ Seg6.relationRow3865 rho ∧ Seg6.relationRow3866 rho ∧ Seg6.relationRow3867 rho ∧ Seg6.relationRow3868 rho ∧ Seg6.relationRow3869 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869⟩

theorem seg6_rung88 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1972 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩
        ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩
        ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩
        ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩ := by
  obtain ⟨r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, r3865, r3866, r3867, r3868, r3869⟩ := seg6_rows88 rho h
  unfold Seg6.relationRow3857 Seg6.relationLc528 at r3857
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3857
  unfold Seg6.relationRow3858 Seg6.relationLc529 at r3858
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3858
  unfold Seg6.relationRow3859 Seg6.relationLc530 at r3859
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3859
  unfold Seg6.relationRow3860 at r3860
  unfold Seg6.relationRow3861 at r3861
  unfold Seg6.relationRow3862 at r3862
  unfold Seg6.relationRow3863 Seg6.relationLc531 at r3863
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3863
  unfold Seg6.relationRow3864 Seg6.relationLc532 at r3864
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3864
  unfold Seg6.relationRow3865 at r3865
  unfold Seg6.relationRow3866 at r3866
  unfold Seg6.relationRow3867 at r3867
  unfold Seg6.relationRow3868 at r3868
  unfold Seg6.relationRow3869 at r3869
  have hrung88 (bit : Bool) (hbit : rho 1972 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩
        ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩
        ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩
        ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩ := by
    have hnextx : seg6AccX89 rho = seg6AccX88 rho + rho 4256 := by
      unfold seg6AccX89 seg6AccX88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 88]
      ring
    have hnexty : seg6AccY89 rho = seg6AccY88 rho + rho 4257 := by
      unfold seg6AccY89 seg6AccY88
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 88]
      ring
    have ha0 : (rho 4248 + rho 4249) * (seg6AccX88 rho + seg6AccY88 rho) = rho 4250 := by
      unfold seg6AccX88 seg6AccY88
      linear_combination r3857
    have ha1 : rho 4249 * seg6AccX88 rho = rho 4251 := by
      unfold seg6AccX88
      linear_combination r3858
    have ha2 : rho 4248 * seg6AccY88 rho = rho 4252 := by
      unfold seg6AccY88
      linear_combination r3859
    have ha3 : 3021 * rho 4251 * rho 4252 = rho 4253 := by
      linear_combination r3860
    have ha4 : rho 4254 * (1 + rho 4253) = rho 4251 + rho 4252 := by
      linear_combination r3861
    have ha5 : rho 4255 * (1 - rho 4253) = rho 4250 - rho 4251 - rho 4252 := by
      linear_combination r3862
    have haddx :
        rho 4254 * (1 + 3021 * (rho 4249 * seg6AccX88 rho) * (rho 4248 * seg6AccY88 rho)) =
          rho 4249 * seg6AccX88 rho + rho 4248 * seg6AccY88 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4255 * (1 - 3021 * (rho 4249 * seg6AccX88 rho) * (rho 4248 * seg6AccY88 rho)) =
          (-1) * (rho 4249 * seg6AccX88 rho) - rho 4248 * seg6AccY88 rho +
            (seg6AccY88 rho - seg6AccX88 rho * (-1)) * (rho 4248 + rho 4249) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4255 * (1 - rho 4253) = rho 4250 - rho 4251 - rho 4252 := ha5
        _ = (-1) * rho 4251 - rho 4252 + (seg6AccY88 rho - seg6AccX88 rho * (-1)) * (rho 4248 + rho 4249) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX89 rho = seg6AccX88 rho - Bool.toZMod bit * (seg6AccX88 rho - rho 4254) := by
      have hd : rho 4256 = Bool.toZMod bit * (rho 4254 - seg6AccX88 rho) := by
        rw [← hbit]
        unfold seg6AccX88
        linear_combination -r3863
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY89 rho = seg6AccY88 rho - Bool.toZMod bit * (seg6AccY88 rho - rho 4255) := by
      have hd : rho 4257 = Bool.toZMod bit * (rho 4255 - seg6AccY88 rho) := by
        rw [← hbit]
        unfold seg6AccY88
        linear_combination -r3864
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4248 * rho 4249 = rho 4258 := by linear_combination r3865
    have hd1 : rho 4248 * rho 4248 = rho 4259 := by linear_combination r3866
    have hd2 : rho 4249 * rho 4249 = rho 4260 := by linear_combination r3867
    have hd3 : rho 4261 * (rho 4249 * rho 4249 + rho 4248 * rho 4248 * (-1)) = 2 * (rho 4248 * rho 4249) := by
      rw [hd0, hd1, hd2]
      linear_combination r3868
    have hd4 : rho 4262 * (2 - (rho 4249 * rho 4249 + rho 4248 * rho 4248 * (-1))) = rho 4249 * rho 4249 - rho 4248 * rho 4248 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3869
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX88 rho : Seg6.F), (seg6AccY88 rho : Seg6.F)⟩
      ⟨(rho 4248 : Seg6.F), (rho 4249 : Seg6.F)⟩
      ⟨(rho 4254 : Seg6.F), (rho 4255 : Seg6.F)⟩
      ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩
      ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung88

theorem seg6_rows89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3870 rho ∧ Seg6.relationRow3871 rho ∧ Seg6.relationRow3872 rho ∧ Seg6.relationRow3873 rho ∧ Seg6.relationRow3874 rho ∧ Seg6.relationRow3875 rho ∧ Seg6.relationRow3876 rho ∧ Seg6.relationRow3877 rho ∧ Seg6.relationRow3878 rho ∧ Seg6.relationRow3879 rho ∧ Seg6.relationRow3880 rho ∧ Seg6.relationRow3881 rho ∧ Seg6.relationRow3882 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882⟩

theorem seg6_rung89 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1973 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩
        ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩
        ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩
        ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩ := by
  obtain ⟨r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882⟩ := seg6_rows89 rho h
  unfold Seg6.relationRow3870 Seg6.relationLc533 at r3870
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3870
  unfold Seg6.relationRow3871 Seg6.relationLc534 at r3871
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3871
  unfold Seg6.relationRow3872 Seg6.relationLc535 at r3872
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3872
  unfold Seg6.relationRow3873 at r3873
  unfold Seg6.relationRow3874 at r3874
  unfold Seg6.relationRow3875 at r3875
  unfold Seg6.relationRow3876 Seg6.relationLc536 at r3876
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3876
  unfold Seg6.relationRow3877 Seg6.relationLc537 at r3877
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3877
  unfold Seg6.relationRow3878 at r3878
  unfold Seg6.relationRow3879 at r3879
  unfold Seg6.relationRow3880 at r3880
  unfold Seg6.relationRow3881 at r3881
  unfold Seg6.relationRow3882 at r3882
  have hrung89 (bit : Bool) (hbit : rho 1973 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩
        ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩
        ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩
        ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩ := by
    have hnextx : seg6AccX90 rho = seg6AccX89 rho + rho 4269 := by
      unfold seg6AccX90 seg6AccX89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 89]
      ring
    have hnexty : seg6AccY90 rho = seg6AccY89 rho + rho 4270 := by
      unfold seg6AccY90 seg6AccY89
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 89]
      ring
    have ha0 : (rho 4261 + rho 4262) * (seg6AccX89 rho + seg6AccY89 rho) = rho 4263 := by
      unfold seg6AccX89 seg6AccY89
      linear_combination r3870
    have ha1 : rho 4262 * seg6AccX89 rho = rho 4264 := by
      unfold seg6AccX89
      linear_combination r3871
    have ha2 : rho 4261 * seg6AccY89 rho = rho 4265 := by
      unfold seg6AccY89
      linear_combination r3872
    have ha3 : 3021 * rho 4264 * rho 4265 = rho 4266 := by
      linear_combination r3873
    have ha4 : rho 4267 * (1 + rho 4266) = rho 4264 + rho 4265 := by
      linear_combination r3874
    have ha5 : rho 4268 * (1 - rho 4266) = rho 4263 - rho 4264 - rho 4265 := by
      linear_combination r3875
    have haddx :
        rho 4267 * (1 + 3021 * (rho 4262 * seg6AccX89 rho) * (rho 4261 * seg6AccY89 rho)) =
          rho 4262 * seg6AccX89 rho + rho 4261 * seg6AccY89 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4268 * (1 - 3021 * (rho 4262 * seg6AccX89 rho) * (rho 4261 * seg6AccY89 rho)) =
          (-1) * (rho 4262 * seg6AccX89 rho) - rho 4261 * seg6AccY89 rho +
            (seg6AccY89 rho - seg6AccX89 rho * (-1)) * (rho 4261 + rho 4262) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4268 * (1 - rho 4266) = rho 4263 - rho 4264 - rho 4265 := ha5
        _ = (-1) * rho 4264 - rho 4265 + (seg6AccY89 rho - seg6AccX89 rho * (-1)) * (rho 4261 + rho 4262) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX90 rho = seg6AccX89 rho - Bool.toZMod bit * (seg6AccX89 rho - rho 4267) := by
      have hd : rho 4269 = Bool.toZMod bit * (rho 4267 - seg6AccX89 rho) := by
        rw [← hbit]
        unfold seg6AccX89
        linear_combination -r3876
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY90 rho = seg6AccY89 rho - Bool.toZMod bit * (seg6AccY89 rho - rho 4268) := by
      have hd : rho 4270 = Bool.toZMod bit * (rho 4268 - seg6AccY89 rho) := by
        rw [← hbit]
        unfold seg6AccY89
        linear_combination -r3877
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4261 * rho 4262 = rho 4271 := by linear_combination r3878
    have hd1 : rho 4261 * rho 4261 = rho 4272 := by linear_combination r3879
    have hd2 : rho 4262 * rho 4262 = rho 4273 := by linear_combination r3880
    have hd3 : rho 4274 * (rho 4262 * rho 4262 + rho 4261 * rho 4261 * (-1)) = 2 * (rho 4261 * rho 4262) := by
      rw [hd0, hd1, hd2]
      linear_combination r3881
    have hd4 : rho 4275 * (2 - (rho 4262 * rho 4262 + rho 4261 * rho 4261 * (-1))) = rho 4262 * rho 4262 - rho 4261 * rho 4261 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3882
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX89 rho : Seg6.F), (seg6AccY89 rho : Seg6.F)⟩
      ⟨(rho 4261 : Seg6.F), (rho 4262 : Seg6.F)⟩
      ⟨(rho 4267 : Seg6.F), (rho 4268 : Seg6.F)⟩
      ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩
      ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung89

theorem seg6_rows90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3883 rho ∧ Seg6.relationRow3884 rho ∧ Seg6.relationRow3885 rho ∧ Seg6.relationRow3886 rho ∧ Seg6.relationRow3887 rho ∧ Seg6.relationRow3888 rho ∧ Seg6.relationRow3889 rho ∧ Seg6.relationRow3890 rho ∧ Seg6.relationRow3891 rho ∧ Seg6.relationRow3892 rho ∧ Seg6.relationRow3893 rho ∧ Seg6.relationRow3894 rho ∧ Seg6.relationRow3895 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895⟩

theorem seg6_rung90 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1974 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩
        ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩
        ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩
        ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩ := by
  obtain ⟨r3883, r3884, r3885, r3886, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895⟩ := seg6_rows90 rho h
  unfold Seg6.relationRow3883 Seg6.relationLc538 at r3883
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3883
  unfold Seg6.relationRow3884 Seg6.relationLc539 at r3884
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3884
  unfold Seg6.relationRow3885 Seg6.relationLc540 at r3885
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3885
  unfold Seg6.relationRow3886 at r3886
  unfold Seg6.relationRow3887 at r3887
  unfold Seg6.relationRow3888 at r3888
  unfold Seg6.relationRow3889 Seg6.relationLc541 at r3889
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3889
  unfold Seg6.relationRow3890 Seg6.relationLc542 at r3890
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3890
  unfold Seg6.relationRow3891 at r3891
  unfold Seg6.relationRow3892 at r3892
  unfold Seg6.relationRow3893 at r3893
  unfold Seg6.relationRow3894 at r3894
  unfold Seg6.relationRow3895 at r3895
  have hrung90 (bit : Bool) (hbit : rho 1974 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩
        ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩
        ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩
        ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩ := by
    have hnextx : seg6AccX91 rho = seg6AccX90 rho + rho 4282 := by
      unfold seg6AccX91 seg6AccX90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 90]
      ring
    have hnexty : seg6AccY91 rho = seg6AccY90 rho + rho 4283 := by
      unfold seg6AccY91 seg6AccY90
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 90]
      ring
    have ha0 : (rho 4274 + rho 4275) * (seg6AccX90 rho + seg6AccY90 rho) = rho 4276 := by
      unfold seg6AccX90 seg6AccY90
      linear_combination r3883
    have ha1 : rho 4275 * seg6AccX90 rho = rho 4277 := by
      unfold seg6AccX90
      linear_combination r3884
    have ha2 : rho 4274 * seg6AccY90 rho = rho 4278 := by
      unfold seg6AccY90
      linear_combination r3885
    have ha3 : 3021 * rho 4277 * rho 4278 = rho 4279 := by
      linear_combination r3886
    have ha4 : rho 4280 * (1 + rho 4279) = rho 4277 + rho 4278 := by
      linear_combination r3887
    have ha5 : rho 4281 * (1 - rho 4279) = rho 4276 - rho 4277 - rho 4278 := by
      linear_combination r3888
    have haddx :
        rho 4280 * (1 + 3021 * (rho 4275 * seg6AccX90 rho) * (rho 4274 * seg6AccY90 rho)) =
          rho 4275 * seg6AccX90 rho + rho 4274 * seg6AccY90 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4281 * (1 - 3021 * (rho 4275 * seg6AccX90 rho) * (rho 4274 * seg6AccY90 rho)) =
          (-1) * (rho 4275 * seg6AccX90 rho) - rho 4274 * seg6AccY90 rho +
            (seg6AccY90 rho - seg6AccX90 rho * (-1)) * (rho 4274 + rho 4275) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4281 * (1 - rho 4279) = rho 4276 - rho 4277 - rho 4278 := ha5
        _ = (-1) * rho 4277 - rho 4278 + (seg6AccY90 rho - seg6AccX90 rho * (-1)) * (rho 4274 + rho 4275) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX91 rho = seg6AccX90 rho - Bool.toZMod bit * (seg6AccX90 rho - rho 4280) := by
      have hd : rho 4282 = Bool.toZMod bit * (rho 4280 - seg6AccX90 rho) := by
        rw [← hbit]
        unfold seg6AccX90
        linear_combination -r3889
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY91 rho = seg6AccY90 rho - Bool.toZMod bit * (seg6AccY90 rho - rho 4281) := by
      have hd : rho 4283 = Bool.toZMod bit * (rho 4281 - seg6AccY90 rho) := by
        rw [← hbit]
        unfold seg6AccY90
        linear_combination -r3890
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4274 * rho 4275 = rho 4284 := by linear_combination r3891
    have hd1 : rho 4274 * rho 4274 = rho 4285 := by linear_combination r3892
    have hd2 : rho 4275 * rho 4275 = rho 4286 := by linear_combination r3893
    have hd3 : rho 4287 * (rho 4275 * rho 4275 + rho 4274 * rho 4274 * (-1)) = 2 * (rho 4274 * rho 4275) := by
      rw [hd0, hd1, hd2]
      linear_combination r3894
    have hd4 : rho 4288 * (2 - (rho 4275 * rho 4275 + rho 4274 * rho 4274 * (-1))) = rho 4275 * rho 4275 - rho 4274 * rho 4274 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3895
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX90 rho : Seg6.F), (seg6AccY90 rho : Seg6.F)⟩
      ⟨(rho 4274 : Seg6.F), (rho 4275 : Seg6.F)⟩
      ⟨(rho 4280 : Seg6.F), (rho 4281 : Seg6.F)⟩
      ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩
      ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung90

theorem seg6_rows91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3896 rho ∧ Seg6.relationRow3897 rho ∧ Seg6.relationRow3898 rho ∧ Seg6.relationRow3899 rho ∧ Seg6.relationRow3900 rho ∧ Seg6.relationRow3901 rho ∧ Seg6.relationRow3902 rho ∧ Seg6.relationRow3903 rho ∧ Seg6.relationRow3904 rho ∧ Seg6.relationRow3905 rho ∧ Seg6.relationRow3906 rho ∧ Seg6.relationRow3907 rho ∧ Seg6.relationRow3908 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908⟩

theorem seg6_rung91 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1975 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩
        ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩
        ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩
        ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩ := by
  obtain ⟨r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908⟩ := seg6_rows91 rho h
  unfold Seg6.relationRow3896 Seg6.relationLc543 at r3896
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3896
  unfold Seg6.relationRow3897 Seg6.relationLc544 at r3897
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3897
  unfold Seg6.relationRow3898 Seg6.relationLc545 at r3898
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3898
  unfold Seg6.relationRow3899 at r3899
  unfold Seg6.relationRow3900 at r3900
  unfold Seg6.relationRow3901 at r3901
  unfold Seg6.relationRow3902 Seg6.relationLc546 at r3902
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3902
  unfold Seg6.relationRow3903 Seg6.relationLc547 at r3903
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3903
  unfold Seg6.relationRow3904 at r3904
  unfold Seg6.relationRow3905 at r3905
  unfold Seg6.relationRow3906 at r3906
  unfold Seg6.relationRow3907 at r3907
  unfold Seg6.relationRow3908 at r3908
  have hrung91 (bit : Bool) (hbit : rho 1975 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩
        ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩
        ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩
        ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩ := by
    have hnextx : seg6AccX92 rho = seg6AccX91 rho + rho 4295 := by
      unfold seg6AccX92 seg6AccX91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 91]
      ring
    have hnexty : seg6AccY92 rho = seg6AccY91 rho + rho 4296 := by
      unfold seg6AccY92 seg6AccY91
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 91]
      ring
    have ha0 : (rho 4287 + rho 4288) * (seg6AccX91 rho + seg6AccY91 rho) = rho 4289 := by
      unfold seg6AccX91 seg6AccY91
      linear_combination r3896
    have ha1 : rho 4288 * seg6AccX91 rho = rho 4290 := by
      unfold seg6AccX91
      linear_combination r3897
    have ha2 : rho 4287 * seg6AccY91 rho = rho 4291 := by
      unfold seg6AccY91
      linear_combination r3898
    have ha3 : 3021 * rho 4290 * rho 4291 = rho 4292 := by
      linear_combination r3899
    have ha4 : rho 4293 * (1 + rho 4292) = rho 4290 + rho 4291 := by
      linear_combination r3900
    have ha5 : rho 4294 * (1 - rho 4292) = rho 4289 - rho 4290 - rho 4291 := by
      linear_combination r3901
    have haddx :
        rho 4293 * (1 + 3021 * (rho 4288 * seg6AccX91 rho) * (rho 4287 * seg6AccY91 rho)) =
          rho 4288 * seg6AccX91 rho + rho 4287 * seg6AccY91 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4294 * (1 - 3021 * (rho 4288 * seg6AccX91 rho) * (rho 4287 * seg6AccY91 rho)) =
          (-1) * (rho 4288 * seg6AccX91 rho) - rho 4287 * seg6AccY91 rho +
            (seg6AccY91 rho - seg6AccX91 rho * (-1)) * (rho 4287 + rho 4288) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4294 * (1 - rho 4292) = rho 4289 - rho 4290 - rho 4291 := ha5
        _ = (-1) * rho 4290 - rho 4291 + (seg6AccY91 rho - seg6AccX91 rho * (-1)) * (rho 4287 + rho 4288) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX92 rho = seg6AccX91 rho - Bool.toZMod bit * (seg6AccX91 rho - rho 4293) := by
      have hd : rho 4295 = Bool.toZMod bit * (rho 4293 - seg6AccX91 rho) := by
        rw [← hbit]
        unfold seg6AccX91
        linear_combination -r3902
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY92 rho = seg6AccY91 rho - Bool.toZMod bit * (seg6AccY91 rho - rho 4294) := by
      have hd : rho 4296 = Bool.toZMod bit * (rho 4294 - seg6AccY91 rho) := by
        rw [← hbit]
        unfold seg6AccY91
        linear_combination -r3903
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4287 * rho 4288 = rho 4297 := by linear_combination r3904
    have hd1 : rho 4287 * rho 4287 = rho 4298 := by linear_combination r3905
    have hd2 : rho 4288 * rho 4288 = rho 4299 := by linear_combination r3906
    have hd3 : rho 4300 * (rho 4288 * rho 4288 + rho 4287 * rho 4287 * (-1)) = 2 * (rho 4287 * rho 4288) := by
      rw [hd0, hd1, hd2]
      linear_combination r3907
    have hd4 : rho 4301 * (2 - (rho 4288 * rho 4288 + rho 4287 * rho 4287 * (-1))) = rho 4288 * rho 4288 - rho 4287 * rho 4287 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3908
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX91 rho : Seg6.F), (seg6AccY91 rho : Seg6.F)⟩
      ⟨(rho 4287 : Seg6.F), (rho 4288 : Seg6.F)⟩
      ⟨(rho 4293 : Seg6.F), (rho 4294 : Seg6.F)⟩
      ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩
      ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung91

theorem seg6_rows92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3909 rho ∧ Seg6.relationRow3910 rho ∧ Seg6.relationRow3911 rho ∧ Seg6.relationRow3912 rho ∧ Seg6.relationRow3913 rho ∧ Seg6.relationRow3914 rho ∧ Seg6.relationRow3915 rho ∧ Seg6.relationRow3916 rho ∧ Seg6.relationRow3917 rho ∧ Seg6.relationRow3918 rho ∧ Seg6.relationRow3919 rho ∧ Seg6.relationRow3920 rho ∧ Seg6.relationRow3921 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨r3920, r3921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921⟩

theorem seg6_rung92 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1976 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩
        ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩
        ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩
        ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩ := by
  obtain ⟨r3909, r3910, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921⟩ := seg6_rows92 rho h
  unfold Seg6.relationRow3909 Seg6.relationLc548 at r3909
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3909
  unfold Seg6.relationRow3910 Seg6.relationLc549 at r3910
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3910
  unfold Seg6.relationRow3911 Seg6.relationLc550 at r3911
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3911
  unfold Seg6.relationRow3912 at r3912
  unfold Seg6.relationRow3913 at r3913
  unfold Seg6.relationRow3914 at r3914
  unfold Seg6.relationRow3915 Seg6.relationLc551 at r3915
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3915
  unfold Seg6.relationRow3916 Seg6.relationLc552 at r3916
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3916
  unfold Seg6.relationRow3917 at r3917
  unfold Seg6.relationRow3918 at r3918
  unfold Seg6.relationRow3919 at r3919
  unfold Seg6.relationRow3920 at r3920
  unfold Seg6.relationRow3921 at r3921
  have hrung92 (bit : Bool) (hbit : rho 1976 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩
        ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩
        ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩
        ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩ := by
    have hnextx : seg6AccX93 rho = seg6AccX92 rho + rho 4308 := by
      unfold seg6AccX93 seg6AccX92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 92]
      ring
    have hnexty : seg6AccY93 rho = seg6AccY92 rho + rho 4309 := by
      unfold seg6AccY93 seg6AccY92
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 92]
      ring
    have ha0 : (rho 4300 + rho 4301) * (seg6AccX92 rho + seg6AccY92 rho) = rho 4302 := by
      unfold seg6AccX92 seg6AccY92
      linear_combination r3909
    have ha1 : rho 4301 * seg6AccX92 rho = rho 4303 := by
      unfold seg6AccX92
      linear_combination r3910
    have ha2 : rho 4300 * seg6AccY92 rho = rho 4304 := by
      unfold seg6AccY92
      linear_combination r3911
    have ha3 : 3021 * rho 4303 * rho 4304 = rho 4305 := by
      linear_combination r3912
    have ha4 : rho 4306 * (1 + rho 4305) = rho 4303 + rho 4304 := by
      linear_combination r3913
    have ha5 : rho 4307 * (1 - rho 4305) = rho 4302 - rho 4303 - rho 4304 := by
      linear_combination r3914
    have haddx :
        rho 4306 * (1 + 3021 * (rho 4301 * seg6AccX92 rho) * (rho 4300 * seg6AccY92 rho)) =
          rho 4301 * seg6AccX92 rho + rho 4300 * seg6AccY92 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4307 * (1 - 3021 * (rho 4301 * seg6AccX92 rho) * (rho 4300 * seg6AccY92 rho)) =
          (-1) * (rho 4301 * seg6AccX92 rho) - rho 4300 * seg6AccY92 rho +
            (seg6AccY92 rho - seg6AccX92 rho * (-1)) * (rho 4300 + rho 4301) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4307 * (1 - rho 4305) = rho 4302 - rho 4303 - rho 4304 := ha5
        _ = (-1) * rho 4303 - rho 4304 + (seg6AccY92 rho - seg6AccX92 rho * (-1)) * (rho 4300 + rho 4301) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX93 rho = seg6AccX92 rho - Bool.toZMod bit * (seg6AccX92 rho - rho 4306) := by
      have hd : rho 4308 = Bool.toZMod bit * (rho 4306 - seg6AccX92 rho) := by
        rw [← hbit]
        unfold seg6AccX92
        linear_combination -r3915
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY93 rho = seg6AccY92 rho - Bool.toZMod bit * (seg6AccY92 rho - rho 4307) := by
      have hd : rho 4309 = Bool.toZMod bit * (rho 4307 - seg6AccY92 rho) := by
        rw [← hbit]
        unfold seg6AccY92
        linear_combination -r3916
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4300 * rho 4301 = rho 4310 := by linear_combination r3917
    have hd1 : rho 4300 * rho 4300 = rho 4311 := by linear_combination r3918
    have hd2 : rho 4301 * rho 4301 = rho 4312 := by linear_combination r3919
    have hd3 : rho 4313 * (rho 4301 * rho 4301 + rho 4300 * rho 4300 * (-1)) = 2 * (rho 4300 * rho 4301) := by
      rw [hd0, hd1, hd2]
      linear_combination r3920
    have hd4 : rho 4314 * (2 - (rho 4301 * rho 4301 + rho 4300 * rho 4300 * (-1))) = rho 4301 * rho 4301 - rho 4300 * rho 4300 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3921
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX92 rho : Seg6.F), (seg6AccY92 rho : Seg6.F)⟩
      ⟨(rho 4300 : Seg6.F), (rho 4301 : Seg6.F)⟩
      ⟨(rho 4306 : Seg6.F), (rho 4307 : Seg6.F)⟩
      ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩
      ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung92

theorem seg6_rows93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3922 rho ∧ Seg6.relationRow3923 rho ∧ Seg6.relationRow3924 rho ∧ Seg6.relationRow3925 rho ∧ Seg6.relationRow3926 rho ∧ Seg6.relationRow3927 rho ∧ Seg6.relationRow3928 rho ∧ Seg6.relationRow3929 rho ∧ Seg6.relationRow3930 rho ∧ Seg6.relationRow3931 rho ∧ Seg6.relationRow3932 rho ∧ Seg6.relationRow3933 rho ∧ Seg6.relationRow3934 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨_, _, r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934⟩

theorem seg6_rung93 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1977 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩
        ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩
        ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩
        ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩ := by
  obtain ⟨r3922, r3923, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934⟩ := seg6_rows93 rho h
  unfold Seg6.relationRow3922 Seg6.relationLc553 at r3922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3922
  unfold Seg6.relationRow3923 Seg6.relationLc554 at r3923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3923
  unfold Seg6.relationRow3924 Seg6.relationLc555 at r3924
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3924
  unfold Seg6.relationRow3925 at r3925
  unfold Seg6.relationRow3926 at r3926
  unfold Seg6.relationRow3927 at r3927
  unfold Seg6.relationRow3928 Seg6.relationLc556 at r3928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3928
  unfold Seg6.relationRow3929 Seg6.relationLc557 at r3929
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3929
  unfold Seg6.relationRow3930 at r3930
  unfold Seg6.relationRow3931 at r3931
  unfold Seg6.relationRow3932 at r3932
  unfold Seg6.relationRow3933 at r3933
  unfold Seg6.relationRow3934 at r3934
  have hrung93 (bit : Bool) (hbit : rho 1977 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩
        ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩
        ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩
        ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩ := by
    have hnextx : seg6AccX94 rho = seg6AccX93 rho + rho 4321 := by
      unfold seg6AccX94 seg6AccX93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 93]
      ring
    have hnexty : seg6AccY94 rho = seg6AccY93 rho + rho 4322 := by
      unfold seg6AccY94 seg6AccY93
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 93]
      ring
    have ha0 : (rho 4313 + rho 4314) * (seg6AccX93 rho + seg6AccY93 rho) = rho 4315 := by
      unfold seg6AccX93 seg6AccY93
      linear_combination r3922
    have ha1 : rho 4314 * seg6AccX93 rho = rho 4316 := by
      unfold seg6AccX93
      linear_combination r3923
    have ha2 : rho 4313 * seg6AccY93 rho = rho 4317 := by
      unfold seg6AccY93
      linear_combination r3924
    have ha3 : 3021 * rho 4316 * rho 4317 = rho 4318 := by
      linear_combination r3925
    have ha4 : rho 4319 * (1 + rho 4318) = rho 4316 + rho 4317 := by
      linear_combination r3926
    have ha5 : rho 4320 * (1 - rho 4318) = rho 4315 - rho 4316 - rho 4317 := by
      linear_combination r3927
    have haddx :
        rho 4319 * (1 + 3021 * (rho 4314 * seg6AccX93 rho) * (rho 4313 * seg6AccY93 rho)) =
          rho 4314 * seg6AccX93 rho + rho 4313 * seg6AccY93 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4320 * (1 - 3021 * (rho 4314 * seg6AccX93 rho) * (rho 4313 * seg6AccY93 rho)) =
          (-1) * (rho 4314 * seg6AccX93 rho) - rho 4313 * seg6AccY93 rho +
            (seg6AccY93 rho - seg6AccX93 rho * (-1)) * (rho 4313 + rho 4314) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4320 * (1 - rho 4318) = rho 4315 - rho 4316 - rho 4317 := ha5
        _ = (-1) * rho 4316 - rho 4317 + (seg6AccY93 rho - seg6AccX93 rho * (-1)) * (rho 4313 + rho 4314) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX94 rho = seg6AccX93 rho - Bool.toZMod bit * (seg6AccX93 rho - rho 4319) := by
      have hd : rho 4321 = Bool.toZMod bit * (rho 4319 - seg6AccX93 rho) := by
        rw [← hbit]
        unfold seg6AccX93
        linear_combination -r3928
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY94 rho = seg6AccY93 rho - Bool.toZMod bit * (seg6AccY93 rho - rho 4320) := by
      have hd : rho 4322 = Bool.toZMod bit * (rho 4320 - seg6AccY93 rho) := by
        rw [← hbit]
        unfold seg6AccY93
        linear_combination -r3929
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4313 * rho 4314 = rho 4323 := by linear_combination r3930
    have hd1 : rho 4313 * rho 4313 = rho 4324 := by linear_combination r3931
    have hd2 : rho 4314 * rho 4314 = rho 4325 := by linear_combination r3932
    have hd3 : rho 4326 * (rho 4314 * rho 4314 + rho 4313 * rho 4313 * (-1)) = 2 * (rho 4313 * rho 4314) := by
      rw [hd0, hd1, hd2]
      linear_combination r3933
    have hd4 : rho 4327 * (2 - (rho 4314 * rho 4314 + rho 4313 * rho 4313 * (-1))) = rho 4314 * rho 4314 - rho 4313 * rho 4313 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3934
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX93 rho : Seg6.F), (seg6AccY93 rho : Seg6.F)⟩
      ⟨(rho 4313 : Seg6.F), (rho 4314 : Seg6.F)⟩
      ⟨(rho 4319 : Seg6.F), (rho 4320 : Seg6.F)⟩
      ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩
      ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung93

theorem seg6_rows94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3935 rho ∧ Seg6.relationRow3936 rho ∧ Seg6.relationRow3937 rho ∧ Seg6.relationRow3938 rho ∧ Seg6.relationRow3939 rho ∧ Seg6.relationRow3940 rho ∧ Seg6.relationRow3941 rho ∧ Seg6.relationRow3942 rho ∧ Seg6.relationRow3943 rho ∧ Seg6.relationRow3944 rho ∧ Seg6.relationRow3945 rho ∧ Seg6.relationRow3946 rho ∧ Seg6.relationRow3947 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947⟩

theorem seg6_rung94 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1978 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩
        ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩
        ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩
        ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩ := by
  obtain ⟨r3935, r3936, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947⟩ := seg6_rows94 rho h
  unfold Seg6.relationRow3935 Seg6.relationLc558 at r3935
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3935
  unfold Seg6.relationRow3936 Seg6.relationLc559 at r3936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3936
  unfold Seg6.relationRow3937 Seg6.relationLc560 at r3937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3937
  unfold Seg6.relationRow3938 at r3938
  unfold Seg6.relationRow3939 at r3939
  unfold Seg6.relationRow3940 at r3940
  unfold Seg6.relationRow3941 Seg6.relationLc561 at r3941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3941
  unfold Seg6.relationRow3942 Seg6.relationLc562 at r3942
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3942
  unfold Seg6.relationRow3943 at r3943
  unfold Seg6.relationRow3944 at r3944
  unfold Seg6.relationRow3945 at r3945
  unfold Seg6.relationRow3946 at r3946
  unfold Seg6.relationRow3947 at r3947
  have hrung94 (bit : Bool) (hbit : rho 1978 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩
        ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩
        ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩
        ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩ := by
    have hnextx : seg6AccX95 rho = seg6AccX94 rho + rho 4334 := by
      unfold seg6AccX95 seg6AccX94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 94]
      ring
    have hnexty : seg6AccY95 rho = seg6AccY94 rho + rho 4335 := by
      unfold seg6AccY95 seg6AccY94
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 94]
      ring
    have ha0 : (rho 4326 + rho 4327) * (seg6AccX94 rho + seg6AccY94 rho) = rho 4328 := by
      unfold seg6AccX94 seg6AccY94
      linear_combination r3935
    have ha1 : rho 4327 * seg6AccX94 rho = rho 4329 := by
      unfold seg6AccX94
      linear_combination r3936
    have ha2 : rho 4326 * seg6AccY94 rho = rho 4330 := by
      unfold seg6AccY94
      linear_combination r3937
    have ha3 : 3021 * rho 4329 * rho 4330 = rho 4331 := by
      linear_combination r3938
    have ha4 : rho 4332 * (1 + rho 4331) = rho 4329 + rho 4330 := by
      linear_combination r3939
    have ha5 : rho 4333 * (1 - rho 4331) = rho 4328 - rho 4329 - rho 4330 := by
      linear_combination r3940
    have haddx :
        rho 4332 * (1 + 3021 * (rho 4327 * seg6AccX94 rho) * (rho 4326 * seg6AccY94 rho)) =
          rho 4327 * seg6AccX94 rho + rho 4326 * seg6AccY94 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4333 * (1 - 3021 * (rho 4327 * seg6AccX94 rho) * (rho 4326 * seg6AccY94 rho)) =
          (-1) * (rho 4327 * seg6AccX94 rho) - rho 4326 * seg6AccY94 rho +
            (seg6AccY94 rho - seg6AccX94 rho * (-1)) * (rho 4326 + rho 4327) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4333 * (1 - rho 4331) = rho 4328 - rho 4329 - rho 4330 := ha5
        _ = (-1) * rho 4329 - rho 4330 + (seg6AccY94 rho - seg6AccX94 rho * (-1)) * (rho 4326 + rho 4327) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX95 rho = seg6AccX94 rho - Bool.toZMod bit * (seg6AccX94 rho - rho 4332) := by
      have hd : rho 4334 = Bool.toZMod bit * (rho 4332 - seg6AccX94 rho) := by
        rw [← hbit]
        unfold seg6AccX94
        linear_combination -r3941
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY95 rho = seg6AccY94 rho - Bool.toZMod bit * (seg6AccY94 rho - rho 4333) := by
      have hd : rho 4335 = Bool.toZMod bit * (rho 4333 - seg6AccY94 rho) := by
        rw [← hbit]
        unfold seg6AccY94
        linear_combination -r3942
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4326 * rho 4327 = rho 4336 := by linear_combination r3943
    have hd1 : rho 4326 * rho 4326 = rho 4337 := by linear_combination r3944
    have hd2 : rho 4327 * rho 4327 = rho 4338 := by linear_combination r3945
    have hd3 : rho 4339 * (rho 4327 * rho 4327 + rho 4326 * rho 4326 * (-1)) = 2 * (rho 4326 * rho 4327) := by
      rw [hd0, hd1, hd2]
      linear_combination r3946
    have hd4 : rho 4340 * (2 - (rho 4327 * rho 4327 + rho 4326 * rho 4326 * (-1))) = rho 4327 * rho 4327 - rho 4326 * rho 4326 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3947
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX94 rho : Seg6.F), (seg6AccY94 rho : Seg6.F)⟩
      ⟨(rho 4326 : Seg6.F), (rho 4327 : Seg6.F)⟩
      ⟨(rho 4332 : Seg6.F), (rho 4333 : Seg6.F)⟩
      ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩
      ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung94

theorem seg6_rows95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3948 rho ∧ Seg6.relationRow3949 rho ∧ Seg6.relationRow3950 rho ∧ Seg6.relationRow3951 rho ∧ Seg6.relationRow3952 rho ∧ Seg6.relationRow3953 rho ∧ Seg6.relationRow3954 rho ∧ Seg6.relationRow3955 rho ∧ Seg6.relationRow3956 rho ∧ Seg6.relationRow3957 rho ∧ Seg6.relationRow3958 rho ∧ Seg6.relationRow3959 rho ∧ Seg6.relationRow3960 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960⟩

theorem seg6_rung95 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1979 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩
        ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩
        ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩
        ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩ := by
  obtain ⟨r3948, r3949, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960⟩ := seg6_rows95 rho h
  unfold Seg6.relationRow3948 Seg6.relationLc563 at r3948
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3948
  unfold Seg6.relationRow3949 Seg6.relationLc564 at r3949
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3949
  unfold Seg6.relationRow3950 Seg6.relationLc565 at r3950
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3950
  unfold Seg6.relationRow3951 at r3951
  unfold Seg6.relationRow3952 at r3952
  unfold Seg6.relationRow3953 at r3953
  unfold Seg6.relationRow3954 Seg6.relationLc566 at r3954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3954
  unfold Seg6.relationRow3955 Seg6.relationLc567 at r3955
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3955
  unfold Seg6.relationRow3956 at r3956
  unfold Seg6.relationRow3957 at r3957
  unfold Seg6.relationRow3958 at r3958
  unfold Seg6.relationRow3959 at r3959
  unfold Seg6.relationRow3960 at r3960
  have hrung95 (bit : Bool) (hbit : rho 1979 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩
        ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩
        ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩
        ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩ := by
    have hnextx : seg6AccX96 rho = seg6AccX95 rho + rho 4347 := by
      unfold seg6AccX96 seg6AccX95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 95]
      ring
    have hnexty : seg6AccY96 rho = seg6AccY95 rho + rho 4348 := by
      unfold seg6AccY96 seg6AccY95
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 95]
      ring
    have ha0 : (rho 4339 + rho 4340) * (seg6AccX95 rho + seg6AccY95 rho) = rho 4341 := by
      unfold seg6AccX95 seg6AccY95
      linear_combination r3948
    have ha1 : rho 4340 * seg6AccX95 rho = rho 4342 := by
      unfold seg6AccX95
      linear_combination r3949
    have ha2 : rho 4339 * seg6AccY95 rho = rho 4343 := by
      unfold seg6AccY95
      linear_combination r3950
    have ha3 : 3021 * rho 4342 * rho 4343 = rho 4344 := by
      linear_combination r3951
    have ha4 : rho 4345 * (1 + rho 4344) = rho 4342 + rho 4343 := by
      linear_combination r3952
    have ha5 : rho 4346 * (1 - rho 4344) = rho 4341 - rho 4342 - rho 4343 := by
      linear_combination r3953
    have haddx :
        rho 4345 * (1 + 3021 * (rho 4340 * seg6AccX95 rho) * (rho 4339 * seg6AccY95 rho)) =
          rho 4340 * seg6AccX95 rho + rho 4339 * seg6AccY95 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4346 * (1 - 3021 * (rho 4340 * seg6AccX95 rho) * (rho 4339 * seg6AccY95 rho)) =
          (-1) * (rho 4340 * seg6AccX95 rho) - rho 4339 * seg6AccY95 rho +
            (seg6AccY95 rho - seg6AccX95 rho * (-1)) * (rho 4339 + rho 4340) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4346 * (1 - rho 4344) = rho 4341 - rho 4342 - rho 4343 := ha5
        _ = (-1) * rho 4342 - rho 4343 + (seg6AccY95 rho - seg6AccX95 rho * (-1)) * (rho 4339 + rho 4340) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX96 rho = seg6AccX95 rho - Bool.toZMod bit * (seg6AccX95 rho - rho 4345) := by
      have hd : rho 4347 = Bool.toZMod bit * (rho 4345 - seg6AccX95 rho) := by
        rw [← hbit]
        unfold seg6AccX95
        linear_combination -r3954
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY96 rho = seg6AccY95 rho - Bool.toZMod bit * (seg6AccY95 rho - rho 4346) := by
      have hd : rho 4348 = Bool.toZMod bit * (rho 4346 - seg6AccY95 rho) := by
        rw [← hbit]
        unfold seg6AccY95
        linear_combination -r3955
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4339 * rho 4340 = rho 4349 := by linear_combination r3956
    have hd1 : rho 4339 * rho 4339 = rho 4350 := by linear_combination r3957
    have hd2 : rho 4340 * rho 4340 = rho 4351 := by linear_combination r3958
    have hd3 : rho 4352 * (rho 4340 * rho 4340 + rho 4339 * rho 4339 * (-1)) = 2 * (rho 4339 * rho 4340) := by
      rw [hd0, hd1, hd2]
      linear_combination r3959
    have hd4 : rho 4353 * (2 - (rho 4340 * rho 4340 + rho 4339 * rho 4339 * (-1))) = rho 4340 * rho 4340 - rho 4339 * rho 4339 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3960
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX95 rho : Seg6.F), (seg6AccY95 rho : Seg6.F)⟩
      ⟨(rho 4339 : Seg6.F), (rho 4340 : Seg6.F)⟩
      ⟨(rho 4345 : Seg6.F), (rho 4346 : Seg6.F)⟩
      ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩
      ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung95

theorem seg6_rows96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3961 rho ∧ Seg6.relationRow3962 rho ∧ Seg6.relationRow3963 rho ∧ Seg6.relationRow3964 rho ∧ Seg6.relationRow3965 rho ∧ Seg6.relationRow3966 rho ∧ Seg6.relationRow3967 rho ∧ Seg6.relationRow3968 rho ∧ Seg6.relationRow3969 rho ∧ Seg6.relationRow3970 rho ∧ Seg6.relationRow3971 rho ∧ Seg6.relationRow3972 rho ∧ Seg6.relationRow3973 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973⟩

theorem seg6_rung96 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1980 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩
        ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩
        ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩
        ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩ := by
  obtain ⟨r3961, r3962, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973⟩ := seg6_rows96 rho h
  unfold Seg6.relationRow3961 Seg6.relationLc568 at r3961
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3961
  unfold Seg6.relationRow3962 Seg6.relationLc569 at r3962
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3962
  unfold Seg6.relationRow3963 Seg6.relationLc570 at r3963
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3963
  unfold Seg6.relationRow3964 at r3964
  unfold Seg6.relationRow3965 at r3965
  unfold Seg6.relationRow3966 at r3966
  unfold Seg6.relationRow3967 Seg6.relationLc571 at r3967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3967
  unfold Seg6.relationRow3968 Seg6.relationLc572 at r3968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3968
  unfold Seg6.relationRow3969 at r3969
  unfold Seg6.relationRow3970 at r3970
  unfold Seg6.relationRow3971 at r3971
  unfold Seg6.relationRow3972 at r3972
  unfold Seg6.relationRow3973 at r3973
  have hrung96 (bit : Bool) (hbit : rho 1980 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩
        ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩
        ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩
        ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩ := by
    have hnextx : seg6AccX97 rho = seg6AccX96 rho + rho 4360 := by
      unfold seg6AccX97 seg6AccX96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 96]
      ring
    have hnexty : seg6AccY97 rho = seg6AccY96 rho + rho 4361 := by
      unfold seg6AccY97 seg6AccY96
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 96]
      ring
    have ha0 : (rho 4352 + rho 4353) * (seg6AccX96 rho + seg6AccY96 rho) = rho 4354 := by
      unfold seg6AccX96 seg6AccY96
      linear_combination r3961
    have ha1 : rho 4353 * seg6AccX96 rho = rho 4355 := by
      unfold seg6AccX96
      linear_combination r3962
    have ha2 : rho 4352 * seg6AccY96 rho = rho 4356 := by
      unfold seg6AccY96
      linear_combination r3963
    have ha3 : 3021 * rho 4355 * rho 4356 = rho 4357 := by
      linear_combination r3964
    have ha4 : rho 4358 * (1 + rho 4357) = rho 4355 + rho 4356 := by
      linear_combination r3965
    have ha5 : rho 4359 * (1 - rho 4357) = rho 4354 - rho 4355 - rho 4356 := by
      linear_combination r3966
    have haddx :
        rho 4358 * (1 + 3021 * (rho 4353 * seg6AccX96 rho) * (rho 4352 * seg6AccY96 rho)) =
          rho 4353 * seg6AccX96 rho + rho 4352 * seg6AccY96 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4359 * (1 - 3021 * (rho 4353 * seg6AccX96 rho) * (rho 4352 * seg6AccY96 rho)) =
          (-1) * (rho 4353 * seg6AccX96 rho) - rho 4352 * seg6AccY96 rho +
            (seg6AccY96 rho - seg6AccX96 rho * (-1)) * (rho 4352 + rho 4353) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4359 * (1 - rho 4357) = rho 4354 - rho 4355 - rho 4356 := ha5
        _ = (-1) * rho 4355 - rho 4356 + (seg6AccY96 rho - seg6AccX96 rho * (-1)) * (rho 4352 + rho 4353) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX97 rho = seg6AccX96 rho - Bool.toZMod bit * (seg6AccX96 rho - rho 4358) := by
      have hd : rho 4360 = Bool.toZMod bit * (rho 4358 - seg6AccX96 rho) := by
        rw [← hbit]
        unfold seg6AccX96
        linear_combination -r3967
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY97 rho = seg6AccY96 rho - Bool.toZMod bit * (seg6AccY96 rho - rho 4359) := by
      have hd : rho 4361 = Bool.toZMod bit * (rho 4359 - seg6AccY96 rho) := by
        rw [← hbit]
        unfold seg6AccY96
        linear_combination -r3968
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4352 * rho 4353 = rho 4362 := by linear_combination r3969
    have hd1 : rho 4352 * rho 4352 = rho 4363 := by linear_combination r3970
    have hd2 : rho 4353 * rho 4353 = rho 4364 := by linear_combination r3971
    have hd3 : rho 4365 * (rho 4353 * rho 4353 + rho 4352 * rho 4352 * (-1)) = 2 * (rho 4352 * rho 4353) := by
      rw [hd0, hd1, hd2]
      linear_combination r3972
    have hd4 : rho 4366 * (2 - (rho 4353 * rho 4353 + rho 4352 * rho 4352 * (-1))) = rho 4353 * rho 4353 - rho 4352 * rho 4352 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3973
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX96 rho : Seg6.F), (seg6AccY96 rho : Seg6.F)⟩
      ⟨(rho 4352 : Seg6.F), (rho 4353 : Seg6.F)⟩
      ⟨(rho 4358 : Seg6.F), (rho 4359 : Seg6.F)⟩
      ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩
      ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung96

theorem seg6_rows97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3974 rho ∧ Seg6.relationRow3975 rho ∧ Seg6.relationRow3976 rho ∧ Seg6.relationRow3977 rho ∧ Seg6.relationRow3978 rho ∧ Seg6.relationRow3979 rho ∧ Seg6.relationRow3980 rho ∧ Seg6.relationRow3981 rho ∧ Seg6.relationRow3982 rho ∧ Seg6.relationRow3983 rho ∧ Seg6.relationRow3984 rho ∧ Seg6.relationRow3985 rho ∧ Seg6.relationRow3986 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986⟩

theorem seg6_rung97 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1981 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩
        ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩
        ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩
        ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩ := by
  obtain ⟨r3974, r3975, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986⟩ := seg6_rows97 rho h
  unfold Seg6.relationRow3974 Seg6.relationLc573 at r3974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3974
  unfold Seg6.relationRow3975 Seg6.relationLc574 at r3975
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3975
  unfold Seg6.relationRow3976 Seg6.relationLc575 at r3976
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3976
  unfold Seg6.relationRow3977 at r3977
  unfold Seg6.relationRow3978 at r3978
  unfold Seg6.relationRow3979 at r3979
  unfold Seg6.relationRow3980 Seg6.relationLc576 at r3980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3980
  unfold Seg6.relationRow3981 Seg6.relationLc577 at r3981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3981
  unfold Seg6.relationRow3982 at r3982
  unfold Seg6.relationRow3983 at r3983
  unfold Seg6.relationRow3984 at r3984
  unfold Seg6.relationRow3985 at r3985
  unfold Seg6.relationRow3986 at r3986
  have hrung97 (bit : Bool) (hbit : rho 1981 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩
        ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩
        ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩
        ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩ := by
    have hnextx : seg6AccX98 rho = seg6AccX97 rho + rho 4373 := by
      unfold seg6AccX98 seg6AccX97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 97]
      ring
    have hnexty : seg6AccY98 rho = seg6AccY97 rho + rho 4374 := by
      unfold seg6AccY98 seg6AccY97
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 97]
      ring
    have ha0 : (rho 4365 + rho 4366) * (seg6AccX97 rho + seg6AccY97 rho) = rho 4367 := by
      unfold seg6AccX97 seg6AccY97
      linear_combination r3974
    have ha1 : rho 4366 * seg6AccX97 rho = rho 4368 := by
      unfold seg6AccX97
      linear_combination r3975
    have ha2 : rho 4365 * seg6AccY97 rho = rho 4369 := by
      unfold seg6AccY97
      linear_combination r3976
    have ha3 : 3021 * rho 4368 * rho 4369 = rho 4370 := by
      linear_combination r3977
    have ha4 : rho 4371 * (1 + rho 4370) = rho 4368 + rho 4369 := by
      linear_combination r3978
    have ha5 : rho 4372 * (1 - rho 4370) = rho 4367 - rho 4368 - rho 4369 := by
      linear_combination r3979
    have haddx :
        rho 4371 * (1 + 3021 * (rho 4366 * seg6AccX97 rho) * (rho 4365 * seg6AccY97 rho)) =
          rho 4366 * seg6AccX97 rho + rho 4365 * seg6AccY97 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4372 * (1 - 3021 * (rho 4366 * seg6AccX97 rho) * (rho 4365 * seg6AccY97 rho)) =
          (-1) * (rho 4366 * seg6AccX97 rho) - rho 4365 * seg6AccY97 rho +
            (seg6AccY97 rho - seg6AccX97 rho * (-1)) * (rho 4365 + rho 4366) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4372 * (1 - rho 4370) = rho 4367 - rho 4368 - rho 4369 := ha5
        _ = (-1) * rho 4368 - rho 4369 + (seg6AccY97 rho - seg6AccX97 rho * (-1)) * (rho 4365 + rho 4366) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX98 rho = seg6AccX97 rho - Bool.toZMod bit * (seg6AccX97 rho - rho 4371) := by
      have hd : rho 4373 = Bool.toZMod bit * (rho 4371 - seg6AccX97 rho) := by
        rw [← hbit]
        unfold seg6AccX97
        linear_combination -r3980
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY98 rho = seg6AccY97 rho - Bool.toZMod bit * (seg6AccY97 rho - rho 4372) := by
      have hd : rho 4374 = Bool.toZMod bit * (rho 4372 - seg6AccY97 rho) := by
        rw [← hbit]
        unfold seg6AccY97
        linear_combination -r3981
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4365 * rho 4366 = rho 4375 := by linear_combination r3982
    have hd1 : rho 4365 * rho 4365 = rho 4376 := by linear_combination r3983
    have hd2 : rho 4366 * rho 4366 = rho 4377 := by linear_combination r3984
    have hd3 : rho 4378 * (rho 4366 * rho 4366 + rho 4365 * rho 4365 * (-1)) = 2 * (rho 4365 * rho 4366) := by
      rw [hd0, hd1, hd2]
      linear_combination r3985
    have hd4 : rho 4379 * (2 - (rho 4366 * rho 4366 + rho 4365 * rho 4365 * (-1))) = rho 4366 * rho 4366 - rho 4365 * rho 4365 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3986
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX97 rho : Seg6.F), (seg6AccY97 rho : Seg6.F)⟩
      ⟨(rho 4365 : Seg6.F), (rho 4366 : Seg6.F)⟩
      ⟨(rho 4371 : Seg6.F), (rho 4372 : Seg6.F)⟩
      ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩
      ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung97

theorem seg6_rows98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow3987 rho ∧ Seg6.relationRow3988 rho ∧ Seg6.relationRow3989 rho ∧ Seg6.relationRow3990 rho ∧ Seg6.relationRow3991 rho ∧ Seg6.relationRow3992 rho ∧ Seg6.relationRow3993 rho ∧ Seg6.relationRow3994 rho ∧ Seg6.relationRow3995 rho ∧ Seg6.relationRow3996 rho ∧ Seg6.relationRow3997 rho ∧ Seg6.relationRow3998 rho ∧ Seg6.relationRow3999 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p49,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart49 at p49
  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩
  exact ⟨r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩

theorem seg6_rung98 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1982 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩
        ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩
        ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩
        ⟨(rho 4391 : Seg6.F), (rho 4392 : Seg6.F)⟩ := by
  obtain ⟨r3987, r3988, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩ := seg6_rows98 rho h
  unfold Seg6.relationRow3987 Seg6.relationLc578 at r3987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3987
  unfold Seg6.relationRow3988 Seg6.relationLc579 at r3988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3988
  unfold Seg6.relationRow3989 Seg6.relationLc580 at r3989
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3989
  unfold Seg6.relationRow3990 at r3990
  unfold Seg6.relationRow3991 at r3991
  unfold Seg6.relationRow3992 at r3992
  unfold Seg6.relationRow3993 Seg6.relationLc581 at r3993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3993
  unfold Seg6.relationRow3994 Seg6.relationLc582 at r3994
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3994
  unfold Seg6.relationRow3995 at r3995
  unfold Seg6.relationRow3996 at r3996
  unfold Seg6.relationRow3997 at r3997
  unfold Seg6.relationRow3998 at r3998
  unfold Seg6.relationRow3999 at r3999
  have hrung98 (bit : Bool) (hbit : rho 1982 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩
        ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩
        ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩
        ⟨(rho 4391 : Seg6.F), (rho 4392 : Seg6.F)⟩ := by
    have hnextx : seg6AccX99 rho = seg6AccX98 rho + rho 4386 := by
      unfold seg6AccX99 seg6AccX98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3112 13 98]
      ring
    have hnexty : seg6AccY99 rho = seg6AccY98 rho + rho 4387 := by
      unfold seg6AccY99 seg6AccY98
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3113 13 98]
      ring
    have ha0 : (rho 4378 + rho 4379) * (seg6AccX98 rho + seg6AccY98 rho) = rho 4380 := by
      unfold seg6AccX98 seg6AccY98
      linear_combination r3987
    have ha1 : rho 4379 * seg6AccX98 rho = rho 4381 := by
      unfold seg6AccX98
      linear_combination r3988
    have ha2 : rho 4378 * seg6AccY98 rho = rho 4382 := by
      unfold seg6AccY98
      linear_combination r3989
    have ha3 : 3021 * rho 4381 * rho 4382 = rho 4383 := by
      linear_combination r3990
    have ha4 : rho 4384 * (1 + rho 4383) = rho 4381 + rho 4382 := by
      linear_combination r3991
    have ha5 : rho 4385 * (1 - rho 4383) = rho 4380 - rho 4381 - rho 4382 := by
      linear_combination r3992
    have haddx :
        rho 4384 * (1 + 3021 * (rho 4379 * seg6AccX98 rho) * (rho 4378 * seg6AccY98 rho)) =
          rho 4379 * seg6AccX98 rho + rho 4378 * seg6AccY98 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 4385 * (1 - 3021 * (rho 4379 * seg6AccX98 rho) * (rho 4378 * seg6AccY98 rho)) =
          (-1) * (rho 4379 * seg6AccX98 rho) - rho 4378 * seg6AccY98 rho +
            (seg6AccY98 rho - seg6AccX98 rho * (-1)) * (rho 4378 + rho 4379) := by
      rw [ha1, ha2, ha3]
      calc
        rho 4385 * (1 - rho 4383) = rho 4380 - rho 4381 - rho 4382 := ha5
        _ = (-1) * rho 4381 - rho 4382 + (seg6AccY98 rho - seg6AccX98 rho * (-1)) * (rho 4378 + rho 4379) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX99 rho = seg6AccX98 rho - Bool.toZMod bit * (seg6AccX98 rho - rho 4384) := by
      have hd : rho 4386 = Bool.toZMod bit * (rho 4384 - seg6AccX98 rho) := by
        rw [← hbit]
        unfold seg6AccX98
        linear_combination -r3993
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY99 rho = seg6AccY98 rho - Bool.toZMod bit * (seg6AccY98 rho - rho 4385) := by
      have hd : rho 4387 = Bool.toZMod bit * (rho 4385 - seg6AccY98 rho) := by
        rw [← hbit]
        unfold seg6AccY98
        linear_combination -r3994
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 4378 * rho 4379 = rho 4388 := by linear_combination r3995
    have hd1 : rho 4378 * rho 4378 = rho 4389 := by linear_combination r3996
    have hd2 : rho 4379 * rho 4379 = rho 4390 := by linear_combination r3997
    have hd3 : rho 4391 * (rho 4379 * rho 4379 + rho 4378 * rho 4378 * (-1)) = 2 * (rho 4378 * rho 4379) := by
      rw [hd0, hd1, hd2]
      linear_combination r3998
    have hd4 : rho 4392 * (2 - (rho 4379 * rho 4379 + rho 4378 * rho 4378 * (-1))) = rho 4379 * rho 4379 - rho 4378 * rho 4378 * (-1) := by
      rw [hd1, hd2]
      linear_combination r3999
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX98 rho : Seg6.F), (seg6AccY98 rho : Seg6.F)⟩
      ⟨(rho 4378 : Seg6.F), (rho 4379 : Seg6.F)⟩
      ⟨(rho 4384 : Seg6.F), (rho 4385 : Seg6.F)⟩
      ⟨(seg6AccX99 rho : Seg6.F), (seg6AccY99 rho : Seg6.F)⟩
      ⟨(rho 4391 : Seg6.F), (rho 4392 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung98

theorem seg6_hstep_c8 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1884 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg6_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg6_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg6_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg6_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg6_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg6_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg6_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg6_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg6_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg6_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
