import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4899 rho ∧ Seg52.relationRow4900 rho ∧ Seg52.relationRow4901 rho ∧ Seg52.relationRow4902 rho ∧ Seg52.relationRow4903 rho ∧ Seg52.relationRow4904 rho ∧ Seg52.relationRow4905 rho ∧ Seg52.relationRow4906 rho ∧ Seg52.relationRow4907 rho ∧ Seg52.relationRow4908 rho ∧ Seg52.relationRow4909 rho ∧ Seg52.relationRow4910 rho ∧ Seg52.relationRow4911 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911⟩

theorem seg52In1_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47715 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49287, rho 49288⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 49287, rho 49288⟩
        ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 49300, rho 49301⟩ := by
  obtain ⟨r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911⟩ := seg52In1_rows121 rho h
  unfold Seg52.relationRow4899 at r4899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4899

  unfold Seg52.relationRow4900 at r4900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4900

  unfold Seg52.relationRow4901 at r4901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4901

  unfold Seg52.relationRow4902 at r4902

  unfold Seg52.relationRow4903 at r4903

  unfold Seg52.relationRow4904 at r4904

  unfold Seg52.relationRow4905 at r4905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4905

  unfold Seg52.relationRow4906 at r4906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4906

  unfold Seg52.relationRow4907 at r4907

  unfold Seg52.relationRow4908 at r4908

  unfold Seg52.relationRow4909 at r4909

  unfold Seg52.relationRow4910 at r4910

  unfold Seg52.relationRow4911 at r4911

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX122 rho = seg52In1AccX121 rho + rho 49295 := by
    unfold seg52In1AccX122 seg52In1AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 121]

    ring

  have hnexty : seg52In1AccY122 rho = seg52In1AccY121 rho + rho 49296 := by
    unfold seg52In1AccY122 seg52In1AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 121]

    ring

  have ha0 : (rho 49287 + rho 49288) * (seg52In1AccX121 rho + seg52In1AccY121 rho) = rho 49289 := by
    unfold seg52In1AccX121 seg52In1AccY121
    linear_combination r4899
  have ha1 : rho 49288 * seg52In1AccX121 rho = rho 49290 := by
    unfold seg52In1AccX121
    linear_combination r4900
  have ha2 : rho 49287 * seg52In1AccY121 rho = rho 49291 := by
    unfold seg52In1AccY121
    linear_combination r4901
  have ha3 : 3021 * rho 49290 * rho 49291 = rho 49292 := by
    linear_combination r4902
  have ha4 : rho 49293 * (1 + rho 49292) = rho 49290 + rho 49291 := by
    linear_combination r4903
  have ha5 : rho 49294 * (1 - rho 49292) = rho 49289 - rho 49290 - rho 49291 := by
    linear_combination r4904
  have haddx :
      rho 49293 * (1 + 3021 * (rho 49288 * seg52In1AccX121 rho) * (rho 49287 * seg52In1AccY121 rho)) =
        rho 49288 * seg52In1AccX121 rho + rho 49287 * seg52In1AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49294 * (1 - 3021 * (rho 49288 * seg52In1AccX121 rho) * (rho 49287 * seg52In1AccY121 rho)) =
        (-1) * (rho 49288 * seg52In1AccX121 rho) - rho 49287 * seg52In1AccY121 rho +
          (seg52In1AccY121 rho - seg52In1AccX121 rho * (-1)) * (rho 49287 + rho 49288) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49294 * (1 - rho 49292) = rho 49289 - rho 49290 - rho 49291 := ha5
      _ = (-1) * rho 49290 - rho 49291 + (seg52In1AccY121 rho - seg52In1AccX121 rho * (-1)) *
          (rho 49287 + rho 49288) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX122 rho = seg52In1AccX121 rho - Bool.toZMod bit * (seg52In1AccX121 rho - rho 49293) := by
    have hd : rho 49295 = Bool.toZMod bit * (rho 49293 - seg52In1AccX121 rho) := by
      rw [← hbit]
      unfold seg52In1AccX121
      linear_combination -r4905
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY122 rho = seg52In1AccY121 rho - Bool.toZMod bit * (seg52In1AccY121 rho - rho 49294) := by
    have hd : rho 49296 = Bool.toZMod bit * (rho 49294 - seg52In1AccY121 rho) := by
      rw [← hbit]
      unfold seg52In1AccY121
      linear_combination -r4906
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49287 * rho 49288 = rho 49297 := by linear_combination r4907
  have hd1 : rho 49287 * rho 49287 = rho 49298 := by linear_combination r4908
  have hd2 : rho 49288 * rho 49288 = rho 49299 := by linear_combination r4909
  have hd3 : rho 49300 * (rho 49288 * rho 49288 + rho 49287 * rho 49287 * (-1)) =
      2 * (rho 49287 * rho 49288) := by
    rw [hd0, hd1, hd2]
    linear_combination r4910
  have hd4 : rho 49301 * (2 - (rho 49288 * rho 49288 + rho 49287 * rho 49287 * (-1))) =
      rho 49288 * rho 49288 - rho 49287 * rho 49287 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4911
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 49287, rho 49288⟩
    ⟨rho 49293, rho 49294⟩ ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 49300, rho 49301⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4912 rho ∧ Seg52.relationRow4913 rho ∧ Seg52.relationRow4914 rho ∧ Seg52.relationRow4915 rho ∧ Seg52.relationRow4916 rho ∧ Seg52.relationRow4917 rho ∧ Seg52.relationRow4918 rho ∧ Seg52.relationRow4919 rho ∧ Seg52.relationRow4920 rho ∧ Seg52.relationRow4921 rho ∧ Seg52.relationRow4922 rho ∧ Seg52.relationRow4923 rho ∧ Seg52.relationRow4924 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924⟩

theorem seg52In1_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47716 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49300, rho 49301⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 49300, rho 49301⟩
        ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 49313, rho 49314⟩ := by
  obtain ⟨r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924⟩ := seg52In1_rows122 rho h
  unfold Seg52.relationRow4912 at r4912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4912

  unfold Seg52.relationRow4913 at r4913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4913

  unfold Seg52.relationRow4914 at r4914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4914

  unfold Seg52.relationRow4915 at r4915

  unfold Seg52.relationRow4916 at r4916

  unfold Seg52.relationRow4917 at r4917

  unfold Seg52.relationRow4918 at r4918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4918

  unfold Seg52.relationRow4919 at r4919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4919

  unfold Seg52.relationRow4920 at r4920

  unfold Seg52.relationRow4921 at r4921

  unfold Seg52.relationRow4922 at r4922

  unfold Seg52.relationRow4923 at r4923

  unfold Seg52.relationRow4924 at r4924

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX123 rho = seg52In1AccX122 rho + rho 49308 := by
    unfold seg52In1AccX123 seg52In1AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 122]

    ring

  have hnexty : seg52In1AccY123 rho = seg52In1AccY122 rho + rho 49309 := by
    unfold seg52In1AccY123 seg52In1AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 122]

    ring

  have ha0 : (rho 49300 + rho 49301) * (seg52In1AccX122 rho + seg52In1AccY122 rho) = rho 49302 := by
    unfold seg52In1AccX122 seg52In1AccY122
    linear_combination r4912
  have ha1 : rho 49301 * seg52In1AccX122 rho = rho 49303 := by
    unfold seg52In1AccX122
    linear_combination r4913
  have ha2 : rho 49300 * seg52In1AccY122 rho = rho 49304 := by
    unfold seg52In1AccY122
    linear_combination r4914
  have ha3 : 3021 * rho 49303 * rho 49304 = rho 49305 := by
    linear_combination r4915
  have ha4 : rho 49306 * (1 + rho 49305) = rho 49303 + rho 49304 := by
    linear_combination r4916
  have ha5 : rho 49307 * (1 - rho 49305) = rho 49302 - rho 49303 - rho 49304 := by
    linear_combination r4917
  have haddx :
      rho 49306 * (1 + 3021 * (rho 49301 * seg52In1AccX122 rho) * (rho 49300 * seg52In1AccY122 rho)) =
        rho 49301 * seg52In1AccX122 rho + rho 49300 * seg52In1AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49307 * (1 - 3021 * (rho 49301 * seg52In1AccX122 rho) * (rho 49300 * seg52In1AccY122 rho)) =
        (-1) * (rho 49301 * seg52In1AccX122 rho) - rho 49300 * seg52In1AccY122 rho +
          (seg52In1AccY122 rho - seg52In1AccX122 rho * (-1)) * (rho 49300 + rho 49301) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49307 * (1 - rho 49305) = rho 49302 - rho 49303 - rho 49304 := ha5
      _ = (-1) * rho 49303 - rho 49304 + (seg52In1AccY122 rho - seg52In1AccX122 rho * (-1)) *
          (rho 49300 + rho 49301) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX123 rho = seg52In1AccX122 rho - Bool.toZMod bit * (seg52In1AccX122 rho - rho 49306) := by
    have hd : rho 49308 = Bool.toZMod bit * (rho 49306 - seg52In1AccX122 rho) := by
      rw [← hbit]
      unfold seg52In1AccX122
      linear_combination -r4918
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY123 rho = seg52In1AccY122 rho - Bool.toZMod bit * (seg52In1AccY122 rho - rho 49307) := by
    have hd : rho 49309 = Bool.toZMod bit * (rho 49307 - seg52In1AccY122 rho) := by
      rw [← hbit]
      unfold seg52In1AccY122
      linear_combination -r4919
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49300 * rho 49301 = rho 49310 := by linear_combination r4920
  have hd1 : rho 49300 * rho 49300 = rho 49311 := by linear_combination r4921
  have hd2 : rho 49301 * rho 49301 = rho 49312 := by linear_combination r4922
  have hd3 : rho 49313 * (rho 49301 * rho 49301 + rho 49300 * rho 49300 * (-1)) =
      2 * (rho 49300 * rho 49301) := by
    rw [hd0, hd1, hd2]
    linear_combination r4923
  have hd4 : rho 49314 * (2 - (rho 49301 * rho 49301 + rho 49300 * rho 49300 * (-1))) =
      rho 49301 * rho 49301 - rho 49300 * rho 49300 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4924
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX122 rho, seg52In1AccY122 rho⟩ ⟨rho 49300, rho 49301⟩
    ⟨rho 49306, rho 49307⟩ ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 49313, rho 49314⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4925 rho ∧ Seg52.relationRow4926 rho ∧ Seg52.relationRow4927 rho ∧ Seg52.relationRow4928 rho ∧ Seg52.relationRow4929 rho ∧ Seg52.relationRow4930 rho ∧ Seg52.relationRow4931 rho ∧ Seg52.relationRow4932 rho ∧ Seg52.relationRow4933 rho ∧ Seg52.relationRow4934 rho ∧ Seg52.relationRow4935 rho ∧ Seg52.relationRow4936 rho ∧ Seg52.relationRow4937 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937⟩

theorem seg52In1_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47717 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49313, rho 49314⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 49313, rho 49314⟩
        ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 49326, rho 49327⟩ := by
  obtain ⟨r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937⟩ := seg52In1_rows123 rho h
  unfold Seg52.relationRow4925 at r4925

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4925

  unfold Seg52.relationRow4926 at r4926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4926

  unfold Seg52.relationRow4927 at r4927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4927

  unfold Seg52.relationRow4928 at r4928

  unfold Seg52.relationRow4929 at r4929

  unfold Seg52.relationRow4930 at r4930

  unfold Seg52.relationRow4931 at r4931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4931

  unfold Seg52.relationRow4932 at r4932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4932

  unfold Seg52.relationRow4933 at r4933

  unfold Seg52.relationRow4934 at r4934

  unfold Seg52.relationRow4935 at r4935

  unfold Seg52.relationRow4936 at r4936

  unfold Seg52.relationRow4937 at r4937

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX124 rho = seg52In1AccX123 rho + rho 49321 := by
    unfold seg52In1AccX124 seg52In1AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 123]

    ring

  have hnexty : seg52In1AccY124 rho = seg52In1AccY123 rho + rho 49322 := by
    unfold seg52In1AccY124 seg52In1AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 123]

    ring

  have ha0 : (rho 49313 + rho 49314) * (seg52In1AccX123 rho + seg52In1AccY123 rho) = rho 49315 := by
    unfold seg52In1AccX123 seg52In1AccY123
    linear_combination r4925
  have ha1 : rho 49314 * seg52In1AccX123 rho = rho 49316 := by
    unfold seg52In1AccX123
    linear_combination r4926
  have ha2 : rho 49313 * seg52In1AccY123 rho = rho 49317 := by
    unfold seg52In1AccY123
    linear_combination r4927
  have ha3 : 3021 * rho 49316 * rho 49317 = rho 49318 := by
    linear_combination r4928
  have ha4 : rho 49319 * (1 + rho 49318) = rho 49316 + rho 49317 := by
    linear_combination r4929
  have ha5 : rho 49320 * (1 - rho 49318) = rho 49315 - rho 49316 - rho 49317 := by
    linear_combination r4930
  have haddx :
      rho 49319 * (1 + 3021 * (rho 49314 * seg52In1AccX123 rho) * (rho 49313 * seg52In1AccY123 rho)) =
        rho 49314 * seg52In1AccX123 rho + rho 49313 * seg52In1AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49320 * (1 - 3021 * (rho 49314 * seg52In1AccX123 rho) * (rho 49313 * seg52In1AccY123 rho)) =
        (-1) * (rho 49314 * seg52In1AccX123 rho) - rho 49313 * seg52In1AccY123 rho +
          (seg52In1AccY123 rho - seg52In1AccX123 rho * (-1)) * (rho 49313 + rho 49314) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49320 * (1 - rho 49318) = rho 49315 - rho 49316 - rho 49317 := ha5
      _ = (-1) * rho 49316 - rho 49317 + (seg52In1AccY123 rho - seg52In1AccX123 rho * (-1)) *
          (rho 49313 + rho 49314) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX124 rho = seg52In1AccX123 rho - Bool.toZMod bit * (seg52In1AccX123 rho - rho 49319) := by
    have hd : rho 49321 = Bool.toZMod bit * (rho 49319 - seg52In1AccX123 rho) := by
      rw [← hbit]
      unfold seg52In1AccX123
      linear_combination -r4931
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY124 rho = seg52In1AccY123 rho - Bool.toZMod bit * (seg52In1AccY123 rho - rho 49320) := by
    have hd : rho 49322 = Bool.toZMod bit * (rho 49320 - seg52In1AccY123 rho) := by
      rw [← hbit]
      unfold seg52In1AccY123
      linear_combination -r4932
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49313 * rho 49314 = rho 49323 := by linear_combination r4933
  have hd1 : rho 49313 * rho 49313 = rho 49324 := by linear_combination r4934
  have hd2 : rho 49314 * rho 49314 = rho 49325 := by linear_combination r4935
  have hd3 : rho 49326 * (rho 49314 * rho 49314 + rho 49313 * rho 49313 * (-1)) =
      2 * (rho 49313 * rho 49314) := by
    rw [hd0, hd1, hd2]
    linear_combination r4936
  have hd4 : rho 49327 * (2 - (rho 49314 * rho 49314 + rho 49313 * rho 49313 * (-1))) =
      rho 49314 * rho 49314 - rho 49313 * rho 49313 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4937
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX123 rho, seg52In1AccY123 rho⟩ ⟨rho 49313, rho 49314⟩
    ⟨rho 49319, rho 49320⟩ ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 49326, rho 49327⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4938 rho ∧ Seg52.relationRow4939 rho ∧ Seg52.relationRow4940 rho ∧ Seg52.relationRow4941 rho ∧ Seg52.relationRow4942 rho ∧ Seg52.relationRow4943 rho ∧ Seg52.relationRow4944 rho ∧ Seg52.relationRow4945 rho ∧ Seg52.relationRow4946 rho ∧ Seg52.relationRow4947 rho ∧ Seg52.relationRow4948 rho ∧ Seg52.relationRow4949 rho ∧ Seg52.relationRow4950 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950⟩

theorem seg52In1_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47718 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49326, rho 49327⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 49326, rho 49327⟩
        ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 49339, rho 49340⟩ := by
  obtain ⟨r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950⟩ := seg52In1_rows124 rho h
  unfold Seg52.relationRow4938 at r4938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4938

  unfold Seg52.relationRow4939 at r4939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4939

  unfold Seg52.relationRow4940 at r4940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4940

  unfold Seg52.relationRow4941 at r4941

  unfold Seg52.relationRow4942 at r4942

  unfold Seg52.relationRow4943 at r4943

  unfold Seg52.relationRow4944 at r4944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4944

  unfold Seg52.relationRow4945 at r4945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4945

  unfold Seg52.relationRow4946 at r4946

  unfold Seg52.relationRow4947 at r4947

  unfold Seg52.relationRow4948 at r4948

  unfold Seg52.relationRow4949 at r4949

  unfold Seg52.relationRow4950 at r4950

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX125 rho = seg52In1AccX124 rho + rho 49334 := by
    unfold seg52In1AccX125 seg52In1AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 124]

    ring

  have hnexty : seg52In1AccY125 rho = seg52In1AccY124 rho + rho 49335 := by
    unfold seg52In1AccY125 seg52In1AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 124]

    ring

  have ha0 : (rho 49326 + rho 49327) * (seg52In1AccX124 rho + seg52In1AccY124 rho) = rho 49328 := by
    unfold seg52In1AccX124 seg52In1AccY124
    linear_combination r4938
  have ha1 : rho 49327 * seg52In1AccX124 rho = rho 49329 := by
    unfold seg52In1AccX124
    linear_combination r4939
  have ha2 : rho 49326 * seg52In1AccY124 rho = rho 49330 := by
    unfold seg52In1AccY124
    linear_combination r4940
  have ha3 : 3021 * rho 49329 * rho 49330 = rho 49331 := by
    linear_combination r4941
  have ha4 : rho 49332 * (1 + rho 49331) = rho 49329 + rho 49330 := by
    linear_combination r4942
  have ha5 : rho 49333 * (1 - rho 49331) = rho 49328 - rho 49329 - rho 49330 := by
    linear_combination r4943
  have haddx :
      rho 49332 * (1 + 3021 * (rho 49327 * seg52In1AccX124 rho) * (rho 49326 * seg52In1AccY124 rho)) =
        rho 49327 * seg52In1AccX124 rho + rho 49326 * seg52In1AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49333 * (1 - 3021 * (rho 49327 * seg52In1AccX124 rho) * (rho 49326 * seg52In1AccY124 rho)) =
        (-1) * (rho 49327 * seg52In1AccX124 rho) - rho 49326 * seg52In1AccY124 rho +
          (seg52In1AccY124 rho - seg52In1AccX124 rho * (-1)) * (rho 49326 + rho 49327) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49333 * (1 - rho 49331) = rho 49328 - rho 49329 - rho 49330 := ha5
      _ = (-1) * rho 49329 - rho 49330 + (seg52In1AccY124 rho - seg52In1AccX124 rho * (-1)) *
          (rho 49326 + rho 49327) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX125 rho = seg52In1AccX124 rho - Bool.toZMod bit * (seg52In1AccX124 rho - rho 49332) := by
    have hd : rho 49334 = Bool.toZMod bit * (rho 49332 - seg52In1AccX124 rho) := by
      rw [← hbit]
      unfold seg52In1AccX124
      linear_combination -r4944
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY125 rho = seg52In1AccY124 rho - Bool.toZMod bit * (seg52In1AccY124 rho - rho 49333) := by
    have hd : rho 49335 = Bool.toZMod bit * (rho 49333 - seg52In1AccY124 rho) := by
      rw [← hbit]
      unfold seg52In1AccY124
      linear_combination -r4945
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49326 * rho 49327 = rho 49336 := by linear_combination r4946
  have hd1 : rho 49326 * rho 49326 = rho 49337 := by linear_combination r4947
  have hd2 : rho 49327 * rho 49327 = rho 49338 := by linear_combination r4948
  have hd3 : rho 49339 * (rho 49327 * rho 49327 + rho 49326 * rho 49326 * (-1)) =
      2 * (rho 49326 * rho 49327) := by
    rw [hd0, hd1, hd2]
    linear_combination r4949
  have hd4 : rho 49340 * (2 - (rho 49327 * rho 49327 + rho 49326 * rho 49326 * (-1))) =
      rho 49327 * rho 49327 - rho 49326 * rho 49326 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4950
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX124 rho, seg52In1AccY124 rho⟩ ⟨rho 49326, rho 49327⟩
    ⟨rho 49332, rho 49333⟩ ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 49339, rho 49340⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4951 rho ∧ Seg52.relationRow4952 rho ∧ Seg52.relationRow4953 rho ∧ Seg52.relationRow4954 rho ∧ Seg52.relationRow4955 rho ∧ Seg52.relationRow4956 rho ∧ Seg52.relationRow4957 rho ∧ Seg52.relationRow4958 rho ∧ Seg52.relationRow4959 rho ∧ Seg52.relationRow4960 rho ∧ Seg52.relationRow4961 rho ∧ Seg52.relationRow4962 rho ∧ Seg52.relationRow4963 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, p62, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨r4960, r4961, r4962, r4963, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959, r4960, r4961, r4962, r4963⟩

theorem seg52In1_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47719 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49339, rho 49340⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 49339, rho 49340⟩
        ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 49352, rho 49353⟩ := by
  obtain ⟨r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959, r4960, r4961, r4962, r4963⟩ := seg52In1_rows125 rho h
  unfold Seg52.relationRow4951 at r4951

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4951

  unfold Seg52.relationRow4952 at r4952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4952

  unfold Seg52.relationRow4953 at r4953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4953

  unfold Seg52.relationRow4954 at r4954

  unfold Seg52.relationRow4955 at r4955

  unfold Seg52.relationRow4956 at r4956

  unfold Seg52.relationRow4957 at r4957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4957

  unfold Seg52.relationRow4958 at r4958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4958

  unfold Seg52.relationRow4959 at r4959

  unfold Seg52.relationRow4960 at r4960

  unfold Seg52.relationRow4961 at r4961

  unfold Seg52.relationRow4962 at r4962

  unfold Seg52.relationRow4963 at r4963

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX126 rho = seg52In1AccX125 rho + rho 49347 := by
    unfold seg52In1AccX126 seg52In1AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 125]

    ring

  have hnexty : seg52In1AccY126 rho = seg52In1AccY125 rho + rho 49348 := by
    unfold seg52In1AccY126 seg52In1AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 125]

    ring

  have ha0 : (rho 49339 + rho 49340) * (seg52In1AccX125 rho + seg52In1AccY125 rho) = rho 49341 := by
    unfold seg52In1AccX125 seg52In1AccY125
    linear_combination r4951
  have ha1 : rho 49340 * seg52In1AccX125 rho = rho 49342 := by
    unfold seg52In1AccX125
    linear_combination r4952
  have ha2 : rho 49339 * seg52In1AccY125 rho = rho 49343 := by
    unfold seg52In1AccY125
    linear_combination r4953
  have ha3 : 3021 * rho 49342 * rho 49343 = rho 49344 := by
    linear_combination r4954
  have ha4 : rho 49345 * (1 + rho 49344) = rho 49342 + rho 49343 := by
    linear_combination r4955
  have ha5 : rho 49346 * (1 - rho 49344) = rho 49341 - rho 49342 - rho 49343 := by
    linear_combination r4956
  have haddx :
      rho 49345 * (1 + 3021 * (rho 49340 * seg52In1AccX125 rho) * (rho 49339 * seg52In1AccY125 rho)) =
        rho 49340 * seg52In1AccX125 rho + rho 49339 * seg52In1AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49346 * (1 - 3021 * (rho 49340 * seg52In1AccX125 rho) * (rho 49339 * seg52In1AccY125 rho)) =
        (-1) * (rho 49340 * seg52In1AccX125 rho) - rho 49339 * seg52In1AccY125 rho +
          (seg52In1AccY125 rho - seg52In1AccX125 rho * (-1)) * (rho 49339 + rho 49340) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49346 * (1 - rho 49344) = rho 49341 - rho 49342 - rho 49343 := ha5
      _ = (-1) * rho 49342 - rho 49343 + (seg52In1AccY125 rho - seg52In1AccX125 rho * (-1)) *
          (rho 49339 + rho 49340) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX126 rho = seg52In1AccX125 rho - Bool.toZMod bit * (seg52In1AccX125 rho - rho 49345) := by
    have hd : rho 49347 = Bool.toZMod bit * (rho 49345 - seg52In1AccX125 rho) := by
      rw [← hbit]
      unfold seg52In1AccX125
      linear_combination -r4957
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY126 rho = seg52In1AccY125 rho - Bool.toZMod bit * (seg52In1AccY125 rho - rho 49346) := by
    have hd : rho 49348 = Bool.toZMod bit * (rho 49346 - seg52In1AccY125 rho) := by
      rw [← hbit]
      unfold seg52In1AccY125
      linear_combination -r4958
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49339 * rho 49340 = rho 49349 := by linear_combination r4959
  have hd1 : rho 49339 * rho 49339 = rho 49350 := by linear_combination r4960
  have hd2 : rho 49340 * rho 49340 = rho 49351 := by linear_combination r4961
  have hd3 : rho 49352 * (rho 49340 * rho 49340 + rho 49339 * rho 49339 * (-1)) =
      2 * (rho 49339 * rho 49340) := by
    rw [hd0, hd1, hd2]
    linear_combination r4962
  have hd4 : rho 49353 * (2 - (rho 49340 * rho 49340 + rho 49339 * rho 49339 * (-1))) =
      rho 49340 * rho 49340 - rho 49339 * rho 49339 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4963
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX125 rho, seg52In1AccY125 rho⟩ ⟨rho 49339, rho 49340⟩
    ⟨rho 49345, rho 49346⟩ ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 49352, rho 49353⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4964 rho ∧ Seg52.relationRow4965 rho ∧ Seg52.relationRow4966 rho ∧ Seg52.relationRow4967 rho ∧ Seg52.relationRow4968 rho ∧ Seg52.relationRow4969 rho ∧ Seg52.relationRow4970 rho ∧ Seg52.relationRow4971 rho ∧ Seg52.relationRow4972 rho ∧ Seg52.relationRow4973 rho ∧ Seg52.relationRow4974 rho ∧ Seg52.relationRow4975 rho ∧ Seg52.relationRow4976 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p62, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976⟩

theorem seg52In1_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47720 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49352, rho 49353⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 49352, rho 49353⟩
        ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 49365, rho 49366⟩ := by
  obtain ⟨r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976⟩ := seg52In1_rows126 rho h
  unfold Seg52.relationRow4964 at r4964

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4964

  unfold Seg52.relationRow4965 at r4965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4965

  unfold Seg52.relationRow4966 at r4966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4966

  unfold Seg52.relationRow4967 at r4967

  unfold Seg52.relationRow4968 at r4968

  unfold Seg52.relationRow4969 at r4969

  unfold Seg52.relationRow4970 at r4970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4970

  unfold Seg52.relationRow4971 at r4971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4971

  unfold Seg52.relationRow4972 at r4972

  unfold Seg52.relationRow4973 at r4973

  unfold Seg52.relationRow4974 at r4974

  unfold Seg52.relationRow4975 at r4975

  unfold Seg52.relationRow4976 at r4976

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX127 rho = seg52In1AccX126 rho + rho 49360 := by
    unfold seg52In1AccX127 seg52In1AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 126]

    ring

  have hnexty : seg52In1AccY127 rho = seg52In1AccY126 rho + rho 49361 := by
    unfold seg52In1AccY127 seg52In1AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 126]

    ring

  have ha0 : (rho 49352 + rho 49353) * (seg52In1AccX126 rho + seg52In1AccY126 rho) = rho 49354 := by
    unfold seg52In1AccX126 seg52In1AccY126
    linear_combination r4964
  have ha1 : rho 49353 * seg52In1AccX126 rho = rho 49355 := by
    unfold seg52In1AccX126
    linear_combination r4965
  have ha2 : rho 49352 * seg52In1AccY126 rho = rho 49356 := by
    unfold seg52In1AccY126
    linear_combination r4966
  have ha3 : 3021 * rho 49355 * rho 49356 = rho 49357 := by
    linear_combination r4967
  have ha4 : rho 49358 * (1 + rho 49357) = rho 49355 + rho 49356 := by
    linear_combination r4968
  have ha5 : rho 49359 * (1 - rho 49357) = rho 49354 - rho 49355 - rho 49356 := by
    linear_combination r4969
  have haddx :
      rho 49358 * (1 + 3021 * (rho 49353 * seg52In1AccX126 rho) * (rho 49352 * seg52In1AccY126 rho)) =
        rho 49353 * seg52In1AccX126 rho + rho 49352 * seg52In1AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49359 * (1 - 3021 * (rho 49353 * seg52In1AccX126 rho) * (rho 49352 * seg52In1AccY126 rho)) =
        (-1) * (rho 49353 * seg52In1AccX126 rho) - rho 49352 * seg52In1AccY126 rho +
          (seg52In1AccY126 rho - seg52In1AccX126 rho * (-1)) * (rho 49352 + rho 49353) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49359 * (1 - rho 49357) = rho 49354 - rho 49355 - rho 49356 := ha5
      _ = (-1) * rho 49355 - rho 49356 + (seg52In1AccY126 rho - seg52In1AccX126 rho * (-1)) *
          (rho 49352 + rho 49353) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX127 rho = seg52In1AccX126 rho - Bool.toZMod bit * (seg52In1AccX126 rho - rho 49358) := by
    have hd : rho 49360 = Bool.toZMod bit * (rho 49358 - seg52In1AccX126 rho) := by
      rw [← hbit]
      unfold seg52In1AccX126
      linear_combination -r4970
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY127 rho = seg52In1AccY126 rho - Bool.toZMod bit * (seg52In1AccY126 rho - rho 49359) := by
    have hd : rho 49361 = Bool.toZMod bit * (rho 49359 - seg52In1AccY126 rho) := by
      rw [← hbit]
      unfold seg52In1AccY126
      linear_combination -r4971
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49352 * rho 49353 = rho 49362 := by linear_combination r4972
  have hd1 : rho 49352 * rho 49352 = rho 49363 := by linear_combination r4973
  have hd2 : rho 49353 * rho 49353 = rho 49364 := by linear_combination r4974
  have hd3 : rho 49365 * (rho 49353 * rho 49353 + rho 49352 * rho 49352 * (-1)) =
      2 * (rho 49352 * rho 49353) := by
    rw [hd0, hd1, hd2]
    linear_combination r4975
  have hd4 : rho 49366 * (2 - (rho 49353 * rho 49353 + rho 49352 * rho 49352 * (-1))) =
      rho 49353 * rho 49353 - rho 49352 * rho 49352 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4976
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX126 rho, seg52In1AccY126 rho⟩ ⟨rho 49352, rho 49353⟩
    ⟨rho 49358, rho 49359⟩ ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 49365, rho 49366⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4977 rho ∧ Seg52.relationRow4978 rho ∧ Seg52.relationRow4979 rho ∧ Seg52.relationRow4980 rho ∧ Seg52.relationRow4981 rho ∧ Seg52.relationRow4982 rho ∧ Seg52.relationRow4983 rho ∧ Seg52.relationRow4984 rho ∧ Seg52.relationRow4985 rho ∧ Seg52.relationRow4986 rho ∧ Seg52.relationRow4987 rho ∧ Seg52.relationRow4988 rho ∧ Seg52.relationRow4989 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p62, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989⟩

theorem seg52In1_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47721 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49365, rho 49366⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 49365, rho 49366⟩
        ⟨seg52In1AccX128 rho, seg52In1AccY128 rho⟩ ⟨rho 49378, rho 49379⟩ := by
  obtain ⟨r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989⟩ := seg52In1_rows127 rho h
  unfold Seg52.relationRow4977 at r4977

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4977

  unfold Seg52.relationRow4978 at r4978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4978

  unfold Seg52.relationRow4979 at r4979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979

  unfold Seg52.relationRow4980 at r4980

  unfold Seg52.relationRow4981 at r4981

  unfold Seg52.relationRow4982 at r4982

  unfold Seg52.relationRow4983 at r4983

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4983

  unfold Seg52.relationRow4984 at r4984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4984

  unfold Seg52.relationRow4985 at r4985

  unfold Seg52.relationRow4986 at r4986

  unfold Seg52.relationRow4987 at r4987

  unfold Seg52.relationRow4988 at r4988

  unfold Seg52.relationRow4989 at r4989

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX128 rho = seg52In1AccX127 rho + rho 49373 := by
    unfold seg52In1AccX128 seg52In1AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 127]

    ring

  have hnexty : seg52In1AccY128 rho = seg52In1AccY127 rho + rho 49374 := by
    unfold seg52In1AccY128 seg52In1AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 127]

    ring

  have ha0 : (rho 49365 + rho 49366) * (seg52In1AccX127 rho + seg52In1AccY127 rho) = rho 49367 := by
    unfold seg52In1AccX127 seg52In1AccY127
    linear_combination r4977
  have ha1 : rho 49366 * seg52In1AccX127 rho = rho 49368 := by
    unfold seg52In1AccX127
    linear_combination r4978
  have ha2 : rho 49365 * seg52In1AccY127 rho = rho 49369 := by
    unfold seg52In1AccY127
    linear_combination r4979
  have ha3 : 3021 * rho 49368 * rho 49369 = rho 49370 := by
    linear_combination r4980
  have ha4 : rho 49371 * (1 + rho 49370) = rho 49368 + rho 49369 := by
    linear_combination r4981
  have ha5 : rho 49372 * (1 - rho 49370) = rho 49367 - rho 49368 - rho 49369 := by
    linear_combination r4982
  have haddx :
      rho 49371 * (1 + 3021 * (rho 49366 * seg52In1AccX127 rho) * (rho 49365 * seg52In1AccY127 rho)) =
        rho 49366 * seg52In1AccX127 rho + rho 49365 * seg52In1AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49372 * (1 - 3021 * (rho 49366 * seg52In1AccX127 rho) * (rho 49365 * seg52In1AccY127 rho)) =
        (-1) * (rho 49366 * seg52In1AccX127 rho) - rho 49365 * seg52In1AccY127 rho +
          (seg52In1AccY127 rho - seg52In1AccX127 rho * (-1)) * (rho 49365 + rho 49366) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49372 * (1 - rho 49370) = rho 49367 - rho 49368 - rho 49369 := ha5
      _ = (-1) * rho 49368 - rho 49369 + (seg52In1AccY127 rho - seg52In1AccX127 rho * (-1)) *
          (rho 49365 + rho 49366) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX128 rho = seg52In1AccX127 rho - Bool.toZMod bit * (seg52In1AccX127 rho - rho 49371) := by
    have hd : rho 49373 = Bool.toZMod bit * (rho 49371 - seg52In1AccX127 rho) := by
      rw [← hbit]
      unfold seg52In1AccX127
      linear_combination -r4983
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY128 rho = seg52In1AccY127 rho - Bool.toZMod bit * (seg52In1AccY127 rho - rho 49372) := by
    have hd : rho 49374 = Bool.toZMod bit * (rho 49372 - seg52In1AccY127 rho) := by
      rw [← hbit]
      unfold seg52In1AccY127
      linear_combination -r4984
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49365 * rho 49366 = rho 49375 := by linear_combination r4985
  have hd1 : rho 49365 * rho 49365 = rho 49376 := by linear_combination r4986
  have hd2 : rho 49366 * rho 49366 = rho 49377 := by linear_combination r4987
  have hd3 : rho 49378 * (rho 49366 * rho 49366 + rho 49365 * rho 49365 * (-1)) =
      2 * (rho 49365 * rho 49366) := by
    rw [hd0, hd1, hd2]
    linear_combination r4988
  have hd4 : rho 49379 * (2 - (rho 49366 * rho 49366 + rho 49365 * rho 49365 * (-1))) =
      rho 49366 * rho 49366 - rho 49365 * rho 49365 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4989
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX127 rho, seg52In1AccY127 rho⟩ ⟨rho 49365, rho 49366⟩
    ⟨rho 49371, rho 49372⟩ ⟨seg52In1AccX128 rho, seg52In1AccY128 rho⟩ ⟨rho 49378, rho 49379⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg52In1_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg52In1_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg52In1_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg52In1_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg52In1_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg52In1_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
