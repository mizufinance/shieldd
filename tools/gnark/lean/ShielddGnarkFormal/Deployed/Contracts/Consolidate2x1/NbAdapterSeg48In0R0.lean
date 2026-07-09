import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow905 rho ∧ Seg48.relationRow906 rho ∧ Seg48.relationRow907 rho ∧ Seg48.relationRow908 rho ∧ Seg48.relationRow909 rho ∧ Seg48.relationRow910 rho ∧ Seg48.relationRow911 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r905, r906, r907, r908, r909, r910, r911, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r905, r906, r907, r908, r909, r910, r911⟩

theorem seg48In0_rung0 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33536 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX0 rho, seg48In0AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33530, rho 33532⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX0 rho, seg48In0AccY0 rho⟩ ⟨rho 33530, rho 33532⟩
        ⟨seg48In0AccX1 rho, seg48In0AccY1 rho⟩ ⟨rho 33669, rho 33670⟩ := by
  obtain ⟨r905, r906, r907, r908, r909, r910, r911⟩ := seg48In0_rows0 rho h
  unfold Seg48.relationRow905 at r905

  unfold Seg48.relationRow906 at r906

  unfold Seg48.relationRow907 at r907

  unfold Seg48.relationRow908 at r908

  unfold Seg48.relationRow909 at r909

  unfold Seg48.relationRow910 at r910

  unfold Seg48.relationRow911 at r911

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX1 rho = seg48In0AccX0 rho + rho 33664 := by
    unfold seg48In0AccX1 seg48In0AccX0
    ring

  have hnexty : seg48In0AccY1 rho = seg48In0AccY0 rho + rho 33665 := by
    unfold seg48In0AccY1 seg48In0AccY0
    ring

  have haddx :
      rho 33530 * (1 + 3021 * (rho 33532 * seg48In0AccX0 rho) * (rho 33530 * seg48In0AccY0 rho)) =
        rho 33532 * seg48In0AccX0 rho + rho 33530 * seg48In0AccY0 rho := by
    unfold seg48In0AccX0 seg48In0AccY0
    ring
  have haddy :
      rho 33532 * (1 - 3021 * (rho 33532 * seg48In0AccX0 rho) * (rho 33530 * seg48In0AccY0 rho)) =
        (-1) * (rho 33532 * seg48In0AccX0 rho) - rho 33530 * seg48In0AccY0 rho +
          (seg48In0AccY0 rho - seg48In0AccX0 rho * (-1)) * (rho 33530 + rho 33532) := by
    unfold seg48In0AccX0 seg48In0AccY0
    ring
  have hselx : seg48In0AccX1 rho = seg48In0AccX0 rho - Bool.toZMod bit * (seg48In0AccX0 rho - rho 33530) := by
    have hd : rho 33664 = Bool.toZMod bit * (rho 33530 - seg48In0AccX0 rho) := by
      rw [← hbit]
      unfold seg48In0AccX0
      linear_combination -r905
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY1 rho = seg48In0AccY0 rho - Bool.toZMod bit * (seg48In0AccY0 rho - rho 33532) := by
    have hd : rho 33665 = Bool.toZMod bit * (rho 33532 - seg48In0AccY0 rho) := by
      rw [← hbit]
      unfold seg48In0AccY0
      linear_combination -r906
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33530 * rho 33532 = rho 33666 := by linear_combination r907
  have hd1 : rho 33530 * rho 33530 = rho 33667 := by linear_combination r908
  have hd2 : rho 33532 * rho 33532 = rho 33668 := by linear_combination r909
  have hd3 : rho 33669 * (rho 33532 * rho 33532 + rho 33530 * rho 33530 * (-1)) =
      2 * (rho 33530 * rho 33532) := by
    rw [hd0, hd1, hd2]
    linear_combination r910
  have hd4 : rho 33670 * (2 - (rho 33532 * rho 33532 + rho 33530 * rho 33530 * (-1))) =
      rho 33532 * rho 33532 - rho 33530 * rho 33530 * (-1) := by
    rw [hd1, hd2]
    linear_combination r911
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX0 rho, seg48In0AccY0 rho⟩ ⟨rho 33530, rho 33532⟩
    ⟨rho 33530, rho 33532⟩ ⟨seg48In0AccX1 rho, seg48In0AccY1 rho⟩ ⟨rho 33669, rho 33670⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow912 rho ∧ Seg48.relationRow913 rho ∧ Seg48.relationRow914 rho ∧ Seg48.relationRow915 rho ∧ Seg48.relationRow916 rho ∧ Seg48.relationRow917 rho ∧ Seg48.relationRow918 rho ∧ Seg48.relationRow919 rho ∧ Seg48.relationRow920 rho ∧ Seg48.relationRow921 rho ∧ Seg48.relationRow922 rho ∧ Seg48.relationRow923 rho ∧ Seg48.relationRow924 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924⟩

theorem seg48In0_rung1 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33537 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX1 rho, seg48In0AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33669, rho 33670⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX1 rho, seg48In0AccY1 rho⟩ ⟨rho 33669, rho 33670⟩
        ⟨seg48In0AccX2 rho, seg48In0AccY2 rho⟩ ⟨rho 33682, rho 33683⟩ := by
  obtain ⟨r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924⟩ := seg48In0_rows1 rho h
  unfold Seg48.relationRow912 at r912

  unfold Seg48.relationRow913 at r913

  unfold Seg48.relationRow914 at r914

  unfold Seg48.relationRow915 at r915

  unfold Seg48.relationRow916 at r916

  unfold Seg48.relationRow917 at r917

  unfold Seg48.relationRow918 at r918

  unfold Seg48.relationRow919 at r919

  unfold Seg48.relationRow920 at r920

  unfold Seg48.relationRow921 at r921

  unfold Seg48.relationRow922 at r922

  unfold Seg48.relationRow923 at r923

  unfold Seg48.relationRow924 at r924

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX2 rho = seg48In0AccX1 rho + rho 33677 := by
    unfold seg48In0AccX2 seg48In0AccX1
    ring

  have hnexty : seg48In0AccY2 rho = seg48In0AccY1 rho + rho 33678 := by
    unfold seg48In0AccY2 seg48In0AccY1
    ring

  have ha0 : (rho 33669 + rho 33670) * (seg48In0AccX1 rho + seg48In0AccY1 rho) = rho 33671 := by
    unfold seg48In0AccX1 seg48In0AccY1
    linear_combination r912
  have ha1 : rho 33670 * seg48In0AccX1 rho = rho 33672 := by
    unfold seg48In0AccX1
    linear_combination r913
  have ha2 : rho 33669 * seg48In0AccY1 rho = rho 33673 := by
    unfold seg48In0AccY1
    linear_combination r914
  have ha3 : 3021 * rho 33672 * rho 33673 = rho 33674 := by
    linear_combination r915
  have ha4 : rho 33675 * (1 + rho 33674) = rho 33672 + rho 33673 := by
    linear_combination r916
  have ha5 : rho 33676 * (1 - rho 33674) = rho 33671 - rho 33672 - rho 33673 := by
    linear_combination r917
  have haddx :
      rho 33675 * (1 + 3021 * (rho 33670 * seg48In0AccX1 rho) * (rho 33669 * seg48In0AccY1 rho)) =
        rho 33670 * seg48In0AccX1 rho + rho 33669 * seg48In0AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33676 * (1 - 3021 * (rho 33670 * seg48In0AccX1 rho) * (rho 33669 * seg48In0AccY1 rho)) =
        (-1) * (rho 33670 * seg48In0AccX1 rho) - rho 33669 * seg48In0AccY1 rho +
          (seg48In0AccY1 rho - seg48In0AccX1 rho * (-1)) * (rho 33669 + rho 33670) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33676 * (1 - rho 33674) = rho 33671 - rho 33672 - rho 33673 := ha5
      _ = (-1) * rho 33672 - rho 33673 + (seg48In0AccY1 rho - seg48In0AccX1 rho * (-1)) *
          (rho 33669 + rho 33670) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX2 rho = seg48In0AccX1 rho - Bool.toZMod bit * (seg48In0AccX1 rho - rho 33675) := by
    have hd : rho 33677 = Bool.toZMod bit * (rho 33675 - seg48In0AccX1 rho) := by
      rw [← hbit]
      unfold seg48In0AccX1
      linear_combination -r918
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY2 rho = seg48In0AccY1 rho - Bool.toZMod bit * (seg48In0AccY1 rho - rho 33676) := by
    have hd : rho 33678 = Bool.toZMod bit * (rho 33676 - seg48In0AccY1 rho) := by
      rw [← hbit]
      unfold seg48In0AccY1
      linear_combination -r919
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33669 * rho 33670 = rho 33679 := by linear_combination r920
  have hd1 : rho 33669 * rho 33669 = rho 33680 := by linear_combination r921
  have hd2 : rho 33670 * rho 33670 = rho 33681 := by linear_combination r922
  have hd3 : rho 33682 * (rho 33670 * rho 33670 + rho 33669 * rho 33669 * (-1)) =
      2 * (rho 33669 * rho 33670) := by
    rw [hd0, hd1, hd2]
    linear_combination r923
  have hd4 : rho 33683 * (2 - (rho 33670 * rho 33670 + rho 33669 * rho 33669 * (-1))) =
      rho 33670 * rho 33670 - rho 33669 * rho 33669 * (-1) := by
    rw [hd1, hd2]
    linear_combination r924
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX1 rho, seg48In0AccY1 rho⟩ ⟨rho 33669, rho 33670⟩
    ⟨rho 33675, rho 33676⟩ ⟨seg48In0AccX2 rho, seg48In0AccY2 rho⟩ ⟨rho 33682, rho 33683⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow925 rho ∧ Seg48.relationRow926 rho ∧ Seg48.relationRow927 rho ∧ Seg48.relationRow928 rho ∧ Seg48.relationRow929 rho ∧ Seg48.relationRow930 rho ∧ Seg48.relationRow931 rho ∧ Seg48.relationRow932 rho ∧ Seg48.relationRow933 rho ∧ Seg48.relationRow934 rho ∧ Seg48.relationRow935 rho ∧ Seg48.relationRow936 rho ∧ Seg48.relationRow937 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937⟩

theorem seg48In0_rung2 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33538 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX2 rho, seg48In0AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33682, rho 33683⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX2 rho, seg48In0AccY2 rho⟩ ⟨rho 33682, rho 33683⟩
        ⟨seg48In0AccX3 rho, seg48In0AccY3 rho⟩ ⟨rho 33695, rho 33696⟩ := by
  obtain ⟨r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937⟩ := seg48In0_rows2 rho h
  unfold Seg48.relationRow925 at r925

  unfold Seg48.relationRow926 at r926

  unfold Seg48.relationRow927 at r927

  unfold Seg48.relationRow928 at r928

  unfold Seg48.relationRow929 at r929

  unfold Seg48.relationRow930 at r930

  unfold Seg48.relationRow931 at r931

  unfold Seg48.relationRow932 at r932

  unfold Seg48.relationRow933 at r933

  unfold Seg48.relationRow934 at r934

  unfold Seg48.relationRow935 at r935

  unfold Seg48.relationRow936 at r936

  unfold Seg48.relationRow937 at r937

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX3 rho = seg48In0AccX2 rho + rho 33690 := by
    unfold seg48In0AccX3 seg48In0AccX2
    ring

  have hnexty : seg48In0AccY3 rho = seg48In0AccY2 rho + rho 33691 := by
    unfold seg48In0AccY3 seg48In0AccY2
    ring

  have ha0 : (rho 33682 + rho 33683) * (seg48In0AccX2 rho + seg48In0AccY2 rho) = rho 33684 := by
    unfold seg48In0AccX2 seg48In0AccY2
    linear_combination r925
  have ha1 : rho 33683 * seg48In0AccX2 rho = rho 33685 := by
    unfold seg48In0AccX2
    linear_combination r926
  have ha2 : rho 33682 * seg48In0AccY2 rho = rho 33686 := by
    unfold seg48In0AccY2
    linear_combination r927
  have ha3 : 3021 * rho 33685 * rho 33686 = rho 33687 := by
    linear_combination r928
  have ha4 : rho 33688 * (1 + rho 33687) = rho 33685 + rho 33686 := by
    linear_combination r929
  have ha5 : rho 33689 * (1 - rho 33687) = rho 33684 - rho 33685 - rho 33686 := by
    linear_combination r930
  have haddx :
      rho 33688 * (1 + 3021 * (rho 33683 * seg48In0AccX2 rho) * (rho 33682 * seg48In0AccY2 rho)) =
        rho 33683 * seg48In0AccX2 rho + rho 33682 * seg48In0AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33689 * (1 - 3021 * (rho 33683 * seg48In0AccX2 rho) * (rho 33682 * seg48In0AccY2 rho)) =
        (-1) * (rho 33683 * seg48In0AccX2 rho) - rho 33682 * seg48In0AccY2 rho +
          (seg48In0AccY2 rho - seg48In0AccX2 rho * (-1)) * (rho 33682 + rho 33683) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33689 * (1 - rho 33687) = rho 33684 - rho 33685 - rho 33686 := ha5
      _ = (-1) * rho 33685 - rho 33686 + (seg48In0AccY2 rho - seg48In0AccX2 rho * (-1)) *
          (rho 33682 + rho 33683) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX3 rho = seg48In0AccX2 rho - Bool.toZMod bit * (seg48In0AccX2 rho - rho 33688) := by
    have hd : rho 33690 = Bool.toZMod bit * (rho 33688 - seg48In0AccX2 rho) := by
      rw [← hbit]
      unfold seg48In0AccX2
      linear_combination -r931
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY3 rho = seg48In0AccY2 rho - Bool.toZMod bit * (seg48In0AccY2 rho - rho 33689) := by
    have hd : rho 33691 = Bool.toZMod bit * (rho 33689 - seg48In0AccY2 rho) := by
      rw [← hbit]
      unfold seg48In0AccY2
      linear_combination -r932
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33682 * rho 33683 = rho 33692 := by linear_combination r933
  have hd1 : rho 33682 * rho 33682 = rho 33693 := by linear_combination r934
  have hd2 : rho 33683 * rho 33683 = rho 33694 := by linear_combination r935
  have hd3 : rho 33695 * (rho 33683 * rho 33683 + rho 33682 * rho 33682 * (-1)) =
      2 * (rho 33682 * rho 33683) := by
    rw [hd0, hd1, hd2]
    linear_combination r936
  have hd4 : rho 33696 * (2 - (rho 33683 * rho 33683 + rho 33682 * rho 33682 * (-1))) =
      rho 33683 * rho 33683 - rho 33682 * rho 33682 * (-1) := by
    rw [hd1, hd2]
    linear_combination r937
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX2 rho, seg48In0AccY2 rho⟩ ⟨rho 33682, rho 33683⟩
    ⟨rho 33688, rho 33689⟩ ⟨seg48In0AccX3 rho, seg48In0AccY3 rho⟩ ⟨rho 33695, rho 33696⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow938 rho ∧ Seg48.relationRow939 rho ∧ Seg48.relationRow940 rho ∧ Seg48.relationRow941 rho ∧ Seg48.relationRow942 rho ∧ Seg48.relationRow943 rho ∧ Seg48.relationRow944 rho ∧ Seg48.relationRow945 rho ∧ Seg48.relationRow946 rho ∧ Seg48.relationRow947 rho ∧ Seg48.relationRow948 rho ∧ Seg48.relationRow949 rho ∧ Seg48.relationRow950 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950⟩

theorem seg48In0_rung3 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33539 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX3 rho, seg48In0AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33695, rho 33696⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX3 rho, seg48In0AccY3 rho⟩ ⟨rho 33695, rho 33696⟩
        ⟨seg48In0AccX4 rho, seg48In0AccY4 rho⟩ ⟨rho 33708, rho 33709⟩ := by
  obtain ⟨r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950⟩ := seg48In0_rows3 rho h
  unfold Seg48.relationRow938 at r938

  unfold Seg48.relationRow939 at r939

  unfold Seg48.relationRow940 at r940

  unfold Seg48.relationRow941 at r941

  unfold Seg48.relationRow942 at r942

  unfold Seg48.relationRow943 at r943

  unfold Seg48.relationRow944 at r944

  unfold Seg48.relationRow945 at r945

  unfold Seg48.relationRow946 at r946

  unfold Seg48.relationRow947 at r947

  unfold Seg48.relationRow948 at r948

  unfold Seg48.relationRow949 at r949

  unfold Seg48.relationRow950 at r950

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX4 rho = seg48In0AccX3 rho + rho 33703 := by
    unfold seg48In0AccX4 seg48In0AccX3
    ring

  have hnexty : seg48In0AccY4 rho = seg48In0AccY3 rho + rho 33704 := by
    unfold seg48In0AccY4 seg48In0AccY3
    ring

  have ha0 : (rho 33695 + rho 33696) * (seg48In0AccX3 rho + seg48In0AccY3 rho) = rho 33697 := by
    unfold seg48In0AccX3 seg48In0AccY3
    linear_combination r938
  have ha1 : rho 33696 * seg48In0AccX3 rho = rho 33698 := by
    unfold seg48In0AccX3
    linear_combination r939
  have ha2 : rho 33695 * seg48In0AccY3 rho = rho 33699 := by
    unfold seg48In0AccY3
    linear_combination r940
  have ha3 : 3021 * rho 33698 * rho 33699 = rho 33700 := by
    linear_combination r941
  have ha4 : rho 33701 * (1 + rho 33700) = rho 33698 + rho 33699 := by
    linear_combination r942
  have ha5 : rho 33702 * (1 - rho 33700) = rho 33697 - rho 33698 - rho 33699 := by
    linear_combination r943
  have haddx :
      rho 33701 * (1 + 3021 * (rho 33696 * seg48In0AccX3 rho) * (rho 33695 * seg48In0AccY3 rho)) =
        rho 33696 * seg48In0AccX3 rho + rho 33695 * seg48In0AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33702 * (1 - 3021 * (rho 33696 * seg48In0AccX3 rho) * (rho 33695 * seg48In0AccY3 rho)) =
        (-1) * (rho 33696 * seg48In0AccX3 rho) - rho 33695 * seg48In0AccY3 rho +
          (seg48In0AccY3 rho - seg48In0AccX3 rho * (-1)) * (rho 33695 + rho 33696) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33702 * (1 - rho 33700) = rho 33697 - rho 33698 - rho 33699 := ha5
      _ = (-1) * rho 33698 - rho 33699 + (seg48In0AccY3 rho - seg48In0AccX3 rho * (-1)) *
          (rho 33695 + rho 33696) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX4 rho = seg48In0AccX3 rho - Bool.toZMod bit * (seg48In0AccX3 rho - rho 33701) := by
    have hd : rho 33703 = Bool.toZMod bit * (rho 33701 - seg48In0AccX3 rho) := by
      rw [← hbit]
      unfold seg48In0AccX3
      linear_combination -r944
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY4 rho = seg48In0AccY3 rho - Bool.toZMod bit * (seg48In0AccY3 rho - rho 33702) := by
    have hd : rho 33704 = Bool.toZMod bit * (rho 33702 - seg48In0AccY3 rho) := by
      rw [← hbit]
      unfold seg48In0AccY3
      linear_combination -r945
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33695 * rho 33696 = rho 33705 := by linear_combination r946
  have hd1 : rho 33695 * rho 33695 = rho 33706 := by linear_combination r947
  have hd2 : rho 33696 * rho 33696 = rho 33707 := by linear_combination r948
  have hd3 : rho 33708 * (rho 33696 * rho 33696 + rho 33695 * rho 33695 * (-1)) =
      2 * (rho 33695 * rho 33696) := by
    rw [hd0, hd1, hd2]
    linear_combination r949
  have hd4 : rho 33709 * (2 - (rho 33696 * rho 33696 + rho 33695 * rho 33695 * (-1))) =
      rho 33696 * rho 33696 - rho 33695 * rho 33695 * (-1) := by
    rw [hd1, hd2]
    linear_combination r950
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX3 rho, seg48In0AccY3 rho⟩ ⟨rho 33695, rho 33696⟩
    ⟨rho 33701, rho 33702⟩ ⟨seg48In0AccX4 rho, seg48In0AccY4 rho⟩ ⟨rho 33708, rho 33709⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow951 rho ∧ Seg48.relationRow952 rho ∧ Seg48.relationRow953 rho ∧ Seg48.relationRow954 rho ∧ Seg48.relationRow955 rho ∧ Seg48.relationRow956 rho ∧ Seg48.relationRow957 rho ∧ Seg48.relationRow958 rho ∧ Seg48.relationRow959 rho ∧ Seg48.relationRow960 rho ∧ Seg48.relationRow961 rho ∧ Seg48.relationRow962 rho ∧ Seg48.relationRow963 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, p11, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r951, r952, r953, r954, r955, r956, r957, r958, r959⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨r960, r961, r962, r963, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r951, r952, r953, r954, r955, r956, r957, r958, r959, r960, r961, r962, r963⟩

theorem seg48In0_rung4 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33540 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX4 rho, seg48In0AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33708, rho 33709⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX4 rho, seg48In0AccY4 rho⟩ ⟨rho 33708, rho 33709⟩
        ⟨seg48In0AccX5 rho, seg48In0AccY5 rho⟩ ⟨rho 33721, rho 33722⟩ := by
  obtain ⟨r951, r952, r953, r954, r955, r956, r957, r958, r959, r960, r961, r962, r963⟩ := seg48In0_rows4 rho h
  unfold Seg48.relationRow951 at r951

  unfold Seg48.relationRow952 at r952

  unfold Seg48.relationRow953 at r953

  unfold Seg48.relationRow954 at r954

  unfold Seg48.relationRow955 at r955

  unfold Seg48.relationRow956 at r956

  unfold Seg48.relationRow957 at r957

  unfold Seg48.relationRow958 at r958

  unfold Seg48.relationRow959 at r959

  unfold Seg48.relationRow960 at r960

  unfold Seg48.relationRow961 at r961

  unfold Seg48.relationRow962 at r962

  unfold Seg48.relationRow963 at r963

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX5 rho = seg48In0AccX4 rho + rho 33716 := by
    unfold seg48In0AccX5 seg48In0AccX4
    ring

  have hnexty : seg48In0AccY5 rho = seg48In0AccY4 rho + rho 33717 := by
    unfold seg48In0AccY5 seg48In0AccY4
    ring

  have ha0 : (rho 33708 + rho 33709) * (seg48In0AccX4 rho + seg48In0AccY4 rho) = rho 33710 := by
    unfold seg48In0AccX4 seg48In0AccY4
    linear_combination r951
  have ha1 : rho 33709 * seg48In0AccX4 rho = rho 33711 := by
    unfold seg48In0AccX4
    linear_combination r952
  have ha2 : rho 33708 * seg48In0AccY4 rho = rho 33712 := by
    unfold seg48In0AccY4
    linear_combination r953
  have ha3 : 3021 * rho 33711 * rho 33712 = rho 33713 := by
    linear_combination r954
  have ha4 : rho 33714 * (1 + rho 33713) = rho 33711 + rho 33712 := by
    linear_combination r955
  have ha5 : rho 33715 * (1 - rho 33713) = rho 33710 - rho 33711 - rho 33712 := by
    linear_combination r956
  have haddx :
      rho 33714 * (1 + 3021 * (rho 33709 * seg48In0AccX4 rho) * (rho 33708 * seg48In0AccY4 rho)) =
        rho 33709 * seg48In0AccX4 rho + rho 33708 * seg48In0AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33715 * (1 - 3021 * (rho 33709 * seg48In0AccX4 rho) * (rho 33708 * seg48In0AccY4 rho)) =
        (-1) * (rho 33709 * seg48In0AccX4 rho) - rho 33708 * seg48In0AccY4 rho +
          (seg48In0AccY4 rho - seg48In0AccX4 rho * (-1)) * (rho 33708 + rho 33709) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33715 * (1 - rho 33713) = rho 33710 - rho 33711 - rho 33712 := ha5
      _ = (-1) * rho 33711 - rho 33712 + (seg48In0AccY4 rho - seg48In0AccX4 rho * (-1)) *
          (rho 33708 + rho 33709) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX5 rho = seg48In0AccX4 rho - Bool.toZMod bit * (seg48In0AccX4 rho - rho 33714) := by
    have hd : rho 33716 = Bool.toZMod bit * (rho 33714 - seg48In0AccX4 rho) := by
      rw [← hbit]
      unfold seg48In0AccX4
      linear_combination -r957
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY5 rho = seg48In0AccY4 rho - Bool.toZMod bit * (seg48In0AccY4 rho - rho 33715) := by
    have hd : rho 33717 = Bool.toZMod bit * (rho 33715 - seg48In0AccY4 rho) := by
      rw [← hbit]
      unfold seg48In0AccY4
      linear_combination -r958
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33708 * rho 33709 = rho 33718 := by linear_combination r959
  have hd1 : rho 33708 * rho 33708 = rho 33719 := by linear_combination r960
  have hd2 : rho 33709 * rho 33709 = rho 33720 := by linear_combination r961
  have hd3 : rho 33721 * (rho 33709 * rho 33709 + rho 33708 * rho 33708 * (-1)) =
      2 * (rho 33708 * rho 33709) := by
    rw [hd0, hd1, hd2]
    linear_combination r962
  have hd4 : rho 33722 * (2 - (rho 33709 * rho 33709 + rho 33708 * rho 33708 * (-1))) =
      rho 33709 * rho 33709 - rho 33708 * rho 33708 * (-1) := by
    rw [hd1, hd2]
    linear_combination r963
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX4 rho, seg48In0AccY4 rho⟩ ⟨rho 33708, rho 33709⟩
    ⟨rho 33714, rho 33715⟩ ⟨seg48In0AccX5 rho, seg48In0AccY5 rho⟩ ⟨rho 33721, rho 33722⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow964 rho ∧ Seg48.relationRow965 rho ∧ Seg48.relationRow966 rho ∧ Seg48.relationRow967 rho ∧ Seg48.relationRow968 rho ∧ Seg48.relationRow969 rho ∧ Seg48.relationRow970 rho ∧ Seg48.relationRow971 rho ∧ Seg48.relationRow972 rho ∧ Seg48.relationRow973 rho ∧ Seg48.relationRow974 rho ∧ Seg48.relationRow975 rho ∧ Seg48.relationRow976 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976⟩

theorem seg48In0_rung5 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33541 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX5 rho, seg48In0AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33721, rho 33722⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX5 rho, seg48In0AccY5 rho⟩ ⟨rho 33721, rho 33722⟩
        ⟨seg48In0AccX6 rho, seg48In0AccY6 rho⟩ ⟨rho 33734, rho 33735⟩ := by
  obtain ⟨r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976⟩ := seg48In0_rows5 rho h
  unfold Seg48.relationRow964 at r964

  unfold Seg48.relationRow965 at r965

  unfold Seg48.relationRow966 at r966

  unfold Seg48.relationRow967 at r967

  unfold Seg48.relationRow968 at r968

  unfold Seg48.relationRow969 at r969

  unfold Seg48.relationRow970 at r970

  unfold Seg48.relationRow971 at r971

  unfold Seg48.relationRow972 at r972

  unfold Seg48.relationRow973 at r973

  unfold Seg48.relationRow974 at r974

  unfold Seg48.relationRow975 at r975

  unfold Seg48.relationRow976 at r976

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX6 rho = seg48In0AccX5 rho + rho 33729 := by
    unfold seg48In0AccX6 seg48In0AccX5
    ring

  have hnexty : seg48In0AccY6 rho = seg48In0AccY5 rho + rho 33730 := by
    unfold seg48In0AccY6 seg48In0AccY5
    ring

  have ha0 : (rho 33721 + rho 33722) * (seg48In0AccX5 rho + seg48In0AccY5 rho) = rho 33723 := by
    unfold seg48In0AccX5 seg48In0AccY5
    linear_combination r964
  have ha1 : rho 33722 * seg48In0AccX5 rho = rho 33724 := by
    unfold seg48In0AccX5
    linear_combination r965
  have ha2 : rho 33721 * seg48In0AccY5 rho = rho 33725 := by
    unfold seg48In0AccY5
    linear_combination r966
  have ha3 : 3021 * rho 33724 * rho 33725 = rho 33726 := by
    linear_combination r967
  have ha4 : rho 33727 * (1 + rho 33726) = rho 33724 + rho 33725 := by
    linear_combination r968
  have ha5 : rho 33728 * (1 - rho 33726) = rho 33723 - rho 33724 - rho 33725 := by
    linear_combination r969
  have haddx :
      rho 33727 * (1 + 3021 * (rho 33722 * seg48In0AccX5 rho) * (rho 33721 * seg48In0AccY5 rho)) =
        rho 33722 * seg48In0AccX5 rho + rho 33721 * seg48In0AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33728 * (1 - 3021 * (rho 33722 * seg48In0AccX5 rho) * (rho 33721 * seg48In0AccY5 rho)) =
        (-1) * (rho 33722 * seg48In0AccX5 rho) - rho 33721 * seg48In0AccY5 rho +
          (seg48In0AccY5 rho - seg48In0AccX5 rho * (-1)) * (rho 33721 + rho 33722) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33728 * (1 - rho 33726) = rho 33723 - rho 33724 - rho 33725 := ha5
      _ = (-1) * rho 33724 - rho 33725 + (seg48In0AccY5 rho - seg48In0AccX5 rho * (-1)) *
          (rho 33721 + rho 33722) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX6 rho = seg48In0AccX5 rho - Bool.toZMod bit * (seg48In0AccX5 rho - rho 33727) := by
    have hd : rho 33729 = Bool.toZMod bit * (rho 33727 - seg48In0AccX5 rho) := by
      rw [← hbit]
      unfold seg48In0AccX5
      linear_combination -r970
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY6 rho = seg48In0AccY5 rho - Bool.toZMod bit * (seg48In0AccY5 rho - rho 33728) := by
    have hd : rho 33730 = Bool.toZMod bit * (rho 33728 - seg48In0AccY5 rho) := by
      rw [← hbit]
      unfold seg48In0AccY5
      linear_combination -r971
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33721 * rho 33722 = rho 33731 := by linear_combination r972
  have hd1 : rho 33721 * rho 33721 = rho 33732 := by linear_combination r973
  have hd2 : rho 33722 * rho 33722 = rho 33733 := by linear_combination r974
  have hd3 : rho 33734 * (rho 33722 * rho 33722 + rho 33721 * rho 33721 * (-1)) =
      2 * (rho 33721 * rho 33722) := by
    rw [hd0, hd1, hd2]
    linear_combination r975
  have hd4 : rho 33735 * (2 - (rho 33722 * rho 33722 + rho 33721 * rho 33721 * (-1))) =
      rho 33722 * rho 33722 - rho 33721 * rho 33721 * (-1) := by
    rw [hd1, hd2]
    linear_combination r976
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX5 rho, seg48In0AccY5 rho⟩ ⟨rho 33721, rho 33722⟩
    ⟨rho 33727, rho 33728⟩ ⟨seg48In0AccX6 rho, seg48In0AccY6 rho⟩ ⟨rho 33734, rho 33735⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow977 rho ∧ Seg48.relationRow978 rho ∧ Seg48.relationRow979 rho ∧ Seg48.relationRow980 rho ∧ Seg48.relationRow981 rho ∧ Seg48.relationRow982 rho ∧ Seg48.relationRow983 rho ∧ Seg48.relationRow984 rho ∧ Seg48.relationRow985 rho ∧ Seg48.relationRow986 rho ∧ Seg48.relationRow987 rho ∧ Seg48.relationRow988 rho ∧ Seg48.relationRow989 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989⟩

theorem seg48In0_rung6 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33542 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX6 rho, seg48In0AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33734, rho 33735⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX6 rho, seg48In0AccY6 rho⟩ ⟨rho 33734, rho 33735⟩
        ⟨seg48In0AccX7 rho, seg48In0AccY7 rho⟩ ⟨rho 33747, rho 33748⟩ := by
  obtain ⟨r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989⟩ := seg48In0_rows6 rho h
  unfold Seg48.relationRow977 at r977

  unfold Seg48.relationRow978 at r978

  unfold Seg48.relationRow979 at r979

  unfold Seg48.relationRow980 at r980

  unfold Seg48.relationRow981 at r981

  unfold Seg48.relationRow982 at r982

  unfold Seg48.relationRow983 at r983

  unfold Seg48.relationRow984 at r984

  unfold Seg48.relationRow985 at r985

  unfold Seg48.relationRow986 at r986

  unfold Seg48.relationRow987 at r987

  unfold Seg48.relationRow988 at r988

  unfold Seg48.relationRow989 at r989

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX7 rho = seg48In0AccX6 rho + rho 33742 := by
    unfold seg48In0AccX7 seg48In0AccX6
    ring

  have hnexty : seg48In0AccY7 rho = seg48In0AccY6 rho + rho 33743 := by
    unfold seg48In0AccY7 seg48In0AccY6
    ring

  have ha0 : (rho 33734 + rho 33735) * (seg48In0AccX6 rho + seg48In0AccY6 rho) = rho 33736 := by
    unfold seg48In0AccX6 seg48In0AccY6
    linear_combination r977
  have ha1 : rho 33735 * seg48In0AccX6 rho = rho 33737 := by
    unfold seg48In0AccX6
    linear_combination r978
  have ha2 : rho 33734 * seg48In0AccY6 rho = rho 33738 := by
    unfold seg48In0AccY6
    linear_combination r979
  have ha3 : 3021 * rho 33737 * rho 33738 = rho 33739 := by
    linear_combination r980
  have ha4 : rho 33740 * (1 + rho 33739) = rho 33737 + rho 33738 := by
    linear_combination r981
  have ha5 : rho 33741 * (1 - rho 33739) = rho 33736 - rho 33737 - rho 33738 := by
    linear_combination r982
  have haddx :
      rho 33740 * (1 + 3021 * (rho 33735 * seg48In0AccX6 rho) * (rho 33734 * seg48In0AccY6 rho)) =
        rho 33735 * seg48In0AccX6 rho + rho 33734 * seg48In0AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33741 * (1 - 3021 * (rho 33735 * seg48In0AccX6 rho) * (rho 33734 * seg48In0AccY6 rho)) =
        (-1) * (rho 33735 * seg48In0AccX6 rho) - rho 33734 * seg48In0AccY6 rho +
          (seg48In0AccY6 rho - seg48In0AccX6 rho * (-1)) * (rho 33734 + rho 33735) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33741 * (1 - rho 33739) = rho 33736 - rho 33737 - rho 33738 := ha5
      _ = (-1) * rho 33737 - rho 33738 + (seg48In0AccY6 rho - seg48In0AccX6 rho * (-1)) *
          (rho 33734 + rho 33735) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX7 rho = seg48In0AccX6 rho - Bool.toZMod bit * (seg48In0AccX6 rho - rho 33740) := by
    have hd : rho 33742 = Bool.toZMod bit * (rho 33740 - seg48In0AccX6 rho) := by
      rw [← hbit]
      unfold seg48In0AccX6
      linear_combination -r983
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY7 rho = seg48In0AccY6 rho - Bool.toZMod bit * (seg48In0AccY6 rho - rho 33741) := by
    have hd : rho 33743 = Bool.toZMod bit * (rho 33741 - seg48In0AccY6 rho) := by
      rw [← hbit]
      unfold seg48In0AccY6
      linear_combination -r984
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33734 * rho 33735 = rho 33744 := by linear_combination r985
  have hd1 : rho 33734 * rho 33734 = rho 33745 := by linear_combination r986
  have hd2 : rho 33735 * rho 33735 = rho 33746 := by linear_combination r987
  have hd3 : rho 33747 * (rho 33735 * rho 33735 + rho 33734 * rho 33734 * (-1)) =
      2 * (rho 33734 * rho 33735) := by
    rw [hd0, hd1, hd2]
    linear_combination r988
  have hd4 : rho 33748 * (2 - (rho 33735 * rho 33735 + rho 33734 * rho 33734 * (-1))) =
      rho 33735 * rho 33735 - rho 33734 * rho 33734 * (-1) := by
    rw [hd1, hd2]
    linear_combination r989
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX6 rho, seg48In0AccY6 rho⟩ ⟨rho 33734, rho 33735⟩
    ⟨rho 33740, rho 33741⟩ ⟨seg48In0AccX7 rho, seg48In0AccY7 rho⟩ ⟨rho 33747, rho 33748⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow990 rho ∧ Seg48.relationRow991 rho ∧ Seg48.relationRow992 rho ∧ Seg48.relationRow993 rho ∧ Seg48.relationRow994 rho ∧ Seg48.relationRow995 rho ∧ Seg48.relationRow996 rho ∧ Seg48.relationRow997 rho ∧ Seg48.relationRow998 rho ∧ Seg48.relationRow999 rho ∧ Seg48.relationRow1000 rho ∧ Seg48.relationRow1001 rho ∧ Seg48.relationRow1002 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002⟩

theorem seg48In0_rung7 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33543 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX7 rho, seg48In0AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33747, rho 33748⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX7 rho, seg48In0AccY7 rho⟩ ⟨rho 33747, rho 33748⟩
        ⟨seg48In0AccX8 rho, seg48In0AccY8 rho⟩ ⟨rho 33760, rho 33761⟩ := by
  obtain ⟨r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002⟩ := seg48In0_rows7 rho h
  unfold Seg48.relationRow990 at r990

  unfold Seg48.relationRow991 at r991

  unfold Seg48.relationRow992 at r992

  unfold Seg48.relationRow993 at r993

  unfold Seg48.relationRow994 at r994

  unfold Seg48.relationRow995 at r995

  unfold Seg48.relationRow996 at r996

  unfold Seg48.relationRow997 at r997

  unfold Seg48.relationRow998 at r998

  unfold Seg48.relationRow999 at r999

  unfold Seg48.relationRow1000 at r1000

  unfold Seg48.relationRow1001 at r1001

  unfold Seg48.relationRow1002 at r1002

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX8 rho = seg48In0AccX7 rho + rho 33755 := by
    unfold seg48In0AccX8 seg48In0AccX7
    ring

  have hnexty : seg48In0AccY8 rho = seg48In0AccY7 rho + rho 33756 := by
    unfold seg48In0AccY8 seg48In0AccY7
    ring

  have ha0 : (rho 33747 + rho 33748) * (seg48In0AccX7 rho + seg48In0AccY7 rho) = rho 33749 := by
    unfold seg48In0AccX7 seg48In0AccY7
    linear_combination r990
  have ha1 : rho 33748 * seg48In0AccX7 rho = rho 33750 := by
    unfold seg48In0AccX7
    linear_combination r991
  have ha2 : rho 33747 * seg48In0AccY7 rho = rho 33751 := by
    unfold seg48In0AccY7
    linear_combination r992
  have ha3 : 3021 * rho 33750 * rho 33751 = rho 33752 := by
    linear_combination r993
  have ha4 : rho 33753 * (1 + rho 33752) = rho 33750 + rho 33751 := by
    linear_combination r994
  have ha5 : rho 33754 * (1 - rho 33752) = rho 33749 - rho 33750 - rho 33751 := by
    linear_combination r995
  have haddx :
      rho 33753 * (1 + 3021 * (rho 33748 * seg48In0AccX7 rho) * (rho 33747 * seg48In0AccY7 rho)) =
        rho 33748 * seg48In0AccX7 rho + rho 33747 * seg48In0AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33754 * (1 - 3021 * (rho 33748 * seg48In0AccX7 rho) * (rho 33747 * seg48In0AccY7 rho)) =
        (-1) * (rho 33748 * seg48In0AccX7 rho) - rho 33747 * seg48In0AccY7 rho +
          (seg48In0AccY7 rho - seg48In0AccX7 rho * (-1)) * (rho 33747 + rho 33748) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33754 * (1 - rho 33752) = rho 33749 - rho 33750 - rho 33751 := ha5
      _ = (-1) * rho 33750 - rho 33751 + (seg48In0AccY7 rho - seg48In0AccX7 rho * (-1)) *
          (rho 33747 + rho 33748) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX8 rho = seg48In0AccX7 rho - Bool.toZMod bit * (seg48In0AccX7 rho - rho 33753) := by
    have hd : rho 33755 = Bool.toZMod bit * (rho 33753 - seg48In0AccX7 rho) := by
      rw [← hbit]
      unfold seg48In0AccX7
      linear_combination -r996
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY8 rho = seg48In0AccY7 rho - Bool.toZMod bit * (seg48In0AccY7 rho - rho 33754) := by
    have hd : rho 33756 = Bool.toZMod bit * (rho 33754 - seg48In0AccY7 rho) := by
      rw [← hbit]
      unfold seg48In0AccY7
      linear_combination -r997
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33747 * rho 33748 = rho 33757 := by linear_combination r998
  have hd1 : rho 33747 * rho 33747 = rho 33758 := by linear_combination r999
  have hd2 : rho 33748 * rho 33748 = rho 33759 := by linear_combination r1000
  have hd3 : rho 33760 * (rho 33748 * rho 33748 + rho 33747 * rho 33747 * (-1)) =
      2 * (rho 33747 * rho 33748) := by
    rw [hd0, hd1, hd2]
    linear_combination r1001
  have hd4 : rho 33761 * (2 - (rho 33748 * rho 33748 + rho 33747 * rho 33747 * (-1))) =
      rho 33748 * rho 33748 - rho 33747 * rho 33747 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1002
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX7 rho, seg48In0AccY7 rho⟩ ⟨rho 33747, rho 33748⟩
    ⟨rho 33753, rho 33754⟩ ⟨seg48In0AccX8 rho, seg48In0AccY8 rho⟩ ⟨rho 33760, rho 33761⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1003 rho ∧ Seg48.relationRow1004 rho ∧ Seg48.relationRow1005 rho ∧ Seg48.relationRow1006 rho ∧ Seg48.relationRow1007 rho ∧ Seg48.relationRow1008 rho ∧ Seg48.relationRow1009 rho ∧ Seg48.relationRow1010 rho ∧ Seg48.relationRow1011 rho ∧ Seg48.relationRow1012 rho ∧ Seg48.relationRow1013 rho ∧ Seg48.relationRow1014 rho ∧ Seg48.relationRow1015 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015⟩

theorem seg48In0_rung8 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33544 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX8 rho, seg48In0AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33760, rho 33761⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX8 rho, seg48In0AccY8 rho⟩ ⟨rho 33760, rho 33761⟩
        ⟨seg48In0AccX9 rho, seg48In0AccY9 rho⟩ ⟨rho 33773, rho 33774⟩ := by
  obtain ⟨r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015⟩ := seg48In0_rows8 rho h
  unfold Seg48.relationRow1003 at r1003

  unfold Seg48.relationRow1004 at r1004

  unfold Seg48.relationRow1005 at r1005

  unfold Seg48.relationRow1006 at r1006

  unfold Seg48.relationRow1007 at r1007

  unfold Seg48.relationRow1008 at r1008

  unfold Seg48.relationRow1009 at r1009

  unfold Seg48.relationRow1010 at r1010

  unfold Seg48.relationRow1011 at r1011

  unfold Seg48.relationRow1012 at r1012

  unfold Seg48.relationRow1013 at r1013

  unfold Seg48.relationRow1014 at r1014

  unfold Seg48.relationRow1015 at r1015

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX9 rho = seg48In0AccX8 rho + rho 33768 := by
    unfold seg48In0AccX9 seg48In0AccX8
    ring

  have hnexty : seg48In0AccY9 rho = seg48In0AccY8 rho + rho 33769 := by
    unfold seg48In0AccY9 seg48In0AccY8
    ring

  have ha0 : (rho 33760 + rho 33761) * (seg48In0AccX8 rho + seg48In0AccY8 rho) = rho 33762 := by
    unfold seg48In0AccX8 seg48In0AccY8
    linear_combination r1003
  have ha1 : rho 33761 * seg48In0AccX8 rho = rho 33763 := by
    unfold seg48In0AccX8
    linear_combination r1004
  have ha2 : rho 33760 * seg48In0AccY8 rho = rho 33764 := by
    unfold seg48In0AccY8
    linear_combination r1005
  have ha3 : 3021 * rho 33763 * rho 33764 = rho 33765 := by
    linear_combination r1006
  have ha4 : rho 33766 * (1 + rho 33765) = rho 33763 + rho 33764 := by
    linear_combination r1007
  have ha5 : rho 33767 * (1 - rho 33765) = rho 33762 - rho 33763 - rho 33764 := by
    linear_combination r1008
  have haddx :
      rho 33766 * (1 + 3021 * (rho 33761 * seg48In0AccX8 rho) * (rho 33760 * seg48In0AccY8 rho)) =
        rho 33761 * seg48In0AccX8 rho + rho 33760 * seg48In0AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33767 * (1 - 3021 * (rho 33761 * seg48In0AccX8 rho) * (rho 33760 * seg48In0AccY8 rho)) =
        (-1) * (rho 33761 * seg48In0AccX8 rho) - rho 33760 * seg48In0AccY8 rho +
          (seg48In0AccY8 rho - seg48In0AccX8 rho * (-1)) * (rho 33760 + rho 33761) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33767 * (1 - rho 33765) = rho 33762 - rho 33763 - rho 33764 := ha5
      _ = (-1) * rho 33763 - rho 33764 + (seg48In0AccY8 rho - seg48In0AccX8 rho * (-1)) *
          (rho 33760 + rho 33761) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX9 rho = seg48In0AccX8 rho - Bool.toZMod bit * (seg48In0AccX8 rho - rho 33766) := by
    have hd : rho 33768 = Bool.toZMod bit * (rho 33766 - seg48In0AccX8 rho) := by
      rw [← hbit]
      unfold seg48In0AccX8
      linear_combination -r1009
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY9 rho = seg48In0AccY8 rho - Bool.toZMod bit * (seg48In0AccY8 rho - rho 33767) := by
    have hd : rho 33769 = Bool.toZMod bit * (rho 33767 - seg48In0AccY8 rho) := by
      rw [← hbit]
      unfold seg48In0AccY8
      linear_combination -r1010
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33760 * rho 33761 = rho 33770 := by linear_combination r1011
  have hd1 : rho 33760 * rho 33760 = rho 33771 := by linear_combination r1012
  have hd2 : rho 33761 * rho 33761 = rho 33772 := by linear_combination r1013
  have hd3 : rho 33773 * (rho 33761 * rho 33761 + rho 33760 * rho 33760 * (-1)) =
      2 * (rho 33760 * rho 33761) := by
    rw [hd0, hd1, hd2]
    linear_combination r1014
  have hd4 : rho 33774 * (2 - (rho 33761 * rho 33761 + rho 33760 * rho 33760 * (-1))) =
      rho 33761 * rho 33761 - rho 33760 * rho 33760 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1015
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX8 rho, seg48In0AccY8 rho⟩ ⟨rho 33760, rho 33761⟩
    ⟨rho 33766, rho 33767⟩ ⟨seg48In0AccX9 rho, seg48In0AccY9 rho⟩ ⟨rho 33773, rho 33774⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1016 rho ∧ Seg48.relationRow1017 rho ∧ Seg48.relationRow1018 rho ∧ Seg48.relationRow1019 rho ∧ Seg48.relationRow1020 rho ∧ Seg48.relationRow1021 rho ∧ Seg48.relationRow1022 rho ∧ Seg48.relationRow1023 rho ∧ Seg48.relationRow1024 rho ∧ Seg48.relationRow1025 rho ∧ Seg48.relationRow1026 rho ∧ Seg48.relationRow1027 rho ∧ Seg48.relationRow1028 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, p12, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028⟩

theorem seg48In0_rung9 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33545 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX9 rho, seg48In0AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33773, rho 33774⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX9 rho, seg48In0AccY9 rho⟩ ⟨rho 33773, rho 33774⟩
        ⟨seg48In0AccX10 rho, seg48In0AccY10 rho⟩ ⟨rho 33786, rho 33787⟩ := by
  obtain ⟨r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028⟩ := seg48In0_rows9 rho h
  unfold Seg48.relationRow1016 at r1016

  unfold Seg48.relationRow1017 at r1017

  unfold Seg48.relationRow1018 at r1018

  unfold Seg48.relationRow1019 at r1019

  unfold Seg48.relationRow1020 at r1020

  unfold Seg48.relationRow1021 at r1021

  unfold Seg48.relationRow1022 at r1022

  unfold Seg48.relationRow1023 at r1023

  unfold Seg48.relationRow1024 at r1024

  unfold Seg48.relationRow1025 at r1025

  unfold Seg48.relationRow1026 at r1026

  unfold Seg48.relationRow1027 at r1027

  unfold Seg48.relationRow1028 at r1028

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX10 rho = seg48In0AccX9 rho + rho 33781 := by
    unfold seg48In0AccX10 seg48In0AccX9
    ring

  have hnexty : seg48In0AccY10 rho = seg48In0AccY9 rho + rho 33782 := by
    unfold seg48In0AccY10 seg48In0AccY9
    ring

  have ha0 : (rho 33773 + rho 33774) * (seg48In0AccX9 rho + seg48In0AccY9 rho) = rho 33775 := by
    unfold seg48In0AccX9 seg48In0AccY9
    linear_combination r1016
  have ha1 : rho 33774 * seg48In0AccX9 rho = rho 33776 := by
    unfold seg48In0AccX9
    linear_combination r1017
  have ha2 : rho 33773 * seg48In0AccY9 rho = rho 33777 := by
    unfold seg48In0AccY9
    linear_combination r1018
  have ha3 : 3021 * rho 33776 * rho 33777 = rho 33778 := by
    linear_combination r1019
  have ha4 : rho 33779 * (1 + rho 33778) = rho 33776 + rho 33777 := by
    linear_combination r1020
  have ha5 : rho 33780 * (1 - rho 33778) = rho 33775 - rho 33776 - rho 33777 := by
    linear_combination r1021
  have haddx :
      rho 33779 * (1 + 3021 * (rho 33774 * seg48In0AccX9 rho) * (rho 33773 * seg48In0AccY9 rho)) =
        rho 33774 * seg48In0AccX9 rho + rho 33773 * seg48In0AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33780 * (1 - 3021 * (rho 33774 * seg48In0AccX9 rho) * (rho 33773 * seg48In0AccY9 rho)) =
        (-1) * (rho 33774 * seg48In0AccX9 rho) - rho 33773 * seg48In0AccY9 rho +
          (seg48In0AccY9 rho - seg48In0AccX9 rho * (-1)) * (rho 33773 + rho 33774) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33780 * (1 - rho 33778) = rho 33775 - rho 33776 - rho 33777 := ha5
      _ = (-1) * rho 33776 - rho 33777 + (seg48In0AccY9 rho - seg48In0AccX9 rho * (-1)) *
          (rho 33773 + rho 33774) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX10 rho = seg48In0AccX9 rho - Bool.toZMod bit * (seg48In0AccX9 rho - rho 33779) := by
    have hd : rho 33781 = Bool.toZMod bit * (rho 33779 - seg48In0AccX9 rho) := by
      rw [← hbit]
      unfold seg48In0AccX9
      linear_combination -r1022
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY10 rho = seg48In0AccY9 rho - Bool.toZMod bit * (seg48In0AccY9 rho - rho 33780) := by
    have hd : rho 33782 = Bool.toZMod bit * (rho 33780 - seg48In0AccY9 rho) := by
      rw [← hbit]
      unfold seg48In0AccY9
      linear_combination -r1023
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33773 * rho 33774 = rho 33783 := by linear_combination r1024
  have hd1 : rho 33773 * rho 33773 = rho 33784 := by linear_combination r1025
  have hd2 : rho 33774 * rho 33774 = rho 33785 := by linear_combination r1026
  have hd3 : rho 33786 * (rho 33774 * rho 33774 + rho 33773 * rho 33773 * (-1)) =
      2 * (rho 33773 * rho 33774) := by
    rw [hd0, hd1, hd2]
    linear_combination r1027
  have hd4 : rho 33787 * (2 - (rho 33774 * rho 33774 + rho 33773 * rho 33773 * (-1))) =
      rho 33774 * rho 33774 - rho 33773 * rho 33773 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1028
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX9 rho, seg48In0AccY9 rho⟩ ⟨rho 33773, rho 33774⟩
    ⟨rho 33779, rho 33780⟩ ⟨seg48In0AccX10 rho, seg48In0AccY10 rho⟩ ⟨rho 33786, rho 33787⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1029 rho ∧ Seg48.relationRow1030 rho ∧ Seg48.relationRow1031 rho ∧ Seg48.relationRow1032 rho ∧ Seg48.relationRow1033 rho ∧ Seg48.relationRow1034 rho ∧ Seg48.relationRow1035 rho ∧ Seg48.relationRow1036 rho ∧ Seg48.relationRow1037 rho ∧ Seg48.relationRow1038 rho ∧ Seg48.relationRow1039 rho ∧ Seg48.relationRow1040 rho ∧ Seg48.relationRow1041 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, p12, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨r1040, r1041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039, r1040, r1041⟩

theorem seg48In0_rung10 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33546 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX10 rho, seg48In0AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33786, rho 33787⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX10 rho, seg48In0AccY10 rho⟩ ⟨rho 33786, rho 33787⟩
        ⟨seg48In0AccX11 rho, seg48In0AccY11 rho⟩ ⟨rho 33799, rho 33800⟩ := by
  obtain ⟨r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039, r1040, r1041⟩ := seg48In0_rows10 rho h
  unfold Seg48.relationRow1029 at r1029

  unfold Seg48.relationRow1030 at r1030

  unfold Seg48.relationRow1031 at r1031

  unfold Seg48.relationRow1032 at r1032

  unfold Seg48.relationRow1033 at r1033

  unfold Seg48.relationRow1034 at r1034

  unfold Seg48.relationRow1035 at r1035

  unfold Seg48.relationRow1036 at r1036

  unfold Seg48.relationRow1037 at r1037

  unfold Seg48.relationRow1038 at r1038

  unfold Seg48.relationRow1039 at r1039

  unfold Seg48.relationRow1040 at r1040

  unfold Seg48.relationRow1041 at r1041

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX11 rho = seg48In0AccX10 rho + rho 33794 := by
    unfold seg48In0AccX11 seg48In0AccX10
    ring

  have hnexty : seg48In0AccY11 rho = seg48In0AccY10 rho + rho 33795 := by
    unfold seg48In0AccY11 seg48In0AccY10
    ring

  have ha0 : (rho 33786 + rho 33787) * (seg48In0AccX10 rho + seg48In0AccY10 rho) = rho 33788 := by
    unfold seg48In0AccX10 seg48In0AccY10
    linear_combination r1029
  have ha1 : rho 33787 * seg48In0AccX10 rho = rho 33789 := by
    unfold seg48In0AccX10
    linear_combination r1030
  have ha2 : rho 33786 * seg48In0AccY10 rho = rho 33790 := by
    unfold seg48In0AccY10
    linear_combination r1031
  have ha3 : 3021 * rho 33789 * rho 33790 = rho 33791 := by
    linear_combination r1032
  have ha4 : rho 33792 * (1 + rho 33791) = rho 33789 + rho 33790 := by
    linear_combination r1033
  have ha5 : rho 33793 * (1 - rho 33791) = rho 33788 - rho 33789 - rho 33790 := by
    linear_combination r1034
  have haddx :
      rho 33792 * (1 + 3021 * (rho 33787 * seg48In0AccX10 rho) * (rho 33786 * seg48In0AccY10 rho)) =
        rho 33787 * seg48In0AccX10 rho + rho 33786 * seg48In0AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33793 * (1 - 3021 * (rho 33787 * seg48In0AccX10 rho) * (rho 33786 * seg48In0AccY10 rho)) =
        (-1) * (rho 33787 * seg48In0AccX10 rho) - rho 33786 * seg48In0AccY10 rho +
          (seg48In0AccY10 rho - seg48In0AccX10 rho * (-1)) * (rho 33786 + rho 33787) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33793 * (1 - rho 33791) = rho 33788 - rho 33789 - rho 33790 := ha5
      _ = (-1) * rho 33789 - rho 33790 + (seg48In0AccY10 rho - seg48In0AccX10 rho * (-1)) *
          (rho 33786 + rho 33787) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX11 rho = seg48In0AccX10 rho - Bool.toZMod bit * (seg48In0AccX10 rho - rho 33792) := by
    have hd : rho 33794 = Bool.toZMod bit * (rho 33792 - seg48In0AccX10 rho) := by
      rw [← hbit]
      unfold seg48In0AccX10
      linear_combination -r1035
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY11 rho = seg48In0AccY10 rho - Bool.toZMod bit * (seg48In0AccY10 rho - rho 33793) := by
    have hd : rho 33795 = Bool.toZMod bit * (rho 33793 - seg48In0AccY10 rho) := by
      rw [← hbit]
      unfold seg48In0AccY10
      linear_combination -r1036
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33786 * rho 33787 = rho 33796 := by linear_combination r1037
  have hd1 : rho 33786 * rho 33786 = rho 33797 := by linear_combination r1038
  have hd2 : rho 33787 * rho 33787 = rho 33798 := by linear_combination r1039
  have hd3 : rho 33799 * (rho 33787 * rho 33787 + rho 33786 * rho 33786 * (-1)) =
      2 * (rho 33786 * rho 33787) := by
    rw [hd0, hd1, hd2]
    linear_combination r1040
  have hd4 : rho 33800 * (2 - (rho 33787 * rho 33787 + rho 33786 * rho 33786 * (-1))) =
      rho 33787 * rho 33787 - rho 33786 * rho 33786 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1041
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX10 rho, seg48In0AccY10 rho⟩ ⟨rho 33786, rho 33787⟩
    ⟨rho 33792, rho 33793⟩ ⟨seg48In0AccX11 rho, seg48In0AccY11 rho⟩ ⟨rho 33799, rho 33800⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c0 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg48In0_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg48In0_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg48In0_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg48In0_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg48In0_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg48In0_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg48In0_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg48In0_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg48In0_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg48In0_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
