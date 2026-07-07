import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4908 rho ∧ Seg52.relationRow4909 rho ∧ Seg52.relationRow4910 rho ∧ Seg52.relationRow4911 rho ∧ Seg52.relationRow4912 rho ∧ Seg52.relationRow4913 rho ∧ Seg52.relationRow4914 rho ∧ Seg52.relationRow4915 rho ∧ Seg52.relationRow4916 rho ∧ Seg52.relationRow4917 rho ∧ Seg52.relationRow4918 rho ∧ Seg52.relationRow4919 rho ∧ Seg52.relationRow4920 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920⟩

theorem seg52Out0_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48779 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49295, rho 49296⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49295, rho 49296⟩
        ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49308, rho 49309⟩ := by
  obtain ⟨r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920⟩ := seg52Out0_rows33 rho h
  unfold Seg52.relationRow4908 at r4908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908

  unfold Seg52.relationRow4909 at r4909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909

  unfold Seg52.relationRow4910 at r4910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4910

  unfold Seg52.relationRow4911 at r4911

  unfold Seg52.relationRow4912 at r4912

  unfold Seg52.relationRow4913 at r4913

  unfold Seg52.relationRow4914 at r4914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4914

  unfold Seg52.relationRow4915 at r4915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915

  unfold Seg52.relationRow4916 at r4916

  unfold Seg52.relationRow4917 at r4917

  unfold Seg52.relationRow4918 at r4918

  unfold Seg52.relationRow4919 at r4919

  unfold Seg52.relationRow4920 at r4920

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX34 rho = seg52Out0AccX33 rho + rho 49303 := by
    unfold seg52Out0AccX34 seg52Out0AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 33]

    ring

  have hnexty : seg52Out0AccY34 rho = seg52Out0AccY33 rho + rho 49304 := by
    unfold seg52Out0AccY34 seg52Out0AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 33]

    ring

  have ha0 : (rho 49295 + rho 49296) * (seg52Out0AccX33 rho + seg52Out0AccY33 rho) = rho 49297 := by
    unfold seg52Out0AccX33 seg52Out0AccY33
    linear_combination r4908
  have ha1 : rho 49296 * seg52Out0AccX33 rho = rho 49298 := by
    unfold seg52Out0AccX33
    linear_combination r4909
  have ha2 : rho 49295 * seg52Out0AccY33 rho = rho 49299 := by
    unfold seg52Out0AccY33
    linear_combination r4910
  have ha3 : 3021 * rho 49298 * rho 49299 = rho 49300 := by
    linear_combination r4911
  have ha4 : rho 49301 * (1 + rho 49300) = rho 49298 + rho 49299 := by
    linear_combination r4912
  have ha5 : rho 49302 * (1 - rho 49300) = rho 49297 - rho 49298 - rho 49299 := by
    linear_combination r4913
  have haddx :
      rho 49301 * (1 + 3021 * (rho 49296 * seg52Out0AccX33 rho) * (rho 49295 * seg52Out0AccY33 rho)) =
        rho 49296 * seg52Out0AccX33 rho + rho 49295 * seg52Out0AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49302 * (1 - 3021 * (rho 49296 * seg52Out0AccX33 rho) * (rho 49295 * seg52Out0AccY33 rho)) =
        (-1) * (rho 49296 * seg52Out0AccX33 rho) - rho 49295 * seg52Out0AccY33 rho +
          (seg52Out0AccY33 rho - seg52Out0AccX33 rho * (-1)) * (rho 49295 + rho 49296) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49302 * (1 - rho 49300) = rho 49297 - rho 49298 - rho 49299 := ha5
      _ = (-1) * rho 49298 - rho 49299 + (seg52Out0AccY33 rho - seg52Out0AccX33 rho * (-1)) *
          (rho 49295 + rho 49296) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX34 rho = seg52Out0AccX33 rho - Bool.toZMod bit * (seg52Out0AccX33 rho - rho 49301) := by
    have hd : rho 49303 = Bool.toZMod bit * (rho 49301 - seg52Out0AccX33 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX33
      linear_combination -r4914
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY34 rho = seg52Out0AccY33 rho - Bool.toZMod bit * (seg52Out0AccY33 rho - rho 49302) := by
    have hd : rho 49304 = Bool.toZMod bit * (rho 49302 - seg52Out0AccY33 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY33
      linear_combination -r4915
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49295 * rho 49296 = rho 49305 := by linear_combination r4916
  have hd1 : rho 49295 * rho 49295 = rho 49306 := by linear_combination r4917
  have hd2 : rho 49296 * rho 49296 = rho 49307 := by linear_combination r4918
  have hd3 : rho 49308 * (rho 49296 * rho 49296 + rho 49295 * rho 49295 * (-1)) =
      2 * (rho 49295 * rho 49296) := by
    rw [hd0, hd1, hd2]
    linear_combination r4919
  have hd4 : rho 49309 * (2 - (rho 49296 * rho 49296 + rho 49295 * rho 49295 * (-1))) =
      rho 49296 * rho 49296 - rho 49295 * rho 49295 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4920
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49295, rho 49296⟩
    ⟨rho 49301, rho 49302⟩ ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49308, rho 49309⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4921 rho ∧ Seg52.relationRow4922 rho ∧ Seg52.relationRow4923 rho ∧ Seg52.relationRow4924 rho ∧ Seg52.relationRow4925 rho ∧ Seg52.relationRow4926 rho ∧ Seg52.relationRow4927 rho ∧ Seg52.relationRow4928 rho ∧ Seg52.relationRow4929 rho ∧ Seg52.relationRow4930 rho ∧ Seg52.relationRow4931 rho ∧ Seg52.relationRow4932 rho ∧ Seg52.relationRow4933 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933⟩

theorem seg52Out0_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48780 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49308, rho 49309⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49308, rho 49309⟩
        ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49321, rho 49322⟩ := by
  obtain ⟨r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933⟩ := seg52Out0_rows34 rho h
  unfold Seg52.relationRow4921 at r4921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4921

  unfold Seg52.relationRow4922 at r4922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922

  unfold Seg52.relationRow4923 at r4923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923

  unfold Seg52.relationRow4924 at r4924

  unfold Seg52.relationRow4925 at r4925

  unfold Seg52.relationRow4926 at r4926

  unfold Seg52.relationRow4927 at r4927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4927

  unfold Seg52.relationRow4928 at r4928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4928

  unfold Seg52.relationRow4929 at r4929

  unfold Seg52.relationRow4930 at r4930

  unfold Seg52.relationRow4931 at r4931

  unfold Seg52.relationRow4932 at r4932

  unfold Seg52.relationRow4933 at r4933

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX35 rho = seg52Out0AccX34 rho + rho 49316 := by
    unfold seg52Out0AccX35 seg52Out0AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 34]

    ring

  have hnexty : seg52Out0AccY35 rho = seg52Out0AccY34 rho + rho 49317 := by
    unfold seg52Out0AccY35 seg52Out0AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 34]

    ring

  have ha0 : (rho 49308 + rho 49309) * (seg52Out0AccX34 rho + seg52Out0AccY34 rho) = rho 49310 := by
    unfold seg52Out0AccX34 seg52Out0AccY34
    linear_combination r4921
  have ha1 : rho 49309 * seg52Out0AccX34 rho = rho 49311 := by
    unfold seg52Out0AccX34
    linear_combination r4922
  have ha2 : rho 49308 * seg52Out0AccY34 rho = rho 49312 := by
    unfold seg52Out0AccY34
    linear_combination r4923
  have ha3 : 3021 * rho 49311 * rho 49312 = rho 49313 := by
    linear_combination r4924
  have ha4 : rho 49314 * (1 + rho 49313) = rho 49311 + rho 49312 := by
    linear_combination r4925
  have ha5 : rho 49315 * (1 - rho 49313) = rho 49310 - rho 49311 - rho 49312 := by
    linear_combination r4926
  have haddx :
      rho 49314 * (1 + 3021 * (rho 49309 * seg52Out0AccX34 rho) * (rho 49308 * seg52Out0AccY34 rho)) =
        rho 49309 * seg52Out0AccX34 rho + rho 49308 * seg52Out0AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49315 * (1 - 3021 * (rho 49309 * seg52Out0AccX34 rho) * (rho 49308 * seg52Out0AccY34 rho)) =
        (-1) * (rho 49309 * seg52Out0AccX34 rho) - rho 49308 * seg52Out0AccY34 rho +
          (seg52Out0AccY34 rho - seg52Out0AccX34 rho * (-1)) * (rho 49308 + rho 49309) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49315 * (1 - rho 49313) = rho 49310 - rho 49311 - rho 49312 := ha5
      _ = (-1) * rho 49311 - rho 49312 + (seg52Out0AccY34 rho - seg52Out0AccX34 rho * (-1)) *
          (rho 49308 + rho 49309) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX35 rho = seg52Out0AccX34 rho - Bool.toZMod bit * (seg52Out0AccX34 rho - rho 49314) := by
    have hd : rho 49316 = Bool.toZMod bit * (rho 49314 - seg52Out0AccX34 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX34
      linear_combination -r4927
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY35 rho = seg52Out0AccY34 rho - Bool.toZMod bit * (seg52Out0AccY34 rho - rho 49315) := by
    have hd : rho 49317 = Bool.toZMod bit * (rho 49315 - seg52Out0AccY34 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY34
      linear_combination -r4928
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49308 * rho 49309 = rho 49318 := by linear_combination r4929
  have hd1 : rho 49308 * rho 49308 = rho 49319 := by linear_combination r4930
  have hd2 : rho 49309 * rho 49309 = rho 49320 := by linear_combination r4931
  have hd3 : rho 49321 * (rho 49309 * rho 49309 + rho 49308 * rho 49308 * (-1)) =
      2 * (rho 49308 * rho 49309) := by
    rw [hd0, hd1, hd2]
    linear_combination r4932
  have hd4 : rho 49322 * (2 - (rho 49309 * rho 49309 + rho 49308 * rho 49308 * (-1))) =
      rho 49309 * rho 49309 - rho 49308 * rho 49308 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4933
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49308, rho 49309⟩
    ⟨rho 49314, rho 49315⟩ ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49321, rho 49322⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4934 rho ∧ Seg52.relationRow4935 rho ∧ Seg52.relationRow4936 rho ∧ Seg52.relationRow4937 rho ∧ Seg52.relationRow4938 rho ∧ Seg52.relationRow4939 rho ∧ Seg52.relationRow4940 rho ∧ Seg52.relationRow4941 rho ∧ Seg52.relationRow4942 rho ∧ Seg52.relationRow4943 rho ∧ Seg52.relationRow4944 rho ∧ Seg52.relationRow4945 rho ∧ Seg52.relationRow4946 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946⟩

theorem seg52Out0_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48781 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49321, rho 49322⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49321, rho 49322⟩
        ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49334, rho 49335⟩ := by
  obtain ⟨r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946⟩ := seg52Out0_rows35 rho h
  unfold Seg52.relationRow4934 at r4934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4934

  unfold Seg52.relationRow4935 at r4935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4935

  unfold Seg52.relationRow4936 at r4936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936

  unfold Seg52.relationRow4937 at r4937

  unfold Seg52.relationRow4938 at r4938

  unfold Seg52.relationRow4939 at r4939

  unfold Seg52.relationRow4940 at r4940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4940

  unfold Seg52.relationRow4941 at r4941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4941

  unfold Seg52.relationRow4942 at r4942

  unfold Seg52.relationRow4943 at r4943

  unfold Seg52.relationRow4944 at r4944

  unfold Seg52.relationRow4945 at r4945

  unfold Seg52.relationRow4946 at r4946

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX36 rho = seg52Out0AccX35 rho + rho 49329 := by
    unfold seg52Out0AccX36 seg52Out0AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 35]

    ring

  have hnexty : seg52Out0AccY36 rho = seg52Out0AccY35 rho + rho 49330 := by
    unfold seg52Out0AccY36 seg52Out0AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 35]

    ring

  have ha0 : (rho 49321 + rho 49322) * (seg52Out0AccX35 rho + seg52Out0AccY35 rho) = rho 49323 := by
    unfold seg52Out0AccX35 seg52Out0AccY35
    linear_combination r4934
  have ha1 : rho 49322 * seg52Out0AccX35 rho = rho 49324 := by
    unfold seg52Out0AccX35
    linear_combination r4935
  have ha2 : rho 49321 * seg52Out0AccY35 rho = rho 49325 := by
    unfold seg52Out0AccY35
    linear_combination r4936
  have ha3 : 3021 * rho 49324 * rho 49325 = rho 49326 := by
    linear_combination r4937
  have ha4 : rho 49327 * (1 + rho 49326) = rho 49324 + rho 49325 := by
    linear_combination r4938
  have ha5 : rho 49328 * (1 - rho 49326) = rho 49323 - rho 49324 - rho 49325 := by
    linear_combination r4939
  have haddx :
      rho 49327 * (1 + 3021 * (rho 49322 * seg52Out0AccX35 rho) * (rho 49321 * seg52Out0AccY35 rho)) =
        rho 49322 * seg52Out0AccX35 rho + rho 49321 * seg52Out0AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49328 * (1 - 3021 * (rho 49322 * seg52Out0AccX35 rho) * (rho 49321 * seg52Out0AccY35 rho)) =
        (-1) * (rho 49322 * seg52Out0AccX35 rho) - rho 49321 * seg52Out0AccY35 rho +
          (seg52Out0AccY35 rho - seg52Out0AccX35 rho * (-1)) * (rho 49321 + rho 49322) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49328 * (1 - rho 49326) = rho 49323 - rho 49324 - rho 49325 := ha5
      _ = (-1) * rho 49324 - rho 49325 + (seg52Out0AccY35 rho - seg52Out0AccX35 rho * (-1)) *
          (rho 49321 + rho 49322) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX36 rho = seg52Out0AccX35 rho - Bool.toZMod bit * (seg52Out0AccX35 rho - rho 49327) := by
    have hd : rho 49329 = Bool.toZMod bit * (rho 49327 - seg52Out0AccX35 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX35
      linear_combination -r4940
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY36 rho = seg52Out0AccY35 rho - Bool.toZMod bit * (seg52Out0AccY35 rho - rho 49328) := by
    have hd : rho 49330 = Bool.toZMod bit * (rho 49328 - seg52Out0AccY35 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY35
      linear_combination -r4941
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49321 * rho 49322 = rho 49331 := by linear_combination r4942
  have hd1 : rho 49321 * rho 49321 = rho 49332 := by linear_combination r4943
  have hd2 : rho 49322 * rho 49322 = rho 49333 := by linear_combination r4944
  have hd3 : rho 49334 * (rho 49322 * rho 49322 + rho 49321 * rho 49321 * (-1)) =
      2 * (rho 49321 * rho 49322) := by
    rw [hd0, hd1, hd2]
    linear_combination r4945
  have hd4 : rho 49335 * (2 - (rho 49322 * rho 49322 + rho 49321 * rho 49321 * (-1))) =
      rho 49322 * rho 49322 - rho 49321 * rho 49321 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4946
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49321, rho 49322⟩
    ⟨rho 49327, rho 49328⟩ ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49334, rho 49335⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4947 rho ∧ Seg52.relationRow4948 rho ∧ Seg52.relationRow4949 rho ∧ Seg52.relationRow4950 rho ∧ Seg52.relationRow4951 rho ∧ Seg52.relationRow4952 rho ∧ Seg52.relationRow4953 rho ∧ Seg52.relationRow4954 rho ∧ Seg52.relationRow4955 rho ∧ Seg52.relationRow4956 rho ∧ Seg52.relationRow4957 rho ∧ Seg52.relationRow4958 rho ∧ Seg52.relationRow4959 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩

  exact ⟨r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩

theorem seg52Out0_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48782 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49334, rho 49335⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49334, rho 49335⟩
        ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49347, rho 49348⟩ := by
  obtain ⟨r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩ := seg52Out0_rows36 rho h
  unfold Seg52.relationRow4947 at r4947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4947

  unfold Seg52.relationRow4948 at r4948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4948

  unfold Seg52.relationRow4949 at r4949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4949

  unfold Seg52.relationRow4950 at r4950

  unfold Seg52.relationRow4951 at r4951

  unfold Seg52.relationRow4952 at r4952

  unfold Seg52.relationRow4953 at r4953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4953

  unfold Seg52.relationRow4954 at r4954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4954

  unfold Seg52.relationRow4955 at r4955

  unfold Seg52.relationRow4956 at r4956

  unfold Seg52.relationRow4957 at r4957

  unfold Seg52.relationRow4958 at r4958

  unfold Seg52.relationRow4959 at r4959

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX37 rho = seg52Out0AccX36 rho + rho 49342 := by
    unfold seg52Out0AccX37 seg52Out0AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 36]

    ring

  have hnexty : seg52Out0AccY37 rho = seg52Out0AccY36 rho + rho 49343 := by
    unfold seg52Out0AccY37 seg52Out0AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 36]

    ring

  have ha0 : (rho 49334 + rho 49335) * (seg52Out0AccX36 rho + seg52Out0AccY36 rho) = rho 49336 := by
    unfold seg52Out0AccX36 seg52Out0AccY36
    linear_combination r4947
  have ha1 : rho 49335 * seg52Out0AccX36 rho = rho 49337 := by
    unfold seg52Out0AccX36
    linear_combination r4948
  have ha2 : rho 49334 * seg52Out0AccY36 rho = rho 49338 := by
    unfold seg52Out0AccY36
    linear_combination r4949
  have ha3 : 3021 * rho 49337 * rho 49338 = rho 49339 := by
    linear_combination r4950
  have ha4 : rho 49340 * (1 + rho 49339) = rho 49337 + rho 49338 := by
    linear_combination r4951
  have ha5 : rho 49341 * (1 - rho 49339) = rho 49336 - rho 49337 - rho 49338 := by
    linear_combination r4952
  have haddx :
      rho 49340 * (1 + 3021 * (rho 49335 * seg52Out0AccX36 rho) * (rho 49334 * seg52Out0AccY36 rho)) =
        rho 49335 * seg52Out0AccX36 rho + rho 49334 * seg52Out0AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49341 * (1 - 3021 * (rho 49335 * seg52Out0AccX36 rho) * (rho 49334 * seg52Out0AccY36 rho)) =
        (-1) * (rho 49335 * seg52Out0AccX36 rho) - rho 49334 * seg52Out0AccY36 rho +
          (seg52Out0AccY36 rho - seg52Out0AccX36 rho * (-1)) * (rho 49334 + rho 49335) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49341 * (1 - rho 49339) = rho 49336 - rho 49337 - rho 49338 := ha5
      _ = (-1) * rho 49337 - rho 49338 + (seg52Out0AccY36 rho - seg52Out0AccX36 rho * (-1)) *
          (rho 49334 + rho 49335) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX37 rho = seg52Out0AccX36 rho - Bool.toZMod bit * (seg52Out0AccX36 rho - rho 49340) := by
    have hd : rho 49342 = Bool.toZMod bit * (rho 49340 - seg52Out0AccX36 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX36
      linear_combination -r4953
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY37 rho = seg52Out0AccY36 rho - Bool.toZMod bit * (seg52Out0AccY36 rho - rho 49341) := by
    have hd : rho 49343 = Bool.toZMod bit * (rho 49341 - seg52Out0AccY36 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY36
      linear_combination -r4954
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49334 * rho 49335 = rho 49344 := by linear_combination r4955
  have hd1 : rho 49334 * rho 49334 = rho 49345 := by linear_combination r4956
  have hd2 : rho 49335 * rho 49335 = rho 49346 := by linear_combination r4957
  have hd3 : rho 49347 * (rho 49335 * rho 49335 + rho 49334 * rho 49334 * (-1)) =
      2 * (rho 49334 * rho 49335) := by
    rw [hd0, hd1, hd2]
    linear_combination r4958
  have hd4 : rho 49348 * (2 - (rho 49335 * rho 49335 + rho 49334 * rho 49334 * (-1))) =
      rho 49335 * rho 49335 - rho 49334 * rho 49334 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4959
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49334, rho 49335⟩
    ⟨rho 49340, rho 49341⟩ ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49347, rho 49348⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4960 rho ∧ Seg52.relationRow4961 rho ∧ Seg52.relationRow4962 rho ∧ Seg52.relationRow4963 rho ∧ Seg52.relationRow4964 rho ∧ Seg52.relationRow4965 rho ∧ Seg52.relationRow4966 rho ∧ Seg52.relationRow4967 rho ∧ Seg52.relationRow4968 rho ∧ Seg52.relationRow4969 rho ∧ Seg52.relationRow4970 rho ∧ Seg52.relationRow4971 rho ∧ Seg52.relationRow4972 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972⟩

theorem seg52Out0_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48783 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49347, rho 49348⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49347, rho 49348⟩
        ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 49360, rho 49361⟩ := by
  obtain ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972⟩ := seg52Out0_rows37 rho h
  unfold Seg52.relationRow4960 at r4960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960

  unfold Seg52.relationRow4961 at r4961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4961

  unfold Seg52.relationRow4962 at r4962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4962

  unfold Seg52.relationRow4963 at r4963

  unfold Seg52.relationRow4964 at r4964

  unfold Seg52.relationRow4965 at r4965

  unfold Seg52.relationRow4966 at r4966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4966

  unfold Seg52.relationRow4967 at r4967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4967

  unfold Seg52.relationRow4968 at r4968

  unfold Seg52.relationRow4969 at r4969

  unfold Seg52.relationRow4970 at r4970

  unfold Seg52.relationRow4971 at r4971

  unfold Seg52.relationRow4972 at r4972

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX38 rho = seg52Out0AccX37 rho + rho 49355 := by
    unfold seg52Out0AccX38 seg52Out0AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 37]

    ring

  have hnexty : seg52Out0AccY38 rho = seg52Out0AccY37 rho + rho 49356 := by
    unfold seg52Out0AccY38 seg52Out0AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 37]

    ring

  have ha0 : (rho 49347 + rho 49348) * (seg52Out0AccX37 rho + seg52Out0AccY37 rho) = rho 49349 := by
    unfold seg52Out0AccX37 seg52Out0AccY37
    linear_combination r4960
  have ha1 : rho 49348 * seg52Out0AccX37 rho = rho 49350 := by
    unfold seg52Out0AccX37
    linear_combination r4961
  have ha2 : rho 49347 * seg52Out0AccY37 rho = rho 49351 := by
    unfold seg52Out0AccY37
    linear_combination r4962
  have ha3 : 3021 * rho 49350 * rho 49351 = rho 49352 := by
    linear_combination r4963
  have ha4 : rho 49353 * (1 + rho 49352) = rho 49350 + rho 49351 := by
    linear_combination r4964
  have ha5 : rho 49354 * (1 - rho 49352) = rho 49349 - rho 49350 - rho 49351 := by
    linear_combination r4965
  have haddx :
      rho 49353 * (1 + 3021 * (rho 49348 * seg52Out0AccX37 rho) * (rho 49347 * seg52Out0AccY37 rho)) =
        rho 49348 * seg52Out0AccX37 rho + rho 49347 * seg52Out0AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49354 * (1 - 3021 * (rho 49348 * seg52Out0AccX37 rho) * (rho 49347 * seg52Out0AccY37 rho)) =
        (-1) * (rho 49348 * seg52Out0AccX37 rho) - rho 49347 * seg52Out0AccY37 rho +
          (seg52Out0AccY37 rho - seg52Out0AccX37 rho * (-1)) * (rho 49347 + rho 49348) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49354 * (1 - rho 49352) = rho 49349 - rho 49350 - rho 49351 := ha5
      _ = (-1) * rho 49350 - rho 49351 + (seg52Out0AccY37 rho - seg52Out0AccX37 rho * (-1)) *
          (rho 49347 + rho 49348) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX38 rho = seg52Out0AccX37 rho - Bool.toZMod bit * (seg52Out0AccX37 rho - rho 49353) := by
    have hd : rho 49355 = Bool.toZMod bit * (rho 49353 - seg52Out0AccX37 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX37
      linear_combination -r4966
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY38 rho = seg52Out0AccY37 rho - Bool.toZMod bit * (seg52Out0AccY37 rho - rho 49354) := by
    have hd : rho 49356 = Bool.toZMod bit * (rho 49354 - seg52Out0AccY37 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY37
      linear_combination -r4967
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49347 * rho 49348 = rho 49357 := by linear_combination r4968
  have hd1 : rho 49347 * rho 49347 = rho 49358 := by linear_combination r4969
  have hd2 : rho 49348 * rho 49348 = rho 49359 := by linear_combination r4970
  have hd3 : rho 49360 * (rho 49348 * rho 49348 + rho 49347 * rho 49347 * (-1)) =
      2 * (rho 49347 * rho 49348) := by
    rw [hd0, hd1, hd2]
    linear_combination r4971
  have hd4 : rho 49361 * (2 - (rho 49348 * rho 49348 + rho 49347 * rho 49347 * (-1))) =
      rho 49348 * rho 49348 - rho 49347 * rho 49347 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4972
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49347, rho 49348⟩
    ⟨rho 49353, rho 49354⟩ ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 49360, rho 49361⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4973 rho ∧ Seg52.relationRow4974 rho ∧ Seg52.relationRow4975 rho ∧ Seg52.relationRow4976 rho ∧ Seg52.relationRow4977 rho ∧ Seg52.relationRow4978 rho ∧ Seg52.relationRow4979 rho ∧ Seg52.relationRow4980 rho ∧ Seg52.relationRow4981 rho ∧ Seg52.relationRow4982 rho ∧ Seg52.relationRow4983 rho ∧ Seg52.relationRow4984 rho ∧ Seg52.relationRow4985 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985⟩

theorem seg52Out0_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48784 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49360, rho 49361⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 49360, rho 49361⟩
        ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 49373, rho 49374⟩ := by
  obtain ⟨r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985⟩ := seg52Out0_rows38 rho h
  unfold Seg52.relationRow4973 at r4973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973

  unfold Seg52.relationRow4974 at r4974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974

  unfold Seg52.relationRow4975 at r4975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4975

  unfold Seg52.relationRow4976 at r4976

  unfold Seg52.relationRow4977 at r4977

  unfold Seg52.relationRow4978 at r4978

  unfold Seg52.relationRow4979 at r4979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979

  unfold Seg52.relationRow4980 at r4980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4980

  unfold Seg52.relationRow4981 at r4981

  unfold Seg52.relationRow4982 at r4982

  unfold Seg52.relationRow4983 at r4983

  unfold Seg52.relationRow4984 at r4984

  unfold Seg52.relationRow4985 at r4985

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX39 rho = seg52Out0AccX38 rho + rho 49368 := by
    unfold seg52Out0AccX39 seg52Out0AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 38]

    ring

  have hnexty : seg52Out0AccY39 rho = seg52Out0AccY38 rho + rho 49369 := by
    unfold seg52Out0AccY39 seg52Out0AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 38]

    ring

  have ha0 : (rho 49360 + rho 49361) * (seg52Out0AccX38 rho + seg52Out0AccY38 rho) = rho 49362 := by
    unfold seg52Out0AccX38 seg52Out0AccY38
    linear_combination r4973
  have ha1 : rho 49361 * seg52Out0AccX38 rho = rho 49363 := by
    unfold seg52Out0AccX38
    linear_combination r4974
  have ha2 : rho 49360 * seg52Out0AccY38 rho = rho 49364 := by
    unfold seg52Out0AccY38
    linear_combination r4975
  have ha3 : 3021 * rho 49363 * rho 49364 = rho 49365 := by
    linear_combination r4976
  have ha4 : rho 49366 * (1 + rho 49365) = rho 49363 + rho 49364 := by
    linear_combination r4977
  have ha5 : rho 49367 * (1 - rho 49365) = rho 49362 - rho 49363 - rho 49364 := by
    linear_combination r4978
  have haddx :
      rho 49366 * (1 + 3021 * (rho 49361 * seg52Out0AccX38 rho) * (rho 49360 * seg52Out0AccY38 rho)) =
        rho 49361 * seg52Out0AccX38 rho + rho 49360 * seg52Out0AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49367 * (1 - 3021 * (rho 49361 * seg52Out0AccX38 rho) * (rho 49360 * seg52Out0AccY38 rho)) =
        (-1) * (rho 49361 * seg52Out0AccX38 rho) - rho 49360 * seg52Out0AccY38 rho +
          (seg52Out0AccY38 rho - seg52Out0AccX38 rho * (-1)) * (rho 49360 + rho 49361) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49367 * (1 - rho 49365) = rho 49362 - rho 49363 - rho 49364 := ha5
      _ = (-1) * rho 49363 - rho 49364 + (seg52Out0AccY38 rho - seg52Out0AccX38 rho * (-1)) *
          (rho 49360 + rho 49361) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX39 rho = seg52Out0AccX38 rho - Bool.toZMod bit * (seg52Out0AccX38 rho - rho 49366) := by
    have hd : rho 49368 = Bool.toZMod bit * (rho 49366 - seg52Out0AccX38 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX38
      linear_combination -r4979
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY39 rho = seg52Out0AccY38 rho - Bool.toZMod bit * (seg52Out0AccY38 rho - rho 49367) := by
    have hd : rho 49369 = Bool.toZMod bit * (rho 49367 - seg52Out0AccY38 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY38
      linear_combination -r4980
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49360 * rho 49361 = rho 49370 := by linear_combination r4981
  have hd1 : rho 49360 * rho 49360 = rho 49371 := by linear_combination r4982
  have hd2 : rho 49361 * rho 49361 = rho 49372 := by linear_combination r4983
  have hd3 : rho 49373 * (rho 49361 * rho 49361 + rho 49360 * rho 49360 * (-1)) =
      2 * (rho 49360 * rho 49361) := by
    rw [hd0, hd1, hd2]
    linear_combination r4984
  have hd4 : rho 49374 * (2 - (rho 49361 * rho 49361 + rho 49360 * rho 49360 * (-1))) =
      rho 49361 * rho 49361 - rho 49360 * rho 49360 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4985
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 49360, rho 49361⟩
    ⟨rho 49366, rho 49367⟩ ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 49373, rho 49374⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4986 rho ∧ Seg52.relationRow4987 rho ∧ Seg52.relationRow4988 rho ∧ Seg52.relationRow4989 rho ∧ Seg52.relationRow4990 rho ∧ Seg52.relationRow4991 rho ∧ Seg52.relationRow4992 rho ∧ Seg52.relationRow4993 rho ∧ Seg52.relationRow4994 rho ∧ Seg52.relationRow4995 rho ∧ Seg52.relationRow4996 rho ∧ Seg52.relationRow4997 rho ∧ Seg52.relationRow4998 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg52Out0_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48785 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49373, rho 49374⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 49373, rho 49374⟩
        ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 49386, rho 49387⟩ := by
  obtain ⟨r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg52Out0_rows39 rho h
  unfold Seg52.relationRow4986 at r4986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4986

  unfold Seg52.relationRow4987 at r4987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987

  unfold Seg52.relationRow4988 at r4988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988

  unfold Seg52.relationRow4989 at r4989

  unfold Seg52.relationRow4990 at r4990

  unfold Seg52.relationRow4991 at r4991

  unfold Seg52.relationRow4992 at r4992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992

  unfold Seg52.relationRow4993 at r4993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993

  unfold Seg52.relationRow4994 at r4994

  unfold Seg52.relationRow4995 at r4995

  unfold Seg52.relationRow4996 at r4996

  unfold Seg52.relationRow4997 at r4997

  unfold Seg52.relationRow4998 at r4998

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX40 rho = seg52Out0AccX39 rho + rho 49381 := by
    unfold seg52Out0AccX40 seg52Out0AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 39]

    ring

  have hnexty : seg52Out0AccY40 rho = seg52Out0AccY39 rho + rho 49382 := by
    unfold seg52Out0AccY40 seg52Out0AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 39]

    ring

  have ha0 : (rho 49373 + rho 49374) * (seg52Out0AccX39 rho + seg52Out0AccY39 rho) = rho 49375 := by
    unfold seg52Out0AccX39 seg52Out0AccY39
    linear_combination r4986
  have ha1 : rho 49374 * seg52Out0AccX39 rho = rho 49376 := by
    unfold seg52Out0AccX39
    linear_combination r4987
  have ha2 : rho 49373 * seg52Out0AccY39 rho = rho 49377 := by
    unfold seg52Out0AccY39
    linear_combination r4988
  have ha3 : 3021 * rho 49376 * rho 49377 = rho 49378 := by
    linear_combination r4989
  have ha4 : rho 49379 * (1 + rho 49378) = rho 49376 + rho 49377 := by
    linear_combination r4990
  have ha5 : rho 49380 * (1 - rho 49378) = rho 49375 - rho 49376 - rho 49377 := by
    linear_combination r4991
  have haddx :
      rho 49379 * (1 + 3021 * (rho 49374 * seg52Out0AccX39 rho) * (rho 49373 * seg52Out0AccY39 rho)) =
        rho 49374 * seg52Out0AccX39 rho + rho 49373 * seg52Out0AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49380 * (1 - 3021 * (rho 49374 * seg52Out0AccX39 rho) * (rho 49373 * seg52Out0AccY39 rho)) =
        (-1) * (rho 49374 * seg52Out0AccX39 rho) - rho 49373 * seg52Out0AccY39 rho +
          (seg52Out0AccY39 rho - seg52Out0AccX39 rho * (-1)) * (rho 49373 + rho 49374) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49380 * (1 - rho 49378) = rho 49375 - rho 49376 - rho 49377 := ha5
      _ = (-1) * rho 49376 - rho 49377 + (seg52Out0AccY39 rho - seg52Out0AccX39 rho * (-1)) *
          (rho 49373 + rho 49374) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX40 rho = seg52Out0AccX39 rho - Bool.toZMod bit * (seg52Out0AccX39 rho - rho 49379) := by
    have hd : rho 49381 = Bool.toZMod bit * (rho 49379 - seg52Out0AccX39 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX39
      linear_combination -r4992
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY40 rho = seg52Out0AccY39 rho - Bool.toZMod bit * (seg52Out0AccY39 rho - rho 49380) := by
    have hd : rho 49382 = Bool.toZMod bit * (rho 49380 - seg52Out0AccY39 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY39
      linear_combination -r4993
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49373 * rho 49374 = rho 49383 := by linear_combination r4994
  have hd1 : rho 49373 * rho 49373 = rho 49384 := by linear_combination r4995
  have hd2 : rho 49374 * rho 49374 = rho 49385 := by linear_combination r4996
  have hd3 : rho 49386 * (rho 49374 * rho 49374 + rho 49373 * rho 49373 * (-1)) =
      2 * (rho 49373 * rho 49374) := by
    rw [hd0, hd1, hd2]
    linear_combination r4997
  have hd4 : rho 49387 * (2 - (rho 49374 * rho 49374 + rho 49373 * rho 49373 * (-1))) =
      rho 49374 * rho 49374 - rho 49373 * rho 49373 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4998
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 49373, rho 49374⟩
    ⟨rho 49379, rho 49380⟩ ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 49386, rho 49387⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4999 rho ∧ Seg52.relationRow5000 rho ∧ Seg52.relationRow5001 rho ∧ Seg52.relationRow5002 rho ∧ Seg52.relationRow5003 rho ∧ Seg52.relationRow5004 rho ∧ Seg52.relationRow5005 rho ∧ Seg52.relationRow5006 rho ∧ Seg52.relationRow5007 rho ∧ Seg52.relationRow5008 rho ∧ Seg52.relationRow5009 rho ∧ Seg52.relationRow5010 rho ∧ Seg52.relationRow5011 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011⟩

theorem seg52Out0_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48786 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49386, rho 49387⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 49386, rho 49387⟩
        ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 49399, rho 49400⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011⟩ := seg52Out0_rows40 rho h
  unfold Seg52.relationRow4999 at r4999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999

  unfold Seg52.relationRow5000 at r5000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5000

  unfold Seg52.relationRow5001 at r5001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001

  unfold Seg52.relationRow5002 at r5002

  unfold Seg52.relationRow5003 at r5003

  unfold Seg52.relationRow5004 at r5004

  unfold Seg52.relationRow5005 at r5005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5005

  unfold Seg52.relationRow5006 at r5006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006

  unfold Seg52.relationRow5007 at r5007

  unfold Seg52.relationRow5008 at r5008

  unfold Seg52.relationRow5009 at r5009

  unfold Seg52.relationRow5010 at r5010

  unfold Seg52.relationRow5011 at r5011

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX41 rho = seg52Out0AccX40 rho + rho 49394 := by
    unfold seg52Out0AccX41 seg52Out0AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 40]

    ring

  have hnexty : seg52Out0AccY41 rho = seg52Out0AccY40 rho + rho 49395 := by
    unfold seg52Out0AccY41 seg52Out0AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 40]

    ring

  have ha0 : (rho 49386 + rho 49387) * (seg52Out0AccX40 rho + seg52Out0AccY40 rho) = rho 49388 := by
    unfold seg52Out0AccX40 seg52Out0AccY40
    linear_combination r4999
  have ha1 : rho 49387 * seg52Out0AccX40 rho = rho 49389 := by
    unfold seg52Out0AccX40
    linear_combination r5000
  have ha2 : rho 49386 * seg52Out0AccY40 rho = rho 49390 := by
    unfold seg52Out0AccY40
    linear_combination r5001
  have ha3 : 3021 * rho 49389 * rho 49390 = rho 49391 := by
    linear_combination r5002
  have ha4 : rho 49392 * (1 + rho 49391) = rho 49389 + rho 49390 := by
    linear_combination r5003
  have ha5 : rho 49393 * (1 - rho 49391) = rho 49388 - rho 49389 - rho 49390 := by
    linear_combination r5004
  have haddx :
      rho 49392 * (1 + 3021 * (rho 49387 * seg52Out0AccX40 rho) * (rho 49386 * seg52Out0AccY40 rho)) =
        rho 49387 * seg52Out0AccX40 rho + rho 49386 * seg52Out0AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49393 * (1 - 3021 * (rho 49387 * seg52Out0AccX40 rho) * (rho 49386 * seg52Out0AccY40 rho)) =
        (-1) * (rho 49387 * seg52Out0AccX40 rho) - rho 49386 * seg52Out0AccY40 rho +
          (seg52Out0AccY40 rho - seg52Out0AccX40 rho * (-1)) * (rho 49386 + rho 49387) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49393 * (1 - rho 49391) = rho 49388 - rho 49389 - rho 49390 := ha5
      _ = (-1) * rho 49389 - rho 49390 + (seg52Out0AccY40 rho - seg52Out0AccX40 rho * (-1)) *
          (rho 49386 + rho 49387) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX41 rho = seg52Out0AccX40 rho - Bool.toZMod bit * (seg52Out0AccX40 rho - rho 49392) := by
    have hd : rho 49394 = Bool.toZMod bit * (rho 49392 - seg52Out0AccX40 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX40
      linear_combination -r5005
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY41 rho = seg52Out0AccY40 rho - Bool.toZMod bit * (seg52Out0AccY40 rho - rho 49393) := by
    have hd : rho 49395 = Bool.toZMod bit * (rho 49393 - seg52Out0AccY40 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY40
      linear_combination -r5006
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49386 * rho 49387 = rho 49396 := by linear_combination r5007
  have hd1 : rho 49386 * rho 49386 = rho 49397 := by linear_combination r5008
  have hd2 : rho 49387 * rho 49387 = rho 49398 := by linear_combination r5009
  have hd3 : rho 49399 * (rho 49387 * rho 49387 + rho 49386 * rho 49386 * (-1)) =
      2 * (rho 49386 * rho 49387) := by
    rw [hd0, hd1, hd2]
    linear_combination r5010
  have hd4 : rho 49400 * (2 - (rho 49387 * rho 49387 + rho 49386 * rho 49386 * (-1))) =
      rho 49387 * rho 49387 - rho 49386 * rho 49386 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5011
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 49386, rho 49387⟩
    ⟨rho 49392, rho 49393⟩ ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 49399, rho 49400⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5012 rho ∧ Seg52.relationRow5013 rho ∧ Seg52.relationRow5014 rho ∧ Seg52.relationRow5015 rho ∧ Seg52.relationRow5016 rho ∧ Seg52.relationRow5017 rho ∧ Seg52.relationRow5018 rho ∧ Seg52.relationRow5019 rho ∧ Seg52.relationRow5020 rho ∧ Seg52.relationRow5021 rho ∧ Seg52.relationRow5022 rho ∧ Seg52.relationRow5023 rho ∧ Seg52.relationRow5024 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024⟩

theorem seg52Out0_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48787 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49399, rho 49400⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 49399, rho 49400⟩
        ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 49412, rho 49413⟩ := by
  obtain ⟨r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024⟩ := seg52Out0_rows41 rho h
  unfold Seg52.relationRow5012 at r5012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5012

  unfold Seg52.relationRow5013 at r5013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013

  unfold Seg52.relationRow5014 at r5014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5014

  unfold Seg52.relationRow5015 at r5015

  unfold Seg52.relationRow5016 at r5016

  unfold Seg52.relationRow5017 at r5017

  unfold Seg52.relationRow5018 at r5018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5018

  unfold Seg52.relationRow5019 at r5019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5019

  unfold Seg52.relationRow5020 at r5020

  unfold Seg52.relationRow5021 at r5021

  unfold Seg52.relationRow5022 at r5022

  unfold Seg52.relationRow5023 at r5023

  unfold Seg52.relationRow5024 at r5024

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX42 rho = seg52Out0AccX41 rho + rho 49407 := by
    unfold seg52Out0AccX42 seg52Out0AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 41]

    ring

  have hnexty : seg52Out0AccY42 rho = seg52Out0AccY41 rho + rho 49408 := by
    unfold seg52Out0AccY42 seg52Out0AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 41]

    ring

  have ha0 : (rho 49399 + rho 49400) * (seg52Out0AccX41 rho + seg52Out0AccY41 rho) = rho 49401 := by
    unfold seg52Out0AccX41 seg52Out0AccY41
    linear_combination r5012
  have ha1 : rho 49400 * seg52Out0AccX41 rho = rho 49402 := by
    unfold seg52Out0AccX41
    linear_combination r5013
  have ha2 : rho 49399 * seg52Out0AccY41 rho = rho 49403 := by
    unfold seg52Out0AccY41
    linear_combination r5014
  have ha3 : 3021 * rho 49402 * rho 49403 = rho 49404 := by
    linear_combination r5015
  have ha4 : rho 49405 * (1 + rho 49404) = rho 49402 + rho 49403 := by
    linear_combination r5016
  have ha5 : rho 49406 * (1 - rho 49404) = rho 49401 - rho 49402 - rho 49403 := by
    linear_combination r5017
  have haddx :
      rho 49405 * (1 + 3021 * (rho 49400 * seg52Out0AccX41 rho) * (rho 49399 * seg52Out0AccY41 rho)) =
        rho 49400 * seg52Out0AccX41 rho + rho 49399 * seg52Out0AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49406 * (1 - 3021 * (rho 49400 * seg52Out0AccX41 rho) * (rho 49399 * seg52Out0AccY41 rho)) =
        (-1) * (rho 49400 * seg52Out0AccX41 rho) - rho 49399 * seg52Out0AccY41 rho +
          (seg52Out0AccY41 rho - seg52Out0AccX41 rho * (-1)) * (rho 49399 + rho 49400) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49406 * (1 - rho 49404) = rho 49401 - rho 49402 - rho 49403 := ha5
      _ = (-1) * rho 49402 - rho 49403 + (seg52Out0AccY41 rho - seg52Out0AccX41 rho * (-1)) *
          (rho 49399 + rho 49400) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX42 rho = seg52Out0AccX41 rho - Bool.toZMod bit * (seg52Out0AccX41 rho - rho 49405) := by
    have hd : rho 49407 = Bool.toZMod bit * (rho 49405 - seg52Out0AccX41 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX41
      linear_combination -r5018
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY42 rho = seg52Out0AccY41 rho - Bool.toZMod bit * (seg52Out0AccY41 rho - rho 49406) := by
    have hd : rho 49408 = Bool.toZMod bit * (rho 49406 - seg52Out0AccY41 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY41
      linear_combination -r5019
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49399 * rho 49400 = rho 49409 := by linear_combination r5020
  have hd1 : rho 49399 * rho 49399 = rho 49410 := by linear_combination r5021
  have hd2 : rho 49400 * rho 49400 = rho 49411 := by linear_combination r5022
  have hd3 : rho 49412 * (rho 49400 * rho 49400 + rho 49399 * rho 49399 * (-1)) =
      2 * (rho 49399 * rho 49400) := by
    rw [hd0, hd1, hd2]
    linear_combination r5023
  have hd4 : rho 49413 * (2 - (rho 49400 * rho 49400 + rho 49399 * rho 49399 * (-1))) =
      rho 49400 * rho 49400 - rho 49399 * rho 49399 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5024
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 49399, rho 49400⟩
    ⟨rho 49405, rho 49406⟩ ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 49412, rho 49413⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5025 rho ∧ Seg52.relationRow5026 rho ∧ Seg52.relationRow5027 rho ∧ Seg52.relationRow5028 rho ∧ Seg52.relationRow5029 rho ∧ Seg52.relationRow5030 rho ∧ Seg52.relationRow5031 rho ∧ Seg52.relationRow5032 rho ∧ Seg52.relationRow5033 rho ∧ Seg52.relationRow5034 rho ∧ Seg52.relationRow5035 rho ∧ Seg52.relationRow5036 rho ∧ Seg52.relationRow5037 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, _, _⟩

  exact ⟨r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037⟩

theorem seg52Out0_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48788 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49412, rho 49413⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 49412, rho 49413⟩
        ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 49425, rho 49426⟩ := by
  obtain ⟨r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037⟩ := seg52Out0_rows42 rho h
  unfold Seg52.relationRow5025 at r5025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5025

  unfold Seg52.relationRow5026 at r5026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5026

  unfold Seg52.relationRow5027 at r5027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027

  unfold Seg52.relationRow5028 at r5028

  unfold Seg52.relationRow5029 at r5029

  unfold Seg52.relationRow5030 at r5030

  unfold Seg52.relationRow5031 at r5031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5031

  unfold Seg52.relationRow5032 at r5032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5032

  unfold Seg52.relationRow5033 at r5033

  unfold Seg52.relationRow5034 at r5034

  unfold Seg52.relationRow5035 at r5035

  unfold Seg52.relationRow5036 at r5036

  unfold Seg52.relationRow5037 at r5037

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX43 rho = seg52Out0AccX42 rho + rho 49420 := by
    unfold seg52Out0AccX43 seg52Out0AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 42]

    ring

  have hnexty : seg52Out0AccY43 rho = seg52Out0AccY42 rho + rho 49421 := by
    unfold seg52Out0AccY43 seg52Out0AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 42]

    ring

  have ha0 : (rho 49412 + rho 49413) * (seg52Out0AccX42 rho + seg52Out0AccY42 rho) = rho 49414 := by
    unfold seg52Out0AccX42 seg52Out0AccY42
    linear_combination r5025
  have ha1 : rho 49413 * seg52Out0AccX42 rho = rho 49415 := by
    unfold seg52Out0AccX42
    linear_combination r5026
  have ha2 : rho 49412 * seg52Out0AccY42 rho = rho 49416 := by
    unfold seg52Out0AccY42
    linear_combination r5027
  have ha3 : 3021 * rho 49415 * rho 49416 = rho 49417 := by
    linear_combination r5028
  have ha4 : rho 49418 * (1 + rho 49417) = rho 49415 + rho 49416 := by
    linear_combination r5029
  have ha5 : rho 49419 * (1 - rho 49417) = rho 49414 - rho 49415 - rho 49416 := by
    linear_combination r5030
  have haddx :
      rho 49418 * (1 + 3021 * (rho 49413 * seg52Out0AccX42 rho) * (rho 49412 * seg52Out0AccY42 rho)) =
        rho 49413 * seg52Out0AccX42 rho + rho 49412 * seg52Out0AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49419 * (1 - 3021 * (rho 49413 * seg52Out0AccX42 rho) * (rho 49412 * seg52Out0AccY42 rho)) =
        (-1) * (rho 49413 * seg52Out0AccX42 rho) - rho 49412 * seg52Out0AccY42 rho +
          (seg52Out0AccY42 rho - seg52Out0AccX42 rho * (-1)) * (rho 49412 + rho 49413) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49419 * (1 - rho 49417) = rho 49414 - rho 49415 - rho 49416 := ha5
      _ = (-1) * rho 49415 - rho 49416 + (seg52Out0AccY42 rho - seg52Out0AccX42 rho * (-1)) *
          (rho 49412 + rho 49413) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX43 rho = seg52Out0AccX42 rho - Bool.toZMod bit * (seg52Out0AccX42 rho - rho 49418) := by
    have hd : rho 49420 = Bool.toZMod bit * (rho 49418 - seg52Out0AccX42 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX42
      linear_combination -r5031
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY43 rho = seg52Out0AccY42 rho - Bool.toZMod bit * (seg52Out0AccY42 rho - rho 49419) := by
    have hd : rho 49421 = Bool.toZMod bit * (rho 49419 - seg52Out0AccY42 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY42
      linear_combination -r5032
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49412 * rho 49413 = rho 49422 := by linear_combination r5033
  have hd1 : rho 49412 * rho 49412 = rho 49423 := by linear_combination r5034
  have hd2 : rho 49413 * rho 49413 = rho 49424 := by linear_combination r5035
  have hd3 : rho 49425 * (rho 49413 * rho 49413 + rho 49412 * rho 49412 * (-1)) =
      2 * (rho 49412 * rho 49413) := by
    rw [hd0, hd1, hd2]
    linear_combination r5036
  have hd4 : rho 49426 * (2 - (rho 49413 * rho 49413 + rho 49412 * rho 49412 * (-1))) =
      rho 49413 * rho 49413 - rho 49412 * rho 49412 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5037
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 49412, rho 49413⟩
    ⟨rho 49418, rho 49419⟩ ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 49425, rho 49426⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5038 rho ∧ Seg52.relationRow5039 rho ∧ Seg52.relationRow5040 rho ∧ Seg52.relationRow5041 rho ∧ Seg52.relationRow5042 rho ∧ Seg52.relationRow5043 rho ∧ Seg52.relationRow5044 rho ∧ Seg52.relationRow5045 rho ∧ Seg52.relationRow5046 rho ∧ Seg52.relationRow5047 rho ∧ Seg52.relationRow5048 rho ∧ Seg52.relationRow5049 rho ∧ Seg52.relationRow5050 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p62, p63, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5038, r5039⟩

  unfold Seg52.relationPart63 at p63

  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5038, r5039, r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050⟩

theorem seg52Out0_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48789 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49425, rho 49426⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 49425, rho 49426⟩
        ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 49438, rho 49439⟩ := by
  obtain ⟨r5038, r5039, r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050⟩ := seg52Out0_rows43 rho h
  unfold Seg52.relationRow5038 at r5038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5038

  unfold Seg52.relationRow5039 at r5039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5039

  unfold Seg52.relationRow5040 at r5040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5040

  unfold Seg52.relationRow5041 at r5041

  unfold Seg52.relationRow5042 at r5042

  unfold Seg52.relationRow5043 at r5043

  unfold Seg52.relationRow5044 at r5044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044

  unfold Seg52.relationRow5045 at r5045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5045

  unfold Seg52.relationRow5046 at r5046

  unfold Seg52.relationRow5047 at r5047

  unfold Seg52.relationRow5048 at r5048

  unfold Seg52.relationRow5049 at r5049

  unfold Seg52.relationRow5050 at r5050

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX44 rho = seg52Out0AccX43 rho + rho 49433 := by
    unfold seg52Out0AccX44 seg52Out0AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 43]

    ring

  have hnexty : seg52Out0AccY44 rho = seg52Out0AccY43 rho + rho 49434 := by
    unfold seg52Out0AccY44 seg52Out0AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 43]

    ring

  have ha0 : (rho 49425 + rho 49426) * (seg52Out0AccX43 rho + seg52Out0AccY43 rho) = rho 49427 := by
    unfold seg52Out0AccX43 seg52Out0AccY43
    linear_combination r5038
  have ha1 : rho 49426 * seg52Out0AccX43 rho = rho 49428 := by
    unfold seg52Out0AccX43
    linear_combination r5039
  have ha2 : rho 49425 * seg52Out0AccY43 rho = rho 49429 := by
    unfold seg52Out0AccY43
    linear_combination r5040
  have ha3 : 3021 * rho 49428 * rho 49429 = rho 49430 := by
    linear_combination r5041
  have ha4 : rho 49431 * (1 + rho 49430) = rho 49428 + rho 49429 := by
    linear_combination r5042
  have ha5 : rho 49432 * (1 - rho 49430) = rho 49427 - rho 49428 - rho 49429 := by
    linear_combination r5043
  have haddx :
      rho 49431 * (1 + 3021 * (rho 49426 * seg52Out0AccX43 rho) * (rho 49425 * seg52Out0AccY43 rho)) =
        rho 49426 * seg52Out0AccX43 rho + rho 49425 * seg52Out0AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49432 * (1 - 3021 * (rho 49426 * seg52Out0AccX43 rho) * (rho 49425 * seg52Out0AccY43 rho)) =
        (-1) * (rho 49426 * seg52Out0AccX43 rho) - rho 49425 * seg52Out0AccY43 rho +
          (seg52Out0AccY43 rho - seg52Out0AccX43 rho * (-1)) * (rho 49425 + rho 49426) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49432 * (1 - rho 49430) = rho 49427 - rho 49428 - rho 49429 := ha5
      _ = (-1) * rho 49428 - rho 49429 + (seg52Out0AccY43 rho - seg52Out0AccX43 rho * (-1)) *
          (rho 49425 + rho 49426) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX44 rho = seg52Out0AccX43 rho - Bool.toZMod bit * (seg52Out0AccX43 rho - rho 49431) := by
    have hd : rho 49433 = Bool.toZMod bit * (rho 49431 - seg52Out0AccX43 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX43
      linear_combination -r5044
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY44 rho = seg52Out0AccY43 rho - Bool.toZMod bit * (seg52Out0AccY43 rho - rho 49432) := by
    have hd : rho 49434 = Bool.toZMod bit * (rho 49432 - seg52Out0AccY43 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY43
      linear_combination -r5045
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49425 * rho 49426 = rho 49435 := by linear_combination r5046
  have hd1 : rho 49425 * rho 49425 = rho 49436 := by linear_combination r5047
  have hd2 : rho 49426 * rho 49426 = rho 49437 := by linear_combination r5048
  have hd3 : rho 49438 * (rho 49426 * rho 49426 + rho 49425 * rho 49425 * (-1)) =
      2 * (rho 49425 * rho 49426) := by
    rw [hd0, hd1, hd2]
    linear_combination r5049
  have hd4 : rho 49439 * (2 - (rho 49426 * rho 49426 + rho 49425 * rho 49425 * (-1))) =
      rho 49426 * rho 49426 - rho 49425 * rho 49425 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5050
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 49425, rho 49426⟩
    ⟨rho 49431, rho 49432⟩ ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 49438, rho 49439⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg52Out0_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg52Out0_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg52Out0_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg52Out0_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg52Out0_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg52Out0_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg52Out0_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg52Out0_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg52Out0_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg52Out0_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
