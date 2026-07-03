import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3898 rho ∧ Seg52.relationRow3899 rho ∧ Seg52.relationRow3900 rho ∧ Seg52.relationRow3901 rho ∧ Seg52.relationRow3902 rho ∧ Seg52.relationRow3903 rho ∧ Seg52.relationRow3904 rho ∧ Seg52.relationRow3905 rho ∧ Seg52.relationRow3906 rho ∧ Seg52.relationRow3907 rho ∧ Seg52.relationRow3908 rho ∧ Seg52.relationRow3909 rho ∧ Seg52.relationRow3910 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910⟩

theorem seg52In1_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47638 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48286, rho 48287⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 48286, rho 48287⟩
        ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 48299, rho 48300⟩ := by
  obtain ⟨r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, r3909, r3910⟩ := seg52In1_rows44 rho h
  unfold Seg52.relationRow3898 at r3898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3898

  unfold Seg52.relationRow3899 at r3899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3899

  unfold Seg52.relationRow3900 at r3900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3900

  unfold Seg52.relationRow3901 at r3901

  unfold Seg52.relationRow3902 at r3902

  unfold Seg52.relationRow3903 at r3903

  unfold Seg52.relationRow3904 at r3904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3904

  unfold Seg52.relationRow3905 at r3905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3905

  unfold Seg52.relationRow3906 at r3906

  unfold Seg52.relationRow3907 at r3907

  unfold Seg52.relationRow3908 at r3908

  unfold Seg52.relationRow3909 at r3909

  unfold Seg52.relationRow3910 at r3910

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX45 rho = seg52In1AccX44 rho + rho 48294 := by
    unfold seg52In1AccX45 seg52In1AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 44]

    ring

  have hnexty : seg52In1AccY45 rho = seg52In1AccY44 rho + rho 48295 := by
    unfold seg52In1AccY45 seg52In1AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 44]

    ring

  have ha0 : (rho 48286 + rho 48287) * (seg52In1AccX44 rho + seg52In1AccY44 rho) = rho 48288 := by
    unfold seg52In1AccX44 seg52In1AccY44
    linear_combination r3898
  have ha1 : rho 48287 * seg52In1AccX44 rho = rho 48289 := by
    unfold seg52In1AccX44
    linear_combination r3899
  have ha2 : rho 48286 * seg52In1AccY44 rho = rho 48290 := by
    unfold seg52In1AccY44
    linear_combination r3900
  have ha3 : 3021 * rho 48289 * rho 48290 = rho 48291 := by
    linear_combination r3901
  have ha4 : rho 48292 * (1 + rho 48291) = rho 48289 + rho 48290 := by
    linear_combination r3902
  have ha5 : rho 48293 * (1 - rho 48291) = rho 48288 - rho 48289 - rho 48290 := by
    linear_combination r3903
  have haddx :
      rho 48292 * (1 + 3021 * (rho 48287 * seg52In1AccX44 rho) * (rho 48286 * seg52In1AccY44 rho)) =
        rho 48287 * seg52In1AccX44 rho + rho 48286 * seg52In1AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48293 * (1 - 3021 * (rho 48287 * seg52In1AccX44 rho) * (rho 48286 * seg52In1AccY44 rho)) =
        (-1) * (rho 48287 * seg52In1AccX44 rho) - rho 48286 * seg52In1AccY44 rho +
          (seg52In1AccY44 rho - seg52In1AccX44 rho * (-1)) * (rho 48286 + rho 48287) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48293 * (1 - rho 48291) = rho 48288 - rho 48289 - rho 48290 := ha5
      _ = (-1) * rho 48289 - rho 48290 + (seg52In1AccY44 rho - seg52In1AccX44 rho * (-1)) *
          (rho 48286 + rho 48287) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX45 rho = seg52In1AccX44 rho - Bool.toZMod bit * (seg52In1AccX44 rho - rho 48292) := by
    have hd : rho 48294 = Bool.toZMod bit * (rho 48292 - seg52In1AccX44 rho) := by
      rw [← hbit]
      unfold seg52In1AccX44
      linear_combination -r3904
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY45 rho = seg52In1AccY44 rho - Bool.toZMod bit * (seg52In1AccY44 rho - rho 48293) := by
    have hd : rho 48295 = Bool.toZMod bit * (rho 48293 - seg52In1AccY44 rho) := by
      rw [← hbit]
      unfold seg52In1AccY44
      linear_combination -r3905
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48286 * rho 48287 = rho 48296 := by linear_combination r3906
  have hd1 : rho 48286 * rho 48286 = rho 48297 := by linear_combination r3907
  have hd2 : rho 48287 * rho 48287 = rho 48298 := by linear_combination r3908
  have hd3 : rho 48299 * (rho 48287 * rho 48287 + rho 48286 * rho 48286 * (-1)) =
      2 * (rho 48286 * rho 48287) := by
    rw [hd0, hd1, hd2]
    linear_combination r3909
  have hd4 : rho 48300 * (2 - (rho 48287 * rho 48287 + rho 48286 * rho 48286 * (-1))) =
      rho 48287 * rho 48287 - rho 48286 * rho 48286 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3910
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX44 rho, seg52In1AccY44 rho⟩ ⟨rho 48286, rho 48287⟩
    ⟨rho 48292, rho 48293⟩ ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 48299, rho 48300⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3911 rho ∧ Seg52.relationRow3912 rho ∧ Seg52.relationRow3913 rho ∧ Seg52.relationRow3914 rho ∧ Seg52.relationRow3915 rho ∧ Seg52.relationRow3916 rho ∧ Seg52.relationRow3917 rho ∧ Seg52.relationRow3918 rho ∧ Seg52.relationRow3919 rho ∧ Seg52.relationRow3920 rho ∧ Seg52.relationRow3921 rho ∧ Seg52.relationRow3922 rho ∧ Seg52.relationRow3923 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p48, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart48 at p48

  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨r3920, r3921, r3922, r3923, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923⟩

theorem seg52In1_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47639 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48299, rho 48300⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 48299, rho 48300⟩
        ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 48312, rho 48313⟩ := by
  obtain ⟨r3911, r3912, r3913, r3914, r3915, r3916, r3917, r3918, r3919, r3920, r3921, r3922, r3923⟩ := seg52In1_rows45 rho h
  unfold Seg52.relationRow3911 at r3911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3911

  unfold Seg52.relationRow3912 at r3912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3912

  unfold Seg52.relationRow3913 at r3913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3913

  unfold Seg52.relationRow3914 at r3914

  unfold Seg52.relationRow3915 at r3915

  unfold Seg52.relationRow3916 at r3916

  unfold Seg52.relationRow3917 at r3917

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3917

  unfold Seg52.relationRow3918 at r3918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3918

  unfold Seg52.relationRow3919 at r3919

  unfold Seg52.relationRow3920 at r3920

  unfold Seg52.relationRow3921 at r3921

  unfold Seg52.relationRow3922 at r3922

  unfold Seg52.relationRow3923 at r3923

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX46 rho = seg52In1AccX45 rho + rho 48307 := by
    unfold seg52In1AccX46 seg52In1AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 45]

    ring

  have hnexty : seg52In1AccY46 rho = seg52In1AccY45 rho + rho 48308 := by
    unfold seg52In1AccY46 seg52In1AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 45]

    ring

  have ha0 : (rho 48299 + rho 48300) * (seg52In1AccX45 rho + seg52In1AccY45 rho) = rho 48301 := by
    unfold seg52In1AccX45 seg52In1AccY45
    linear_combination r3911
  have ha1 : rho 48300 * seg52In1AccX45 rho = rho 48302 := by
    unfold seg52In1AccX45
    linear_combination r3912
  have ha2 : rho 48299 * seg52In1AccY45 rho = rho 48303 := by
    unfold seg52In1AccY45
    linear_combination r3913
  have ha3 : 3021 * rho 48302 * rho 48303 = rho 48304 := by
    linear_combination r3914
  have ha4 : rho 48305 * (1 + rho 48304) = rho 48302 + rho 48303 := by
    linear_combination r3915
  have ha5 : rho 48306 * (1 - rho 48304) = rho 48301 - rho 48302 - rho 48303 := by
    linear_combination r3916
  have haddx :
      rho 48305 * (1 + 3021 * (rho 48300 * seg52In1AccX45 rho) * (rho 48299 * seg52In1AccY45 rho)) =
        rho 48300 * seg52In1AccX45 rho + rho 48299 * seg52In1AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48306 * (1 - 3021 * (rho 48300 * seg52In1AccX45 rho) * (rho 48299 * seg52In1AccY45 rho)) =
        (-1) * (rho 48300 * seg52In1AccX45 rho) - rho 48299 * seg52In1AccY45 rho +
          (seg52In1AccY45 rho - seg52In1AccX45 rho * (-1)) * (rho 48299 + rho 48300) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48306 * (1 - rho 48304) = rho 48301 - rho 48302 - rho 48303 := ha5
      _ = (-1) * rho 48302 - rho 48303 + (seg52In1AccY45 rho - seg52In1AccX45 rho * (-1)) *
          (rho 48299 + rho 48300) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX46 rho = seg52In1AccX45 rho - Bool.toZMod bit * (seg52In1AccX45 rho - rho 48305) := by
    have hd : rho 48307 = Bool.toZMod bit * (rho 48305 - seg52In1AccX45 rho) := by
      rw [← hbit]
      unfold seg52In1AccX45
      linear_combination -r3917
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY46 rho = seg52In1AccY45 rho - Bool.toZMod bit * (seg52In1AccY45 rho - rho 48306) := by
    have hd : rho 48308 = Bool.toZMod bit * (rho 48306 - seg52In1AccY45 rho) := by
      rw [← hbit]
      unfold seg52In1AccY45
      linear_combination -r3918
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48299 * rho 48300 = rho 48309 := by linear_combination r3919
  have hd1 : rho 48299 * rho 48299 = rho 48310 := by linear_combination r3920
  have hd2 : rho 48300 * rho 48300 = rho 48311 := by linear_combination r3921
  have hd3 : rho 48312 * (rho 48300 * rho 48300 + rho 48299 * rho 48299 * (-1)) =
      2 * (rho 48299 * rho 48300) := by
    rw [hd0, hd1, hd2]
    linear_combination r3922
  have hd4 : rho 48313 * (2 - (rho 48300 * rho 48300 + rho 48299 * rho 48299 * (-1))) =
      rho 48300 * rho 48300 - rho 48299 * rho 48299 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3923
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX45 rho, seg52In1AccY45 rho⟩ ⟨rho 48299, rho 48300⟩
    ⟨rho 48305, rho 48306⟩ ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 48312, rho 48313⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3924 rho ∧ Seg52.relationRow3925 rho ∧ Seg52.relationRow3926 rho ∧ Seg52.relationRow3927 rho ∧ Seg52.relationRow3928 rho ∧ Seg52.relationRow3929 rho ∧ Seg52.relationRow3930 rho ∧ Seg52.relationRow3931 rho ∧ Seg52.relationRow3932 rho ∧ Seg52.relationRow3933 rho ∧ Seg52.relationRow3934 rho ∧ Seg52.relationRow3935 rho ∧ Seg52.relationRow3936 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936⟩

theorem seg52In1_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47640 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48312, rho 48313⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 48312, rho 48313⟩
        ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 48325, rho 48326⟩ := by
  obtain ⟨r3924, r3925, r3926, r3927, r3928, r3929, r3930, r3931, r3932, r3933, r3934, r3935, r3936⟩ := seg52In1_rows46 rho h
  unfold Seg52.relationRow3924 at r3924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3924

  unfold Seg52.relationRow3925 at r3925

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3925

  unfold Seg52.relationRow3926 at r3926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3926

  unfold Seg52.relationRow3927 at r3927

  unfold Seg52.relationRow3928 at r3928

  unfold Seg52.relationRow3929 at r3929

  unfold Seg52.relationRow3930 at r3930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3930

  unfold Seg52.relationRow3931 at r3931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3931

  unfold Seg52.relationRow3932 at r3932

  unfold Seg52.relationRow3933 at r3933

  unfold Seg52.relationRow3934 at r3934

  unfold Seg52.relationRow3935 at r3935

  unfold Seg52.relationRow3936 at r3936

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX47 rho = seg52In1AccX46 rho + rho 48320 := by
    unfold seg52In1AccX47 seg52In1AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 46]

    ring

  have hnexty : seg52In1AccY47 rho = seg52In1AccY46 rho + rho 48321 := by
    unfold seg52In1AccY47 seg52In1AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 46]

    ring

  have ha0 : (rho 48312 + rho 48313) * (seg52In1AccX46 rho + seg52In1AccY46 rho) = rho 48314 := by
    unfold seg52In1AccX46 seg52In1AccY46
    linear_combination r3924
  have ha1 : rho 48313 * seg52In1AccX46 rho = rho 48315 := by
    unfold seg52In1AccX46
    linear_combination r3925
  have ha2 : rho 48312 * seg52In1AccY46 rho = rho 48316 := by
    unfold seg52In1AccY46
    linear_combination r3926
  have ha3 : 3021 * rho 48315 * rho 48316 = rho 48317 := by
    linear_combination r3927
  have ha4 : rho 48318 * (1 + rho 48317) = rho 48315 + rho 48316 := by
    linear_combination r3928
  have ha5 : rho 48319 * (1 - rho 48317) = rho 48314 - rho 48315 - rho 48316 := by
    linear_combination r3929
  have haddx :
      rho 48318 * (1 + 3021 * (rho 48313 * seg52In1AccX46 rho) * (rho 48312 * seg52In1AccY46 rho)) =
        rho 48313 * seg52In1AccX46 rho + rho 48312 * seg52In1AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48319 * (1 - 3021 * (rho 48313 * seg52In1AccX46 rho) * (rho 48312 * seg52In1AccY46 rho)) =
        (-1) * (rho 48313 * seg52In1AccX46 rho) - rho 48312 * seg52In1AccY46 rho +
          (seg52In1AccY46 rho - seg52In1AccX46 rho * (-1)) * (rho 48312 + rho 48313) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48319 * (1 - rho 48317) = rho 48314 - rho 48315 - rho 48316 := ha5
      _ = (-1) * rho 48315 - rho 48316 + (seg52In1AccY46 rho - seg52In1AccX46 rho * (-1)) *
          (rho 48312 + rho 48313) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX47 rho = seg52In1AccX46 rho - Bool.toZMod bit * (seg52In1AccX46 rho - rho 48318) := by
    have hd : rho 48320 = Bool.toZMod bit * (rho 48318 - seg52In1AccX46 rho) := by
      rw [← hbit]
      unfold seg52In1AccX46
      linear_combination -r3930
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY47 rho = seg52In1AccY46 rho - Bool.toZMod bit * (seg52In1AccY46 rho - rho 48319) := by
    have hd : rho 48321 = Bool.toZMod bit * (rho 48319 - seg52In1AccY46 rho) := by
      rw [← hbit]
      unfold seg52In1AccY46
      linear_combination -r3931
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48312 * rho 48313 = rho 48322 := by linear_combination r3932
  have hd1 : rho 48312 * rho 48312 = rho 48323 := by linear_combination r3933
  have hd2 : rho 48313 * rho 48313 = rho 48324 := by linear_combination r3934
  have hd3 : rho 48325 * (rho 48313 * rho 48313 + rho 48312 * rho 48312 * (-1)) =
      2 * (rho 48312 * rho 48313) := by
    rw [hd0, hd1, hd2]
    linear_combination r3935
  have hd4 : rho 48326 * (2 - (rho 48313 * rho 48313 + rho 48312 * rho 48312 * (-1))) =
      rho 48313 * rho 48313 - rho 48312 * rho 48312 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3936
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX46 rho, seg52In1AccY46 rho⟩ ⟨rho 48312, rho 48313⟩
    ⟨rho 48318, rho 48319⟩ ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 48325, rho 48326⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3937 rho ∧ Seg52.relationRow3938 rho ∧ Seg52.relationRow3939 rho ∧ Seg52.relationRow3940 rho ∧ Seg52.relationRow3941 rho ∧ Seg52.relationRow3942 rho ∧ Seg52.relationRow3943 rho ∧ Seg52.relationRow3944 rho ∧ Seg52.relationRow3945 rho ∧ Seg52.relationRow3946 rho ∧ Seg52.relationRow3947 rho ∧ Seg52.relationRow3948 rho ∧ Seg52.relationRow3949 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949⟩

theorem seg52In1_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47641 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48325, rho 48326⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 48325, rho 48326⟩
        ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 48338, rho 48339⟩ := by
  obtain ⟨r3937, r3938, r3939, r3940, r3941, r3942, r3943, r3944, r3945, r3946, r3947, r3948, r3949⟩ := seg52In1_rows47 rho h
  unfold Seg52.relationRow3937 at r3937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3937

  unfold Seg52.relationRow3938 at r3938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3938

  unfold Seg52.relationRow3939 at r3939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3939

  unfold Seg52.relationRow3940 at r3940

  unfold Seg52.relationRow3941 at r3941

  unfold Seg52.relationRow3942 at r3942

  unfold Seg52.relationRow3943 at r3943

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3943

  unfold Seg52.relationRow3944 at r3944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3944

  unfold Seg52.relationRow3945 at r3945

  unfold Seg52.relationRow3946 at r3946

  unfold Seg52.relationRow3947 at r3947

  unfold Seg52.relationRow3948 at r3948

  unfold Seg52.relationRow3949 at r3949

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX48 rho = seg52In1AccX47 rho + rho 48333 := by
    unfold seg52In1AccX48 seg52In1AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 47]

    ring

  have hnexty : seg52In1AccY48 rho = seg52In1AccY47 rho + rho 48334 := by
    unfold seg52In1AccY48 seg52In1AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 47]

    ring

  have ha0 : (rho 48325 + rho 48326) * (seg52In1AccX47 rho + seg52In1AccY47 rho) = rho 48327 := by
    unfold seg52In1AccX47 seg52In1AccY47
    linear_combination r3937
  have ha1 : rho 48326 * seg52In1AccX47 rho = rho 48328 := by
    unfold seg52In1AccX47
    linear_combination r3938
  have ha2 : rho 48325 * seg52In1AccY47 rho = rho 48329 := by
    unfold seg52In1AccY47
    linear_combination r3939
  have ha3 : 3021 * rho 48328 * rho 48329 = rho 48330 := by
    linear_combination r3940
  have ha4 : rho 48331 * (1 + rho 48330) = rho 48328 + rho 48329 := by
    linear_combination r3941
  have ha5 : rho 48332 * (1 - rho 48330) = rho 48327 - rho 48328 - rho 48329 := by
    linear_combination r3942
  have haddx :
      rho 48331 * (1 + 3021 * (rho 48326 * seg52In1AccX47 rho) * (rho 48325 * seg52In1AccY47 rho)) =
        rho 48326 * seg52In1AccX47 rho + rho 48325 * seg52In1AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48332 * (1 - 3021 * (rho 48326 * seg52In1AccX47 rho) * (rho 48325 * seg52In1AccY47 rho)) =
        (-1) * (rho 48326 * seg52In1AccX47 rho) - rho 48325 * seg52In1AccY47 rho +
          (seg52In1AccY47 rho - seg52In1AccX47 rho * (-1)) * (rho 48325 + rho 48326) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48332 * (1 - rho 48330) = rho 48327 - rho 48328 - rho 48329 := ha5
      _ = (-1) * rho 48328 - rho 48329 + (seg52In1AccY47 rho - seg52In1AccX47 rho * (-1)) *
          (rho 48325 + rho 48326) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX48 rho = seg52In1AccX47 rho - Bool.toZMod bit * (seg52In1AccX47 rho - rho 48331) := by
    have hd : rho 48333 = Bool.toZMod bit * (rho 48331 - seg52In1AccX47 rho) := by
      rw [← hbit]
      unfold seg52In1AccX47
      linear_combination -r3943
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY48 rho = seg52In1AccY47 rho - Bool.toZMod bit * (seg52In1AccY47 rho - rho 48332) := by
    have hd : rho 48334 = Bool.toZMod bit * (rho 48332 - seg52In1AccY47 rho) := by
      rw [← hbit]
      unfold seg52In1AccY47
      linear_combination -r3944
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48325 * rho 48326 = rho 48335 := by linear_combination r3945
  have hd1 : rho 48325 * rho 48325 = rho 48336 := by linear_combination r3946
  have hd2 : rho 48326 * rho 48326 = rho 48337 := by linear_combination r3947
  have hd3 : rho 48338 * (rho 48326 * rho 48326 + rho 48325 * rho 48325 * (-1)) =
      2 * (rho 48325 * rho 48326) := by
    rw [hd0, hd1, hd2]
    linear_combination r3948
  have hd4 : rho 48339 * (2 - (rho 48326 * rho 48326 + rho 48325 * rho 48325 * (-1))) =
      rho 48326 * rho 48326 - rho 48325 * rho 48325 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3949
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX47 rho, seg52In1AccY47 rho⟩ ⟨rho 48325, rho 48326⟩
    ⟨rho 48331, rho 48332⟩ ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 48338, rho 48339⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3950 rho ∧ Seg52.relationRow3951 rho ∧ Seg52.relationRow3952 rho ∧ Seg52.relationRow3953 rho ∧ Seg52.relationRow3954 rho ∧ Seg52.relationRow3955 rho ∧ Seg52.relationRow3956 rho ∧ Seg52.relationRow3957 rho ∧ Seg52.relationRow3958 rho ∧ Seg52.relationRow3959 rho ∧ Seg52.relationRow3960 rho ∧ Seg52.relationRow3961 rho ∧ Seg52.relationRow3962 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962⟩

theorem seg52In1_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47642 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48338, rho 48339⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 48338, rho 48339⟩
        ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 48351, rho 48352⟩ := by
  obtain ⟨r3950, r3951, r3952, r3953, r3954, r3955, r3956, r3957, r3958, r3959, r3960, r3961, r3962⟩ := seg52In1_rows48 rho h
  unfold Seg52.relationRow3950 at r3950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3950

  unfold Seg52.relationRow3951 at r3951

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3951

  unfold Seg52.relationRow3952 at r3952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3952

  unfold Seg52.relationRow3953 at r3953

  unfold Seg52.relationRow3954 at r3954

  unfold Seg52.relationRow3955 at r3955

  unfold Seg52.relationRow3956 at r3956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3956

  unfold Seg52.relationRow3957 at r3957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3957

  unfold Seg52.relationRow3958 at r3958

  unfold Seg52.relationRow3959 at r3959

  unfold Seg52.relationRow3960 at r3960

  unfold Seg52.relationRow3961 at r3961

  unfold Seg52.relationRow3962 at r3962

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX49 rho = seg52In1AccX48 rho + rho 48346 := by
    unfold seg52In1AccX49 seg52In1AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 48]

    ring

  have hnexty : seg52In1AccY49 rho = seg52In1AccY48 rho + rho 48347 := by
    unfold seg52In1AccY49 seg52In1AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 48]

    ring

  have ha0 : (rho 48338 + rho 48339) * (seg52In1AccX48 rho + seg52In1AccY48 rho) = rho 48340 := by
    unfold seg52In1AccX48 seg52In1AccY48
    linear_combination r3950
  have ha1 : rho 48339 * seg52In1AccX48 rho = rho 48341 := by
    unfold seg52In1AccX48
    linear_combination r3951
  have ha2 : rho 48338 * seg52In1AccY48 rho = rho 48342 := by
    unfold seg52In1AccY48
    linear_combination r3952
  have ha3 : 3021 * rho 48341 * rho 48342 = rho 48343 := by
    linear_combination r3953
  have ha4 : rho 48344 * (1 + rho 48343) = rho 48341 + rho 48342 := by
    linear_combination r3954
  have ha5 : rho 48345 * (1 - rho 48343) = rho 48340 - rho 48341 - rho 48342 := by
    linear_combination r3955
  have haddx :
      rho 48344 * (1 + 3021 * (rho 48339 * seg52In1AccX48 rho) * (rho 48338 * seg52In1AccY48 rho)) =
        rho 48339 * seg52In1AccX48 rho + rho 48338 * seg52In1AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48345 * (1 - 3021 * (rho 48339 * seg52In1AccX48 rho) * (rho 48338 * seg52In1AccY48 rho)) =
        (-1) * (rho 48339 * seg52In1AccX48 rho) - rho 48338 * seg52In1AccY48 rho +
          (seg52In1AccY48 rho - seg52In1AccX48 rho * (-1)) * (rho 48338 + rho 48339) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48345 * (1 - rho 48343) = rho 48340 - rho 48341 - rho 48342 := ha5
      _ = (-1) * rho 48341 - rho 48342 + (seg52In1AccY48 rho - seg52In1AccX48 rho * (-1)) *
          (rho 48338 + rho 48339) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX49 rho = seg52In1AccX48 rho - Bool.toZMod bit * (seg52In1AccX48 rho - rho 48344) := by
    have hd : rho 48346 = Bool.toZMod bit * (rho 48344 - seg52In1AccX48 rho) := by
      rw [← hbit]
      unfold seg52In1AccX48
      linear_combination -r3956
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY49 rho = seg52In1AccY48 rho - Bool.toZMod bit * (seg52In1AccY48 rho - rho 48345) := by
    have hd : rho 48347 = Bool.toZMod bit * (rho 48345 - seg52In1AccY48 rho) := by
      rw [← hbit]
      unfold seg52In1AccY48
      linear_combination -r3957
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48338 * rho 48339 = rho 48348 := by linear_combination r3958
  have hd1 : rho 48338 * rho 48338 = rho 48349 := by linear_combination r3959
  have hd2 : rho 48339 * rho 48339 = rho 48350 := by linear_combination r3960
  have hd3 : rho 48351 * (rho 48339 * rho 48339 + rho 48338 * rho 48338 * (-1)) =
      2 * (rho 48338 * rho 48339) := by
    rw [hd0, hd1, hd2]
    linear_combination r3961
  have hd4 : rho 48352 * (2 - (rho 48339 * rho 48339 + rho 48338 * rho 48338 * (-1))) =
      rho 48339 * rho 48339 - rho 48338 * rho 48338 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3962
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX48 rho, seg52In1AccY48 rho⟩ ⟨rho 48338, rho 48339⟩
    ⟨rho 48344, rho 48345⟩ ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 48351, rho 48352⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3963 rho ∧ Seg52.relationRow3964 rho ∧ Seg52.relationRow3965 rho ∧ Seg52.relationRow3966 rho ∧ Seg52.relationRow3967 rho ∧ Seg52.relationRow3968 rho ∧ Seg52.relationRow3969 rho ∧ Seg52.relationRow3970 rho ∧ Seg52.relationRow3971 rho ∧ Seg52.relationRow3972 rho ∧ Seg52.relationRow3973 rho ∧ Seg52.relationRow3974 rho ∧ Seg52.relationRow3975 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975⟩

theorem seg52In1_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47643 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48351, rho 48352⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 48351, rho 48352⟩
        ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 48364, rho 48365⟩ := by
  obtain ⟨r3963, r3964, r3965, r3966, r3967, r3968, r3969, r3970, r3971, r3972, r3973, r3974, r3975⟩ := seg52In1_rows49 rho h
  unfold Seg52.relationRow3963 at r3963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3963

  unfold Seg52.relationRow3964 at r3964

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3964

  unfold Seg52.relationRow3965 at r3965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3965

  unfold Seg52.relationRow3966 at r3966

  unfold Seg52.relationRow3967 at r3967

  unfold Seg52.relationRow3968 at r3968

  unfold Seg52.relationRow3969 at r3969

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3969

  unfold Seg52.relationRow3970 at r3970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3970

  unfold Seg52.relationRow3971 at r3971

  unfold Seg52.relationRow3972 at r3972

  unfold Seg52.relationRow3973 at r3973

  unfold Seg52.relationRow3974 at r3974

  unfold Seg52.relationRow3975 at r3975

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX50 rho = seg52In1AccX49 rho + rho 48359 := by
    unfold seg52In1AccX50 seg52In1AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 49]

    ring

  have hnexty : seg52In1AccY50 rho = seg52In1AccY49 rho + rho 48360 := by
    unfold seg52In1AccY50 seg52In1AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 49]

    ring

  have ha0 : (rho 48351 + rho 48352) * (seg52In1AccX49 rho + seg52In1AccY49 rho) = rho 48353 := by
    unfold seg52In1AccX49 seg52In1AccY49
    linear_combination r3963
  have ha1 : rho 48352 * seg52In1AccX49 rho = rho 48354 := by
    unfold seg52In1AccX49
    linear_combination r3964
  have ha2 : rho 48351 * seg52In1AccY49 rho = rho 48355 := by
    unfold seg52In1AccY49
    linear_combination r3965
  have ha3 : 3021 * rho 48354 * rho 48355 = rho 48356 := by
    linear_combination r3966
  have ha4 : rho 48357 * (1 + rho 48356) = rho 48354 + rho 48355 := by
    linear_combination r3967
  have ha5 : rho 48358 * (1 - rho 48356) = rho 48353 - rho 48354 - rho 48355 := by
    linear_combination r3968
  have haddx :
      rho 48357 * (1 + 3021 * (rho 48352 * seg52In1AccX49 rho) * (rho 48351 * seg52In1AccY49 rho)) =
        rho 48352 * seg52In1AccX49 rho + rho 48351 * seg52In1AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48358 * (1 - 3021 * (rho 48352 * seg52In1AccX49 rho) * (rho 48351 * seg52In1AccY49 rho)) =
        (-1) * (rho 48352 * seg52In1AccX49 rho) - rho 48351 * seg52In1AccY49 rho +
          (seg52In1AccY49 rho - seg52In1AccX49 rho * (-1)) * (rho 48351 + rho 48352) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48358 * (1 - rho 48356) = rho 48353 - rho 48354 - rho 48355 := ha5
      _ = (-1) * rho 48354 - rho 48355 + (seg52In1AccY49 rho - seg52In1AccX49 rho * (-1)) *
          (rho 48351 + rho 48352) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX50 rho = seg52In1AccX49 rho - Bool.toZMod bit * (seg52In1AccX49 rho - rho 48357) := by
    have hd : rho 48359 = Bool.toZMod bit * (rho 48357 - seg52In1AccX49 rho) := by
      rw [← hbit]
      unfold seg52In1AccX49
      linear_combination -r3969
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY50 rho = seg52In1AccY49 rho - Bool.toZMod bit * (seg52In1AccY49 rho - rho 48358) := by
    have hd : rho 48360 = Bool.toZMod bit * (rho 48358 - seg52In1AccY49 rho) := by
      rw [← hbit]
      unfold seg52In1AccY49
      linear_combination -r3970
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48351 * rho 48352 = rho 48361 := by linear_combination r3971
  have hd1 : rho 48351 * rho 48351 = rho 48362 := by linear_combination r3972
  have hd2 : rho 48352 * rho 48352 = rho 48363 := by linear_combination r3973
  have hd3 : rho 48364 * (rho 48352 * rho 48352 + rho 48351 * rho 48351 * (-1)) =
      2 * (rho 48351 * rho 48352) := by
    rw [hd0, hd1, hd2]
    linear_combination r3974
  have hd4 : rho 48365 * (2 - (rho 48352 * rho 48352 + rho 48351 * rho 48351 * (-1))) =
      rho 48352 * rho 48352 - rho 48351 * rho 48351 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3975
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX49 rho, seg52In1AccY49 rho⟩ ⟨rho 48351, rho 48352⟩
    ⟨rho 48357, rho 48358⟩ ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 48364, rho 48365⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3976 rho ∧ Seg52.relationRow3977 rho ∧ Seg52.relationRow3978 rho ∧ Seg52.relationRow3979 rho ∧ Seg52.relationRow3980 rho ∧ Seg52.relationRow3981 rho ∧ Seg52.relationRow3982 rho ∧ Seg52.relationRow3983 rho ∧ Seg52.relationRow3984 rho ∧ Seg52.relationRow3985 rho ∧ Seg52.relationRow3986 rho ∧ Seg52.relationRow3987 rho ∧ Seg52.relationRow3988 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988⟩

theorem seg52In1_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47644 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48364, rho 48365⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 48364, rho 48365⟩
        ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 48377, rho 48378⟩ := by
  obtain ⟨r3976, r3977, r3978, r3979, r3980, r3981, r3982, r3983, r3984, r3985, r3986, r3987, r3988⟩ := seg52In1_rows50 rho h
  unfold Seg52.relationRow3976 at r3976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3976

  unfold Seg52.relationRow3977 at r3977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3977

  unfold Seg52.relationRow3978 at r3978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3978

  unfold Seg52.relationRow3979 at r3979

  unfold Seg52.relationRow3980 at r3980

  unfold Seg52.relationRow3981 at r3981

  unfold Seg52.relationRow3982 at r3982

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3982

  unfold Seg52.relationRow3983 at r3983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3983

  unfold Seg52.relationRow3984 at r3984

  unfold Seg52.relationRow3985 at r3985

  unfold Seg52.relationRow3986 at r3986

  unfold Seg52.relationRow3987 at r3987

  unfold Seg52.relationRow3988 at r3988

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX51 rho = seg52In1AccX50 rho + rho 48372 := by
    unfold seg52In1AccX51 seg52In1AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 50]

    ring

  have hnexty : seg52In1AccY51 rho = seg52In1AccY50 rho + rho 48373 := by
    unfold seg52In1AccY51 seg52In1AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 50]

    ring

  have ha0 : (rho 48364 + rho 48365) * (seg52In1AccX50 rho + seg52In1AccY50 rho) = rho 48366 := by
    unfold seg52In1AccX50 seg52In1AccY50
    linear_combination r3976
  have ha1 : rho 48365 * seg52In1AccX50 rho = rho 48367 := by
    unfold seg52In1AccX50
    linear_combination r3977
  have ha2 : rho 48364 * seg52In1AccY50 rho = rho 48368 := by
    unfold seg52In1AccY50
    linear_combination r3978
  have ha3 : 3021 * rho 48367 * rho 48368 = rho 48369 := by
    linear_combination r3979
  have ha4 : rho 48370 * (1 + rho 48369) = rho 48367 + rho 48368 := by
    linear_combination r3980
  have ha5 : rho 48371 * (1 - rho 48369) = rho 48366 - rho 48367 - rho 48368 := by
    linear_combination r3981
  have haddx :
      rho 48370 * (1 + 3021 * (rho 48365 * seg52In1AccX50 rho) * (rho 48364 * seg52In1AccY50 rho)) =
        rho 48365 * seg52In1AccX50 rho + rho 48364 * seg52In1AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48371 * (1 - 3021 * (rho 48365 * seg52In1AccX50 rho) * (rho 48364 * seg52In1AccY50 rho)) =
        (-1) * (rho 48365 * seg52In1AccX50 rho) - rho 48364 * seg52In1AccY50 rho +
          (seg52In1AccY50 rho - seg52In1AccX50 rho * (-1)) * (rho 48364 + rho 48365) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48371 * (1 - rho 48369) = rho 48366 - rho 48367 - rho 48368 := ha5
      _ = (-1) * rho 48367 - rho 48368 + (seg52In1AccY50 rho - seg52In1AccX50 rho * (-1)) *
          (rho 48364 + rho 48365) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX51 rho = seg52In1AccX50 rho - Bool.toZMod bit * (seg52In1AccX50 rho - rho 48370) := by
    have hd : rho 48372 = Bool.toZMod bit * (rho 48370 - seg52In1AccX50 rho) := by
      rw [← hbit]
      unfold seg52In1AccX50
      linear_combination -r3982
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY51 rho = seg52In1AccY50 rho - Bool.toZMod bit * (seg52In1AccY50 rho - rho 48371) := by
    have hd : rho 48373 = Bool.toZMod bit * (rho 48371 - seg52In1AccY50 rho) := by
      rw [← hbit]
      unfold seg52In1AccY50
      linear_combination -r3983
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48364 * rho 48365 = rho 48374 := by linear_combination r3984
  have hd1 : rho 48364 * rho 48364 = rho 48375 := by linear_combination r3985
  have hd2 : rho 48365 * rho 48365 = rho 48376 := by linear_combination r3986
  have hd3 : rho 48377 * (rho 48365 * rho 48365 + rho 48364 * rho 48364 * (-1)) =
      2 * (rho 48364 * rho 48365) := by
    rw [hd0, hd1, hd2]
    linear_combination r3987
  have hd4 : rho 48378 * (2 - (rho 48365 * rho 48365 + rho 48364 * rho 48364 * (-1))) =
      rho 48365 * rho 48365 - rho 48364 * rho 48364 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3988
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX50 rho, seg52In1AccY50 rho⟩ ⟨rho 48364, rho 48365⟩
    ⟨rho 48370, rho 48371⟩ ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 48377, rho 48378⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3989 rho ∧ Seg52.relationRow3990 rho ∧ Seg52.relationRow3991 rho ∧ Seg52.relationRow3992 rho ∧ Seg52.relationRow3993 rho ∧ Seg52.relationRow3994 rho ∧ Seg52.relationRow3995 rho ∧ Seg52.relationRow3996 rho ∧ Seg52.relationRow3997 rho ∧ Seg52.relationRow3998 rho ∧ Seg52.relationRow3999 rho ∧ Seg52.relationRow4000 rho ∧ Seg52.relationRow4001 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p49,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart49 at p49

  rcases p49 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨r4000, r4001, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001⟩

theorem seg52In1_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47645 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48377, rho 48378⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 48377, rho 48378⟩
        ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 48390, rho 48391⟩ := by
  obtain ⟨r3989, r3990, r3991, r3992, r3993, r3994, r3995, r3996, r3997, r3998, r3999, r4000, r4001⟩ := seg52In1_rows51 rho h
  unfold Seg52.relationRow3989 at r3989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3989

  unfold Seg52.relationRow3990 at r3990

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3990

  unfold Seg52.relationRow3991 at r3991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3991

  unfold Seg52.relationRow3992 at r3992

  unfold Seg52.relationRow3993 at r3993

  unfold Seg52.relationRow3994 at r3994

  unfold Seg52.relationRow3995 at r3995

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3995

  unfold Seg52.relationRow3996 at r3996

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3996

  unfold Seg52.relationRow3997 at r3997

  unfold Seg52.relationRow3998 at r3998

  unfold Seg52.relationRow3999 at r3999

  unfold Seg52.relationRow4000 at r4000

  unfold Seg52.relationRow4001 at r4001

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX52 rho = seg52In1AccX51 rho + rho 48385 := by
    unfold seg52In1AccX52 seg52In1AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 51]

    ring

  have hnexty : seg52In1AccY52 rho = seg52In1AccY51 rho + rho 48386 := by
    unfold seg52In1AccY52 seg52In1AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 51]

    ring

  have ha0 : (rho 48377 + rho 48378) * (seg52In1AccX51 rho + seg52In1AccY51 rho) = rho 48379 := by
    unfold seg52In1AccX51 seg52In1AccY51
    linear_combination r3989
  have ha1 : rho 48378 * seg52In1AccX51 rho = rho 48380 := by
    unfold seg52In1AccX51
    linear_combination r3990
  have ha2 : rho 48377 * seg52In1AccY51 rho = rho 48381 := by
    unfold seg52In1AccY51
    linear_combination r3991
  have ha3 : 3021 * rho 48380 * rho 48381 = rho 48382 := by
    linear_combination r3992
  have ha4 : rho 48383 * (1 + rho 48382) = rho 48380 + rho 48381 := by
    linear_combination r3993
  have ha5 : rho 48384 * (1 - rho 48382) = rho 48379 - rho 48380 - rho 48381 := by
    linear_combination r3994
  have haddx :
      rho 48383 * (1 + 3021 * (rho 48378 * seg52In1AccX51 rho) * (rho 48377 * seg52In1AccY51 rho)) =
        rho 48378 * seg52In1AccX51 rho + rho 48377 * seg52In1AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48384 * (1 - 3021 * (rho 48378 * seg52In1AccX51 rho) * (rho 48377 * seg52In1AccY51 rho)) =
        (-1) * (rho 48378 * seg52In1AccX51 rho) - rho 48377 * seg52In1AccY51 rho +
          (seg52In1AccY51 rho - seg52In1AccX51 rho * (-1)) * (rho 48377 + rho 48378) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48384 * (1 - rho 48382) = rho 48379 - rho 48380 - rho 48381 := ha5
      _ = (-1) * rho 48380 - rho 48381 + (seg52In1AccY51 rho - seg52In1AccX51 rho * (-1)) *
          (rho 48377 + rho 48378) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX52 rho = seg52In1AccX51 rho - Bool.toZMod bit * (seg52In1AccX51 rho - rho 48383) := by
    have hd : rho 48385 = Bool.toZMod bit * (rho 48383 - seg52In1AccX51 rho) := by
      rw [← hbit]
      unfold seg52In1AccX51
      linear_combination -r3995
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY52 rho = seg52In1AccY51 rho - Bool.toZMod bit * (seg52In1AccY51 rho - rho 48384) := by
    have hd : rho 48386 = Bool.toZMod bit * (rho 48384 - seg52In1AccY51 rho) := by
      rw [← hbit]
      unfold seg52In1AccY51
      linear_combination -r3996
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48377 * rho 48378 = rho 48387 := by linear_combination r3997
  have hd1 : rho 48377 * rho 48377 = rho 48388 := by linear_combination r3998
  have hd2 : rho 48378 * rho 48378 = rho 48389 := by linear_combination r3999
  have hd3 : rho 48390 * (rho 48378 * rho 48378 + rho 48377 * rho 48377 * (-1)) =
      2 * (rho 48377 * rho 48378) := by
    rw [hd0, hd1, hd2]
    linear_combination r4000
  have hd4 : rho 48391 * (2 - (rho 48378 * rho 48378 + rho 48377 * rho 48377 * (-1))) =
      rho 48378 * rho 48378 - rho 48377 * rho 48377 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4001
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX51 rho, seg52In1AccY51 rho⟩ ⟨rho 48377, rho 48378⟩
    ⟨rho 48383, rho 48384⟩ ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 48390, rho 48391⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4002 rho ∧ Seg52.relationRow4003 rho ∧ Seg52.relationRow4004 rho ∧ Seg52.relationRow4005 rho ∧ Seg52.relationRow4006 rho ∧ Seg52.relationRow4007 rho ∧ Seg52.relationRow4008 rho ∧ Seg52.relationRow4009 rho ∧ Seg52.relationRow4010 rho ∧ Seg52.relationRow4011 rho ∧ Seg52.relationRow4012 rho ∧ Seg52.relationRow4013 rho ∧ Seg52.relationRow4014 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014⟩

theorem seg52In1_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47646 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48390, rho 48391⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 48390, rho 48391⟩
        ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 48403, rho 48404⟩ := by
  obtain ⟨r4002, r4003, r4004, r4005, r4006, r4007, r4008, r4009, r4010, r4011, r4012, r4013, r4014⟩ := seg52In1_rows52 rho h
  unfold Seg52.relationRow4002 at r4002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4002

  unfold Seg52.relationRow4003 at r4003

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4003

  unfold Seg52.relationRow4004 at r4004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4004

  unfold Seg52.relationRow4005 at r4005

  unfold Seg52.relationRow4006 at r4006

  unfold Seg52.relationRow4007 at r4007

  unfold Seg52.relationRow4008 at r4008

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4008

  unfold Seg52.relationRow4009 at r4009

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4009

  unfold Seg52.relationRow4010 at r4010

  unfold Seg52.relationRow4011 at r4011

  unfold Seg52.relationRow4012 at r4012

  unfold Seg52.relationRow4013 at r4013

  unfold Seg52.relationRow4014 at r4014

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX53 rho = seg52In1AccX52 rho + rho 48398 := by
    unfold seg52In1AccX53 seg52In1AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 52]

    ring

  have hnexty : seg52In1AccY53 rho = seg52In1AccY52 rho + rho 48399 := by
    unfold seg52In1AccY53 seg52In1AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 52]

    ring

  have ha0 : (rho 48390 + rho 48391) * (seg52In1AccX52 rho + seg52In1AccY52 rho) = rho 48392 := by
    unfold seg52In1AccX52 seg52In1AccY52
    linear_combination r4002
  have ha1 : rho 48391 * seg52In1AccX52 rho = rho 48393 := by
    unfold seg52In1AccX52
    linear_combination r4003
  have ha2 : rho 48390 * seg52In1AccY52 rho = rho 48394 := by
    unfold seg52In1AccY52
    linear_combination r4004
  have ha3 : 3021 * rho 48393 * rho 48394 = rho 48395 := by
    linear_combination r4005
  have ha4 : rho 48396 * (1 + rho 48395) = rho 48393 + rho 48394 := by
    linear_combination r4006
  have ha5 : rho 48397 * (1 - rho 48395) = rho 48392 - rho 48393 - rho 48394 := by
    linear_combination r4007
  have haddx :
      rho 48396 * (1 + 3021 * (rho 48391 * seg52In1AccX52 rho) * (rho 48390 * seg52In1AccY52 rho)) =
        rho 48391 * seg52In1AccX52 rho + rho 48390 * seg52In1AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48397 * (1 - 3021 * (rho 48391 * seg52In1AccX52 rho) * (rho 48390 * seg52In1AccY52 rho)) =
        (-1) * (rho 48391 * seg52In1AccX52 rho) - rho 48390 * seg52In1AccY52 rho +
          (seg52In1AccY52 rho - seg52In1AccX52 rho * (-1)) * (rho 48390 + rho 48391) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48397 * (1 - rho 48395) = rho 48392 - rho 48393 - rho 48394 := ha5
      _ = (-1) * rho 48393 - rho 48394 + (seg52In1AccY52 rho - seg52In1AccX52 rho * (-1)) *
          (rho 48390 + rho 48391) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX53 rho = seg52In1AccX52 rho - Bool.toZMod bit * (seg52In1AccX52 rho - rho 48396) := by
    have hd : rho 48398 = Bool.toZMod bit * (rho 48396 - seg52In1AccX52 rho) := by
      rw [← hbit]
      unfold seg52In1AccX52
      linear_combination -r4008
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY53 rho = seg52In1AccY52 rho - Bool.toZMod bit * (seg52In1AccY52 rho - rho 48397) := by
    have hd : rho 48399 = Bool.toZMod bit * (rho 48397 - seg52In1AccY52 rho) := by
      rw [← hbit]
      unfold seg52In1AccY52
      linear_combination -r4009
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48390 * rho 48391 = rho 48400 := by linear_combination r4010
  have hd1 : rho 48390 * rho 48390 = rho 48401 := by linear_combination r4011
  have hd2 : rho 48391 * rho 48391 = rho 48402 := by linear_combination r4012
  have hd3 : rho 48403 * (rho 48391 * rho 48391 + rho 48390 * rho 48390 * (-1)) =
      2 * (rho 48390 * rho 48391) := by
    rw [hd0, hd1, hd2]
    linear_combination r4013
  have hd4 : rho 48404 * (2 - (rho 48391 * rho 48391 + rho 48390 * rho 48390 * (-1))) =
      rho 48391 * rho 48391 - rho 48390 * rho 48390 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4014
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX52 rho, seg52In1AccY52 rho⟩ ⟨rho 48390, rho 48391⟩
    ⟨rho 48396, rho 48397⟩ ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 48403, rho 48404⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4015 rho ∧ Seg52.relationRow4016 rho ∧ Seg52.relationRow4017 rho ∧ Seg52.relationRow4018 rho ∧ Seg52.relationRow4019 rho ∧ Seg52.relationRow4020 rho ∧ Seg52.relationRow4021 rho ∧ Seg52.relationRow4022 rho ∧ Seg52.relationRow4023 rho ∧ Seg52.relationRow4024 rho ∧ Seg52.relationRow4025 rho ∧ Seg52.relationRow4026 rho ∧ Seg52.relationRow4027 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027⟩

theorem seg52In1_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47647 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48403, rho 48404⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 48403, rho 48404⟩
        ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 48416, rho 48417⟩ := by
  obtain ⟨r4015, r4016, r4017, r4018, r4019, r4020, r4021, r4022, r4023, r4024, r4025, r4026, r4027⟩ := seg52In1_rows53 rho h
  unfold Seg52.relationRow4015 at r4015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4015

  unfold Seg52.relationRow4016 at r4016

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4016

  unfold Seg52.relationRow4017 at r4017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4017

  unfold Seg52.relationRow4018 at r4018

  unfold Seg52.relationRow4019 at r4019

  unfold Seg52.relationRow4020 at r4020

  unfold Seg52.relationRow4021 at r4021

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4021

  unfold Seg52.relationRow4022 at r4022

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4022

  unfold Seg52.relationRow4023 at r4023

  unfold Seg52.relationRow4024 at r4024

  unfold Seg52.relationRow4025 at r4025

  unfold Seg52.relationRow4026 at r4026

  unfold Seg52.relationRow4027 at r4027

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX54 rho = seg52In1AccX53 rho + rho 48411 := by
    unfold seg52In1AccX54 seg52In1AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 53]

    ring

  have hnexty : seg52In1AccY54 rho = seg52In1AccY53 rho + rho 48412 := by
    unfold seg52In1AccY54 seg52In1AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 53]

    ring

  have ha0 : (rho 48403 + rho 48404) * (seg52In1AccX53 rho + seg52In1AccY53 rho) = rho 48405 := by
    unfold seg52In1AccX53 seg52In1AccY53
    linear_combination r4015
  have ha1 : rho 48404 * seg52In1AccX53 rho = rho 48406 := by
    unfold seg52In1AccX53
    linear_combination r4016
  have ha2 : rho 48403 * seg52In1AccY53 rho = rho 48407 := by
    unfold seg52In1AccY53
    linear_combination r4017
  have ha3 : 3021 * rho 48406 * rho 48407 = rho 48408 := by
    linear_combination r4018
  have ha4 : rho 48409 * (1 + rho 48408) = rho 48406 + rho 48407 := by
    linear_combination r4019
  have ha5 : rho 48410 * (1 - rho 48408) = rho 48405 - rho 48406 - rho 48407 := by
    linear_combination r4020
  have haddx :
      rho 48409 * (1 + 3021 * (rho 48404 * seg52In1AccX53 rho) * (rho 48403 * seg52In1AccY53 rho)) =
        rho 48404 * seg52In1AccX53 rho + rho 48403 * seg52In1AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48410 * (1 - 3021 * (rho 48404 * seg52In1AccX53 rho) * (rho 48403 * seg52In1AccY53 rho)) =
        (-1) * (rho 48404 * seg52In1AccX53 rho) - rho 48403 * seg52In1AccY53 rho +
          (seg52In1AccY53 rho - seg52In1AccX53 rho * (-1)) * (rho 48403 + rho 48404) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48410 * (1 - rho 48408) = rho 48405 - rho 48406 - rho 48407 := ha5
      _ = (-1) * rho 48406 - rho 48407 + (seg52In1AccY53 rho - seg52In1AccX53 rho * (-1)) *
          (rho 48403 + rho 48404) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX54 rho = seg52In1AccX53 rho - Bool.toZMod bit * (seg52In1AccX53 rho - rho 48409) := by
    have hd : rho 48411 = Bool.toZMod bit * (rho 48409 - seg52In1AccX53 rho) := by
      rw [← hbit]
      unfold seg52In1AccX53
      linear_combination -r4021
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY54 rho = seg52In1AccY53 rho - Bool.toZMod bit * (seg52In1AccY53 rho - rho 48410) := by
    have hd : rho 48412 = Bool.toZMod bit * (rho 48410 - seg52In1AccY53 rho) := by
      rw [← hbit]
      unfold seg52In1AccY53
      linear_combination -r4022
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48403 * rho 48404 = rho 48413 := by linear_combination r4023
  have hd1 : rho 48403 * rho 48403 = rho 48414 := by linear_combination r4024
  have hd2 : rho 48404 * rho 48404 = rho 48415 := by linear_combination r4025
  have hd3 : rho 48416 * (rho 48404 * rho 48404 + rho 48403 * rho 48403 * (-1)) =
      2 * (rho 48403 * rho 48404) := by
    rw [hd0, hd1, hd2]
    linear_combination r4026
  have hd4 : rho 48417 * (2 - (rho 48404 * rho 48404 + rho 48403 * rho 48403 * (-1))) =
      rho 48404 * rho 48404 - rho 48403 * rho 48403 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4027
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX53 rho, seg52In1AccY53 rho⟩ ⟨rho 48403, rho 48404⟩
    ⟨rho 48409, rho 48410⟩ ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 48416, rho 48417⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4028 rho ∧ Seg52.relationRow4029 rho ∧ Seg52.relationRow4030 rho ∧ Seg52.relationRow4031 rho ∧ Seg52.relationRow4032 rho ∧ Seg52.relationRow4033 rho ∧ Seg52.relationRow4034 rho ∧ Seg52.relationRow4035 rho ∧ Seg52.relationRow4036 rho ∧ Seg52.relationRow4037 rho ∧ Seg52.relationRow4038 rho ∧ Seg52.relationRow4039 rho ∧ Seg52.relationRow4040 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p50, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart50 at p50

  rcases p50 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040⟩

theorem seg52In1_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47648 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48416, rho 48417⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 48416, rho 48417⟩
        ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 48429, rho 48430⟩ := by
  obtain ⟨r4028, r4029, r4030, r4031, r4032, r4033, r4034, r4035, r4036, r4037, r4038, r4039, r4040⟩ := seg52In1_rows54 rho h
  unfold Seg52.relationRow4028 at r4028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4028

  unfold Seg52.relationRow4029 at r4029

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4029

  unfold Seg52.relationRow4030 at r4030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4030

  unfold Seg52.relationRow4031 at r4031

  unfold Seg52.relationRow4032 at r4032

  unfold Seg52.relationRow4033 at r4033

  unfold Seg52.relationRow4034 at r4034

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4034

  unfold Seg52.relationRow4035 at r4035

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4035

  unfold Seg52.relationRow4036 at r4036

  unfold Seg52.relationRow4037 at r4037

  unfold Seg52.relationRow4038 at r4038

  unfold Seg52.relationRow4039 at r4039

  unfold Seg52.relationRow4040 at r4040

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX55 rho = seg52In1AccX54 rho + rho 48424 := by
    unfold seg52In1AccX55 seg52In1AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 54]

    ring

  have hnexty : seg52In1AccY55 rho = seg52In1AccY54 rho + rho 48425 := by
    unfold seg52In1AccY55 seg52In1AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 54]

    ring

  have ha0 : (rho 48416 + rho 48417) * (seg52In1AccX54 rho + seg52In1AccY54 rho) = rho 48418 := by
    unfold seg52In1AccX54 seg52In1AccY54
    linear_combination r4028
  have ha1 : rho 48417 * seg52In1AccX54 rho = rho 48419 := by
    unfold seg52In1AccX54
    linear_combination r4029
  have ha2 : rho 48416 * seg52In1AccY54 rho = rho 48420 := by
    unfold seg52In1AccY54
    linear_combination r4030
  have ha3 : 3021 * rho 48419 * rho 48420 = rho 48421 := by
    linear_combination r4031
  have ha4 : rho 48422 * (1 + rho 48421) = rho 48419 + rho 48420 := by
    linear_combination r4032
  have ha5 : rho 48423 * (1 - rho 48421) = rho 48418 - rho 48419 - rho 48420 := by
    linear_combination r4033
  have haddx :
      rho 48422 * (1 + 3021 * (rho 48417 * seg52In1AccX54 rho) * (rho 48416 * seg52In1AccY54 rho)) =
        rho 48417 * seg52In1AccX54 rho + rho 48416 * seg52In1AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48423 * (1 - 3021 * (rho 48417 * seg52In1AccX54 rho) * (rho 48416 * seg52In1AccY54 rho)) =
        (-1) * (rho 48417 * seg52In1AccX54 rho) - rho 48416 * seg52In1AccY54 rho +
          (seg52In1AccY54 rho - seg52In1AccX54 rho * (-1)) * (rho 48416 + rho 48417) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48423 * (1 - rho 48421) = rho 48418 - rho 48419 - rho 48420 := ha5
      _ = (-1) * rho 48419 - rho 48420 + (seg52In1AccY54 rho - seg52In1AccX54 rho * (-1)) *
          (rho 48416 + rho 48417) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX55 rho = seg52In1AccX54 rho - Bool.toZMod bit * (seg52In1AccX54 rho - rho 48422) := by
    have hd : rho 48424 = Bool.toZMod bit * (rho 48422 - seg52In1AccX54 rho) := by
      rw [← hbit]
      unfold seg52In1AccX54
      linear_combination -r4034
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY55 rho = seg52In1AccY54 rho - Bool.toZMod bit * (seg52In1AccY54 rho - rho 48423) := by
    have hd : rho 48425 = Bool.toZMod bit * (rho 48423 - seg52In1AccY54 rho) := by
      rw [← hbit]
      unfold seg52In1AccY54
      linear_combination -r4035
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48416 * rho 48417 = rho 48426 := by linear_combination r4036
  have hd1 : rho 48416 * rho 48416 = rho 48427 := by linear_combination r4037
  have hd2 : rho 48417 * rho 48417 = rho 48428 := by linear_combination r4038
  have hd3 : rho 48429 * (rho 48417 * rho 48417 + rho 48416 * rho 48416 * (-1)) =
      2 * (rho 48416 * rho 48417) := by
    rw [hd0, hd1, hd2]
    linear_combination r4039
  have hd4 : rho 48430 * (2 - (rho 48417 * rho 48417 + rho 48416 * rho 48416 * (-1))) =
      rho 48417 * rho 48417 - rho 48416 * rho 48416 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4040
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX54 rho, seg52In1AccY54 rho⟩ ⟨rho 48416, rho 48417⟩
    ⟨rho 48422, rho 48423⟩ ⟨seg52In1AccX55 rho, seg52In1AccY55 rho⟩ ⟨rho 48429, rho 48430⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg52In1_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg52In1_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg52In1_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg52In1_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg52In1_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg52In1_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg52In1_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg52In1_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg52In1_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg52In1_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
