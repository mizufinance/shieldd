import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows110 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5909 rho ∧ Seg48.relationRow5910 rho ∧ Seg48.relationRow5911 rho ∧ Seg48.relationRow5912 rho ∧ Seg48.relationRow5913 rho ∧ Seg48.relationRow5914 rho ∧ Seg48.relationRow5915 rho ∧ Seg48.relationRow5916 rho ∧ Seg48.relationRow5917 rho ∧ Seg48.relationRow5918 rho ∧ Seg48.relationRow5919 rho ∧ Seg48.relationRow5920 rho ∧ Seg48.relationRow5921 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨r5920, r5921, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921⟩

theorem seg48Out0_rung110 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37224 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX110 rho, seg48Out0AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38664, rho 38665⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX110 rho, seg48Out0AccY110 rho⟩ ⟨rho 38664, rho 38665⟩
        ⟨seg48Out0AccX111 rho, seg48Out0AccY111 rho⟩ ⟨rho 38677, rho 38678⟩ := by
  obtain ⟨r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921⟩ := seg48Out0_rows110 rho h
  unfold Seg48.relationRow5909 at r5909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5909

  unfold Seg48.relationRow5910 at r5910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5910

  unfold Seg48.relationRow5911 at r5911

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5911

  unfold Seg48.relationRow5912 at r5912

  unfold Seg48.relationRow5913 at r5913

  unfold Seg48.relationRow5914 at r5914

  unfold Seg48.relationRow5915 at r5915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5915

  unfold Seg48.relationRow5916 at r5916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5916

  unfold Seg48.relationRow5917 at r5917

  unfold Seg48.relationRow5918 at r5918

  unfold Seg48.relationRow5919 at r5919

  unfold Seg48.relationRow5920 at r5920

  unfold Seg48.relationRow5921 at r5921

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX111 rho = seg48Out0AccX110 rho + rho 38672 := by
    unfold seg48Out0AccX111 seg48Out0AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 110]

    ring

  have hnexty : seg48Out0AccY111 rho = seg48Out0AccY110 rho + rho 38673 := by
    unfold seg48Out0AccY111 seg48Out0AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 110]

    ring

  have ha0 : (rho 38664 + rho 38665) * (seg48Out0AccX110 rho + seg48Out0AccY110 rho) = rho 38666 := by
    unfold seg48Out0AccX110 seg48Out0AccY110
    linear_combination r5909
  have ha1 : rho 38665 * seg48Out0AccX110 rho = rho 38667 := by
    unfold seg48Out0AccX110
    linear_combination r5910
  have ha2 : rho 38664 * seg48Out0AccY110 rho = rho 38668 := by
    unfold seg48Out0AccY110
    linear_combination r5911
  have ha3 : 3021 * rho 38667 * rho 38668 = rho 38669 := by
    linear_combination r5912
  have ha4 : rho 38670 * (1 + rho 38669) = rho 38667 + rho 38668 := by
    linear_combination r5913
  have ha5 : rho 38671 * (1 - rho 38669) = rho 38666 - rho 38667 - rho 38668 := by
    linear_combination r5914
  have haddx :
      rho 38670 * (1 + 3021 * (rho 38665 * seg48Out0AccX110 rho) * (rho 38664 * seg48Out0AccY110 rho)) =
        rho 38665 * seg48Out0AccX110 rho + rho 38664 * seg48Out0AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38671 * (1 - 3021 * (rho 38665 * seg48Out0AccX110 rho) * (rho 38664 * seg48Out0AccY110 rho)) =
        (-1) * (rho 38665 * seg48Out0AccX110 rho) - rho 38664 * seg48Out0AccY110 rho +
          (seg48Out0AccY110 rho - seg48Out0AccX110 rho * (-1)) * (rho 38664 + rho 38665) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38671 * (1 - rho 38669) = rho 38666 - rho 38667 - rho 38668 := ha5
      _ = (-1) * rho 38667 - rho 38668 + (seg48Out0AccY110 rho - seg48Out0AccX110 rho * (-1)) *
          (rho 38664 + rho 38665) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX111 rho = seg48Out0AccX110 rho - Bool.toZMod bit * (seg48Out0AccX110 rho - rho 38670) := by
    have hd : rho 38672 = Bool.toZMod bit * (rho 38670 - seg48Out0AccX110 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX110
      linear_combination -r5915
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY111 rho = seg48Out0AccY110 rho - Bool.toZMod bit * (seg48Out0AccY110 rho - rho 38671) := by
    have hd : rho 38673 = Bool.toZMod bit * (rho 38671 - seg48Out0AccY110 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY110
      linear_combination -r5916
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38664 * rho 38665 = rho 38674 := by linear_combination r5917
  have hd1 : rho 38664 * rho 38664 = rho 38675 := by linear_combination r5918
  have hd2 : rho 38665 * rho 38665 = rho 38676 := by linear_combination r5919
  have hd3 : rho 38677 * (rho 38665 * rho 38665 + rho 38664 * rho 38664 * (-1)) =
      2 * (rho 38664 * rho 38665) := by
    rw [hd0, hd1, hd2]
    linear_combination r5920
  have hd4 : rho 38678 * (2 - (rho 38665 * rho 38665 + rho 38664 * rho 38664 * (-1))) =
      rho 38665 * rho 38665 - rho 38664 * rho 38664 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5921
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX110 rho, seg48Out0AccY110 rho⟩ ⟨rho 38664, rho 38665⟩
    ⟨rho 38670, rho 38671⟩ ⟨seg48Out0AccX111 rho, seg48Out0AccY111 rho⟩ ⟨rho 38677, rho 38678⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows111 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5922 rho ∧ Seg48.relationRow5923 rho ∧ Seg48.relationRow5924 rho ∧ Seg48.relationRow5925 rho ∧ Seg48.relationRow5926 rho ∧ Seg48.relationRow5927 rho ∧ Seg48.relationRow5928 rho ∧ Seg48.relationRow5929 rho ∧ Seg48.relationRow5930 rho ∧ Seg48.relationRow5931 rho ∧ Seg48.relationRow5932 rho ∧ Seg48.relationRow5933 rho ∧ Seg48.relationRow5934 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨_, _, r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934⟩

theorem seg48Out0_rung111 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37225 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX111 rho, seg48Out0AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38677, rho 38678⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX111 rho, seg48Out0AccY111 rho⟩ ⟨rho 38677, rho 38678⟩
        ⟨seg48Out0AccX112 rho, seg48Out0AccY112 rho⟩ ⟨rho 38690, rho 38691⟩ := by
  obtain ⟨r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934⟩ := seg48Out0_rows111 rho h
  unfold Seg48.relationRow5922 at r5922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5922

  unfold Seg48.relationRow5923 at r5923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923

  unfold Seg48.relationRow5924 at r5924

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5924

  unfold Seg48.relationRow5925 at r5925

  unfold Seg48.relationRow5926 at r5926

  unfold Seg48.relationRow5927 at r5927

  unfold Seg48.relationRow5928 at r5928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5928

  unfold Seg48.relationRow5929 at r5929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5929

  unfold Seg48.relationRow5930 at r5930

  unfold Seg48.relationRow5931 at r5931

  unfold Seg48.relationRow5932 at r5932

  unfold Seg48.relationRow5933 at r5933

  unfold Seg48.relationRow5934 at r5934

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX112 rho = seg48Out0AccX111 rho + rho 38685 := by
    unfold seg48Out0AccX112 seg48Out0AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 111]

    ring

  have hnexty : seg48Out0AccY112 rho = seg48Out0AccY111 rho + rho 38686 := by
    unfold seg48Out0AccY112 seg48Out0AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 111]

    ring

  have ha0 : (rho 38677 + rho 38678) * (seg48Out0AccX111 rho + seg48Out0AccY111 rho) = rho 38679 := by
    unfold seg48Out0AccX111 seg48Out0AccY111
    linear_combination r5922
  have ha1 : rho 38678 * seg48Out0AccX111 rho = rho 38680 := by
    unfold seg48Out0AccX111
    linear_combination r5923
  have ha2 : rho 38677 * seg48Out0AccY111 rho = rho 38681 := by
    unfold seg48Out0AccY111
    linear_combination r5924
  have ha3 : 3021 * rho 38680 * rho 38681 = rho 38682 := by
    linear_combination r5925
  have ha4 : rho 38683 * (1 + rho 38682) = rho 38680 + rho 38681 := by
    linear_combination r5926
  have ha5 : rho 38684 * (1 - rho 38682) = rho 38679 - rho 38680 - rho 38681 := by
    linear_combination r5927
  have haddx :
      rho 38683 * (1 + 3021 * (rho 38678 * seg48Out0AccX111 rho) * (rho 38677 * seg48Out0AccY111 rho)) =
        rho 38678 * seg48Out0AccX111 rho + rho 38677 * seg48Out0AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38684 * (1 - 3021 * (rho 38678 * seg48Out0AccX111 rho) * (rho 38677 * seg48Out0AccY111 rho)) =
        (-1) * (rho 38678 * seg48Out0AccX111 rho) - rho 38677 * seg48Out0AccY111 rho +
          (seg48Out0AccY111 rho - seg48Out0AccX111 rho * (-1)) * (rho 38677 + rho 38678) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38684 * (1 - rho 38682) = rho 38679 - rho 38680 - rho 38681 := ha5
      _ = (-1) * rho 38680 - rho 38681 + (seg48Out0AccY111 rho - seg48Out0AccX111 rho * (-1)) *
          (rho 38677 + rho 38678) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX112 rho = seg48Out0AccX111 rho - Bool.toZMod bit * (seg48Out0AccX111 rho - rho 38683) := by
    have hd : rho 38685 = Bool.toZMod bit * (rho 38683 - seg48Out0AccX111 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX111
      linear_combination -r5928
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY112 rho = seg48Out0AccY111 rho - Bool.toZMod bit * (seg48Out0AccY111 rho - rho 38684) := by
    have hd : rho 38686 = Bool.toZMod bit * (rho 38684 - seg48Out0AccY111 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY111
      linear_combination -r5929
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38677 * rho 38678 = rho 38687 := by linear_combination r5930
  have hd1 : rho 38677 * rho 38677 = rho 38688 := by linear_combination r5931
  have hd2 : rho 38678 * rho 38678 = rho 38689 := by linear_combination r5932
  have hd3 : rho 38690 * (rho 38678 * rho 38678 + rho 38677 * rho 38677 * (-1)) =
      2 * (rho 38677 * rho 38678) := by
    rw [hd0, hd1, hd2]
    linear_combination r5933
  have hd4 : rho 38691 * (2 - (rho 38678 * rho 38678 + rho 38677 * rho 38677 * (-1))) =
      rho 38678 * rho 38678 - rho 38677 * rho 38677 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5934
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX111 rho, seg48Out0AccY111 rho⟩ ⟨rho 38677, rho 38678⟩
    ⟨rho 38683, rho 38684⟩ ⟨seg48Out0AccX112 rho, seg48Out0AccY112 rho⟩ ⟨rho 38690, rho 38691⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows112 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5935 rho ∧ Seg48.relationRow5936 rho ∧ Seg48.relationRow5937 rho ∧ Seg48.relationRow5938 rho ∧ Seg48.relationRow5939 rho ∧ Seg48.relationRow5940 rho ∧ Seg48.relationRow5941 rho ∧ Seg48.relationRow5942 rho ∧ Seg48.relationRow5943 rho ∧ Seg48.relationRow5944 rho ∧ Seg48.relationRow5945 rho ∧ Seg48.relationRow5946 rho ∧ Seg48.relationRow5947 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947⟩

theorem seg48Out0_rung112 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37226 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX112 rho, seg48Out0AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38690, rho 38691⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX112 rho, seg48Out0AccY112 rho⟩ ⟨rho 38690, rho 38691⟩
        ⟨seg48Out0AccX113 rho, seg48Out0AccY113 rho⟩ ⟨rho 38703, rho 38704⟩ := by
  obtain ⟨r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947⟩ := seg48Out0_rows112 rho h
  unfold Seg48.relationRow5935 at r5935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5935

  unfold Seg48.relationRow5936 at r5936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5936

  unfold Seg48.relationRow5937 at r5937

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937

  unfold Seg48.relationRow5938 at r5938

  unfold Seg48.relationRow5939 at r5939

  unfold Seg48.relationRow5940 at r5940

  unfold Seg48.relationRow5941 at r5941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5941

  unfold Seg48.relationRow5942 at r5942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5942

  unfold Seg48.relationRow5943 at r5943

  unfold Seg48.relationRow5944 at r5944

  unfold Seg48.relationRow5945 at r5945

  unfold Seg48.relationRow5946 at r5946

  unfold Seg48.relationRow5947 at r5947

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX113 rho = seg48Out0AccX112 rho + rho 38698 := by
    unfold seg48Out0AccX113 seg48Out0AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 112]

    ring

  have hnexty : seg48Out0AccY113 rho = seg48Out0AccY112 rho + rho 38699 := by
    unfold seg48Out0AccY113 seg48Out0AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 112]

    ring

  have ha0 : (rho 38690 + rho 38691) * (seg48Out0AccX112 rho + seg48Out0AccY112 rho) = rho 38692 := by
    unfold seg48Out0AccX112 seg48Out0AccY112
    linear_combination r5935
  have ha1 : rho 38691 * seg48Out0AccX112 rho = rho 38693 := by
    unfold seg48Out0AccX112
    linear_combination r5936
  have ha2 : rho 38690 * seg48Out0AccY112 rho = rho 38694 := by
    unfold seg48Out0AccY112
    linear_combination r5937
  have ha3 : 3021 * rho 38693 * rho 38694 = rho 38695 := by
    linear_combination r5938
  have ha4 : rho 38696 * (1 + rho 38695) = rho 38693 + rho 38694 := by
    linear_combination r5939
  have ha5 : rho 38697 * (1 - rho 38695) = rho 38692 - rho 38693 - rho 38694 := by
    linear_combination r5940
  have haddx :
      rho 38696 * (1 + 3021 * (rho 38691 * seg48Out0AccX112 rho) * (rho 38690 * seg48Out0AccY112 rho)) =
        rho 38691 * seg48Out0AccX112 rho + rho 38690 * seg48Out0AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38697 * (1 - 3021 * (rho 38691 * seg48Out0AccX112 rho) * (rho 38690 * seg48Out0AccY112 rho)) =
        (-1) * (rho 38691 * seg48Out0AccX112 rho) - rho 38690 * seg48Out0AccY112 rho +
          (seg48Out0AccY112 rho - seg48Out0AccX112 rho * (-1)) * (rho 38690 + rho 38691) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38697 * (1 - rho 38695) = rho 38692 - rho 38693 - rho 38694 := ha5
      _ = (-1) * rho 38693 - rho 38694 + (seg48Out0AccY112 rho - seg48Out0AccX112 rho * (-1)) *
          (rho 38690 + rho 38691) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX113 rho = seg48Out0AccX112 rho - Bool.toZMod bit * (seg48Out0AccX112 rho - rho 38696) := by
    have hd : rho 38698 = Bool.toZMod bit * (rho 38696 - seg48Out0AccX112 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX112
      linear_combination -r5941
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY113 rho = seg48Out0AccY112 rho - Bool.toZMod bit * (seg48Out0AccY112 rho - rho 38697) := by
    have hd : rho 38699 = Bool.toZMod bit * (rho 38697 - seg48Out0AccY112 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY112
      linear_combination -r5942
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38690 * rho 38691 = rho 38700 := by linear_combination r5943
  have hd1 : rho 38690 * rho 38690 = rho 38701 := by linear_combination r5944
  have hd2 : rho 38691 * rho 38691 = rho 38702 := by linear_combination r5945
  have hd3 : rho 38703 * (rho 38691 * rho 38691 + rho 38690 * rho 38690 * (-1)) =
      2 * (rho 38690 * rho 38691) := by
    rw [hd0, hd1, hd2]
    linear_combination r5946
  have hd4 : rho 38704 * (2 - (rho 38691 * rho 38691 + rho 38690 * rho 38690 * (-1))) =
      rho 38691 * rho 38691 - rho 38690 * rho 38690 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5947
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX112 rho, seg48Out0AccY112 rho⟩ ⟨rho 38690, rho 38691⟩
    ⟨rho 38696, rho 38697⟩ ⟨seg48Out0AccX113 rho, seg48Out0AccY113 rho⟩ ⟨rho 38703, rho 38704⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows113 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5948 rho ∧ Seg48.relationRow5949 rho ∧ Seg48.relationRow5950 rho ∧ Seg48.relationRow5951 rho ∧ Seg48.relationRow5952 rho ∧ Seg48.relationRow5953 rho ∧ Seg48.relationRow5954 rho ∧ Seg48.relationRow5955 rho ∧ Seg48.relationRow5956 rho ∧ Seg48.relationRow5957 rho ∧ Seg48.relationRow5958 rho ∧ Seg48.relationRow5959 rho ∧ Seg48.relationRow5960 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960⟩

theorem seg48Out0_rung113 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37227 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX113 rho, seg48Out0AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38703, rho 38704⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX113 rho, seg48Out0AccY113 rho⟩ ⟨rho 38703, rho 38704⟩
        ⟨seg48Out0AccX114 rho, seg48Out0AccY114 rho⟩ ⟨rho 38716, rho 38717⟩ := by
  obtain ⟨r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960⟩ := seg48Out0_rows113 rho h
  unfold Seg48.relationRow5948 at r5948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5948

  unfold Seg48.relationRow5949 at r5949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5949

  unfold Seg48.relationRow5950 at r5950

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5950

  unfold Seg48.relationRow5951 at r5951

  unfold Seg48.relationRow5952 at r5952

  unfold Seg48.relationRow5953 at r5953

  unfold Seg48.relationRow5954 at r5954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954

  unfold Seg48.relationRow5955 at r5955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5955

  unfold Seg48.relationRow5956 at r5956

  unfold Seg48.relationRow5957 at r5957

  unfold Seg48.relationRow5958 at r5958

  unfold Seg48.relationRow5959 at r5959

  unfold Seg48.relationRow5960 at r5960

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX114 rho = seg48Out0AccX113 rho + rho 38711 := by
    unfold seg48Out0AccX114 seg48Out0AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 113]

    ring

  have hnexty : seg48Out0AccY114 rho = seg48Out0AccY113 rho + rho 38712 := by
    unfold seg48Out0AccY114 seg48Out0AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 113]

    ring

  have ha0 : (rho 38703 + rho 38704) * (seg48Out0AccX113 rho + seg48Out0AccY113 rho) = rho 38705 := by
    unfold seg48Out0AccX113 seg48Out0AccY113
    linear_combination r5948
  have ha1 : rho 38704 * seg48Out0AccX113 rho = rho 38706 := by
    unfold seg48Out0AccX113
    linear_combination r5949
  have ha2 : rho 38703 * seg48Out0AccY113 rho = rho 38707 := by
    unfold seg48Out0AccY113
    linear_combination r5950
  have ha3 : 3021 * rho 38706 * rho 38707 = rho 38708 := by
    linear_combination r5951
  have ha4 : rho 38709 * (1 + rho 38708) = rho 38706 + rho 38707 := by
    linear_combination r5952
  have ha5 : rho 38710 * (1 - rho 38708) = rho 38705 - rho 38706 - rho 38707 := by
    linear_combination r5953
  have haddx :
      rho 38709 * (1 + 3021 * (rho 38704 * seg48Out0AccX113 rho) * (rho 38703 * seg48Out0AccY113 rho)) =
        rho 38704 * seg48Out0AccX113 rho + rho 38703 * seg48Out0AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38710 * (1 - 3021 * (rho 38704 * seg48Out0AccX113 rho) * (rho 38703 * seg48Out0AccY113 rho)) =
        (-1) * (rho 38704 * seg48Out0AccX113 rho) - rho 38703 * seg48Out0AccY113 rho +
          (seg48Out0AccY113 rho - seg48Out0AccX113 rho * (-1)) * (rho 38703 + rho 38704) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38710 * (1 - rho 38708) = rho 38705 - rho 38706 - rho 38707 := ha5
      _ = (-1) * rho 38706 - rho 38707 + (seg48Out0AccY113 rho - seg48Out0AccX113 rho * (-1)) *
          (rho 38703 + rho 38704) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX114 rho = seg48Out0AccX113 rho - Bool.toZMod bit * (seg48Out0AccX113 rho - rho 38709) := by
    have hd : rho 38711 = Bool.toZMod bit * (rho 38709 - seg48Out0AccX113 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX113
      linear_combination -r5954
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY114 rho = seg48Out0AccY113 rho - Bool.toZMod bit * (seg48Out0AccY113 rho - rho 38710) := by
    have hd : rho 38712 = Bool.toZMod bit * (rho 38710 - seg48Out0AccY113 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY113
      linear_combination -r5955
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38703 * rho 38704 = rho 38713 := by linear_combination r5956
  have hd1 : rho 38703 * rho 38703 = rho 38714 := by linear_combination r5957
  have hd2 : rho 38704 * rho 38704 = rho 38715 := by linear_combination r5958
  have hd3 : rho 38716 * (rho 38704 * rho 38704 + rho 38703 * rho 38703 * (-1)) =
      2 * (rho 38703 * rho 38704) := by
    rw [hd0, hd1, hd2]
    linear_combination r5959
  have hd4 : rho 38717 * (2 - (rho 38704 * rho 38704 + rho 38703 * rho 38703 * (-1))) =
      rho 38704 * rho 38704 - rho 38703 * rho 38703 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5960
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX113 rho, seg48Out0AccY113 rho⟩ ⟨rho 38703, rho 38704⟩
    ⟨rho 38709, rho 38710⟩ ⟨seg48Out0AccX114 rho, seg48Out0AccY114 rho⟩ ⟨rho 38716, rho 38717⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows114 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5961 rho ∧ Seg48.relationRow5962 rho ∧ Seg48.relationRow5963 rho ∧ Seg48.relationRow5964 rho ∧ Seg48.relationRow5965 rho ∧ Seg48.relationRow5966 rho ∧ Seg48.relationRow5967 rho ∧ Seg48.relationRow5968 rho ∧ Seg48.relationRow5969 rho ∧ Seg48.relationRow5970 rho ∧ Seg48.relationRow5971 rho ∧ Seg48.relationRow5972 rho ∧ Seg48.relationRow5973 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973⟩

theorem seg48Out0_rung114 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37228 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX114 rho, seg48Out0AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38716, rho 38717⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX114 rho, seg48Out0AccY114 rho⟩ ⟨rho 38716, rho 38717⟩
        ⟨seg48Out0AccX115 rho, seg48Out0AccY115 rho⟩ ⟨rho 38729, rho 38730⟩ := by
  obtain ⟨r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973⟩ := seg48Out0_rows114 rho h
  unfold Seg48.relationRow5961 at r5961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5961

  unfold Seg48.relationRow5962 at r5962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5962

  unfold Seg48.relationRow5963 at r5963

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5963

  unfold Seg48.relationRow5964 at r5964

  unfold Seg48.relationRow5965 at r5965

  unfold Seg48.relationRow5966 at r5966

  unfold Seg48.relationRow5967 at r5967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967

  unfold Seg48.relationRow5968 at r5968

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968

  unfold Seg48.relationRow5969 at r5969

  unfold Seg48.relationRow5970 at r5970

  unfold Seg48.relationRow5971 at r5971

  unfold Seg48.relationRow5972 at r5972

  unfold Seg48.relationRow5973 at r5973

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX115 rho = seg48Out0AccX114 rho + rho 38724 := by
    unfold seg48Out0AccX115 seg48Out0AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 114]

    ring

  have hnexty : seg48Out0AccY115 rho = seg48Out0AccY114 rho + rho 38725 := by
    unfold seg48Out0AccY115 seg48Out0AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 114]

    ring

  have ha0 : (rho 38716 + rho 38717) * (seg48Out0AccX114 rho + seg48Out0AccY114 rho) = rho 38718 := by
    unfold seg48Out0AccX114 seg48Out0AccY114
    linear_combination r5961
  have ha1 : rho 38717 * seg48Out0AccX114 rho = rho 38719 := by
    unfold seg48Out0AccX114
    linear_combination r5962
  have ha2 : rho 38716 * seg48Out0AccY114 rho = rho 38720 := by
    unfold seg48Out0AccY114
    linear_combination r5963
  have ha3 : 3021 * rho 38719 * rho 38720 = rho 38721 := by
    linear_combination r5964
  have ha4 : rho 38722 * (1 + rho 38721) = rho 38719 + rho 38720 := by
    linear_combination r5965
  have ha5 : rho 38723 * (1 - rho 38721) = rho 38718 - rho 38719 - rho 38720 := by
    linear_combination r5966
  have haddx :
      rho 38722 * (1 + 3021 * (rho 38717 * seg48Out0AccX114 rho) * (rho 38716 * seg48Out0AccY114 rho)) =
        rho 38717 * seg48Out0AccX114 rho + rho 38716 * seg48Out0AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38723 * (1 - 3021 * (rho 38717 * seg48Out0AccX114 rho) * (rho 38716 * seg48Out0AccY114 rho)) =
        (-1) * (rho 38717 * seg48Out0AccX114 rho) - rho 38716 * seg48Out0AccY114 rho +
          (seg48Out0AccY114 rho - seg48Out0AccX114 rho * (-1)) * (rho 38716 + rho 38717) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38723 * (1 - rho 38721) = rho 38718 - rho 38719 - rho 38720 := ha5
      _ = (-1) * rho 38719 - rho 38720 + (seg48Out0AccY114 rho - seg48Out0AccX114 rho * (-1)) *
          (rho 38716 + rho 38717) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX115 rho = seg48Out0AccX114 rho - Bool.toZMod bit * (seg48Out0AccX114 rho - rho 38722) := by
    have hd : rho 38724 = Bool.toZMod bit * (rho 38722 - seg48Out0AccX114 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX114
      linear_combination -r5967
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY115 rho = seg48Out0AccY114 rho - Bool.toZMod bit * (seg48Out0AccY114 rho - rho 38723) := by
    have hd : rho 38725 = Bool.toZMod bit * (rho 38723 - seg48Out0AccY114 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY114
      linear_combination -r5968
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38716 * rho 38717 = rho 38726 := by linear_combination r5969
  have hd1 : rho 38716 * rho 38716 = rho 38727 := by linear_combination r5970
  have hd2 : rho 38717 * rho 38717 = rho 38728 := by linear_combination r5971
  have hd3 : rho 38729 * (rho 38717 * rho 38717 + rho 38716 * rho 38716 * (-1)) =
      2 * (rho 38716 * rho 38717) := by
    rw [hd0, hd1, hd2]
    linear_combination r5972
  have hd4 : rho 38730 * (2 - (rho 38717 * rho 38717 + rho 38716 * rho 38716 * (-1))) =
      rho 38717 * rho 38717 - rho 38716 * rho 38716 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5973
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX114 rho, seg48Out0AccY114 rho⟩ ⟨rho 38716, rho 38717⟩
    ⟨rho 38722, rho 38723⟩ ⟨seg48Out0AccX115 rho, seg48Out0AccY115 rho⟩ ⟨rho 38729, rho 38730⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows115 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5974 rho ∧ Seg48.relationRow5975 rho ∧ Seg48.relationRow5976 rho ∧ Seg48.relationRow5977 rho ∧ Seg48.relationRow5978 rho ∧ Seg48.relationRow5979 rho ∧ Seg48.relationRow5980 rho ∧ Seg48.relationRow5981 rho ∧ Seg48.relationRow5982 rho ∧ Seg48.relationRow5983 rho ∧ Seg48.relationRow5984 rho ∧ Seg48.relationRow5985 rho ∧ Seg48.relationRow5986 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986⟩

theorem seg48Out0_rung115 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37229 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX115 rho, seg48Out0AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38729, rho 38730⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX115 rho, seg48Out0AccY115 rho⟩ ⟨rho 38729, rho 38730⟩
        ⟨seg48Out0AccX116 rho, seg48Out0AccY116 rho⟩ ⟨rho 38742, rho 38743⟩ := by
  obtain ⟨r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986⟩ := seg48Out0_rows115 rho h
  unfold Seg48.relationRow5974 at r5974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5974

  unfold Seg48.relationRow5975 at r5975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5975

  unfold Seg48.relationRow5976 at r5976

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5976

  unfold Seg48.relationRow5977 at r5977

  unfold Seg48.relationRow5978 at r5978

  unfold Seg48.relationRow5979 at r5979

  unfold Seg48.relationRow5980 at r5980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5980

  unfold Seg48.relationRow5981 at r5981

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981

  unfold Seg48.relationRow5982 at r5982

  unfold Seg48.relationRow5983 at r5983

  unfold Seg48.relationRow5984 at r5984

  unfold Seg48.relationRow5985 at r5985

  unfold Seg48.relationRow5986 at r5986

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX116 rho = seg48Out0AccX115 rho + rho 38737 := by
    unfold seg48Out0AccX116 seg48Out0AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 115]

    ring

  have hnexty : seg48Out0AccY116 rho = seg48Out0AccY115 rho + rho 38738 := by
    unfold seg48Out0AccY116 seg48Out0AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 115]

    ring

  have ha0 : (rho 38729 + rho 38730) * (seg48Out0AccX115 rho + seg48Out0AccY115 rho) = rho 38731 := by
    unfold seg48Out0AccX115 seg48Out0AccY115
    linear_combination r5974
  have ha1 : rho 38730 * seg48Out0AccX115 rho = rho 38732 := by
    unfold seg48Out0AccX115
    linear_combination r5975
  have ha2 : rho 38729 * seg48Out0AccY115 rho = rho 38733 := by
    unfold seg48Out0AccY115
    linear_combination r5976
  have ha3 : 3021 * rho 38732 * rho 38733 = rho 38734 := by
    linear_combination r5977
  have ha4 : rho 38735 * (1 + rho 38734) = rho 38732 + rho 38733 := by
    linear_combination r5978
  have ha5 : rho 38736 * (1 - rho 38734) = rho 38731 - rho 38732 - rho 38733 := by
    linear_combination r5979
  have haddx :
      rho 38735 * (1 + 3021 * (rho 38730 * seg48Out0AccX115 rho) * (rho 38729 * seg48Out0AccY115 rho)) =
        rho 38730 * seg48Out0AccX115 rho + rho 38729 * seg48Out0AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38736 * (1 - 3021 * (rho 38730 * seg48Out0AccX115 rho) * (rho 38729 * seg48Out0AccY115 rho)) =
        (-1) * (rho 38730 * seg48Out0AccX115 rho) - rho 38729 * seg48Out0AccY115 rho +
          (seg48Out0AccY115 rho - seg48Out0AccX115 rho * (-1)) * (rho 38729 + rho 38730) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38736 * (1 - rho 38734) = rho 38731 - rho 38732 - rho 38733 := ha5
      _ = (-1) * rho 38732 - rho 38733 + (seg48Out0AccY115 rho - seg48Out0AccX115 rho * (-1)) *
          (rho 38729 + rho 38730) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX116 rho = seg48Out0AccX115 rho - Bool.toZMod bit * (seg48Out0AccX115 rho - rho 38735) := by
    have hd : rho 38737 = Bool.toZMod bit * (rho 38735 - seg48Out0AccX115 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX115
      linear_combination -r5980
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY116 rho = seg48Out0AccY115 rho - Bool.toZMod bit * (seg48Out0AccY115 rho - rho 38736) := by
    have hd : rho 38738 = Bool.toZMod bit * (rho 38736 - seg48Out0AccY115 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY115
      linear_combination -r5981
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38729 * rho 38730 = rho 38739 := by linear_combination r5982
  have hd1 : rho 38729 * rho 38729 = rho 38740 := by linear_combination r5983
  have hd2 : rho 38730 * rho 38730 = rho 38741 := by linear_combination r5984
  have hd3 : rho 38742 * (rho 38730 * rho 38730 + rho 38729 * rho 38729 * (-1)) =
      2 * (rho 38729 * rho 38730) := by
    rw [hd0, hd1, hd2]
    linear_combination r5985
  have hd4 : rho 38743 * (2 - (rho 38730 * rho 38730 + rho 38729 * rho 38729 * (-1))) =
      rho 38730 * rho 38730 - rho 38729 * rho 38729 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5986
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX115 rho, seg48Out0AccY115 rho⟩ ⟨rho 38729, rho 38730⟩
    ⟨rho 38735, rho 38736⟩ ⟨seg48Out0AccX116 rho, seg48Out0AccY116 rho⟩ ⟨rho 38742, rho 38743⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows116 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5987 rho ∧ Seg48.relationRow5988 rho ∧ Seg48.relationRow5989 rho ∧ Seg48.relationRow5990 rho ∧ Seg48.relationRow5991 rho ∧ Seg48.relationRow5992 rho ∧ Seg48.relationRow5993 rho ∧ Seg48.relationRow5994 rho ∧ Seg48.relationRow5995 rho ∧ Seg48.relationRow5996 rho ∧ Seg48.relationRow5997 rho ∧ Seg48.relationRow5998 rho ∧ Seg48.relationRow5999 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩

  exact ⟨r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩

theorem seg48Out0_rung116 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37230 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX116 rho, seg48Out0AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38742, rho 38743⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX116 rho, seg48Out0AccY116 rho⟩ ⟨rho 38742, rho 38743⟩
        ⟨seg48Out0AccX117 rho, seg48Out0AccY117 rho⟩ ⟨rho 38755, rho 38756⟩ := by
  obtain ⟨r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩ := seg48Out0_rows116 rho h
  unfold Seg48.relationRow5987 at r5987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987

  unfold Seg48.relationRow5988 at r5988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5988

  unfold Seg48.relationRow5989 at r5989

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5989

  unfold Seg48.relationRow5990 at r5990

  unfold Seg48.relationRow5991 at r5991

  unfold Seg48.relationRow5992 at r5992

  unfold Seg48.relationRow5993 at r5993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993

  unfold Seg48.relationRow5994 at r5994

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5994

  unfold Seg48.relationRow5995 at r5995

  unfold Seg48.relationRow5996 at r5996

  unfold Seg48.relationRow5997 at r5997

  unfold Seg48.relationRow5998 at r5998

  unfold Seg48.relationRow5999 at r5999

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX117 rho = seg48Out0AccX116 rho + rho 38750 := by
    unfold seg48Out0AccX117 seg48Out0AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 116]

    ring

  have hnexty : seg48Out0AccY117 rho = seg48Out0AccY116 rho + rho 38751 := by
    unfold seg48Out0AccY117 seg48Out0AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 116]

    ring

  have ha0 : (rho 38742 + rho 38743) * (seg48Out0AccX116 rho + seg48Out0AccY116 rho) = rho 38744 := by
    unfold seg48Out0AccX116 seg48Out0AccY116
    linear_combination r5987
  have ha1 : rho 38743 * seg48Out0AccX116 rho = rho 38745 := by
    unfold seg48Out0AccX116
    linear_combination r5988
  have ha2 : rho 38742 * seg48Out0AccY116 rho = rho 38746 := by
    unfold seg48Out0AccY116
    linear_combination r5989
  have ha3 : 3021 * rho 38745 * rho 38746 = rho 38747 := by
    linear_combination r5990
  have ha4 : rho 38748 * (1 + rho 38747) = rho 38745 + rho 38746 := by
    linear_combination r5991
  have ha5 : rho 38749 * (1 - rho 38747) = rho 38744 - rho 38745 - rho 38746 := by
    linear_combination r5992
  have haddx :
      rho 38748 * (1 + 3021 * (rho 38743 * seg48Out0AccX116 rho) * (rho 38742 * seg48Out0AccY116 rho)) =
        rho 38743 * seg48Out0AccX116 rho + rho 38742 * seg48Out0AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38749 * (1 - 3021 * (rho 38743 * seg48Out0AccX116 rho) * (rho 38742 * seg48Out0AccY116 rho)) =
        (-1) * (rho 38743 * seg48Out0AccX116 rho) - rho 38742 * seg48Out0AccY116 rho +
          (seg48Out0AccY116 rho - seg48Out0AccX116 rho * (-1)) * (rho 38742 + rho 38743) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38749 * (1 - rho 38747) = rho 38744 - rho 38745 - rho 38746 := ha5
      _ = (-1) * rho 38745 - rho 38746 + (seg48Out0AccY116 rho - seg48Out0AccX116 rho * (-1)) *
          (rho 38742 + rho 38743) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX117 rho = seg48Out0AccX116 rho - Bool.toZMod bit * (seg48Out0AccX116 rho - rho 38748) := by
    have hd : rho 38750 = Bool.toZMod bit * (rho 38748 - seg48Out0AccX116 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX116
      linear_combination -r5993
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY117 rho = seg48Out0AccY116 rho - Bool.toZMod bit * (seg48Out0AccY116 rho - rho 38749) := by
    have hd : rho 38751 = Bool.toZMod bit * (rho 38749 - seg48Out0AccY116 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY116
      linear_combination -r5994
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38742 * rho 38743 = rho 38752 := by linear_combination r5995
  have hd1 : rho 38742 * rho 38742 = rho 38753 := by linear_combination r5996
  have hd2 : rho 38743 * rho 38743 = rho 38754 := by linear_combination r5997
  have hd3 : rho 38755 * (rho 38743 * rho 38743 + rho 38742 * rho 38742 * (-1)) =
      2 * (rho 38742 * rho 38743) := by
    rw [hd0, hd1, hd2]
    linear_combination r5998
  have hd4 : rho 38756 * (2 - (rho 38743 * rho 38743 + rho 38742 * rho 38742 * (-1))) =
      rho 38743 * rho 38743 - rho 38742 * rho 38742 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5999
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX116 rho, seg48Out0AccY116 rho⟩ ⟨rho 38742, rho 38743⟩
    ⟨rho 38748, rho 38749⟩ ⟨seg48Out0AccX117 rho, seg48Out0AccY117 rho⟩ ⟨rho 38755, rho 38756⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows117 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6000 rho ∧ Seg48.relationRow6001 rho ∧ Seg48.relationRow6002 rho ∧ Seg48.relationRow6003 rho ∧ Seg48.relationRow6004 rho ∧ Seg48.relationRow6005 rho ∧ Seg48.relationRow6006 rho ∧ Seg48.relationRow6007 rho ∧ Seg48.relationRow6008 rho ∧ Seg48.relationRow6009 rho ∧ Seg48.relationRow6010 rho ∧ Seg48.relationRow6011 rho ∧ Seg48.relationRow6012 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012⟩

theorem seg48Out0_rung117 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37231 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX117 rho, seg48Out0AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38755, rho 38756⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX117 rho, seg48Out0AccY117 rho⟩ ⟨rho 38755, rho 38756⟩
        ⟨seg48Out0AccX118 rho, seg48Out0AccY118 rho⟩ ⟨rho 38768, rho 38769⟩ := by
  obtain ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012⟩ := seg48Out0_rows117 rho h
  unfold Seg48.relationRow6000 at r6000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000

  unfold Seg48.relationRow6001 at r6001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001

  unfold Seg48.relationRow6002 at r6002

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6002

  unfold Seg48.relationRow6003 at r6003

  unfold Seg48.relationRow6004 at r6004

  unfold Seg48.relationRow6005 at r6005

  unfold Seg48.relationRow6006 at r6006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6006

  unfold Seg48.relationRow6007 at r6007

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6007

  unfold Seg48.relationRow6008 at r6008

  unfold Seg48.relationRow6009 at r6009

  unfold Seg48.relationRow6010 at r6010

  unfold Seg48.relationRow6011 at r6011

  unfold Seg48.relationRow6012 at r6012

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX118 rho = seg48Out0AccX117 rho + rho 38763 := by
    unfold seg48Out0AccX118 seg48Out0AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 117]

    ring

  have hnexty : seg48Out0AccY118 rho = seg48Out0AccY117 rho + rho 38764 := by
    unfold seg48Out0AccY118 seg48Out0AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 117]

    ring

  have ha0 : (rho 38755 + rho 38756) * (seg48Out0AccX117 rho + seg48Out0AccY117 rho) = rho 38757 := by
    unfold seg48Out0AccX117 seg48Out0AccY117
    linear_combination r6000
  have ha1 : rho 38756 * seg48Out0AccX117 rho = rho 38758 := by
    unfold seg48Out0AccX117
    linear_combination r6001
  have ha2 : rho 38755 * seg48Out0AccY117 rho = rho 38759 := by
    unfold seg48Out0AccY117
    linear_combination r6002
  have ha3 : 3021 * rho 38758 * rho 38759 = rho 38760 := by
    linear_combination r6003
  have ha4 : rho 38761 * (1 + rho 38760) = rho 38758 + rho 38759 := by
    linear_combination r6004
  have ha5 : rho 38762 * (1 - rho 38760) = rho 38757 - rho 38758 - rho 38759 := by
    linear_combination r6005
  have haddx :
      rho 38761 * (1 + 3021 * (rho 38756 * seg48Out0AccX117 rho) * (rho 38755 * seg48Out0AccY117 rho)) =
        rho 38756 * seg48Out0AccX117 rho + rho 38755 * seg48Out0AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38762 * (1 - 3021 * (rho 38756 * seg48Out0AccX117 rho) * (rho 38755 * seg48Out0AccY117 rho)) =
        (-1) * (rho 38756 * seg48Out0AccX117 rho) - rho 38755 * seg48Out0AccY117 rho +
          (seg48Out0AccY117 rho - seg48Out0AccX117 rho * (-1)) * (rho 38755 + rho 38756) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38762 * (1 - rho 38760) = rho 38757 - rho 38758 - rho 38759 := ha5
      _ = (-1) * rho 38758 - rho 38759 + (seg48Out0AccY117 rho - seg48Out0AccX117 rho * (-1)) *
          (rho 38755 + rho 38756) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX118 rho = seg48Out0AccX117 rho - Bool.toZMod bit * (seg48Out0AccX117 rho - rho 38761) := by
    have hd : rho 38763 = Bool.toZMod bit * (rho 38761 - seg48Out0AccX117 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX117
      linear_combination -r6006
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY118 rho = seg48Out0AccY117 rho - Bool.toZMod bit * (seg48Out0AccY117 rho - rho 38762) := by
    have hd : rho 38764 = Bool.toZMod bit * (rho 38762 - seg48Out0AccY117 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY117
      linear_combination -r6007
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38755 * rho 38756 = rho 38765 := by linear_combination r6008
  have hd1 : rho 38755 * rho 38755 = rho 38766 := by linear_combination r6009
  have hd2 : rho 38756 * rho 38756 = rho 38767 := by linear_combination r6010
  have hd3 : rho 38768 * (rho 38756 * rho 38756 + rho 38755 * rho 38755 * (-1)) =
      2 * (rho 38755 * rho 38756) := by
    rw [hd0, hd1, hd2]
    linear_combination r6011
  have hd4 : rho 38769 * (2 - (rho 38756 * rho 38756 + rho 38755 * rho 38755 * (-1))) =
      rho 38756 * rho 38756 - rho 38755 * rho 38755 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6012
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX117 rho, seg48Out0AccY117 rho⟩ ⟨rho 38755, rho 38756⟩
    ⟨rho 38761, rho 38762⟩ ⟨seg48Out0AccX118 rho, seg48Out0AccY118 rho⟩ ⟨rho 38768, rho 38769⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows118 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6013 rho ∧ Seg48.relationRow6014 rho ∧ Seg48.relationRow6015 rho ∧ Seg48.relationRow6016 rho ∧ Seg48.relationRow6017 rho ∧ Seg48.relationRow6018 rho ∧ Seg48.relationRow6019 rho ∧ Seg48.relationRow6020 rho ∧ Seg48.relationRow6021 rho ∧ Seg48.relationRow6022 rho ∧ Seg48.relationRow6023 rho ∧ Seg48.relationRow6024 rho ∧ Seg48.relationRow6025 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025⟩

theorem seg48Out0_rung118 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37232 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX118 rho, seg48Out0AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38768, rho 38769⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX118 rho, seg48Out0AccY118 rho⟩ ⟨rho 38768, rho 38769⟩
        ⟨seg48Out0AccX119 rho, seg48Out0AccY119 rho⟩ ⟨rho 38781, rho 38782⟩ := by
  obtain ⟨r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025⟩ := seg48Out0_rows118 rho h
  unfold Seg48.relationRow6013 at r6013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6013

  unfold Seg48.relationRow6014 at r6014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6014

  unfold Seg48.relationRow6015 at r6015

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6015

  unfold Seg48.relationRow6016 at r6016

  unfold Seg48.relationRow6017 at r6017

  unfold Seg48.relationRow6018 at r6018

  unfold Seg48.relationRow6019 at r6019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6019

  unfold Seg48.relationRow6020 at r6020

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6020

  unfold Seg48.relationRow6021 at r6021

  unfold Seg48.relationRow6022 at r6022

  unfold Seg48.relationRow6023 at r6023

  unfold Seg48.relationRow6024 at r6024

  unfold Seg48.relationRow6025 at r6025

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX119 rho = seg48Out0AccX118 rho + rho 38776 := by
    unfold seg48Out0AccX119 seg48Out0AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 118]

    ring

  have hnexty : seg48Out0AccY119 rho = seg48Out0AccY118 rho + rho 38777 := by
    unfold seg48Out0AccY119 seg48Out0AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 118]

    ring

  have ha0 : (rho 38768 + rho 38769) * (seg48Out0AccX118 rho + seg48Out0AccY118 rho) = rho 38770 := by
    unfold seg48Out0AccX118 seg48Out0AccY118
    linear_combination r6013
  have ha1 : rho 38769 * seg48Out0AccX118 rho = rho 38771 := by
    unfold seg48Out0AccX118
    linear_combination r6014
  have ha2 : rho 38768 * seg48Out0AccY118 rho = rho 38772 := by
    unfold seg48Out0AccY118
    linear_combination r6015
  have ha3 : 3021 * rho 38771 * rho 38772 = rho 38773 := by
    linear_combination r6016
  have ha4 : rho 38774 * (1 + rho 38773) = rho 38771 + rho 38772 := by
    linear_combination r6017
  have ha5 : rho 38775 * (1 - rho 38773) = rho 38770 - rho 38771 - rho 38772 := by
    linear_combination r6018
  have haddx :
      rho 38774 * (1 + 3021 * (rho 38769 * seg48Out0AccX118 rho) * (rho 38768 * seg48Out0AccY118 rho)) =
        rho 38769 * seg48Out0AccX118 rho + rho 38768 * seg48Out0AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38775 * (1 - 3021 * (rho 38769 * seg48Out0AccX118 rho) * (rho 38768 * seg48Out0AccY118 rho)) =
        (-1) * (rho 38769 * seg48Out0AccX118 rho) - rho 38768 * seg48Out0AccY118 rho +
          (seg48Out0AccY118 rho - seg48Out0AccX118 rho * (-1)) * (rho 38768 + rho 38769) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38775 * (1 - rho 38773) = rho 38770 - rho 38771 - rho 38772 := ha5
      _ = (-1) * rho 38771 - rho 38772 + (seg48Out0AccY118 rho - seg48Out0AccX118 rho * (-1)) *
          (rho 38768 + rho 38769) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX119 rho = seg48Out0AccX118 rho - Bool.toZMod bit * (seg48Out0AccX118 rho - rho 38774) := by
    have hd : rho 38776 = Bool.toZMod bit * (rho 38774 - seg48Out0AccX118 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX118
      linear_combination -r6019
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY119 rho = seg48Out0AccY118 rho - Bool.toZMod bit * (seg48Out0AccY118 rho - rho 38775) := by
    have hd : rho 38777 = Bool.toZMod bit * (rho 38775 - seg48Out0AccY118 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY118
      linear_combination -r6020
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38768 * rho 38769 = rho 38778 := by linear_combination r6021
  have hd1 : rho 38768 * rho 38768 = rho 38779 := by linear_combination r6022
  have hd2 : rho 38769 * rho 38769 = rho 38780 := by linear_combination r6023
  have hd3 : rho 38781 * (rho 38769 * rho 38769 + rho 38768 * rho 38768 * (-1)) =
      2 * (rho 38768 * rho 38769) := by
    rw [hd0, hd1, hd2]
    linear_combination r6024
  have hd4 : rho 38782 * (2 - (rho 38769 * rho 38769 + rho 38768 * rho 38768 * (-1))) =
      rho 38769 * rho 38769 - rho 38768 * rho 38768 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6025
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX118 rho, seg48Out0AccY118 rho⟩ ⟨rho 38768, rho 38769⟩
    ⟨rho 38774, rho 38775⟩ ⟨seg48Out0AccX119 rho, seg48Out0AccY119 rho⟩ ⟨rho 38781, rho 38782⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows119 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6026 rho ∧ Seg48.relationRow6027 rho ∧ Seg48.relationRow6028 rho ∧ Seg48.relationRow6029 rho ∧ Seg48.relationRow6030 rho ∧ Seg48.relationRow6031 rho ∧ Seg48.relationRow6032 rho ∧ Seg48.relationRow6033 rho ∧ Seg48.relationRow6034 rho ∧ Seg48.relationRow6035 rho ∧ Seg48.relationRow6036 rho ∧ Seg48.relationRow6037 rho ∧ Seg48.relationRow6038 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038⟩

theorem seg48Out0_rung119 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37233 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX119 rho, seg48Out0AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38781, rho 38782⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX119 rho, seg48Out0AccY119 rho⟩ ⟨rho 38781, rho 38782⟩
        ⟨seg48Out0AccX120 rho, seg48Out0AccY120 rho⟩ ⟨rho 38794, rho 38795⟩ := by
  obtain ⟨r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038⟩ := seg48Out0_rows119 rho h
  unfold Seg48.relationRow6026 at r6026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6026

  unfold Seg48.relationRow6027 at r6027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6027

  unfold Seg48.relationRow6028 at r6028

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6028

  unfold Seg48.relationRow6029 at r6029

  unfold Seg48.relationRow6030 at r6030

  unfold Seg48.relationRow6031 at r6031

  unfold Seg48.relationRow6032 at r6032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6032

  unfold Seg48.relationRow6033 at r6033

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6033

  unfold Seg48.relationRow6034 at r6034

  unfold Seg48.relationRow6035 at r6035

  unfold Seg48.relationRow6036 at r6036

  unfold Seg48.relationRow6037 at r6037

  unfold Seg48.relationRow6038 at r6038

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX120 rho = seg48Out0AccX119 rho + rho 38789 := by
    unfold seg48Out0AccX120 seg48Out0AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 119]

    ring

  have hnexty : seg48Out0AccY120 rho = seg48Out0AccY119 rho + rho 38790 := by
    unfold seg48Out0AccY120 seg48Out0AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 119]

    ring

  have ha0 : (rho 38781 + rho 38782) * (seg48Out0AccX119 rho + seg48Out0AccY119 rho) = rho 38783 := by
    unfold seg48Out0AccX119 seg48Out0AccY119
    linear_combination r6026
  have ha1 : rho 38782 * seg48Out0AccX119 rho = rho 38784 := by
    unfold seg48Out0AccX119
    linear_combination r6027
  have ha2 : rho 38781 * seg48Out0AccY119 rho = rho 38785 := by
    unfold seg48Out0AccY119
    linear_combination r6028
  have ha3 : 3021 * rho 38784 * rho 38785 = rho 38786 := by
    linear_combination r6029
  have ha4 : rho 38787 * (1 + rho 38786) = rho 38784 + rho 38785 := by
    linear_combination r6030
  have ha5 : rho 38788 * (1 - rho 38786) = rho 38783 - rho 38784 - rho 38785 := by
    linear_combination r6031
  have haddx :
      rho 38787 * (1 + 3021 * (rho 38782 * seg48Out0AccX119 rho) * (rho 38781 * seg48Out0AccY119 rho)) =
        rho 38782 * seg48Out0AccX119 rho + rho 38781 * seg48Out0AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38788 * (1 - 3021 * (rho 38782 * seg48Out0AccX119 rho) * (rho 38781 * seg48Out0AccY119 rho)) =
        (-1) * (rho 38782 * seg48Out0AccX119 rho) - rho 38781 * seg48Out0AccY119 rho +
          (seg48Out0AccY119 rho - seg48Out0AccX119 rho * (-1)) * (rho 38781 + rho 38782) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38788 * (1 - rho 38786) = rho 38783 - rho 38784 - rho 38785 := ha5
      _ = (-1) * rho 38784 - rho 38785 + (seg48Out0AccY119 rho - seg48Out0AccX119 rho * (-1)) *
          (rho 38781 + rho 38782) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX120 rho = seg48Out0AccX119 rho - Bool.toZMod bit * (seg48Out0AccX119 rho - rho 38787) := by
    have hd : rho 38789 = Bool.toZMod bit * (rho 38787 - seg48Out0AccX119 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX119
      linear_combination -r6032
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY120 rho = seg48Out0AccY119 rho - Bool.toZMod bit * (seg48Out0AccY119 rho - rho 38788) := by
    have hd : rho 38790 = Bool.toZMod bit * (rho 38788 - seg48Out0AccY119 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY119
      linear_combination -r6033
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38781 * rho 38782 = rho 38791 := by linear_combination r6034
  have hd1 : rho 38781 * rho 38781 = rho 38792 := by linear_combination r6035
  have hd2 : rho 38782 * rho 38782 = rho 38793 := by linear_combination r6036
  have hd3 : rho 38794 * (rho 38782 * rho 38782 + rho 38781 * rho 38781 * (-1)) =
      2 * (rho 38781 * rho 38782) := by
    rw [hd0, hd1, hd2]
    linear_combination r6037
  have hd4 : rho 38795 * (2 - (rho 38782 * rho 38782 + rho 38781 * rho 38781 * (-1))) =
      rho 38782 * rho 38782 - rho 38781 * rho 38781 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6038
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX119 rho, seg48Out0AccY119 rho⟩ ⟨rho 38781, rho 38782⟩
    ⟨rho 38787, rho 38788⟩ ⟨seg48Out0AccX120 rho, seg48Out0AccY120 rho⟩ ⟨rho 38794, rho 38795⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows120 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow6039 rho ∧ Seg48.relationRow6040 rho ∧ Seg48.relationRow6041 rho ∧ Seg48.relationRow6042 rho ∧ Seg48.relationRow6043 rho ∧ Seg48.relationRow6044 rho ∧ Seg48.relationRow6045 rho ∧ Seg48.relationRow6046 rho ∧ Seg48.relationRow6047 rho ∧ Seg48.relationRow6048 rho ∧ Seg48.relationRow6049 rho ∧ Seg48.relationRow6050 rho ∧ Seg48.relationRow6051 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart75 at p75

  rcases p75 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051⟩

theorem seg48Out0_rung120 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37234 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX120 rho, seg48Out0AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38794, rho 38795⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX120 rho, seg48Out0AccY120 rho⟩ ⟨rho 38794, rho 38795⟩
        ⟨seg48Out0AccX121 rho, seg48Out0AccY121 rho⟩ ⟨rho 38807, rho 38808⟩ := by
  obtain ⟨r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051⟩ := seg48Out0_rows120 rho h
  unfold Seg48.relationRow6039 at r6039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6039

  unfold Seg48.relationRow6040 at r6040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6040

  unfold Seg48.relationRow6041 at r6041

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6041

  unfold Seg48.relationRow6042 at r6042

  unfold Seg48.relationRow6043 at r6043

  unfold Seg48.relationRow6044 at r6044

  unfold Seg48.relationRow6045 at r6045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6045

  unfold Seg48.relationRow6046 at r6046

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6046

  unfold Seg48.relationRow6047 at r6047

  unfold Seg48.relationRow6048 at r6048

  unfold Seg48.relationRow6049 at r6049

  unfold Seg48.relationRow6050 at r6050

  unfold Seg48.relationRow6051 at r6051

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX121 rho = seg48Out0AccX120 rho + rho 38802 := by
    unfold seg48Out0AccX121 seg48Out0AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 120]

    ring

  have hnexty : seg48Out0AccY121 rho = seg48Out0AccY120 rho + rho 38803 := by
    unfold seg48Out0AccY121 seg48Out0AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 120]

    ring

  have ha0 : (rho 38794 + rho 38795) * (seg48Out0AccX120 rho + seg48Out0AccY120 rho) = rho 38796 := by
    unfold seg48Out0AccX120 seg48Out0AccY120
    linear_combination r6039
  have ha1 : rho 38795 * seg48Out0AccX120 rho = rho 38797 := by
    unfold seg48Out0AccX120
    linear_combination r6040
  have ha2 : rho 38794 * seg48Out0AccY120 rho = rho 38798 := by
    unfold seg48Out0AccY120
    linear_combination r6041
  have ha3 : 3021 * rho 38797 * rho 38798 = rho 38799 := by
    linear_combination r6042
  have ha4 : rho 38800 * (1 + rho 38799) = rho 38797 + rho 38798 := by
    linear_combination r6043
  have ha5 : rho 38801 * (1 - rho 38799) = rho 38796 - rho 38797 - rho 38798 := by
    linear_combination r6044
  have haddx :
      rho 38800 * (1 + 3021 * (rho 38795 * seg48Out0AccX120 rho) * (rho 38794 * seg48Out0AccY120 rho)) =
        rho 38795 * seg48Out0AccX120 rho + rho 38794 * seg48Out0AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38801 * (1 - 3021 * (rho 38795 * seg48Out0AccX120 rho) * (rho 38794 * seg48Out0AccY120 rho)) =
        (-1) * (rho 38795 * seg48Out0AccX120 rho) - rho 38794 * seg48Out0AccY120 rho +
          (seg48Out0AccY120 rho - seg48Out0AccX120 rho * (-1)) * (rho 38794 + rho 38795) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38801 * (1 - rho 38799) = rho 38796 - rho 38797 - rho 38798 := ha5
      _ = (-1) * rho 38797 - rho 38798 + (seg48Out0AccY120 rho - seg48Out0AccX120 rho * (-1)) *
          (rho 38794 + rho 38795) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX121 rho = seg48Out0AccX120 rho - Bool.toZMod bit * (seg48Out0AccX120 rho - rho 38800) := by
    have hd : rho 38802 = Bool.toZMod bit * (rho 38800 - seg48Out0AccX120 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX120
      linear_combination -r6045
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY121 rho = seg48Out0AccY120 rho - Bool.toZMod bit * (seg48Out0AccY120 rho - rho 38801) := by
    have hd : rho 38803 = Bool.toZMod bit * (rho 38801 - seg48Out0AccY120 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY120
      linear_combination -r6046
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38794 * rho 38795 = rho 38804 := by linear_combination r6047
  have hd1 : rho 38794 * rho 38794 = rho 38805 := by linear_combination r6048
  have hd2 : rho 38795 * rho 38795 = rho 38806 := by linear_combination r6049
  have hd3 : rho 38807 * (rho 38795 * rho 38795 + rho 38794 * rho 38794 * (-1)) =
      2 * (rho 38794 * rho 38795) := by
    rw [hd0, hd1, hd2]
    linear_combination r6050
  have hd4 : rho 38808 * (2 - (rho 38795 * rho 38795 + rho 38794 * rho 38794 * (-1))) =
      rho 38795 * rho 38795 - rho 38794 * rho 38794 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6051
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX120 rho, seg48Out0AccY120 rho⟩ ⟨rho 38794, rho 38795⟩
    ⟨rho 38800, rho 38801⟩ ⟨seg48Out0AccX121 rho, seg48Out0AccY121 rho⟩ ⟨rho 38807, rho 38808⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c10 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg48Out0_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg48Out0_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg48Out0_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg48Out0_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg48Out0_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg48Out0_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg48Out0_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg48Out0_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg48Out0_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg48Out0_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
