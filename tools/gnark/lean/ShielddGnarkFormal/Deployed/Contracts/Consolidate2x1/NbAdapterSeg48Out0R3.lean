import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4908 rho ∧ Seg48.relationRow4909 rho ∧ Seg48.relationRow4910 rho ∧ Seg48.relationRow4911 rho ∧ Seg48.relationRow4912 rho ∧ Seg48.relationRow4913 rho ∧ Seg48.relationRow4914 rho ∧ Seg48.relationRow4915 rho ∧ Seg48.relationRow4916 rho ∧ Seg48.relationRow4917 rho ∧ Seg48.relationRow4918 rho ∧ Seg48.relationRow4919 rho ∧ Seg48.relationRow4920 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920⟩

theorem seg48Out0_rung33 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37147 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX33 rho, seg48Out0AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37663, rho 37664⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX33 rho, seg48Out0AccY33 rho⟩ ⟨rho 37663, rho 37664⟩
        ⟨seg48Out0AccX34 rho, seg48Out0AccY34 rho⟩ ⟨rho 37676, rho 37677⟩ := by
  obtain ⟨r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920⟩ := seg48Out0_rows33 rho h
  unfold Seg48.relationRow4908 at r4908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4908

  unfold Seg48.relationRow4909 at r4909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4909

  unfold Seg48.relationRow4910 at r4910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4910

  unfold Seg48.relationRow4911 at r4911

  unfold Seg48.relationRow4912 at r4912

  unfold Seg48.relationRow4913 at r4913

  unfold Seg48.relationRow4914 at r4914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4914

  unfold Seg48.relationRow4915 at r4915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4915

  unfold Seg48.relationRow4916 at r4916

  unfold Seg48.relationRow4917 at r4917

  unfold Seg48.relationRow4918 at r4918

  unfold Seg48.relationRow4919 at r4919

  unfold Seg48.relationRow4920 at r4920

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX34 rho = seg48Out0AccX33 rho + rho 37671 := by
    unfold seg48Out0AccX34 seg48Out0AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 33]

    ring

  have hnexty : seg48Out0AccY34 rho = seg48Out0AccY33 rho + rho 37672 := by
    unfold seg48Out0AccY34 seg48Out0AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 33]

    ring

  have ha0 : (rho 37663 + rho 37664) * (seg48Out0AccX33 rho + seg48Out0AccY33 rho) = rho 37665 := by
    unfold seg48Out0AccX33 seg48Out0AccY33
    linear_combination r4908
  have ha1 : rho 37664 * seg48Out0AccX33 rho = rho 37666 := by
    unfold seg48Out0AccX33
    linear_combination r4909
  have ha2 : rho 37663 * seg48Out0AccY33 rho = rho 37667 := by
    unfold seg48Out0AccY33
    linear_combination r4910
  have ha3 : 3021 * rho 37666 * rho 37667 = rho 37668 := by
    linear_combination r4911
  have ha4 : rho 37669 * (1 + rho 37668) = rho 37666 + rho 37667 := by
    linear_combination r4912
  have ha5 : rho 37670 * (1 - rho 37668) = rho 37665 - rho 37666 - rho 37667 := by
    linear_combination r4913
  have haddx :
      rho 37669 * (1 + 3021 * (rho 37664 * seg48Out0AccX33 rho) * (rho 37663 * seg48Out0AccY33 rho)) =
        rho 37664 * seg48Out0AccX33 rho + rho 37663 * seg48Out0AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37670 * (1 - 3021 * (rho 37664 * seg48Out0AccX33 rho) * (rho 37663 * seg48Out0AccY33 rho)) =
        (-1) * (rho 37664 * seg48Out0AccX33 rho) - rho 37663 * seg48Out0AccY33 rho +
          (seg48Out0AccY33 rho - seg48Out0AccX33 rho * (-1)) * (rho 37663 + rho 37664) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37670 * (1 - rho 37668) = rho 37665 - rho 37666 - rho 37667 := ha5
      _ = (-1) * rho 37666 - rho 37667 + (seg48Out0AccY33 rho - seg48Out0AccX33 rho * (-1)) *
          (rho 37663 + rho 37664) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX34 rho = seg48Out0AccX33 rho - Bool.toZMod bit * (seg48Out0AccX33 rho - rho 37669) := by
    have hd : rho 37671 = Bool.toZMod bit * (rho 37669 - seg48Out0AccX33 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX33
      linear_combination -r4914
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY34 rho = seg48Out0AccY33 rho - Bool.toZMod bit * (seg48Out0AccY33 rho - rho 37670) := by
    have hd : rho 37672 = Bool.toZMod bit * (rho 37670 - seg48Out0AccY33 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY33
      linear_combination -r4915
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37663 * rho 37664 = rho 37673 := by linear_combination r4916
  have hd1 : rho 37663 * rho 37663 = rho 37674 := by linear_combination r4917
  have hd2 : rho 37664 * rho 37664 = rho 37675 := by linear_combination r4918
  have hd3 : rho 37676 * (rho 37664 * rho 37664 + rho 37663 * rho 37663 * (-1)) =
      2 * (rho 37663 * rho 37664) := by
    rw [hd0, hd1, hd2]
    linear_combination r4919
  have hd4 : rho 37677 * (2 - (rho 37664 * rho 37664 + rho 37663 * rho 37663 * (-1))) =
      rho 37664 * rho 37664 - rho 37663 * rho 37663 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4920
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX33 rho, seg48Out0AccY33 rho⟩ ⟨rho 37663, rho 37664⟩
    ⟨rho 37669, rho 37670⟩ ⟨seg48Out0AccX34 rho, seg48Out0AccY34 rho⟩ ⟨rho 37676, rho 37677⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4921 rho ∧ Seg48.relationRow4922 rho ∧ Seg48.relationRow4923 rho ∧ Seg48.relationRow4924 rho ∧ Seg48.relationRow4925 rho ∧ Seg48.relationRow4926 rho ∧ Seg48.relationRow4927 rho ∧ Seg48.relationRow4928 rho ∧ Seg48.relationRow4929 rho ∧ Seg48.relationRow4930 rho ∧ Seg48.relationRow4931 rho ∧ Seg48.relationRow4932 rho ∧ Seg48.relationRow4933 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933⟩

theorem seg48Out0_rung34 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37148 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX34 rho, seg48Out0AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37676, rho 37677⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX34 rho, seg48Out0AccY34 rho⟩ ⟨rho 37676, rho 37677⟩
        ⟨seg48Out0AccX35 rho, seg48Out0AccY35 rho⟩ ⟨rho 37689, rho 37690⟩ := by
  obtain ⟨r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933⟩ := seg48Out0_rows34 rho h
  unfold Seg48.relationRow4921 at r4921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4921

  unfold Seg48.relationRow4922 at r4922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4922

  unfold Seg48.relationRow4923 at r4923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4923

  unfold Seg48.relationRow4924 at r4924

  unfold Seg48.relationRow4925 at r4925

  unfold Seg48.relationRow4926 at r4926

  unfold Seg48.relationRow4927 at r4927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4927

  unfold Seg48.relationRow4928 at r4928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4928

  unfold Seg48.relationRow4929 at r4929

  unfold Seg48.relationRow4930 at r4930

  unfold Seg48.relationRow4931 at r4931

  unfold Seg48.relationRow4932 at r4932

  unfold Seg48.relationRow4933 at r4933

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX35 rho = seg48Out0AccX34 rho + rho 37684 := by
    unfold seg48Out0AccX35 seg48Out0AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 34]

    ring

  have hnexty : seg48Out0AccY35 rho = seg48Out0AccY34 rho + rho 37685 := by
    unfold seg48Out0AccY35 seg48Out0AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 34]

    ring

  have ha0 : (rho 37676 + rho 37677) * (seg48Out0AccX34 rho + seg48Out0AccY34 rho) = rho 37678 := by
    unfold seg48Out0AccX34 seg48Out0AccY34
    linear_combination r4921
  have ha1 : rho 37677 * seg48Out0AccX34 rho = rho 37679 := by
    unfold seg48Out0AccX34
    linear_combination r4922
  have ha2 : rho 37676 * seg48Out0AccY34 rho = rho 37680 := by
    unfold seg48Out0AccY34
    linear_combination r4923
  have ha3 : 3021 * rho 37679 * rho 37680 = rho 37681 := by
    linear_combination r4924
  have ha4 : rho 37682 * (1 + rho 37681) = rho 37679 + rho 37680 := by
    linear_combination r4925
  have ha5 : rho 37683 * (1 - rho 37681) = rho 37678 - rho 37679 - rho 37680 := by
    linear_combination r4926
  have haddx :
      rho 37682 * (1 + 3021 * (rho 37677 * seg48Out0AccX34 rho) * (rho 37676 * seg48Out0AccY34 rho)) =
        rho 37677 * seg48Out0AccX34 rho + rho 37676 * seg48Out0AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37683 * (1 - 3021 * (rho 37677 * seg48Out0AccX34 rho) * (rho 37676 * seg48Out0AccY34 rho)) =
        (-1) * (rho 37677 * seg48Out0AccX34 rho) - rho 37676 * seg48Out0AccY34 rho +
          (seg48Out0AccY34 rho - seg48Out0AccX34 rho * (-1)) * (rho 37676 + rho 37677) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37683 * (1 - rho 37681) = rho 37678 - rho 37679 - rho 37680 := ha5
      _ = (-1) * rho 37679 - rho 37680 + (seg48Out0AccY34 rho - seg48Out0AccX34 rho * (-1)) *
          (rho 37676 + rho 37677) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX35 rho = seg48Out0AccX34 rho - Bool.toZMod bit * (seg48Out0AccX34 rho - rho 37682) := by
    have hd : rho 37684 = Bool.toZMod bit * (rho 37682 - seg48Out0AccX34 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX34
      linear_combination -r4927
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY35 rho = seg48Out0AccY34 rho - Bool.toZMod bit * (seg48Out0AccY34 rho - rho 37683) := by
    have hd : rho 37685 = Bool.toZMod bit * (rho 37683 - seg48Out0AccY34 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY34
      linear_combination -r4928
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37676 * rho 37677 = rho 37686 := by linear_combination r4929
  have hd1 : rho 37676 * rho 37676 = rho 37687 := by linear_combination r4930
  have hd2 : rho 37677 * rho 37677 = rho 37688 := by linear_combination r4931
  have hd3 : rho 37689 * (rho 37677 * rho 37677 + rho 37676 * rho 37676 * (-1)) =
      2 * (rho 37676 * rho 37677) := by
    rw [hd0, hd1, hd2]
    linear_combination r4932
  have hd4 : rho 37690 * (2 - (rho 37677 * rho 37677 + rho 37676 * rho 37676 * (-1))) =
      rho 37677 * rho 37677 - rho 37676 * rho 37676 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4933
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX34 rho, seg48Out0AccY34 rho⟩ ⟨rho 37676, rho 37677⟩
    ⟨rho 37682, rho 37683⟩ ⟨seg48Out0AccX35 rho, seg48Out0AccY35 rho⟩ ⟨rho 37689, rho 37690⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4934 rho ∧ Seg48.relationRow4935 rho ∧ Seg48.relationRow4936 rho ∧ Seg48.relationRow4937 rho ∧ Seg48.relationRow4938 rho ∧ Seg48.relationRow4939 rho ∧ Seg48.relationRow4940 rho ∧ Seg48.relationRow4941 rho ∧ Seg48.relationRow4942 rho ∧ Seg48.relationRow4943 rho ∧ Seg48.relationRow4944 rho ∧ Seg48.relationRow4945 rho ∧ Seg48.relationRow4946 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946⟩

theorem seg48Out0_rung35 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37149 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX35 rho, seg48Out0AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37689, rho 37690⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX35 rho, seg48Out0AccY35 rho⟩ ⟨rho 37689, rho 37690⟩
        ⟨seg48Out0AccX36 rho, seg48Out0AccY36 rho⟩ ⟨rho 37702, rho 37703⟩ := by
  obtain ⟨r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946⟩ := seg48Out0_rows35 rho h
  unfold Seg48.relationRow4934 at r4934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4934

  unfold Seg48.relationRow4935 at r4935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4935

  unfold Seg48.relationRow4936 at r4936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4936

  unfold Seg48.relationRow4937 at r4937

  unfold Seg48.relationRow4938 at r4938

  unfold Seg48.relationRow4939 at r4939

  unfold Seg48.relationRow4940 at r4940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4940

  unfold Seg48.relationRow4941 at r4941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4941

  unfold Seg48.relationRow4942 at r4942

  unfold Seg48.relationRow4943 at r4943

  unfold Seg48.relationRow4944 at r4944

  unfold Seg48.relationRow4945 at r4945

  unfold Seg48.relationRow4946 at r4946

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX36 rho = seg48Out0AccX35 rho + rho 37697 := by
    unfold seg48Out0AccX36 seg48Out0AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 35]

    ring

  have hnexty : seg48Out0AccY36 rho = seg48Out0AccY35 rho + rho 37698 := by
    unfold seg48Out0AccY36 seg48Out0AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 35]

    ring

  have ha0 : (rho 37689 + rho 37690) * (seg48Out0AccX35 rho + seg48Out0AccY35 rho) = rho 37691 := by
    unfold seg48Out0AccX35 seg48Out0AccY35
    linear_combination r4934
  have ha1 : rho 37690 * seg48Out0AccX35 rho = rho 37692 := by
    unfold seg48Out0AccX35
    linear_combination r4935
  have ha2 : rho 37689 * seg48Out0AccY35 rho = rho 37693 := by
    unfold seg48Out0AccY35
    linear_combination r4936
  have ha3 : 3021 * rho 37692 * rho 37693 = rho 37694 := by
    linear_combination r4937
  have ha4 : rho 37695 * (1 + rho 37694) = rho 37692 + rho 37693 := by
    linear_combination r4938
  have ha5 : rho 37696 * (1 - rho 37694) = rho 37691 - rho 37692 - rho 37693 := by
    linear_combination r4939
  have haddx :
      rho 37695 * (1 + 3021 * (rho 37690 * seg48Out0AccX35 rho) * (rho 37689 * seg48Out0AccY35 rho)) =
        rho 37690 * seg48Out0AccX35 rho + rho 37689 * seg48Out0AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37696 * (1 - 3021 * (rho 37690 * seg48Out0AccX35 rho) * (rho 37689 * seg48Out0AccY35 rho)) =
        (-1) * (rho 37690 * seg48Out0AccX35 rho) - rho 37689 * seg48Out0AccY35 rho +
          (seg48Out0AccY35 rho - seg48Out0AccX35 rho * (-1)) * (rho 37689 + rho 37690) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37696 * (1 - rho 37694) = rho 37691 - rho 37692 - rho 37693 := ha5
      _ = (-1) * rho 37692 - rho 37693 + (seg48Out0AccY35 rho - seg48Out0AccX35 rho * (-1)) *
          (rho 37689 + rho 37690) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX36 rho = seg48Out0AccX35 rho - Bool.toZMod bit * (seg48Out0AccX35 rho - rho 37695) := by
    have hd : rho 37697 = Bool.toZMod bit * (rho 37695 - seg48Out0AccX35 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX35
      linear_combination -r4940
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY36 rho = seg48Out0AccY35 rho - Bool.toZMod bit * (seg48Out0AccY35 rho - rho 37696) := by
    have hd : rho 37698 = Bool.toZMod bit * (rho 37696 - seg48Out0AccY35 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY35
      linear_combination -r4941
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37689 * rho 37690 = rho 37699 := by linear_combination r4942
  have hd1 : rho 37689 * rho 37689 = rho 37700 := by linear_combination r4943
  have hd2 : rho 37690 * rho 37690 = rho 37701 := by linear_combination r4944
  have hd3 : rho 37702 * (rho 37690 * rho 37690 + rho 37689 * rho 37689 * (-1)) =
      2 * (rho 37689 * rho 37690) := by
    rw [hd0, hd1, hd2]
    linear_combination r4945
  have hd4 : rho 37703 * (2 - (rho 37690 * rho 37690 + rho 37689 * rho 37689 * (-1))) =
      rho 37690 * rho 37690 - rho 37689 * rho 37689 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4946
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX35 rho, seg48Out0AccY35 rho⟩ ⟨rho 37689, rho 37690⟩
    ⟨rho 37695, rho 37696⟩ ⟨seg48Out0AccX36 rho, seg48Out0AccY36 rho⟩ ⟨rho 37702, rho 37703⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4947 rho ∧ Seg48.relationRow4948 rho ∧ Seg48.relationRow4949 rho ∧ Seg48.relationRow4950 rho ∧ Seg48.relationRow4951 rho ∧ Seg48.relationRow4952 rho ∧ Seg48.relationRow4953 rho ∧ Seg48.relationRow4954 rho ∧ Seg48.relationRow4955 rho ∧ Seg48.relationRow4956 rho ∧ Seg48.relationRow4957 rho ∧ Seg48.relationRow4958 rho ∧ Seg48.relationRow4959 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩

  exact ⟨r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩

theorem seg48Out0_rung36 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37150 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX36 rho, seg48Out0AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37702, rho 37703⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX36 rho, seg48Out0AccY36 rho⟩ ⟨rho 37702, rho 37703⟩
        ⟨seg48Out0AccX37 rho, seg48Out0AccY37 rho⟩ ⟨rho 37715, rho 37716⟩ := by
  obtain ⟨r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩ := seg48Out0_rows36 rho h
  unfold Seg48.relationRow4947 at r4947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4947

  unfold Seg48.relationRow4948 at r4948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4948

  unfold Seg48.relationRow4949 at r4949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4949

  unfold Seg48.relationRow4950 at r4950

  unfold Seg48.relationRow4951 at r4951

  unfold Seg48.relationRow4952 at r4952

  unfold Seg48.relationRow4953 at r4953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4953

  unfold Seg48.relationRow4954 at r4954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4954

  unfold Seg48.relationRow4955 at r4955

  unfold Seg48.relationRow4956 at r4956

  unfold Seg48.relationRow4957 at r4957

  unfold Seg48.relationRow4958 at r4958

  unfold Seg48.relationRow4959 at r4959

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX37 rho = seg48Out0AccX36 rho + rho 37710 := by
    unfold seg48Out0AccX37 seg48Out0AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 36]

    ring

  have hnexty : seg48Out0AccY37 rho = seg48Out0AccY36 rho + rho 37711 := by
    unfold seg48Out0AccY37 seg48Out0AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 36]

    ring

  have ha0 : (rho 37702 + rho 37703) * (seg48Out0AccX36 rho + seg48Out0AccY36 rho) = rho 37704 := by
    unfold seg48Out0AccX36 seg48Out0AccY36
    linear_combination r4947
  have ha1 : rho 37703 * seg48Out0AccX36 rho = rho 37705 := by
    unfold seg48Out0AccX36
    linear_combination r4948
  have ha2 : rho 37702 * seg48Out0AccY36 rho = rho 37706 := by
    unfold seg48Out0AccY36
    linear_combination r4949
  have ha3 : 3021 * rho 37705 * rho 37706 = rho 37707 := by
    linear_combination r4950
  have ha4 : rho 37708 * (1 + rho 37707) = rho 37705 + rho 37706 := by
    linear_combination r4951
  have ha5 : rho 37709 * (1 - rho 37707) = rho 37704 - rho 37705 - rho 37706 := by
    linear_combination r4952
  have haddx :
      rho 37708 * (1 + 3021 * (rho 37703 * seg48Out0AccX36 rho) * (rho 37702 * seg48Out0AccY36 rho)) =
        rho 37703 * seg48Out0AccX36 rho + rho 37702 * seg48Out0AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37709 * (1 - 3021 * (rho 37703 * seg48Out0AccX36 rho) * (rho 37702 * seg48Out0AccY36 rho)) =
        (-1) * (rho 37703 * seg48Out0AccX36 rho) - rho 37702 * seg48Out0AccY36 rho +
          (seg48Out0AccY36 rho - seg48Out0AccX36 rho * (-1)) * (rho 37702 + rho 37703) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37709 * (1 - rho 37707) = rho 37704 - rho 37705 - rho 37706 := ha5
      _ = (-1) * rho 37705 - rho 37706 + (seg48Out0AccY36 rho - seg48Out0AccX36 rho * (-1)) *
          (rho 37702 + rho 37703) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX37 rho = seg48Out0AccX36 rho - Bool.toZMod bit * (seg48Out0AccX36 rho - rho 37708) := by
    have hd : rho 37710 = Bool.toZMod bit * (rho 37708 - seg48Out0AccX36 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX36
      linear_combination -r4953
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY37 rho = seg48Out0AccY36 rho - Bool.toZMod bit * (seg48Out0AccY36 rho - rho 37709) := by
    have hd : rho 37711 = Bool.toZMod bit * (rho 37709 - seg48Out0AccY36 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY36
      linear_combination -r4954
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37702 * rho 37703 = rho 37712 := by linear_combination r4955
  have hd1 : rho 37702 * rho 37702 = rho 37713 := by linear_combination r4956
  have hd2 : rho 37703 * rho 37703 = rho 37714 := by linear_combination r4957
  have hd3 : rho 37715 * (rho 37703 * rho 37703 + rho 37702 * rho 37702 * (-1)) =
      2 * (rho 37702 * rho 37703) := by
    rw [hd0, hd1, hd2]
    linear_combination r4958
  have hd4 : rho 37716 * (2 - (rho 37703 * rho 37703 + rho 37702 * rho 37702 * (-1))) =
      rho 37703 * rho 37703 - rho 37702 * rho 37702 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4959
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX36 rho, seg48Out0AccY36 rho⟩ ⟨rho 37702, rho 37703⟩
    ⟨rho 37708, rho 37709⟩ ⟨seg48Out0AccX37 rho, seg48Out0AccY37 rho⟩ ⟨rho 37715, rho 37716⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4960 rho ∧ Seg48.relationRow4961 rho ∧ Seg48.relationRow4962 rho ∧ Seg48.relationRow4963 rho ∧ Seg48.relationRow4964 rho ∧ Seg48.relationRow4965 rho ∧ Seg48.relationRow4966 rho ∧ Seg48.relationRow4967 rho ∧ Seg48.relationRow4968 rho ∧ Seg48.relationRow4969 rho ∧ Seg48.relationRow4970 rho ∧ Seg48.relationRow4971 rho ∧ Seg48.relationRow4972 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972⟩

theorem seg48Out0_rung37 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37151 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX37 rho, seg48Out0AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37715, rho 37716⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX37 rho, seg48Out0AccY37 rho⟩ ⟨rho 37715, rho 37716⟩
        ⟨seg48Out0AccX38 rho, seg48Out0AccY38 rho⟩ ⟨rho 37728, rho 37729⟩ := by
  obtain ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972⟩ := seg48Out0_rows37 rho h
  unfold Seg48.relationRow4960 at r4960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4960

  unfold Seg48.relationRow4961 at r4961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4961

  unfold Seg48.relationRow4962 at r4962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4962

  unfold Seg48.relationRow4963 at r4963

  unfold Seg48.relationRow4964 at r4964

  unfold Seg48.relationRow4965 at r4965

  unfold Seg48.relationRow4966 at r4966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4966

  unfold Seg48.relationRow4967 at r4967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4967

  unfold Seg48.relationRow4968 at r4968

  unfold Seg48.relationRow4969 at r4969

  unfold Seg48.relationRow4970 at r4970

  unfold Seg48.relationRow4971 at r4971

  unfold Seg48.relationRow4972 at r4972

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX38 rho = seg48Out0AccX37 rho + rho 37723 := by
    unfold seg48Out0AccX38 seg48Out0AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 37]

    ring

  have hnexty : seg48Out0AccY38 rho = seg48Out0AccY37 rho + rho 37724 := by
    unfold seg48Out0AccY38 seg48Out0AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 37]

    ring

  have ha0 : (rho 37715 + rho 37716) * (seg48Out0AccX37 rho + seg48Out0AccY37 rho) = rho 37717 := by
    unfold seg48Out0AccX37 seg48Out0AccY37
    linear_combination r4960
  have ha1 : rho 37716 * seg48Out0AccX37 rho = rho 37718 := by
    unfold seg48Out0AccX37
    linear_combination r4961
  have ha2 : rho 37715 * seg48Out0AccY37 rho = rho 37719 := by
    unfold seg48Out0AccY37
    linear_combination r4962
  have ha3 : 3021 * rho 37718 * rho 37719 = rho 37720 := by
    linear_combination r4963
  have ha4 : rho 37721 * (1 + rho 37720) = rho 37718 + rho 37719 := by
    linear_combination r4964
  have ha5 : rho 37722 * (1 - rho 37720) = rho 37717 - rho 37718 - rho 37719 := by
    linear_combination r4965
  have haddx :
      rho 37721 * (1 + 3021 * (rho 37716 * seg48Out0AccX37 rho) * (rho 37715 * seg48Out0AccY37 rho)) =
        rho 37716 * seg48Out0AccX37 rho + rho 37715 * seg48Out0AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37722 * (1 - 3021 * (rho 37716 * seg48Out0AccX37 rho) * (rho 37715 * seg48Out0AccY37 rho)) =
        (-1) * (rho 37716 * seg48Out0AccX37 rho) - rho 37715 * seg48Out0AccY37 rho +
          (seg48Out0AccY37 rho - seg48Out0AccX37 rho * (-1)) * (rho 37715 + rho 37716) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37722 * (1 - rho 37720) = rho 37717 - rho 37718 - rho 37719 := ha5
      _ = (-1) * rho 37718 - rho 37719 + (seg48Out0AccY37 rho - seg48Out0AccX37 rho * (-1)) *
          (rho 37715 + rho 37716) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX38 rho = seg48Out0AccX37 rho - Bool.toZMod bit * (seg48Out0AccX37 rho - rho 37721) := by
    have hd : rho 37723 = Bool.toZMod bit * (rho 37721 - seg48Out0AccX37 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX37
      linear_combination -r4966
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY38 rho = seg48Out0AccY37 rho - Bool.toZMod bit * (seg48Out0AccY37 rho - rho 37722) := by
    have hd : rho 37724 = Bool.toZMod bit * (rho 37722 - seg48Out0AccY37 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY37
      linear_combination -r4967
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37715 * rho 37716 = rho 37725 := by linear_combination r4968
  have hd1 : rho 37715 * rho 37715 = rho 37726 := by linear_combination r4969
  have hd2 : rho 37716 * rho 37716 = rho 37727 := by linear_combination r4970
  have hd3 : rho 37728 * (rho 37716 * rho 37716 + rho 37715 * rho 37715 * (-1)) =
      2 * (rho 37715 * rho 37716) := by
    rw [hd0, hd1, hd2]
    linear_combination r4971
  have hd4 : rho 37729 * (2 - (rho 37716 * rho 37716 + rho 37715 * rho 37715 * (-1))) =
      rho 37716 * rho 37716 - rho 37715 * rho 37715 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4972
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX37 rho, seg48Out0AccY37 rho⟩ ⟨rho 37715, rho 37716⟩
    ⟨rho 37721, rho 37722⟩ ⟨seg48Out0AccX38 rho, seg48Out0AccY38 rho⟩ ⟨rho 37728, rho 37729⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4973 rho ∧ Seg48.relationRow4974 rho ∧ Seg48.relationRow4975 rho ∧ Seg48.relationRow4976 rho ∧ Seg48.relationRow4977 rho ∧ Seg48.relationRow4978 rho ∧ Seg48.relationRow4979 rho ∧ Seg48.relationRow4980 rho ∧ Seg48.relationRow4981 rho ∧ Seg48.relationRow4982 rho ∧ Seg48.relationRow4983 rho ∧ Seg48.relationRow4984 rho ∧ Seg48.relationRow4985 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985⟩

theorem seg48Out0_rung38 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37152 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX38 rho, seg48Out0AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37728, rho 37729⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX38 rho, seg48Out0AccY38 rho⟩ ⟨rho 37728, rho 37729⟩
        ⟨seg48Out0AccX39 rho, seg48Out0AccY39 rho⟩ ⟨rho 37741, rho 37742⟩ := by
  obtain ⟨r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985⟩ := seg48Out0_rows38 rho h
  unfold Seg48.relationRow4973 at r4973

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4973

  unfold Seg48.relationRow4974 at r4974

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4974

  unfold Seg48.relationRow4975 at r4975

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4975

  unfold Seg48.relationRow4976 at r4976

  unfold Seg48.relationRow4977 at r4977

  unfold Seg48.relationRow4978 at r4978

  unfold Seg48.relationRow4979 at r4979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4979

  unfold Seg48.relationRow4980 at r4980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4980

  unfold Seg48.relationRow4981 at r4981

  unfold Seg48.relationRow4982 at r4982

  unfold Seg48.relationRow4983 at r4983

  unfold Seg48.relationRow4984 at r4984

  unfold Seg48.relationRow4985 at r4985

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX39 rho = seg48Out0AccX38 rho + rho 37736 := by
    unfold seg48Out0AccX39 seg48Out0AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 38]

    ring

  have hnexty : seg48Out0AccY39 rho = seg48Out0AccY38 rho + rho 37737 := by
    unfold seg48Out0AccY39 seg48Out0AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 38]

    ring

  have ha0 : (rho 37728 + rho 37729) * (seg48Out0AccX38 rho + seg48Out0AccY38 rho) = rho 37730 := by
    unfold seg48Out0AccX38 seg48Out0AccY38
    linear_combination r4973
  have ha1 : rho 37729 * seg48Out0AccX38 rho = rho 37731 := by
    unfold seg48Out0AccX38
    linear_combination r4974
  have ha2 : rho 37728 * seg48Out0AccY38 rho = rho 37732 := by
    unfold seg48Out0AccY38
    linear_combination r4975
  have ha3 : 3021 * rho 37731 * rho 37732 = rho 37733 := by
    linear_combination r4976
  have ha4 : rho 37734 * (1 + rho 37733) = rho 37731 + rho 37732 := by
    linear_combination r4977
  have ha5 : rho 37735 * (1 - rho 37733) = rho 37730 - rho 37731 - rho 37732 := by
    linear_combination r4978
  have haddx :
      rho 37734 * (1 + 3021 * (rho 37729 * seg48Out0AccX38 rho) * (rho 37728 * seg48Out0AccY38 rho)) =
        rho 37729 * seg48Out0AccX38 rho + rho 37728 * seg48Out0AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37735 * (1 - 3021 * (rho 37729 * seg48Out0AccX38 rho) * (rho 37728 * seg48Out0AccY38 rho)) =
        (-1) * (rho 37729 * seg48Out0AccX38 rho) - rho 37728 * seg48Out0AccY38 rho +
          (seg48Out0AccY38 rho - seg48Out0AccX38 rho * (-1)) * (rho 37728 + rho 37729) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37735 * (1 - rho 37733) = rho 37730 - rho 37731 - rho 37732 := ha5
      _ = (-1) * rho 37731 - rho 37732 + (seg48Out0AccY38 rho - seg48Out0AccX38 rho * (-1)) *
          (rho 37728 + rho 37729) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX39 rho = seg48Out0AccX38 rho - Bool.toZMod bit * (seg48Out0AccX38 rho - rho 37734) := by
    have hd : rho 37736 = Bool.toZMod bit * (rho 37734 - seg48Out0AccX38 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX38
      linear_combination -r4979
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY39 rho = seg48Out0AccY38 rho - Bool.toZMod bit * (seg48Out0AccY38 rho - rho 37735) := by
    have hd : rho 37737 = Bool.toZMod bit * (rho 37735 - seg48Out0AccY38 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY38
      linear_combination -r4980
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37728 * rho 37729 = rho 37738 := by linear_combination r4981
  have hd1 : rho 37728 * rho 37728 = rho 37739 := by linear_combination r4982
  have hd2 : rho 37729 * rho 37729 = rho 37740 := by linear_combination r4983
  have hd3 : rho 37741 * (rho 37729 * rho 37729 + rho 37728 * rho 37728 * (-1)) =
      2 * (rho 37728 * rho 37729) := by
    rw [hd0, hd1, hd2]
    linear_combination r4984
  have hd4 : rho 37742 * (2 - (rho 37729 * rho 37729 + rho 37728 * rho 37728 * (-1))) =
      rho 37729 * rho 37729 - rho 37728 * rho 37728 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4985
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX38 rho, seg48Out0AccY38 rho⟩ ⟨rho 37728, rho 37729⟩
    ⟨rho 37734, rho 37735⟩ ⟨seg48Out0AccX39 rho, seg48Out0AccY39 rho⟩ ⟨rho 37741, rho 37742⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4986 rho ∧ Seg48.relationRow4987 rho ∧ Seg48.relationRow4988 rho ∧ Seg48.relationRow4989 rho ∧ Seg48.relationRow4990 rho ∧ Seg48.relationRow4991 rho ∧ Seg48.relationRow4992 rho ∧ Seg48.relationRow4993 rho ∧ Seg48.relationRow4994 rho ∧ Seg48.relationRow4995 rho ∧ Seg48.relationRow4996 rho ∧ Seg48.relationRow4997 rho ∧ Seg48.relationRow4998 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩

theorem seg48Out0_rung39 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37153 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX39 rho, seg48Out0AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37741, rho 37742⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX39 rho, seg48Out0AccY39 rho⟩ ⟨rho 37741, rho 37742⟩
        ⟨seg48Out0AccX40 rho, seg48Out0AccY40 rho⟩ ⟨rho 37754, rho 37755⟩ := by
  obtain ⟨r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998⟩ := seg48Out0_rows39 rho h
  unfold Seg48.relationRow4986 at r4986

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4986

  unfold Seg48.relationRow4987 at r4987

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4987

  unfold Seg48.relationRow4988 at r4988

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4988

  unfold Seg48.relationRow4989 at r4989

  unfold Seg48.relationRow4990 at r4990

  unfold Seg48.relationRow4991 at r4991

  unfold Seg48.relationRow4992 at r4992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4992

  unfold Seg48.relationRow4993 at r4993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4993

  unfold Seg48.relationRow4994 at r4994

  unfold Seg48.relationRow4995 at r4995

  unfold Seg48.relationRow4996 at r4996

  unfold Seg48.relationRow4997 at r4997

  unfold Seg48.relationRow4998 at r4998

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX40 rho = seg48Out0AccX39 rho + rho 37749 := by
    unfold seg48Out0AccX40 seg48Out0AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 39]

    ring

  have hnexty : seg48Out0AccY40 rho = seg48Out0AccY39 rho + rho 37750 := by
    unfold seg48Out0AccY40 seg48Out0AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 39]

    ring

  have ha0 : (rho 37741 + rho 37742) * (seg48Out0AccX39 rho + seg48Out0AccY39 rho) = rho 37743 := by
    unfold seg48Out0AccX39 seg48Out0AccY39
    linear_combination r4986
  have ha1 : rho 37742 * seg48Out0AccX39 rho = rho 37744 := by
    unfold seg48Out0AccX39
    linear_combination r4987
  have ha2 : rho 37741 * seg48Out0AccY39 rho = rho 37745 := by
    unfold seg48Out0AccY39
    linear_combination r4988
  have ha3 : 3021 * rho 37744 * rho 37745 = rho 37746 := by
    linear_combination r4989
  have ha4 : rho 37747 * (1 + rho 37746) = rho 37744 + rho 37745 := by
    linear_combination r4990
  have ha5 : rho 37748 * (1 - rho 37746) = rho 37743 - rho 37744 - rho 37745 := by
    linear_combination r4991
  have haddx :
      rho 37747 * (1 + 3021 * (rho 37742 * seg48Out0AccX39 rho) * (rho 37741 * seg48Out0AccY39 rho)) =
        rho 37742 * seg48Out0AccX39 rho + rho 37741 * seg48Out0AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37748 * (1 - 3021 * (rho 37742 * seg48Out0AccX39 rho) * (rho 37741 * seg48Out0AccY39 rho)) =
        (-1) * (rho 37742 * seg48Out0AccX39 rho) - rho 37741 * seg48Out0AccY39 rho +
          (seg48Out0AccY39 rho - seg48Out0AccX39 rho * (-1)) * (rho 37741 + rho 37742) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37748 * (1 - rho 37746) = rho 37743 - rho 37744 - rho 37745 := ha5
      _ = (-1) * rho 37744 - rho 37745 + (seg48Out0AccY39 rho - seg48Out0AccX39 rho * (-1)) *
          (rho 37741 + rho 37742) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX40 rho = seg48Out0AccX39 rho - Bool.toZMod bit * (seg48Out0AccX39 rho - rho 37747) := by
    have hd : rho 37749 = Bool.toZMod bit * (rho 37747 - seg48Out0AccX39 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX39
      linear_combination -r4992
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY40 rho = seg48Out0AccY39 rho - Bool.toZMod bit * (seg48Out0AccY39 rho - rho 37748) := by
    have hd : rho 37750 = Bool.toZMod bit * (rho 37748 - seg48Out0AccY39 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY39
      linear_combination -r4993
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37741 * rho 37742 = rho 37751 := by linear_combination r4994
  have hd1 : rho 37741 * rho 37741 = rho 37752 := by linear_combination r4995
  have hd2 : rho 37742 * rho 37742 = rho 37753 := by linear_combination r4996
  have hd3 : rho 37754 * (rho 37742 * rho 37742 + rho 37741 * rho 37741 * (-1)) =
      2 * (rho 37741 * rho 37742) := by
    rw [hd0, hd1, hd2]
    linear_combination r4997
  have hd4 : rho 37755 * (2 - (rho 37742 * rho 37742 + rho 37741 * rho 37741 * (-1))) =
      rho 37742 * rho 37742 - rho 37741 * rho 37741 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4998
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX39 rho, seg48Out0AccY39 rho⟩ ⟨rho 37741, rho 37742⟩
    ⟨rho 37747, rho 37748⟩ ⟨seg48Out0AccX40 rho, seg48Out0AccY40 rho⟩ ⟨rho 37754, rho 37755⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4999 rho ∧ Seg48.relationRow5000 rho ∧ Seg48.relationRow5001 rho ∧ Seg48.relationRow5002 rho ∧ Seg48.relationRow5003 rho ∧ Seg48.relationRow5004 rho ∧ Seg48.relationRow5005 rho ∧ Seg48.relationRow5006 rho ∧ Seg48.relationRow5007 rho ∧ Seg48.relationRow5008 rho ∧ Seg48.relationRow5009 rho ∧ Seg48.relationRow5010 rho ∧ Seg48.relationRow5011 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011⟩

theorem seg48Out0_rung40 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37154 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX40 rho, seg48Out0AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37754, rho 37755⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX40 rho, seg48Out0AccY40 rho⟩ ⟨rho 37754, rho 37755⟩
        ⟨seg48Out0AccX41 rho, seg48Out0AccY41 rho⟩ ⟨rho 37767, rho 37768⟩ := by
  obtain ⟨r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011⟩ := seg48Out0_rows40 rho h
  unfold Seg48.relationRow4999 at r4999

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4999

  unfold Seg48.relationRow5000 at r5000

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5000

  unfold Seg48.relationRow5001 at r5001

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5001

  unfold Seg48.relationRow5002 at r5002

  unfold Seg48.relationRow5003 at r5003

  unfold Seg48.relationRow5004 at r5004

  unfold Seg48.relationRow5005 at r5005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5005

  unfold Seg48.relationRow5006 at r5006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5006

  unfold Seg48.relationRow5007 at r5007

  unfold Seg48.relationRow5008 at r5008

  unfold Seg48.relationRow5009 at r5009

  unfold Seg48.relationRow5010 at r5010

  unfold Seg48.relationRow5011 at r5011

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX41 rho = seg48Out0AccX40 rho + rho 37762 := by
    unfold seg48Out0AccX41 seg48Out0AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 40]

    ring

  have hnexty : seg48Out0AccY41 rho = seg48Out0AccY40 rho + rho 37763 := by
    unfold seg48Out0AccY41 seg48Out0AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 40]

    ring

  have ha0 : (rho 37754 + rho 37755) * (seg48Out0AccX40 rho + seg48Out0AccY40 rho) = rho 37756 := by
    unfold seg48Out0AccX40 seg48Out0AccY40
    linear_combination r4999
  have ha1 : rho 37755 * seg48Out0AccX40 rho = rho 37757 := by
    unfold seg48Out0AccX40
    linear_combination r5000
  have ha2 : rho 37754 * seg48Out0AccY40 rho = rho 37758 := by
    unfold seg48Out0AccY40
    linear_combination r5001
  have ha3 : 3021 * rho 37757 * rho 37758 = rho 37759 := by
    linear_combination r5002
  have ha4 : rho 37760 * (1 + rho 37759) = rho 37757 + rho 37758 := by
    linear_combination r5003
  have ha5 : rho 37761 * (1 - rho 37759) = rho 37756 - rho 37757 - rho 37758 := by
    linear_combination r5004
  have haddx :
      rho 37760 * (1 + 3021 * (rho 37755 * seg48Out0AccX40 rho) * (rho 37754 * seg48Out0AccY40 rho)) =
        rho 37755 * seg48Out0AccX40 rho + rho 37754 * seg48Out0AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37761 * (1 - 3021 * (rho 37755 * seg48Out0AccX40 rho) * (rho 37754 * seg48Out0AccY40 rho)) =
        (-1) * (rho 37755 * seg48Out0AccX40 rho) - rho 37754 * seg48Out0AccY40 rho +
          (seg48Out0AccY40 rho - seg48Out0AccX40 rho * (-1)) * (rho 37754 + rho 37755) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37761 * (1 - rho 37759) = rho 37756 - rho 37757 - rho 37758 := ha5
      _ = (-1) * rho 37757 - rho 37758 + (seg48Out0AccY40 rho - seg48Out0AccX40 rho * (-1)) *
          (rho 37754 + rho 37755) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX41 rho = seg48Out0AccX40 rho - Bool.toZMod bit * (seg48Out0AccX40 rho - rho 37760) := by
    have hd : rho 37762 = Bool.toZMod bit * (rho 37760 - seg48Out0AccX40 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX40
      linear_combination -r5005
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY41 rho = seg48Out0AccY40 rho - Bool.toZMod bit * (seg48Out0AccY40 rho - rho 37761) := by
    have hd : rho 37763 = Bool.toZMod bit * (rho 37761 - seg48Out0AccY40 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY40
      linear_combination -r5006
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37754 * rho 37755 = rho 37764 := by linear_combination r5007
  have hd1 : rho 37754 * rho 37754 = rho 37765 := by linear_combination r5008
  have hd2 : rho 37755 * rho 37755 = rho 37766 := by linear_combination r5009
  have hd3 : rho 37767 * (rho 37755 * rho 37755 + rho 37754 * rho 37754 * (-1)) =
      2 * (rho 37754 * rho 37755) := by
    rw [hd0, hd1, hd2]
    linear_combination r5010
  have hd4 : rho 37768 * (2 - (rho 37755 * rho 37755 + rho 37754 * rho 37754 * (-1))) =
      rho 37755 * rho 37755 - rho 37754 * rho 37754 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5011
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX40 rho, seg48Out0AccY40 rho⟩ ⟨rho 37754, rho 37755⟩
    ⟨rho 37760, rho 37761⟩ ⟨seg48Out0AccX41 rho, seg48Out0AccY41 rho⟩ ⟨rho 37767, rho 37768⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5012 rho ∧ Seg48.relationRow5013 rho ∧ Seg48.relationRow5014 rho ∧ Seg48.relationRow5015 rho ∧ Seg48.relationRow5016 rho ∧ Seg48.relationRow5017 rho ∧ Seg48.relationRow5018 rho ∧ Seg48.relationRow5019 rho ∧ Seg48.relationRow5020 rho ∧ Seg48.relationRow5021 rho ∧ Seg48.relationRow5022 rho ∧ Seg48.relationRow5023 rho ∧ Seg48.relationRow5024 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024⟩

theorem seg48Out0_rung41 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37155 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX41 rho, seg48Out0AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37767, rho 37768⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX41 rho, seg48Out0AccY41 rho⟩ ⟨rho 37767, rho 37768⟩
        ⟨seg48Out0AccX42 rho, seg48Out0AccY42 rho⟩ ⟨rho 37780, rho 37781⟩ := by
  obtain ⟨r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024⟩ := seg48Out0_rows41 rho h
  unfold Seg48.relationRow5012 at r5012

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5012

  unfold Seg48.relationRow5013 at r5013

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5013

  unfold Seg48.relationRow5014 at r5014

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5014

  unfold Seg48.relationRow5015 at r5015

  unfold Seg48.relationRow5016 at r5016

  unfold Seg48.relationRow5017 at r5017

  unfold Seg48.relationRow5018 at r5018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5018

  unfold Seg48.relationRow5019 at r5019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5019

  unfold Seg48.relationRow5020 at r5020

  unfold Seg48.relationRow5021 at r5021

  unfold Seg48.relationRow5022 at r5022

  unfold Seg48.relationRow5023 at r5023

  unfold Seg48.relationRow5024 at r5024

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX42 rho = seg48Out0AccX41 rho + rho 37775 := by
    unfold seg48Out0AccX42 seg48Out0AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 41]

    ring

  have hnexty : seg48Out0AccY42 rho = seg48Out0AccY41 rho + rho 37776 := by
    unfold seg48Out0AccY42 seg48Out0AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 41]

    ring

  have ha0 : (rho 37767 + rho 37768) * (seg48Out0AccX41 rho + seg48Out0AccY41 rho) = rho 37769 := by
    unfold seg48Out0AccX41 seg48Out0AccY41
    linear_combination r5012
  have ha1 : rho 37768 * seg48Out0AccX41 rho = rho 37770 := by
    unfold seg48Out0AccX41
    linear_combination r5013
  have ha2 : rho 37767 * seg48Out0AccY41 rho = rho 37771 := by
    unfold seg48Out0AccY41
    linear_combination r5014
  have ha3 : 3021 * rho 37770 * rho 37771 = rho 37772 := by
    linear_combination r5015
  have ha4 : rho 37773 * (1 + rho 37772) = rho 37770 + rho 37771 := by
    linear_combination r5016
  have ha5 : rho 37774 * (1 - rho 37772) = rho 37769 - rho 37770 - rho 37771 := by
    linear_combination r5017
  have haddx :
      rho 37773 * (1 + 3021 * (rho 37768 * seg48Out0AccX41 rho) * (rho 37767 * seg48Out0AccY41 rho)) =
        rho 37768 * seg48Out0AccX41 rho + rho 37767 * seg48Out0AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37774 * (1 - 3021 * (rho 37768 * seg48Out0AccX41 rho) * (rho 37767 * seg48Out0AccY41 rho)) =
        (-1) * (rho 37768 * seg48Out0AccX41 rho) - rho 37767 * seg48Out0AccY41 rho +
          (seg48Out0AccY41 rho - seg48Out0AccX41 rho * (-1)) * (rho 37767 + rho 37768) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37774 * (1 - rho 37772) = rho 37769 - rho 37770 - rho 37771 := ha5
      _ = (-1) * rho 37770 - rho 37771 + (seg48Out0AccY41 rho - seg48Out0AccX41 rho * (-1)) *
          (rho 37767 + rho 37768) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX42 rho = seg48Out0AccX41 rho - Bool.toZMod bit * (seg48Out0AccX41 rho - rho 37773) := by
    have hd : rho 37775 = Bool.toZMod bit * (rho 37773 - seg48Out0AccX41 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX41
      linear_combination -r5018
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY42 rho = seg48Out0AccY41 rho - Bool.toZMod bit * (seg48Out0AccY41 rho - rho 37774) := by
    have hd : rho 37776 = Bool.toZMod bit * (rho 37774 - seg48Out0AccY41 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY41
      linear_combination -r5019
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37767 * rho 37768 = rho 37777 := by linear_combination r5020
  have hd1 : rho 37767 * rho 37767 = rho 37778 := by linear_combination r5021
  have hd2 : rho 37768 * rho 37768 = rho 37779 := by linear_combination r5022
  have hd3 : rho 37780 * (rho 37768 * rho 37768 + rho 37767 * rho 37767 * (-1)) =
      2 * (rho 37767 * rho 37768) := by
    rw [hd0, hd1, hd2]
    linear_combination r5023
  have hd4 : rho 37781 * (2 - (rho 37768 * rho 37768 + rho 37767 * rho 37767 * (-1))) =
      rho 37768 * rho 37768 - rho 37767 * rho 37767 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5024
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX41 rho, seg48Out0AccY41 rho⟩ ⟨rho 37767, rho 37768⟩
    ⟨rho 37773, rho 37774⟩ ⟨seg48Out0AccX42 rho, seg48Out0AccY42 rho⟩ ⟨rho 37780, rho 37781⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5025 rho ∧ Seg48.relationRow5026 rho ∧ Seg48.relationRow5027 rho ∧ Seg48.relationRow5028 rho ∧ Seg48.relationRow5029 rho ∧ Seg48.relationRow5030 rho ∧ Seg48.relationRow5031 rho ∧ Seg48.relationRow5032 rho ∧ Seg48.relationRow5033 rho ∧ Seg48.relationRow5034 rho ∧ Seg48.relationRow5035 rho ∧ Seg48.relationRow5036 rho ∧ Seg48.relationRow5037 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, _, _⟩

  exact ⟨r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037⟩

theorem seg48Out0_rung42 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37156 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX42 rho, seg48Out0AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37780, rho 37781⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX42 rho, seg48Out0AccY42 rho⟩ ⟨rho 37780, rho 37781⟩
        ⟨seg48Out0AccX43 rho, seg48Out0AccY43 rho⟩ ⟨rho 37793, rho 37794⟩ := by
  obtain ⟨r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037⟩ := seg48Out0_rows42 rho h
  unfold Seg48.relationRow5025 at r5025

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5025

  unfold Seg48.relationRow5026 at r5026

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5026

  unfold Seg48.relationRow5027 at r5027

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5027

  unfold Seg48.relationRow5028 at r5028

  unfold Seg48.relationRow5029 at r5029

  unfold Seg48.relationRow5030 at r5030

  unfold Seg48.relationRow5031 at r5031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5031

  unfold Seg48.relationRow5032 at r5032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5032

  unfold Seg48.relationRow5033 at r5033

  unfold Seg48.relationRow5034 at r5034

  unfold Seg48.relationRow5035 at r5035

  unfold Seg48.relationRow5036 at r5036

  unfold Seg48.relationRow5037 at r5037

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX43 rho = seg48Out0AccX42 rho + rho 37788 := by
    unfold seg48Out0AccX43 seg48Out0AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 42]

    ring

  have hnexty : seg48Out0AccY43 rho = seg48Out0AccY42 rho + rho 37789 := by
    unfold seg48Out0AccY43 seg48Out0AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 42]

    ring

  have ha0 : (rho 37780 + rho 37781) * (seg48Out0AccX42 rho + seg48Out0AccY42 rho) = rho 37782 := by
    unfold seg48Out0AccX42 seg48Out0AccY42
    linear_combination r5025
  have ha1 : rho 37781 * seg48Out0AccX42 rho = rho 37783 := by
    unfold seg48Out0AccX42
    linear_combination r5026
  have ha2 : rho 37780 * seg48Out0AccY42 rho = rho 37784 := by
    unfold seg48Out0AccY42
    linear_combination r5027
  have ha3 : 3021 * rho 37783 * rho 37784 = rho 37785 := by
    linear_combination r5028
  have ha4 : rho 37786 * (1 + rho 37785) = rho 37783 + rho 37784 := by
    linear_combination r5029
  have ha5 : rho 37787 * (1 - rho 37785) = rho 37782 - rho 37783 - rho 37784 := by
    linear_combination r5030
  have haddx :
      rho 37786 * (1 + 3021 * (rho 37781 * seg48Out0AccX42 rho) * (rho 37780 * seg48Out0AccY42 rho)) =
        rho 37781 * seg48Out0AccX42 rho + rho 37780 * seg48Out0AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37787 * (1 - 3021 * (rho 37781 * seg48Out0AccX42 rho) * (rho 37780 * seg48Out0AccY42 rho)) =
        (-1) * (rho 37781 * seg48Out0AccX42 rho) - rho 37780 * seg48Out0AccY42 rho +
          (seg48Out0AccY42 rho - seg48Out0AccX42 rho * (-1)) * (rho 37780 + rho 37781) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37787 * (1 - rho 37785) = rho 37782 - rho 37783 - rho 37784 := ha5
      _ = (-1) * rho 37783 - rho 37784 + (seg48Out0AccY42 rho - seg48Out0AccX42 rho * (-1)) *
          (rho 37780 + rho 37781) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX43 rho = seg48Out0AccX42 rho - Bool.toZMod bit * (seg48Out0AccX42 rho - rho 37786) := by
    have hd : rho 37788 = Bool.toZMod bit * (rho 37786 - seg48Out0AccX42 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX42
      linear_combination -r5031
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY43 rho = seg48Out0AccY42 rho - Bool.toZMod bit * (seg48Out0AccY42 rho - rho 37787) := by
    have hd : rho 37789 = Bool.toZMod bit * (rho 37787 - seg48Out0AccY42 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY42
      linear_combination -r5032
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37780 * rho 37781 = rho 37790 := by linear_combination r5033
  have hd1 : rho 37780 * rho 37780 = rho 37791 := by linear_combination r5034
  have hd2 : rho 37781 * rho 37781 = rho 37792 := by linear_combination r5035
  have hd3 : rho 37793 * (rho 37781 * rho 37781 + rho 37780 * rho 37780 * (-1)) =
      2 * (rho 37780 * rho 37781) := by
    rw [hd0, hd1, hd2]
    linear_combination r5036
  have hd4 : rho 37794 * (2 - (rho 37781 * rho 37781 + rho 37780 * rho 37780 * (-1))) =
      rho 37781 * rho 37781 - rho 37780 * rho 37780 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5037
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX42 rho, seg48Out0AccY42 rho⟩ ⟨rho 37780, rho 37781⟩
    ⟨rho 37786, rho 37787⟩ ⟨seg48Out0AccX43 rho, seg48Out0AccY43 rho⟩ ⟨rho 37793, rho 37794⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5038 rho ∧ Seg48.relationRow5039 rho ∧ Seg48.relationRow5040 rho ∧ Seg48.relationRow5041 rho ∧ Seg48.relationRow5042 rho ∧ Seg48.relationRow5043 rho ∧ Seg48.relationRow5044 rho ∧ Seg48.relationRow5045 rho ∧ Seg48.relationRow5046 rho ∧ Seg48.relationRow5047 rho ∧ Seg48.relationRow5048 rho ∧ Seg48.relationRow5049 rho ∧ Seg48.relationRow5050 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart62 at p62

  rcases p62 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5038, r5039⟩

  unfold Seg48.relationPart63 at p63

  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5038, r5039, r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050⟩

theorem seg48Out0_rung43 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37157 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX43 rho, seg48Out0AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37793, rho 37794⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX43 rho, seg48Out0AccY43 rho⟩ ⟨rho 37793, rho 37794⟩
        ⟨seg48Out0AccX44 rho, seg48Out0AccY44 rho⟩ ⟨rho 37806, rho 37807⟩ := by
  obtain ⟨r5038, r5039, r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050⟩ := seg48Out0_rows43 rho h
  unfold Seg48.relationRow5038 at r5038

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5038

  unfold Seg48.relationRow5039 at r5039

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5039

  unfold Seg48.relationRow5040 at r5040

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5040

  unfold Seg48.relationRow5041 at r5041

  unfold Seg48.relationRow5042 at r5042

  unfold Seg48.relationRow5043 at r5043

  unfold Seg48.relationRow5044 at r5044

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5044

  unfold Seg48.relationRow5045 at r5045

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5045

  unfold Seg48.relationRow5046 at r5046

  unfold Seg48.relationRow5047 at r5047

  unfold Seg48.relationRow5048 at r5048

  unfold Seg48.relationRow5049 at r5049

  unfold Seg48.relationRow5050 at r5050

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX44 rho = seg48Out0AccX43 rho + rho 37801 := by
    unfold seg48Out0AccX44 seg48Out0AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 43]

    ring

  have hnexty : seg48Out0AccY44 rho = seg48Out0AccY43 rho + rho 37802 := by
    unfold seg48Out0AccY44 seg48Out0AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 43]

    ring

  have ha0 : (rho 37793 + rho 37794) * (seg48Out0AccX43 rho + seg48Out0AccY43 rho) = rho 37795 := by
    unfold seg48Out0AccX43 seg48Out0AccY43
    linear_combination r5038
  have ha1 : rho 37794 * seg48Out0AccX43 rho = rho 37796 := by
    unfold seg48Out0AccX43
    linear_combination r5039
  have ha2 : rho 37793 * seg48Out0AccY43 rho = rho 37797 := by
    unfold seg48Out0AccY43
    linear_combination r5040
  have ha3 : 3021 * rho 37796 * rho 37797 = rho 37798 := by
    linear_combination r5041
  have ha4 : rho 37799 * (1 + rho 37798) = rho 37796 + rho 37797 := by
    linear_combination r5042
  have ha5 : rho 37800 * (1 - rho 37798) = rho 37795 - rho 37796 - rho 37797 := by
    linear_combination r5043
  have haddx :
      rho 37799 * (1 + 3021 * (rho 37794 * seg48Out0AccX43 rho) * (rho 37793 * seg48Out0AccY43 rho)) =
        rho 37794 * seg48Out0AccX43 rho + rho 37793 * seg48Out0AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37800 * (1 - 3021 * (rho 37794 * seg48Out0AccX43 rho) * (rho 37793 * seg48Out0AccY43 rho)) =
        (-1) * (rho 37794 * seg48Out0AccX43 rho) - rho 37793 * seg48Out0AccY43 rho +
          (seg48Out0AccY43 rho - seg48Out0AccX43 rho * (-1)) * (rho 37793 + rho 37794) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37800 * (1 - rho 37798) = rho 37795 - rho 37796 - rho 37797 := ha5
      _ = (-1) * rho 37796 - rho 37797 + (seg48Out0AccY43 rho - seg48Out0AccX43 rho * (-1)) *
          (rho 37793 + rho 37794) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX44 rho = seg48Out0AccX43 rho - Bool.toZMod bit * (seg48Out0AccX43 rho - rho 37799) := by
    have hd : rho 37801 = Bool.toZMod bit * (rho 37799 - seg48Out0AccX43 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX43
      linear_combination -r5044
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY44 rho = seg48Out0AccY43 rho - Bool.toZMod bit * (seg48Out0AccY43 rho - rho 37800) := by
    have hd : rho 37802 = Bool.toZMod bit * (rho 37800 - seg48Out0AccY43 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY43
      linear_combination -r5045
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37793 * rho 37794 = rho 37803 := by linear_combination r5046
  have hd1 : rho 37793 * rho 37793 = rho 37804 := by linear_combination r5047
  have hd2 : rho 37794 * rho 37794 = rho 37805 := by linear_combination r5048
  have hd3 : rho 37806 * (rho 37794 * rho 37794 + rho 37793 * rho 37793 * (-1)) =
      2 * (rho 37793 * rho 37794) := by
    rw [hd0, hd1, hd2]
    linear_combination r5049
  have hd4 : rho 37807 * (2 - (rho 37794 * rho 37794 + rho 37793 * rho 37793 * (-1))) =
      rho 37794 * rho 37794 - rho 37793 * rho 37793 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5050
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX43 rho, seg48Out0AccY43 rho⟩ ⟨rho 37793, rho 37794⟩
    ⟨rho 37799, rho 37800⟩ ⟨seg48Out0AccX44 rho, seg48Out0AccY44 rho⟩ ⟨rho 37806, rho 37807⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c3 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg48Out0_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg48Out0_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg48Out0_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg48Out0_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg48Out0_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg48Out0_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg48Out0_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg48Out0_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg48Out0_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg48Out0_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
