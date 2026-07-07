import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5909 rho ∧ Seg52.relationRow5910 rho ∧ Seg52.relationRow5911 rho ∧ Seg52.relationRow5912 rho ∧ Seg52.relationRow5913 rho ∧ Seg52.relationRow5914 rho ∧ Seg52.relationRow5915 rho ∧ Seg52.relationRow5916 rho ∧ Seg52.relationRow5917 rho ∧ Seg52.relationRow5918 rho ∧ Seg52.relationRow5919 rho ∧ Seg52.relationRow5920 rho ∧ Seg52.relationRow5921 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨r5920, r5921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921⟩

theorem seg52Out0_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48856 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50296, rho 50297⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50296, rho 50297⟩
        ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50309, rho 50310⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921⟩ := seg52Out0_rows110 rho h
  unfold Seg52.relationRow5909 at r5909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909

  unfold Seg52.relationRow5910 at r5910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5910

  unfold Seg52.relationRow5911 at r5911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911

  unfold Seg52.relationRow5912 at r5912

  unfold Seg52.relationRow5913 at r5913

  unfold Seg52.relationRow5914 at r5914

  unfold Seg52.relationRow5915 at r5915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5915

  unfold Seg52.relationRow5916 at r5916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916

  unfold Seg52.relationRow5917 at r5917

  unfold Seg52.relationRow5918 at r5918

  unfold Seg52.relationRow5919 at r5919

  unfold Seg52.relationRow5920 at r5920

  unfold Seg52.relationRow5921 at r5921

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX111 rho = seg52Out0AccX110 rho + rho 50304 := by
    unfold seg52Out0AccX111 seg52Out0AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 110]

    ring

  have hnexty : seg52Out0AccY111 rho = seg52Out0AccY110 rho + rho 50305 := by
    unfold seg52Out0AccY111 seg52Out0AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 110]

    ring

  have ha0 : (rho 50296 + rho 50297) * (seg52Out0AccX110 rho + seg52Out0AccY110 rho) = rho 50298 := by
    unfold seg52Out0AccX110 seg52Out0AccY110
    linear_combination r5909
  have ha1 : rho 50297 * seg52Out0AccX110 rho = rho 50299 := by
    unfold seg52Out0AccX110
    linear_combination r5910
  have ha2 : rho 50296 * seg52Out0AccY110 rho = rho 50300 := by
    unfold seg52Out0AccY110
    linear_combination r5911
  have ha3 : 3021 * rho 50299 * rho 50300 = rho 50301 := by
    linear_combination r5912
  have ha4 : rho 50302 * (1 + rho 50301) = rho 50299 + rho 50300 := by
    linear_combination r5913
  have ha5 : rho 50303 * (1 - rho 50301) = rho 50298 - rho 50299 - rho 50300 := by
    linear_combination r5914
  have haddx :
      rho 50302 * (1 + 3021 * (rho 50297 * seg52Out0AccX110 rho) * (rho 50296 * seg52Out0AccY110 rho)) =
        rho 50297 * seg52Out0AccX110 rho + rho 50296 * seg52Out0AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50303 * (1 - 3021 * (rho 50297 * seg52Out0AccX110 rho) * (rho 50296 * seg52Out0AccY110 rho)) =
        (-1) * (rho 50297 * seg52Out0AccX110 rho) - rho 50296 * seg52Out0AccY110 rho +
          (seg52Out0AccY110 rho - seg52Out0AccX110 rho * (-1)) * (rho 50296 + rho 50297) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50303 * (1 - rho 50301) = rho 50298 - rho 50299 - rho 50300 := ha5
      _ = (-1) * rho 50299 - rho 50300 + (seg52Out0AccY110 rho - seg52Out0AccX110 rho * (-1)) *
          (rho 50296 + rho 50297) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX111 rho = seg52Out0AccX110 rho - Bool.toZMod bit * (seg52Out0AccX110 rho - rho 50302) := by
    have hd : rho 50304 = Bool.toZMod bit * (rho 50302 - seg52Out0AccX110 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX110
      linear_combination -r5915
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY111 rho = seg52Out0AccY110 rho - Bool.toZMod bit * (seg52Out0AccY110 rho - rho 50303) := by
    have hd : rho 50305 = Bool.toZMod bit * (rho 50303 - seg52Out0AccY110 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY110
      linear_combination -r5916
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50296 * rho 50297 = rho 50306 := by linear_combination r5917
  have hd1 : rho 50296 * rho 50296 = rho 50307 := by linear_combination r5918
  have hd2 : rho 50297 * rho 50297 = rho 50308 := by linear_combination r5919
  have hd3 : rho 50309 * (rho 50297 * rho 50297 + rho 50296 * rho 50296 * (-1)) =
      2 * (rho 50296 * rho 50297) := by
    rw [hd0, hd1, hd2]
    linear_combination r5920
  have hd4 : rho 50310 * (2 - (rho 50297 * rho 50297 + rho 50296 * rho 50296 * (-1))) =
      rho 50297 * rho 50297 - rho 50296 * rho 50296 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5921
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50296, rho 50297⟩
    ⟨rho 50302, rho 50303⟩ ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50309, rho 50310⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5922 rho ∧ Seg52.relationRow5923 rho ∧ Seg52.relationRow5924 rho ∧ Seg52.relationRow5925 rho ∧ Seg52.relationRow5926 rho ∧ Seg52.relationRow5927 rho ∧ Seg52.relationRow5928 rho ∧ Seg52.relationRow5929 rho ∧ Seg52.relationRow5930 rho ∧ Seg52.relationRow5931 rho ∧ Seg52.relationRow5932 rho ∧ Seg52.relationRow5933 rho ∧ Seg52.relationRow5934 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934⟩

theorem seg52Out0_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48857 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50309, rho 50310⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50309, rho 50310⟩
        ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50322, rho 50323⟩ := by
  obtain ⟨r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934⟩ := seg52Out0_rows111 rho h
  unfold Seg52.relationRow5922 at r5922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5922

  unfold Seg52.relationRow5923 at r5923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923

  unfold Seg52.relationRow5924 at r5924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5924

  unfold Seg52.relationRow5925 at r5925

  unfold Seg52.relationRow5926 at r5926

  unfold Seg52.relationRow5927 at r5927

  unfold Seg52.relationRow5928 at r5928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5928

  unfold Seg52.relationRow5929 at r5929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5929

  unfold Seg52.relationRow5930 at r5930

  unfold Seg52.relationRow5931 at r5931

  unfold Seg52.relationRow5932 at r5932

  unfold Seg52.relationRow5933 at r5933

  unfold Seg52.relationRow5934 at r5934

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX112 rho = seg52Out0AccX111 rho + rho 50317 := by
    unfold seg52Out0AccX112 seg52Out0AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 111]

    ring

  have hnexty : seg52Out0AccY112 rho = seg52Out0AccY111 rho + rho 50318 := by
    unfold seg52Out0AccY112 seg52Out0AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 111]

    ring

  have ha0 : (rho 50309 + rho 50310) * (seg52Out0AccX111 rho + seg52Out0AccY111 rho) = rho 50311 := by
    unfold seg52Out0AccX111 seg52Out0AccY111
    linear_combination r5922
  have ha1 : rho 50310 * seg52Out0AccX111 rho = rho 50312 := by
    unfold seg52Out0AccX111
    linear_combination r5923
  have ha2 : rho 50309 * seg52Out0AccY111 rho = rho 50313 := by
    unfold seg52Out0AccY111
    linear_combination r5924
  have ha3 : 3021 * rho 50312 * rho 50313 = rho 50314 := by
    linear_combination r5925
  have ha4 : rho 50315 * (1 + rho 50314) = rho 50312 + rho 50313 := by
    linear_combination r5926
  have ha5 : rho 50316 * (1 - rho 50314) = rho 50311 - rho 50312 - rho 50313 := by
    linear_combination r5927
  have haddx :
      rho 50315 * (1 + 3021 * (rho 50310 * seg52Out0AccX111 rho) * (rho 50309 * seg52Out0AccY111 rho)) =
        rho 50310 * seg52Out0AccX111 rho + rho 50309 * seg52Out0AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50316 * (1 - 3021 * (rho 50310 * seg52Out0AccX111 rho) * (rho 50309 * seg52Out0AccY111 rho)) =
        (-1) * (rho 50310 * seg52Out0AccX111 rho) - rho 50309 * seg52Out0AccY111 rho +
          (seg52Out0AccY111 rho - seg52Out0AccX111 rho * (-1)) * (rho 50309 + rho 50310) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50316 * (1 - rho 50314) = rho 50311 - rho 50312 - rho 50313 := ha5
      _ = (-1) * rho 50312 - rho 50313 + (seg52Out0AccY111 rho - seg52Out0AccX111 rho * (-1)) *
          (rho 50309 + rho 50310) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX112 rho = seg52Out0AccX111 rho - Bool.toZMod bit * (seg52Out0AccX111 rho - rho 50315) := by
    have hd : rho 50317 = Bool.toZMod bit * (rho 50315 - seg52Out0AccX111 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX111
      linear_combination -r5928
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY112 rho = seg52Out0AccY111 rho - Bool.toZMod bit * (seg52Out0AccY111 rho - rho 50316) := by
    have hd : rho 50318 = Bool.toZMod bit * (rho 50316 - seg52Out0AccY111 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY111
      linear_combination -r5929
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50309 * rho 50310 = rho 50319 := by linear_combination r5930
  have hd1 : rho 50309 * rho 50309 = rho 50320 := by linear_combination r5931
  have hd2 : rho 50310 * rho 50310 = rho 50321 := by linear_combination r5932
  have hd3 : rho 50322 * (rho 50310 * rho 50310 + rho 50309 * rho 50309 * (-1)) =
      2 * (rho 50309 * rho 50310) := by
    rw [hd0, hd1, hd2]
    linear_combination r5933
  have hd4 : rho 50323 * (2 - (rho 50310 * rho 50310 + rho 50309 * rho 50309 * (-1))) =
      rho 50310 * rho 50310 - rho 50309 * rho 50309 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5934
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50309, rho 50310⟩
    ⟨rho 50315, rho 50316⟩ ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50322, rho 50323⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5935 rho ∧ Seg52.relationRow5936 rho ∧ Seg52.relationRow5937 rho ∧ Seg52.relationRow5938 rho ∧ Seg52.relationRow5939 rho ∧ Seg52.relationRow5940 rho ∧ Seg52.relationRow5941 rho ∧ Seg52.relationRow5942 rho ∧ Seg52.relationRow5943 rho ∧ Seg52.relationRow5944 rho ∧ Seg52.relationRow5945 rho ∧ Seg52.relationRow5946 rho ∧ Seg52.relationRow5947 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947⟩

theorem seg52Out0_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48858 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50322, rho 50323⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50322, rho 50323⟩
        ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50335, rho 50336⟩ := by
  obtain ⟨r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947⟩ := seg52Out0_rows112 rho h
  unfold Seg52.relationRow5935 at r5935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5935

  unfold Seg52.relationRow5936 at r5936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5936

  unfold Seg52.relationRow5937 at r5937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937

  unfold Seg52.relationRow5938 at r5938

  unfold Seg52.relationRow5939 at r5939

  unfold Seg52.relationRow5940 at r5940

  unfold Seg52.relationRow5941 at r5941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5941

  unfold Seg52.relationRow5942 at r5942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5942

  unfold Seg52.relationRow5943 at r5943

  unfold Seg52.relationRow5944 at r5944

  unfold Seg52.relationRow5945 at r5945

  unfold Seg52.relationRow5946 at r5946

  unfold Seg52.relationRow5947 at r5947

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX113 rho = seg52Out0AccX112 rho + rho 50330 := by
    unfold seg52Out0AccX113 seg52Out0AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 112]

    ring

  have hnexty : seg52Out0AccY113 rho = seg52Out0AccY112 rho + rho 50331 := by
    unfold seg52Out0AccY113 seg52Out0AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 112]

    ring

  have ha0 : (rho 50322 + rho 50323) * (seg52Out0AccX112 rho + seg52Out0AccY112 rho) = rho 50324 := by
    unfold seg52Out0AccX112 seg52Out0AccY112
    linear_combination r5935
  have ha1 : rho 50323 * seg52Out0AccX112 rho = rho 50325 := by
    unfold seg52Out0AccX112
    linear_combination r5936
  have ha2 : rho 50322 * seg52Out0AccY112 rho = rho 50326 := by
    unfold seg52Out0AccY112
    linear_combination r5937
  have ha3 : 3021 * rho 50325 * rho 50326 = rho 50327 := by
    linear_combination r5938
  have ha4 : rho 50328 * (1 + rho 50327) = rho 50325 + rho 50326 := by
    linear_combination r5939
  have ha5 : rho 50329 * (1 - rho 50327) = rho 50324 - rho 50325 - rho 50326 := by
    linear_combination r5940
  have haddx :
      rho 50328 * (1 + 3021 * (rho 50323 * seg52Out0AccX112 rho) * (rho 50322 * seg52Out0AccY112 rho)) =
        rho 50323 * seg52Out0AccX112 rho + rho 50322 * seg52Out0AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50329 * (1 - 3021 * (rho 50323 * seg52Out0AccX112 rho) * (rho 50322 * seg52Out0AccY112 rho)) =
        (-1) * (rho 50323 * seg52Out0AccX112 rho) - rho 50322 * seg52Out0AccY112 rho +
          (seg52Out0AccY112 rho - seg52Out0AccX112 rho * (-1)) * (rho 50322 + rho 50323) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50329 * (1 - rho 50327) = rho 50324 - rho 50325 - rho 50326 := ha5
      _ = (-1) * rho 50325 - rho 50326 + (seg52Out0AccY112 rho - seg52Out0AccX112 rho * (-1)) *
          (rho 50322 + rho 50323) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX113 rho = seg52Out0AccX112 rho - Bool.toZMod bit * (seg52Out0AccX112 rho - rho 50328) := by
    have hd : rho 50330 = Bool.toZMod bit * (rho 50328 - seg52Out0AccX112 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX112
      linear_combination -r5941
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY113 rho = seg52Out0AccY112 rho - Bool.toZMod bit * (seg52Out0AccY112 rho - rho 50329) := by
    have hd : rho 50331 = Bool.toZMod bit * (rho 50329 - seg52Out0AccY112 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY112
      linear_combination -r5942
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50322 * rho 50323 = rho 50332 := by linear_combination r5943
  have hd1 : rho 50322 * rho 50322 = rho 50333 := by linear_combination r5944
  have hd2 : rho 50323 * rho 50323 = rho 50334 := by linear_combination r5945
  have hd3 : rho 50335 * (rho 50323 * rho 50323 + rho 50322 * rho 50322 * (-1)) =
      2 * (rho 50322 * rho 50323) := by
    rw [hd0, hd1, hd2]
    linear_combination r5946
  have hd4 : rho 50336 * (2 - (rho 50323 * rho 50323 + rho 50322 * rho 50322 * (-1))) =
      rho 50323 * rho 50323 - rho 50322 * rho 50322 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5947
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50322, rho 50323⟩
    ⟨rho 50328, rho 50329⟩ ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50335, rho 50336⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5948 rho ∧ Seg52.relationRow5949 rho ∧ Seg52.relationRow5950 rho ∧ Seg52.relationRow5951 rho ∧ Seg52.relationRow5952 rho ∧ Seg52.relationRow5953 rho ∧ Seg52.relationRow5954 rho ∧ Seg52.relationRow5955 rho ∧ Seg52.relationRow5956 rho ∧ Seg52.relationRow5957 rho ∧ Seg52.relationRow5958 rho ∧ Seg52.relationRow5959 rho ∧ Seg52.relationRow5960 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960⟩

theorem seg52Out0_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48859 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50335, rho 50336⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50335, rho 50336⟩
        ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50348, rho 50349⟩ := by
  obtain ⟨r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960⟩ := seg52Out0_rows113 rho h
  unfold Seg52.relationRow5948 at r5948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5948

  unfold Seg52.relationRow5949 at r5949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5949

  unfold Seg52.relationRow5950 at r5950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5950

  unfold Seg52.relationRow5951 at r5951

  unfold Seg52.relationRow5952 at r5952

  unfold Seg52.relationRow5953 at r5953

  unfold Seg52.relationRow5954 at r5954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954

  unfold Seg52.relationRow5955 at r5955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5955

  unfold Seg52.relationRow5956 at r5956

  unfold Seg52.relationRow5957 at r5957

  unfold Seg52.relationRow5958 at r5958

  unfold Seg52.relationRow5959 at r5959

  unfold Seg52.relationRow5960 at r5960

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX114 rho = seg52Out0AccX113 rho + rho 50343 := by
    unfold seg52Out0AccX114 seg52Out0AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 113]

    ring

  have hnexty : seg52Out0AccY114 rho = seg52Out0AccY113 rho + rho 50344 := by
    unfold seg52Out0AccY114 seg52Out0AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 113]

    ring

  have ha0 : (rho 50335 + rho 50336) * (seg52Out0AccX113 rho + seg52Out0AccY113 rho) = rho 50337 := by
    unfold seg52Out0AccX113 seg52Out0AccY113
    linear_combination r5948
  have ha1 : rho 50336 * seg52Out0AccX113 rho = rho 50338 := by
    unfold seg52Out0AccX113
    linear_combination r5949
  have ha2 : rho 50335 * seg52Out0AccY113 rho = rho 50339 := by
    unfold seg52Out0AccY113
    linear_combination r5950
  have ha3 : 3021 * rho 50338 * rho 50339 = rho 50340 := by
    linear_combination r5951
  have ha4 : rho 50341 * (1 + rho 50340) = rho 50338 + rho 50339 := by
    linear_combination r5952
  have ha5 : rho 50342 * (1 - rho 50340) = rho 50337 - rho 50338 - rho 50339 := by
    linear_combination r5953
  have haddx :
      rho 50341 * (1 + 3021 * (rho 50336 * seg52Out0AccX113 rho) * (rho 50335 * seg52Out0AccY113 rho)) =
        rho 50336 * seg52Out0AccX113 rho + rho 50335 * seg52Out0AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50342 * (1 - 3021 * (rho 50336 * seg52Out0AccX113 rho) * (rho 50335 * seg52Out0AccY113 rho)) =
        (-1) * (rho 50336 * seg52Out0AccX113 rho) - rho 50335 * seg52Out0AccY113 rho +
          (seg52Out0AccY113 rho - seg52Out0AccX113 rho * (-1)) * (rho 50335 + rho 50336) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50342 * (1 - rho 50340) = rho 50337 - rho 50338 - rho 50339 := ha5
      _ = (-1) * rho 50338 - rho 50339 + (seg52Out0AccY113 rho - seg52Out0AccX113 rho * (-1)) *
          (rho 50335 + rho 50336) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX114 rho = seg52Out0AccX113 rho - Bool.toZMod bit * (seg52Out0AccX113 rho - rho 50341) := by
    have hd : rho 50343 = Bool.toZMod bit * (rho 50341 - seg52Out0AccX113 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX113
      linear_combination -r5954
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY114 rho = seg52Out0AccY113 rho - Bool.toZMod bit * (seg52Out0AccY113 rho - rho 50342) := by
    have hd : rho 50344 = Bool.toZMod bit * (rho 50342 - seg52Out0AccY113 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY113
      linear_combination -r5955
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50335 * rho 50336 = rho 50345 := by linear_combination r5956
  have hd1 : rho 50335 * rho 50335 = rho 50346 := by linear_combination r5957
  have hd2 : rho 50336 * rho 50336 = rho 50347 := by linear_combination r5958
  have hd3 : rho 50348 * (rho 50336 * rho 50336 + rho 50335 * rho 50335 * (-1)) =
      2 * (rho 50335 * rho 50336) := by
    rw [hd0, hd1, hd2]
    linear_combination r5959
  have hd4 : rho 50349 * (2 - (rho 50336 * rho 50336 + rho 50335 * rho 50335 * (-1))) =
      rho 50336 * rho 50336 - rho 50335 * rho 50335 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5960
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50335, rho 50336⟩
    ⟨rho 50341, rho 50342⟩ ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50348, rho 50349⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5961 rho ∧ Seg52.relationRow5962 rho ∧ Seg52.relationRow5963 rho ∧ Seg52.relationRow5964 rho ∧ Seg52.relationRow5965 rho ∧ Seg52.relationRow5966 rho ∧ Seg52.relationRow5967 rho ∧ Seg52.relationRow5968 rho ∧ Seg52.relationRow5969 rho ∧ Seg52.relationRow5970 rho ∧ Seg52.relationRow5971 rho ∧ Seg52.relationRow5972 rho ∧ Seg52.relationRow5973 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973⟩

theorem seg52Out0_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48860 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50348, rho 50349⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50348, rho 50349⟩
        ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 50361, rho 50362⟩ := by
  obtain ⟨r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973⟩ := seg52Out0_rows114 rho h
  unfold Seg52.relationRow5961 at r5961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5961

  unfold Seg52.relationRow5962 at r5962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5962

  unfold Seg52.relationRow5963 at r5963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5963

  unfold Seg52.relationRow5964 at r5964

  unfold Seg52.relationRow5965 at r5965

  unfold Seg52.relationRow5966 at r5966

  unfold Seg52.relationRow5967 at r5967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967

  unfold Seg52.relationRow5968 at r5968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968

  unfold Seg52.relationRow5969 at r5969

  unfold Seg52.relationRow5970 at r5970

  unfold Seg52.relationRow5971 at r5971

  unfold Seg52.relationRow5972 at r5972

  unfold Seg52.relationRow5973 at r5973

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX115 rho = seg52Out0AccX114 rho + rho 50356 := by
    unfold seg52Out0AccX115 seg52Out0AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 114]

    ring

  have hnexty : seg52Out0AccY115 rho = seg52Out0AccY114 rho + rho 50357 := by
    unfold seg52Out0AccY115 seg52Out0AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 114]

    ring

  have ha0 : (rho 50348 + rho 50349) * (seg52Out0AccX114 rho + seg52Out0AccY114 rho) = rho 50350 := by
    unfold seg52Out0AccX114 seg52Out0AccY114
    linear_combination r5961
  have ha1 : rho 50349 * seg52Out0AccX114 rho = rho 50351 := by
    unfold seg52Out0AccX114
    linear_combination r5962
  have ha2 : rho 50348 * seg52Out0AccY114 rho = rho 50352 := by
    unfold seg52Out0AccY114
    linear_combination r5963
  have ha3 : 3021 * rho 50351 * rho 50352 = rho 50353 := by
    linear_combination r5964
  have ha4 : rho 50354 * (1 + rho 50353) = rho 50351 + rho 50352 := by
    linear_combination r5965
  have ha5 : rho 50355 * (1 - rho 50353) = rho 50350 - rho 50351 - rho 50352 := by
    linear_combination r5966
  have haddx :
      rho 50354 * (1 + 3021 * (rho 50349 * seg52Out0AccX114 rho) * (rho 50348 * seg52Out0AccY114 rho)) =
        rho 50349 * seg52Out0AccX114 rho + rho 50348 * seg52Out0AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50355 * (1 - 3021 * (rho 50349 * seg52Out0AccX114 rho) * (rho 50348 * seg52Out0AccY114 rho)) =
        (-1) * (rho 50349 * seg52Out0AccX114 rho) - rho 50348 * seg52Out0AccY114 rho +
          (seg52Out0AccY114 rho - seg52Out0AccX114 rho * (-1)) * (rho 50348 + rho 50349) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50355 * (1 - rho 50353) = rho 50350 - rho 50351 - rho 50352 := ha5
      _ = (-1) * rho 50351 - rho 50352 + (seg52Out0AccY114 rho - seg52Out0AccX114 rho * (-1)) *
          (rho 50348 + rho 50349) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX115 rho = seg52Out0AccX114 rho - Bool.toZMod bit * (seg52Out0AccX114 rho - rho 50354) := by
    have hd : rho 50356 = Bool.toZMod bit * (rho 50354 - seg52Out0AccX114 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX114
      linear_combination -r5967
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY115 rho = seg52Out0AccY114 rho - Bool.toZMod bit * (seg52Out0AccY114 rho - rho 50355) := by
    have hd : rho 50357 = Bool.toZMod bit * (rho 50355 - seg52Out0AccY114 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY114
      linear_combination -r5968
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50348 * rho 50349 = rho 50358 := by linear_combination r5969
  have hd1 : rho 50348 * rho 50348 = rho 50359 := by linear_combination r5970
  have hd2 : rho 50349 * rho 50349 = rho 50360 := by linear_combination r5971
  have hd3 : rho 50361 * (rho 50349 * rho 50349 + rho 50348 * rho 50348 * (-1)) =
      2 * (rho 50348 * rho 50349) := by
    rw [hd0, hd1, hd2]
    linear_combination r5972
  have hd4 : rho 50362 * (2 - (rho 50349 * rho 50349 + rho 50348 * rho 50348 * (-1))) =
      rho 50349 * rho 50349 - rho 50348 * rho 50348 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5973
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50348, rho 50349⟩
    ⟨rho 50354, rho 50355⟩ ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 50361, rho 50362⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5974 rho ∧ Seg52.relationRow5975 rho ∧ Seg52.relationRow5976 rho ∧ Seg52.relationRow5977 rho ∧ Seg52.relationRow5978 rho ∧ Seg52.relationRow5979 rho ∧ Seg52.relationRow5980 rho ∧ Seg52.relationRow5981 rho ∧ Seg52.relationRow5982 rho ∧ Seg52.relationRow5983 rho ∧ Seg52.relationRow5984 rho ∧ Seg52.relationRow5985 rho ∧ Seg52.relationRow5986 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986⟩

theorem seg52Out0_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48861 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50361, rho 50362⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 50361, rho 50362⟩
        ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 50374, rho 50375⟩ := by
  obtain ⟨r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986⟩ := seg52Out0_rows115 rho h
  unfold Seg52.relationRow5974 at r5974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5974

  unfold Seg52.relationRow5975 at r5975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5975

  unfold Seg52.relationRow5976 at r5976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5976

  unfold Seg52.relationRow5977 at r5977

  unfold Seg52.relationRow5978 at r5978

  unfold Seg52.relationRow5979 at r5979

  unfold Seg52.relationRow5980 at r5980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5980

  unfold Seg52.relationRow5981 at r5981

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981

  unfold Seg52.relationRow5982 at r5982

  unfold Seg52.relationRow5983 at r5983

  unfold Seg52.relationRow5984 at r5984

  unfold Seg52.relationRow5985 at r5985

  unfold Seg52.relationRow5986 at r5986

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX116 rho = seg52Out0AccX115 rho + rho 50369 := by
    unfold seg52Out0AccX116 seg52Out0AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 115]

    ring

  have hnexty : seg52Out0AccY116 rho = seg52Out0AccY115 rho + rho 50370 := by
    unfold seg52Out0AccY116 seg52Out0AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 115]

    ring

  have ha0 : (rho 50361 + rho 50362) * (seg52Out0AccX115 rho + seg52Out0AccY115 rho) = rho 50363 := by
    unfold seg52Out0AccX115 seg52Out0AccY115
    linear_combination r5974
  have ha1 : rho 50362 * seg52Out0AccX115 rho = rho 50364 := by
    unfold seg52Out0AccX115
    linear_combination r5975
  have ha2 : rho 50361 * seg52Out0AccY115 rho = rho 50365 := by
    unfold seg52Out0AccY115
    linear_combination r5976
  have ha3 : 3021 * rho 50364 * rho 50365 = rho 50366 := by
    linear_combination r5977
  have ha4 : rho 50367 * (1 + rho 50366) = rho 50364 + rho 50365 := by
    linear_combination r5978
  have ha5 : rho 50368 * (1 - rho 50366) = rho 50363 - rho 50364 - rho 50365 := by
    linear_combination r5979
  have haddx :
      rho 50367 * (1 + 3021 * (rho 50362 * seg52Out0AccX115 rho) * (rho 50361 * seg52Out0AccY115 rho)) =
        rho 50362 * seg52Out0AccX115 rho + rho 50361 * seg52Out0AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50368 * (1 - 3021 * (rho 50362 * seg52Out0AccX115 rho) * (rho 50361 * seg52Out0AccY115 rho)) =
        (-1) * (rho 50362 * seg52Out0AccX115 rho) - rho 50361 * seg52Out0AccY115 rho +
          (seg52Out0AccY115 rho - seg52Out0AccX115 rho * (-1)) * (rho 50361 + rho 50362) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50368 * (1 - rho 50366) = rho 50363 - rho 50364 - rho 50365 := ha5
      _ = (-1) * rho 50364 - rho 50365 + (seg52Out0AccY115 rho - seg52Out0AccX115 rho * (-1)) *
          (rho 50361 + rho 50362) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX116 rho = seg52Out0AccX115 rho - Bool.toZMod bit * (seg52Out0AccX115 rho - rho 50367) := by
    have hd : rho 50369 = Bool.toZMod bit * (rho 50367 - seg52Out0AccX115 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX115
      linear_combination -r5980
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY116 rho = seg52Out0AccY115 rho - Bool.toZMod bit * (seg52Out0AccY115 rho - rho 50368) := by
    have hd : rho 50370 = Bool.toZMod bit * (rho 50368 - seg52Out0AccY115 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY115
      linear_combination -r5981
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50361 * rho 50362 = rho 50371 := by linear_combination r5982
  have hd1 : rho 50361 * rho 50361 = rho 50372 := by linear_combination r5983
  have hd2 : rho 50362 * rho 50362 = rho 50373 := by linear_combination r5984
  have hd3 : rho 50374 * (rho 50362 * rho 50362 + rho 50361 * rho 50361 * (-1)) =
      2 * (rho 50361 * rho 50362) := by
    rw [hd0, hd1, hd2]
    linear_combination r5985
  have hd4 : rho 50375 * (2 - (rho 50362 * rho 50362 + rho 50361 * rho 50361 * (-1))) =
      rho 50362 * rho 50362 - rho 50361 * rho 50361 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5986
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 50361, rho 50362⟩
    ⟨rho 50367, rho 50368⟩ ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 50374, rho 50375⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5987 rho ∧ Seg52.relationRow5988 rho ∧ Seg52.relationRow5989 rho ∧ Seg52.relationRow5990 rho ∧ Seg52.relationRow5991 rho ∧ Seg52.relationRow5992 rho ∧ Seg52.relationRow5993 rho ∧ Seg52.relationRow5994 rho ∧ Seg52.relationRow5995 rho ∧ Seg52.relationRow5996 rho ∧ Seg52.relationRow5997 rho ∧ Seg52.relationRow5998 rho ∧ Seg52.relationRow5999 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩

  exact ⟨r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩

theorem seg52Out0_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48862 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50374, rho 50375⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 50374, rho 50375⟩
        ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 50387, rho 50388⟩ := by
  obtain ⟨r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩ := seg52Out0_rows116 rho h
  unfold Seg52.relationRow5987 at r5987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987

  unfold Seg52.relationRow5988 at r5988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5988

  unfold Seg52.relationRow5989 at r5989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5989

  unfold Seg52.relationRow5990 at r5990

  unfold Seg52.relationRow5991 at r5991

  unfold Seg52.relationRow5992 at r5992

  unfold Seg52.relationRow5993 at r5993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993

  unfold Seg52.relationRow5994 at r5994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5994

  unfold Seg52.relationRow5995 at r5995

  unfold Seg52.relationRow5996 at r5996

  unfold Seg52.relationRow5997 at r5997

  unfold Seg52.relationRow5998 at r5998

  unfold Seg52.relationRow5999 at r5999

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX117 rho = seg52Out0AccX116 rho + rho 50382 := by
    unfold seg52Out0AccX117 seg52Out0AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 116]

    ring

  have hnexty : seg52Out0AccY117 rho = seg52Out0AccY116 rho + rho 50383 := by
    unfold seg52Out0AccY117 seg52Out0AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 116]

    ring

  have ha0 : (rho 50374 + rho 50375) * (seg52Out0AccX116 rho + seg52Out0AccY116 rho) = rho 50376 := by
    unfold seg52Out0AccX116 seg52Out0AccY116
    linear_combination r5987
  have ha1 : rho 50375 * seg52Out0AccX116 rho = rho 50377 := by
    unfold seg52Out0AccX116
    linear_combination r5988
  have ha2 : rho 50374 * seg52Out0AccY116 rho = rho 50378 := by
    unfold seg52Out0AccY116
    linear_combination r5989
  have ha3 : 3021 * rho 50377 * rho 50378 = rho 50379 := by
    linear_combination r5990
  have ha4 : rho 50380 * (1 + rho 50379) = rho 50377 + rho 50378 := by
    linear_combination r5991
  have ha5 : rho 50381 * (1 - rho 50379) = rho 50376 - rho 50377 - rho 50378 := by
    linear_combination r5992
  have haddx :
      rho 50380 * (1 + 3021 * (rho 50375 * seg52Out0AccX116 rho) * (rho 50374 * seg52Out0AccY116 rho)) =
        rho 50375 * seg52Out0AccX116 rho + rho 50374 * seg52Out0AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50381 * (1 - 3021 * (rho 50375 * seg52Out0AccX116 rho) * (rho 50374 * seg52Out0AccY116 rho)) =
        (-1) * (rho 50375 * seg52Out0AccX116 rho) - rho 50374 * seg52Out0AccY116 rho +
          (seg52Out0AccY116 rho - seg52Out0AccX116 rho * (-1)) * (rho 50374 + rho 50375) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50381 * (1 - rho 50379) = rho 50376 - rho 50377 - rho 50378 := ha5
      _ = (-1) * rho 50377 - rho 50378 + (seg52Out0AccY116 rho - seg52Out0AccX116 rho * (-1)) *
          (rho 50374 + rho 50375) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX117 rho = seg52Out0AccX116 rho - Bool.toZMod bit * (seg52Out0AccX116 rho - rho 50380) := by
    have hd : rho 50382 = Bool.toZMod bit * (rho 50380 - seg52Out0AccX116 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX116
      linear_combination -r5993
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY117 rho = seg52Out0AccY116 rho - Bool.toZMod bit * (seg52Out0AccY116 rho - rho 50381) := by
    have hd : rho 50383 = Bool.toZMod bit * (rho 50381 - seg52Out0AccY116 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY116
      linear_combination -r5994
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50374 * rho 50375 = rho 50384 := by linear_combination r5995
  have hd1 : rho 50374 * rho 50374 = rho 50385 := by linear_combination r5996
  have hd2 : rho 50375 * rho 50375 = rho 50386 := by linear_combination r5997
  have hd3 : rho 50387 * (rho 50375 * rho 50375 + rho 50374 * rho 50374 * (-1)) =
      2 * (rho 50374 * rho 50375) := by
    rw [hd0, hd1, hd2]
    linear_combination r5998
  have hd4 : rho 50388 * (2 - (rho 50375 * rho 50375 + rho 50374 * rho 50374 * (-1))) =
      rho 50375 * rho 50375 - rho 50374 * rho 50374 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5999
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 50374, rho 50375⟩
    ⟨rho 50380, rho 50381⟩ ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 50387, rho 50388⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6000 rho ∧ Seg52.relationRow6001 rho ∧ Seg52.relationRow6002 rho ∧ Seg52.relationRow6003 rho ∧ Seg52.relationRow6004 rho ∧ Seg52.relationRow6005 rho ∧ Seg52.relationRow6006 rho ∧ Seg52.relationRow6007 rho ∧ Seg52.relationRow6008 rho ∧ Seg52.relationRow6009 rho ∧ Seg52.relationRow6010 rho ∧ Seg52.relationRow6011 rho ∧ Seg52.relationRow6012 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012⟩

theorem seg52Out0_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48863 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50387, rho 50388⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 50387, rho 50388⟩
        ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 50400, rho 50401⟩ := by
  obtain ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012⟩ := seg52Out0_rows117 rho h
  unfold Seg52.relationRow6000 at r6000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000

  unfold Seg52.relationRow6001 at r6001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001

  unfold Seg52.relationRow6002 at r6002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6002

  unfold Seg52.relationRow6003 at r6003

  unfold Seg52.relationRow6004 at r6004

  unfold Seg52.relationRow6005 at r6005

  unfold Seg52.relationRow6006 at r6006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6006

  unfold Seg52.relationRow6007 at r6007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007

  unfold Seg52.relationRow6008 at r6008

  unfold Seg52.relationRow6009 at r6009

  unfold Seg52.relationRow6010 at r6010

  unfold Seg52.relationRow6011 at r6011

  unfold Seg52.relationRow6012 at r6012

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX118 rho = seg52Out0AccX117 rho + rho 50395 := by
    unfold seg52Out0AccX118 seg52Out0AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 117]

    ring

  have hnexty : seg52Out0AccY118 rho = seg52Out0AccY117 rho + rho 50396 := by
    unfold seg52Out0AccY118 seg52Out0AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 117]

    ring

  have ha0 : (rho 50387 + rho 50388) * (seg52Out0AccX117 rho + seg52Out0AccY117 rho) = rho 50389 := by
    unfold seg52Out0AccX117 seg52Out0AccY117
    linear_combination r6000
  have ha1 : rho 50388 * seg52Out0AccX117 rho = rho 50390 := by
    unfold seg52Out0AccX117
    linear_combination r6001
  have ha2 : rho 50387 * seg52Out0AccY117 rho = rho 50391 := by
    unfold seg52Out0AccY117
    linear_combination r6002
  have ha3 : 3021 * rho 50390 * rho 50391 = rho 50392 := by
    linear_combination r6003
  have ha4 : rho 50393 * (1 + rho 50392) = rho 50390 + rho 50391 := by
    linear_combination r6004
  have ha5 : rho 50394 * (1 - rho 50392) = rho 50389 - rho 50390 - rho 50391 := by
    linear_combination r6005
  have haddx :
      rho 50393 * (1 + 3021 * (rho 50388 * seg52Out0AccX117 rho) * (rho 50387 * seg52Out0AccY117 rho)) =
        rho 50388 * seg52Out0AccX117 rho + rho 50387 * seg52Out0AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50394 * (1 - 3021 * (rho 50388 * seg52Out0AccX117 rho) * (rho 50387 * seg52Out0AccY117 rho)) =
        (-1) * (rho 50388 * seg52Out0AccX117 rho) - rho 50387 * seg52Out0AccY117 rho +
          (seg52Out0AccY117 rho - seg52Out0AccX117 rho * (-1)) * (rho 50387 + rho 50388) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50394 * (1 - rho 50392) = rho 50389 - rho 50390 - rho 50391 := ha5
      _ = (-1) * rho 50390 - rho 50391 + (seg52Out0AccY117 rho - seg52Out0AccX117 rho * (-1)) *
          (rho 50387 + rho 50388) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX118 rho = seg52Out0AccX117 rho - Bool.toZMod bit * (seg52Out0AccX117 rho - rho 50393) := by
    have hd : rho 50395 = Bool.toZMod bit * (rho 50393 - seg52Out0AccX117 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX117
      linear_combination -r6006
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY118 rho = seg52Out0AccY117 rho - Bool.toZMod bit * (seg52Out0AccY117 rho - rho 50394) := by
    have hd : rho 50396 = Bool.toZMod bit * (rho 50394 - seg52Out0AccY117 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY117
      linear_combination -r6007
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50387 * rho 50388 = rho 50397 := by linear_combination r6008
  have hd1 : rho 50387 * rho 50387 = rho 50398 := by linear_combination r6009
  have hd2 : rho 50388 * rho 50388 = rho 50399 := by linear_combination r6010
  have hd3 : rho 50400 * (rho 50388 * rho 50388 + rho 50387 * rho 50387 * (-1)) =
      2 * (rho 50387 * rho 50388) := by
    rw [hd0, hd1, hd2]
    linear_combination r6011
  have hd4 : rho 50401 * (2 - (rho 50388 * rho 50388 + rho 50387 * rho 50387 * (-1))) =
      rho 50388 * rho 50388 - rho 50387 * rho 50387 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6012
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 50387, rho 50388⟩
    ⟨rho 50393, rho 50394⟩ ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 50400, rho 50401⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6013 rho ∧ Seg52.relationRow6014 rho ∧ Seg52.relationRow6015 rho ∧ Seg52.relationRow6016 rho ∧ Seg52.relationRow6017 rho ∧ Seg52.relationRow6018 rho ∧ Seg52.relationRow6019 rho ∧ Seg52.relationRow6020 rho ∧ Seg52.relationRow6021 rho ∧ Seg52.relationRow6022 rho ∧ Seg52.relationRow6023 rho ∧ Seg52.relationRow6024 rho ∧ Seg52.relationRow6025 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025⟩

theorem seg52Out0_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48864 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50400, rho 50401⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 50400, rho 50401⟩
        ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 50413, rho 50414⟩ := by
  obtain ⟨r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025⟩ := seg52Out0_rows118 rho h
  unfold Seg52.relationRow6013 at r6013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6013

  unfold Seg52.relationRow6014 at r6014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014

  unfold Seg52.relationRow6015 at r6015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015

  unfold Seg52.relationRow6016 at r6016

  unfold Seg52.relationRow6017 at r6017

  unfold Seg52.relationRow6018 at r6018

  unfold Seg52.relationRow6019 at r6019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6019

  unfold Seg52.relationRow6020 at r6020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6020

  unfold Seg52.relationRow6021 at r6021

  unfold Seg52.relationRow6022 at r6022

  unfold Seg52.relationRow6023 at r6023

  unfold Seg52.relationRow6024 at r6024

  unfold Seg52.relationRow6025 at r6025

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX119 rho = seg52Out0AccX118 rho + rho 50408 := by
    unfold seg52Out0AccX119 seg52Out0AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 118]

    ring

  have hnexty : seg52Out0AccY119 rho = seg52Out0AccY118 rho + rho 50409 := by
    unfold seg52Out0AccY119 seg52Out0AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 118]

    ring

  have ha0 : (rho 50400 + rho 50401) * (seg52Out0AccX118 rho + seg52Out0AccY118 rho) = rho 50402 := by
    unfold seg52Out0AccX118 seg52Out0AccY118
    linear_combination r6013
  have ha1 : rho 50401 * seg52Out0AccX118 rho = rho 50403 := by
    unfold seg52Out0AccX118
    linear_combination r6014
  have ha2 : rho 50400 * seg52Out0AccY118 rho = rho 50404 := by
    unfold seg52Out0AccY118
    linear_combination r6015
  have ha3 : 3021 * rho 50403 * rho 50404 = rho 50405 := by
    linear_combination r6016
  have ha4 : rho 50406 * (1 + rho 50405) = rho 50403 + rho 50404 := by
    linear_combination r6017
  have ha5 : rho 50407 * (1 - rho 50405) = rho 50402 - rho 50403 - rho 50404 := by
    linear_combination r6018
  have haddx :
      rho 50406 * (1 + 3021 * (rho 50401 * seg52Out0AccX118 rho) * (rho 50400 * seg52Out0AccY118 rho)) =
        rho 50401 * seg52Out0AccX118 rho + rho 50400 * seg52Out0AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50407 * (1 - 3021 * (rho 50401 * seg52Out0AccX118 rho) * (rho 50400 * seg52Out0AccY118 rho)) =
        (-1) * (rho 50401 * seg52Out0AccX118 rho) - rho 50400 * seg52Out0AccY118 rho +
          (seg52Out0AccY118 rho - seg52Out0AccX118 rho * (-1)) * (rho 50400 + rho 50401) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50407 * (1 - rho 50405) = rho 50402 - rho 50403 - rho 50404 := ha5
      _ = (-1) * rho 50403 - rho 50404 + (seg52Out0AccY118 rho - seg52Out0AccX118 rho * (-1)) *
          (rho 50400 + rho 50401) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX119 rho = seg52Out0AccX118 rho - Bool.toZMod bit * (seg52Out0AccX118 rho - rho 50406) := by
    have hd : rho 50408 = Bool.toZMod bit * (rho 50406 - seg52Out0AccX118 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX118
      linear_combination -r6019
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY119 rho = seg52Out0AccY118 rho - Bool.toZMod bit * (seg52Out0AccY118 rho - rho 50407) := by
    have hd : rho 50409 = Bool.toZMod bit * (rho 50407 - seg52Out0AccY118 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY118
      linear_combination -r6020
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50400 * rho 50401 = rho 50410 := by linear_combination r6021
  have hd1 : rho 50400 * rho 50400 = rho 50411 := by linear_combination r6022
  have hd2 : rho 50401 * rho 50401 = rho 50412 := by linear_combination r6023
  have hd3 : rho 50413 * (rho 50401 * rho 50401 + rho 50400 * rho 50400 * (-1)) =
      2 * (rho 50400 * rho 50401) := by
    rw [hd0, hd1, hd2]
    linear_combination r6024
  have hd4 : rho 50414 * (2 - (rho 50401 * rho 50401 + rho 50400 * rho 50400 * (-1))) =
      rho 50401 * rho 50401 - rho 50400 * rho 50400 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6025
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 50400, rho 50401⟩
    ⟨rho 50406, rho 50407⟩ ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 50413, rho 50414⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6026 rho ∧ Seg52.relationRow6027 rho ∧ Seg52.relationRow6028 rho ∧ Seg52.relationRow6029 rho ∧ Seg52.relationRow6030 rho ∧ Seg52.relationRow6031 rho ∧ Seg52.relationRow6032 rho ∧ Seg52.relationRow6033 rho ∧ Seg52.relationRow6034 rho ∧ Seg52.relationRow6035 rho ∧ Seg52.relationRow6036 rho ∧ Seg52.relationRow6037 rho ∧ Seg52.relationRow6038 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038⟩

theorem seg52Out0_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48865 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50413, rho 50414⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 50413, rho 50414⟩
        ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 50426, rho 50427⟩ := by
  obtain ⟨r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038⟩ := seg52Out0_rows119 rho h
  unfold Seg52.relationRow6026 at r6026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6026

  unfold Seg52.relationRow6027 at r6027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6027

  unfold Seg52.relationRow6028 at r6028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028

  unfold Seg52.relationRow6029 at r6029

  unfold Seg52.relationRow6030 at r6030

  unfold Seg52.relationRow6031 at r6031

  unfold Seg52.relationRow6032 at r6032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6032

  unfold Seg52.relationRow6033 at r6033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6033

  unfold Seg52.relationRow6034 at r6034

  unfold Seg52.relationRow6035 at r6035

  unfold Seg52.relationRow6036 at r6036

  unfold Seg52.relationRow6037 at r6037

  unfold Seg52.relationRow6038 at r6038

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX120 rho = seg52Out0AccX119 rho + rho 50421 := by
    unfold seg52Out0AccX120 seg52Out0AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 119]

    ring

  have hnexty : seg52Out0AccY120 rho = seg52Out0AccY119 rho + rho 50422 := by
    unfold seg52Out0AccY120 seg52Out0AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 119]

    ring

  have ha0 : (rho 50413 + rho 50414) * (seg52Out0AccX119 rho + seg52Out0AccY119 rho) = rho 50415 := by
    unfold seg52Out0AccX119 seg52Out0AccY119
    linear_combination r6026
  have ha1 : rho 50414 * seg52Out0AccX119 rho = rho 50416 := by
    unfold seg52Out0AccX119
    linear_combination r6027
  have ha2 : rho 50413 * seg52Out0AccY119 rho = rho 50417 := by
    unfold seg52Out0AccY119
    linear_combination r6028
  have ha3 : 3021 * rho 50416 * rho 50417 = rho 50418 := by
    linear_combination r6029
  have ha4 : rho 50419 * (1 + rho 50418) = rho 50416 + rho 50417 := by
    linear_combination r6030
  have ha5 : rho 50420 * (1 - rho 50418) = rho 50415 - rho 50416 - rho 50417 := by
    linear_combination r6031
  have haddx :
      rho 50419 * (1 + 3021 * (rho 50414 * seg52Out0AccX119 rho) * (rho 50413 * seg52Out0AccY119 rho)) =
        rho 50414 * seg52Out0AccX119 rho + rho 50413 * seg52Out0AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50420 * (1 - 3021 * (rho 50414 * seg52Out0AccX119 rho) * (rho 50413 * seg52Out0AccY119 rho)) =
        (-1) * (rho 50414 * seg52Out0AccX119 rho) - rho 50413 * seg52Out0AccY119 rho +
          (seg52Out0AccY119 rho - seg52Out0AccX119 rho * (-1)) * (rho 50413 + rho 50414) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50420 * (1 - rho 50418) = rho 50415 - rho 50416 - rho 50417 := ha5
      _ = (-1) * rho 50416 - rho 50417 + (seg52Out0AccY119 rho - seg52Out0AccX119 rho * (-1)) *
          (rho 50413 + rho 50414) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX120 rho = seg52Out0AccX119 rho - Bool.toZMod bit * (seg52Out0AccX119 rho - rho 50419) := by
    have hd : rho 50421 = Bool.toZMod bit * (rho 50419 - seg52Out0AccX119 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX119
      linear_combination -r6032
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY120 rho = seg52Out0AccY119 rho - Bool.toZMod bit * (seg52Out0AccY119 rho - rho 50420) := by
    have hd : rho 50422 = Bool.toZMod bit * (rho 50420 - seg52Out0AccY119 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY119
      linear_combination -r6033
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50413 * rho 50414 = rho 50423 := by linear_combination r6034
  have hd1 : rho 50413 * rho 50413 = rho 50424 := by linear_combination r6035
  have hd2 : rho 50414 * rho 50414 = rho 50425 := by linear_combination r6036
  have hd3 : rho 50426 * (rho 50414 * rho 50414 + rho 50413 * rho 50413 * (-1)) =
      2 * (rho 50413 * rho 50414) := by
    rw [hd0, hd1, hd2]
    linear_combination r6037
  have hd4 : rho 50427 * (2 - (rho 50414 * rho 50414 + rho 50413 * rho 50413 * (-1))) =
      rho 50414 * rho 50414 - rho 50413 * rho 50413 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6038
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 50413, rho 50414⟩
    ⟨rho 50419, rho 50420⟩ ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 50426, rho 50427⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6039 rho ∧ Seg52.relationRow6040 rho ∧ Seg52.relationRow6041 rho ∧ Seg52.relationRow6042 rho ∧ Seg52.relationRow6043 rho ∧ Seg52.relationRow6044 rho ∧ Seg52.relationRow6045 rho ∧ Seg52.relationRow6046 rho ∧ Seg52.relationRow6047 rho ∧ Seg52.relationRow6048 rho ∧ Seg52.relationRow6049 rho ∧ Seg52.relationRow6050 rho ∧ Seg52.relationRow6051 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p75, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051⟩

theorem seg52Out0_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48866 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50426, rho 50427⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 50426, rho 50427⟩
        ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 50439, rho 50440⟩ := by
  obtain ⟨r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051⟩ := seg52Out0_rows120 rho h
  unfold Seg52.relationRow6039 at r6039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6039

  unfold Seg52.relationRow6040 at r6040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6040

  unfold Seg52.relationRow6041 at r6041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6041

  unfold Seg52.relationRow6042 at r6042

  unfold Seg52.relationRow6043 at r6043

  unfold Seg52.relationRow6044 at r6044

  unfold Seg52.relationRow6045 at r6045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6045

  unfold Seg52.relationRow6046 at r6046

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6046

  unfold Seg52.relationRow6047 at r6047

  unfold Seg52.relationRow6048 at r6048

  unfold Seg52.relationRow6049 at r6049

  unfold Seg52.relationRow6050 at r6050

  unfold Seg52.relationRow6051 at r6051

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX121 rho = seg52Out0AccX120 rho + rho 50434 := by
    unfold seg52Out0AccX121 seg52Out0AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 120]

    ring

  have hnexty : seg52Out0AccY121 rho = seg52Out0AccY120 rho + rho 50435 := by
    unfold seg52Out0AccY121 seg52Out0AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 120]

    ring

  have ha0 : (rho 50426 + rho 50427) * (seg52Out0AccX120 rho + seg52Out0AccY120 rho) = rho 50428 := by
    unfold seg52Out0AccX120 seg52Out0AccY120
    linear_combination r6039
  have ha1 : rho 50427 * seg52Out0AccX120 rho = rho 50429 := by
    unfold seg52Out0AccX120
    linear_combination r6040
  have ha2 : rho 50426 * seg52Out0AccY120 rho = rho 50430 := by
    unfold seg52Out0AccY120
    linear_combination r6041
  have ha3 : 3021 * rho 50429 * rho 50430 = rho 50431 := by
    linear_combination r6042
  have ha4 : rho 50432 * (1 + rho 50431) = rho 50429 + rho 50430 := by
    linear_combination r6043
  have ha5 : rho 50433 * (1 - rho 50431) = rho 50428 - rho 50429 - rho 50430 := by
    linear_combination r6044
  have haddx :
      rho 50432 * (1 + 3021 * (rho 50427 * seg52Out0AccX120 rho) * (rho 50426 * seg52Out0AccY120 rho)) =
        rho 50427 * seg52Out0AccX120 rho + rho 50426 * seg52Out0AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50433 * (1 - 3021 * (rho 50427 * seg52Out0AccX120 rho) * (rho 50426 * seg52Out0AccY120 rho)) =
        (-1) * (rho 50427 * seg52Out0AccX120 rho) - rho 50426 * seg52Out0AccY120 rho +
          (seg52Out0AccY120 rho - seg52Out0AccX120 rho * (-1)) * (rho 50426 + rho 50427) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50433 * (1 - rho 50431) = rho 50428 - rho 50429 - rho 50430 := ha5
      _ = (-1) * rho 50429 - rho 50430 + (seg52Out0AccY120 rho - seg52Out0AccX120 rho * (-1)) *
          (rho 50426 + rho 50427) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX121 rho = seg52Out0AccX120 rho - Bool.toZMod bit * (seg52Out0AccX120 rho - rho 50432) := by
    have hd : rho 50434 = Bool.toZMod bit * (rho 50432 - seg52Out0AccX120 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX120
      linear_combination -r6045
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY121 rho = seg52Out0AccY120 rho - Bool.toZMod bit * (seg52Out0AccY120 rho - rho 50433) := by
    have hd : rho 50435 = Bool.toZMod bit * (rho 50433 - seg52Out0AccY120 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY120
      linear_combination -r6046
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50426 * rho 50427 = rho 50436 := by linear_combination r6047
  have hd1 : rho 50426 * rho 50426 = rho 50437 := by linear_combination r6048
  have hd2 : rho 50427 * rho 50427 = rho 50438 := by linear_combination r6049
  have hd3 : rho 50439 * (rho 50427 * rho 50427 + rho 50426 * rho 50426 * (-1)) =
      2 * (rho 50426 * rho 50427) := by
    rw [hd0, hd1, hd2]
    linear_combination r6050
  have hd4 : rho 50440 * (2 - (rho 50427 * rho 50427 + rho 50426 * rho 50426 * (-1))) =
      rho 50427 * rho 50427 - rho 50426 * rho 50426 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6051
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 50426, rho 50427⟩
    ⟨rho 50432, rho 50433⟩ ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 50439, rho 50440⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg52Out0_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg52Out0_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg52Out0_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg52Out0_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg52Out0_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg52Out0_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg52Out0_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg52Out0_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg52Out0_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg52Out0_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
