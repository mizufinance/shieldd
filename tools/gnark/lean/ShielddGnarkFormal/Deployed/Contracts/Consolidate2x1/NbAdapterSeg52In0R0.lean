import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow905 rho ∧ Seg52.relationRow906 rho ∧ Seg52.relationRow907 rho ∧ Seg52.relationRow908 rho ∧ Seg52.relationRow909 rho ∧ Seg52.relationRow910 rho ∧ Seg52.relationRow911 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r905, r906, r907, r908, r909, r910, r911, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r905, r906, r907, r908, r909, r910, r911⟩

theorem seg52In0_rung0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45168 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX0 rho, seg52In0AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX0 rho, seg52In0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
        ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45301, rho 45302⟩ := by
  obtain ⟨r905, r906, r907, r908, r909, r910, r911⟩ := seg52In0_rows0 rho h
  unfold Seg52.relationRow905 at r905

  unfold Seg52.relationRow906 at r906

  unfold Seg52.relationRow907 at r907

  unfold Seg52.relationRow908 at r908

  unfold Seg52.relationRow909 at r909

  unfold Seg52.relationRow910 at r910

  unfold Seg52.relationRow911 at r911

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX1 rho = seg52In0AccX0 rho + rho 45296 := by
    unfold seg52In0AccX1 seg52In0AccX0
    ring

  have hnexty : seg52In0AccY1 rho = seg52In0AccY0 rho + rho 45297 := by
    unfold seg52In0AccY1 seg52In0AccY0
    ring

  have haddx :
      rho 45162 * (1 + 3021 * (rho 45164 * seg52In0AccX0 rho) * (rho 45162 * seg52In0AccY0 rho)) =
        rho 45164 * seg52In0AccX0 rho + rho 45162 * seg52In0AccY0 rho := by
    unfold seg52In0AccX0 seg52In0AccY0
    ring
  have haddy :
      rho 45164 * (1 - 3021 * (rho 45164 * seg52In0AccX0 rho) * (rho 45162 * seg52In0AccY0 rho)) =
        (-1) * (rho 45164 * seg52In0AccX0 rho) - rho 45162 * seg52In0AccY0 rho +
          (seg52In0AccY0 rho - seg52In0AccX0 rho * (-1)) * (rho 45162 + rho 45164) := by
    unfold seg52In0AccX0 seg52In0AccY0
    ring
  have hselx : seg52In0AccX1 rho = seg52In0AccX0 rho - Bool.toZMod bit * (seg52In0AccX0 rho - rho 45162) := by
    have hd : rho 45296 = Bool.toZMod bit * (rho 45162 - seg52In0AccX0 rho) := by
      rw [← hbit]
      unfold seg52In0AccX0
      linear_combination -r905
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY1 rho = seg52In0AccY0 rho - Bool.toZMod bit * (seg52In0AccY0 rho - rho 45164) := by
    have hd : rho 45297 = Bool.toZMod bit * (rho 45164 - seg52In0AccY0 rho) := by
      rw [← hbit]
      unfold seg52In0AccY0
      linear_combination -r906
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45162 * rho 45164 = rho 45298 := by linear_combination r907
  have hd1 : rho 45162 * rho 45162 = rho 45299 := by linear_combination r908
  have hd2 : rho 45164 * rho 45164 = rho 45300 := by linear_combination r909
  have hd3 : rho 45301 * (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1)) =
      2 * (rho 45162 * rho 45164) := by
    rw [hd0, hd1, hd2]
    linear_combination r910
  have hd4 : rho 45302 * (2 - (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1))) =
      rho 45164 * rho 45164 - rho 45162 * rho 45162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r911
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX0 rho, seg52In0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
    ⟨rho 45162, rho 45164⟩ ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45301, rho 45302⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow912 rho ∧ Seg52.relationRow913 rho ∧ Seg52.relationRow914 rho ∧ Seg52.relationRow915 rho ∧ Seg52.relationRow916 rho ∧ Seg52.relationRow917 rho ∧ Seg52.relationRow918 rho ∧ Seg52.relationRow919 rho ∧ Seg52.relationRow920 rho ∧ Seg52.relationRow921 rho ∧ Seg52.relationRow922 rho ∧ Seg52.relationRow923 rho ∧ Seg52.relationRow924 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924⟩

theorem seg52In0_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45169 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45301, rho 45302⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45301, rho 45302⟩
        ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45314, rho 45315⟩ := by
  obtain ⟨r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924⟩ := seg52In0_rows1 rho h
  unfold Seg52.relationRow912 at r912

  unfold Seg52.relationRow913 at r913

  unfold Seg52.relationRow914 at r914

  unfold Seg52.relationRow915 at r915

  unfold Seg52.relationRow916 at r916

  unfold Seg52.relationRow917 at r917

  unfold Seg52.relationRow918 at r918

  unfold Seg52.relationRow919 at r919

  unfold Seg52.relationRow920 at r920

  unfold Seg52.relationRow921 at r921

  unfold Seg52.relationRow922 at r922

  unfold Seg52.relationRow923 at r923

  unfold Seg52.relationRow924 at r924

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX2 rho = seg52In0AccX1 rho + rho 45309 := by
    unfold seg52In0AccX2 seg52In0AccX1
    ring

  have hnexty : seg52In0AccY2 rho = seg52In0AccY1 rho + rho 45310 := by
    unfold seg52In0AccY2 seg52In0AccY1
    ring

  have ha0 : (rho 45301 + rho 45302) * (seg52In0AccX1 rho + seg52In0AccY1 rho) = rho 45303 := by
    unfold seg52In0AccX1 seg52In0AccY1
    linear_combination r912
  have ha1 : rho 45302 * seg52In0AccX1 rho = rho 45304 := by
    unfold seg52In0AccX1
    linear_combination r913
  have ha2 : rho 45301 * seg52In0AccY1 rho = rho 45305 := by
    unfold seg52In0AccY1
    linear_combination r914
  have ha3 : 3021 * rho 45304 * rho 45305 = rho 45306 := by
    linear_combination r915
  have ha4 : rho 45307 * (1 + rho 45306) = rho 45304 + rho 45305 := by
    linear_combination r916
  have ha5 : rho 45308 * (1 - rho 45306) = rho 45303 - rho 45304 - rho 45305 := by
    linear_combination r917
  have haddx :
      rho 45307 * (1 + 3021 * (rho 45302 * seg52In0AccX1 rho) * (rho 45301 * seg52In0AccY1 rho)) =
        rho 45302 * seg52In0AccX1 rho + rho 45301 * seg52In0AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45308 * (1 - 3021 * (rho 45302 * seg52In0AccX1 rho) * (rho 45301 * seg52In0AccY1 rho)) =
        (-1) * (rho 45302 * seg52In0AccX1 rho) - rho 45301 * seg52In0AccY1 rho +
          (seg52In0AccY1 rho - seg52In0AccX1 rho * (-1)) * (rho 45301 + rho 45302) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45308 * (1 - rho 45306) = rho 45303 - rho 45304 - rho 45305 := ha5
      _ = (-1) * rho 45304 - rho 45305 + (seg52In0AccY1 rho - seg52In0AccX1 rho * (-1)) *
          (rho 45301 + rho 45302) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX2 rho = seg52In0AccX1 rho - Bool.toZMod bit * (seg52In0AccX1 rho - rho 45307) := by
    have hd : rho 45309 = Bool.toZMod bit * (rho 45307 - seg52In0AccX1 rho) := by
      rw [← hbit]
      unfold seg52In0AccX1
      linear_combination -r918
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY2 rho = seg52In0AccY1 rho - Bool.toZMod bit * (seg52In0AccY1 rho - rho 45308) := by
    have hd : rho 45310 = Bool.toZMod bit * (rho 45308 - seg52In0AccY1 rho) := by
      rw [← hbit]
      unfold seg52In0AccY1
      linear_combination -r919
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45301 * rho 45302 = rho 45311 := by linear_combination r920
  have hd1 : rho 45301 * rho 45301 = rho 45312 := by linear_combination r921
  have hd2 : rho 45302 * rho 45302 = rho 45313 := by linear_combination r922
  have hd3 : rho 45314 * (rho 45302 * rho 45302 + rho 45301 * rho 45301 * (-1)) =
      2 * (rho 45301 * rho 45302) := by
    rw [hd0, hd1, hd2]
    linear_combination r923
  have hd4 : rho 45315 * (2 - (rho 45302 * rho 45302 + rho 45301 * rho 45301 * (-1))) =
      rho 45302 * rho 45302 - rho 45301 * rho 45301 * (-1) := by
    rw [hd1, hd2]
    linear_combination r924
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX1 rho, seg52In0AccY1 rho⟩ ⟨rho 45301, rho 45302⟩
    ⟨rho 45307, rho 45308⟩ ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45314, rho 45315⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow925 rho ∧ Seg52.relationRow926 rho ∧ Seg52.relationRow927 rho ∧ Seg52.relationRow928 rho ∧ Seg52.relationRow929 rho ∧ Seg52.relationRow930 rho ∧ Seg52.relationRow931 rho ∧ Seg52.relationRow932 rho ∧ Seg52.relationRow933 rho ∧ Seg52.relationRow934 rho ∧ Seg52.relationRow935 rho ∧ Seg52.relationRow936 rho ∧ Seg52.relationRow937 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937⟩

theorem seg52In0_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45170 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45314, rho 45315⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45314, rho 45315⟩
        ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45327, rho 45328⟩ := by
  obtain ⟨r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937⟩ := seg52In0_rows2 rho h
  unfold Seg52.relationRow925 at r925

  unfold Seg52.relationRow926 at r926

  unfold Seg52.relationRow927 at r927

  unfold Seg52.relationRow928 at r928

  unfold Seg52.relationRow929 at r929

  unfold Seg52.relationRow930 at r930

  unfold Seg52.relationRow931 at r931

  unfold Seg52.relationRow932 at r932

  unfold Seg52.relationRow933 at r933

  unfold Seg52.relationRow934 at r934

  unfold Seg52.relationRow935 at r935

  unfold Seg52.relationRow936 at r936

  unfold Seg52.relationRow937 at r937

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX3 rho = seg52In0AccX2 rho + rho 45322 := by
    unfold seg52In0AccX3 seg52In0AccX2
    ring

  have hnexty : seg52In0AccY3 rho = seg52In0AccY2 rho + rho 45323 := by
    unfold seg52In0AccY3 seg52In0AccY2
    ring

  have ha0 : (rho 45314 + rho 45315) * (seg52In0AccX2 rho + seg52In0AccY2 rho) = rho 45316 := by
    unfold seg52In0AccX2 seg52In0AccY2
    linear_combination r925
  have ha1 : rho 45315 * seg52In0AccX2 rho = rho 45317 := by
    unfold seg52In0AccX2
    linear_combination r926
  have ha2 : rho 45314 * seg52In0AccY2 rho = rho 45318 := by
    unfold seg52In0AccY2
    linear_combination r927
  have ha3 : 3021 * rho 45317 * rho 45318 = rho 45319 := by
    linear_combination r928
  have ha4 : rho 45320 * (1 + rho 45319) = rho 45317 + rho 45318 := by
    linear_combination r929
  have ha5 : rho 45321 * (1 - rho 45319) = rho 45316 - rho 45317 - rho 45318 := by
    linear_combination r930
  have haddx :
      rho 45320 * (1 + 3021 * (rho 45315 * seg52In0AccX2 rho) * (rho 45314 * seg52In0AccY2 rho)) =
        rho 45315 * seg52In0AccX2 rho + rho 45314 * seg52In0AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45321 * (1 - 3021 * (rho 45315 * seg52In0AccX2 rho) * (rho 45314 * seg52In0AccY2 rho)) =
        (-1) * (rho 45315 * seg52In0AccX2 rho) - rho 45314 * seg52In0AccY2 rho +
          (seg52In0AccY2 rho - seg52In0AccX2 rho * (-1)) * (rho 45314 + rho 45315) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45321 * (1 - rho 45319) = rho 45316 - rho 45317 - rho 45318 := ha5
      _ = (-1) * rho 45317 - rho 45318 + (seg52In0AccY2 rho - seg52In0AccX2 rho * (-1)) *
          (rho 45314 + rho 45315) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX3 rho = seg52In0AccX2 rho - Bool.toZMod bit * (seg52In0AccX2 rho - rho 45320) := by
    have hd : rho 45322 = Bool.toZMod bit * (rho 45320 - seg52In0AccX2 rho) := by
      rw [← hbit]
      unfold seg52In0AccX2
      linear_combination -r931
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY3 rho = seg52In0AccY2 rho - Bool.toZMod bit * (seg52In0AccY2 rho - rho 45321) := by
    have hd : rho 45323 = Bool.toZMod bit * (rho 45321 - seg52In0AccY2 rho) := by
      rw [← hbit]
      unfold seg52In0AccY2
      linear_combination -r932
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45314 * rho 45315 = rho 45324 := by linear_combination r933
  have hd1 : rho 45314 * rho 45314 = rho 45325 := by linear_combination r934
  have hd2 : rho 45315 * rho 45315 = rho 45326 := by linear_combination r935
  have hd3 : rho 45327 * (rho 45315 * rho 45315 + rho 45314 * rho 45314 * (-1)) =
      2 * (rho 45314 * rho 45315) := by
    rw [hd0, hd1, hd2]
    linear_combination r936
  have hd4 : rho 45328 * (2 - (rho 45315 * rho 45315 + rho 45314 * rho 45314 * (-1))) =
      rho 45315 * rho 45315 - rho 45314 * rho 45314 * (-1) := by
    rw [hd1, hd2]
    linear_combination r937
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX2 rho, seg52In0AccY2 rho⟩ ⟨rho 45314, rho 45315⟩
    ⟨rho 45320, rho 45321⟩ ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45327, rho 45328⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow938 rho ∧ Seg52.relationRow939 rho ∧ Seg52.relationRow940 rho ∧ Seg52.relationRow941 rho ∧ Seg52.relationRow942 rho ∧ Seg52.relationRow943 rho ∧ Seg52.relationRow944 rho ∧ Seg52.relationRow945 rho ∧ Seg52.relationRow946 rho ∧ Seg52.relationRow947 rho ∧ Seg52.relationRow948 rho ∧ Seg52.relationRow949 rho ∧ Seg52.relationRow950 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950⟩

theorem seg52In0_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45171 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45327, rho 45328⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45327, rho 45328⟩
        ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45340, rho 45341⟩ := by
  obtain ⟨r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950⟩ := seg52In0_rows3 rho h
  unfold Seg52.relationRow938 at r938

  unfold Seg52.relationRow939 at r939

  unfold Seg52.relationRow940 at r940

  unfold Seg52.relationRow941 at r941

  unfold Seg52.relationRow942 at r942

  unfold Seg52.relationRow943 at r943

  unfold Seg52.relationRow944 at r944

  unfold Seg52.relationRow945 at r945

  unfold Seg52.relationRow946 at r946

  unfold Seg52.relationRow947 at r947

  unfold Seg52.relationRow948 at r948

  unfold Seg52.relationRow949 at r949

  unfold Seg52.relationRow950 at r950

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX4 rho = seg52In0AccX3 rho + rho 45335 := by
    unfold seg52In0AccX4 seg52In0AccX3
    ring

  have hnexty : seg52In0AccY4 rho = seg52In0AccY3 rho + rho 45336 := by
    unfold seg52In0AccY4 seg52In0AccY3
    ring

  have ha0 : (rho 45327 + rho 45328) * (seg52In0AccX3 rho + seg52In0AccY3 rho) = rho 45329 := by
    unfold seg52In0AccX3 seg52In0AccY3
    linear_combination r938
  have ha1 : rho 45328 * seg52In0AccX3 rho = rho 45330 := by
    unfold seg52In0AccX3
    linear_combination r939
  have ha2 : rho 45327 * seg52In0AccY3 rho = rho 45331 := by
    unfold seg52In0AccY3
    linear_combination r940
  have ha3 : 3021 * rho 45330 * rho 45331 = rho 45332 := by
    linear_combination r941
  have ha4 : rho 45333 * (1 + rho 45332) = rho 45330 + rho 45331 := by
    linear_combination r942
  have ha5 : rho 45334 * (1 - rho 45332) = rho 45329 - rho 45330 - rho 45331 := by
    linear_combination r943
  have haddx :
      rho 45333 * (1 + 3021 * (rho 45328 * seg52In0AccX3 rho) * (rho 45327 * seg52In0AccY3 rho)) =
        rho 45328 * seg52In0AccX3 rho + rho 45327 * seg52In0AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45334 * (1 - 3021 * (rho 45328 * seg52In0AccX3 rho) * (rho 45327 * seg52In0AccY3 rho)) =
        (-1) * (rho 45328 * seg52In0AccX3 rho) - rho 45327 * seg52In0AccY3 rho +
          (seg52In0AccY3 rho - seg52In0AccX3 rho * (-1)) * (rho 45327 + rho 45328) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45334 * (1 - rho 45332) = rho 45329 - rho 45330 - rho 45331 := ha5
      _ = (-1) * rho 45330 - rho 45331 + (seg52In0AccY3 rho - seg52In0AccX3 rho * (-1)) *
          (rho 45327 + rho 45328) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX4 rho = seg52In0AccX3 rho - Bool.toZMod bit * (seg52In0AccX3 rho - rho 45333) := by
    have hd : rho 45335 = Bool.toZMod bit * (rho 45333 - seg52In0AccX3 rho) := by
      rw [← hbit]
      unfold seg52In0AccX3
      linear_combination -r944
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY4 rho = seg52In0AccY3 rho - Bool.toZMod bit * (seg52In0AccY3 rho - rho 45334) := by
    have hd : rho 45336 = Bool.toZMod bit * (rho 45334 - seg52In0AccY3 rho) := by
      rw [← hbit]
      unfold seg52In0AccY3
      linear_combination -r945
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45327 * rho 45328 = rho 45337 := by linear_combination r946
  have hd1 : rho 45327 * rho 45327 = rho 45338 := by linear_combination r947
  have hd2 : rho 45328 * rho 45328 = rho 45339 := by linear_combination r948
  have hd3 : rho 45340 * (rho 45328 * rho 45328 + rho 45327 * rho 45327 * (-1)) =
      2 * (rho 45327 * rho 45328) := by
    rw [hd0, hd1, hd2]
    linear_combination r949
  have hd4 : rho 45341 * (2 - (rho 45328 * rho 45328 + rho 45327 * rho 45327 * (-1))) =
      rho 45328 * rho 45328 - rho 45327 * rho 45327 * (-1) := by
    rw [hd1, hd2]
    linear_combination r950
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX3 rho, seg52In0AccY3 rho⟩ ⟨rho 45327, rho 45328⟩
    ⟨rho 45333, rho 45334⟩ ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45340, rho 45341⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow951 rho ∧ Seg52.relationRow952 rho ∧ Seg52.relationRow953 rho ∧ Seg52.relationRow954 rho ∧ Seg52.relationRow955 rho ∧ Seg52.relationRow956 rho ∧ Seg52.relationRow957 rho ∧ Seg52.relationRow958 rho ∧ Seg52.relationRow959 rho ∧ Seg52.relationRow960 rho ∧ Seg52.relationRow961 rho ∧ Seg52.relationRow962 rho ∧ Seg52.relationRow963 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart11 at p11

  rcases p11 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r951, r952, r953, r954, r955, r956, r957, r958, r959⟩

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨r960, r961, r962, r963, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r951, r952, r953, r954, r955, r956, r957, r958, r959, r960, r961, r962, r963⟩

theorem seg52In0_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45172 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45340, rho 45341⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45340, rho 45341⟩
        ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45353, rho 45354⟩ := by
  obtain ⟨r951, r952, r953, r954, r955, r956, r957, r958, r959, r960, r961, r962, r963⟩ := seg52In0_rows4 rho h
  unfold Seg52.relationRow951 at r951

  unfold Seg52.relationRow952 at r952

  unfold Seg52.relationRow953 at r953

  unfold Seg52.relationRow954 at r954

  unfold Seg52.relationRow955 at r955

  unfold Seg52.relationRow956 at r956

  unfold Seg52.relationRow957 at r957

  unfold Seg52.relationRow958 at r958

  unfold Seg52.relationRow959 at r959

  unfold Seg52.relationRow960 at r960

  unfold Seg52.relationRow961 at r961

  unfold Seg52.relationRow962 at r962

  unfold Seg52.relationRow963 at r963

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX5 rho = seg52In0AccX4 rho + rho 45348 := by
    unfold seg52In0AccX5 seg52In0AccX4
    ring

  have hnexty : seg52In0AccY5 rho = seg52In0AccY4 rho + rho 45349 := by
    unfold seg52In0AccY5 seg52In0AccY4
    ring

  have ha0 : (rho 45340 + rho 45341) * (seg52In0AccX4 rho + seg52In0AccY4 rho) = rho 45342 := by
    unfold seg52In0AccX4 seg52In0AccY4
    linear_combination r951
  have ha1 : rho 45341 * seg52In0AccX4 rho = rho 45343 := by
    unfold seg52In0AccX4
    linear_combination r952
  have ha2 : rho 45340 * seg52In0AccY4 rho = rho 45344 := by
    unfold seg52In0AccY4
    linear_combination r953
  have ha3 : 3021 * rho 45343 * rho 45344 = rho 45345 := by
    linear_combination r954
  have ha4 : rho 45346 * (1 + rho 45345) = rho 45343 + rho 45344 := by
    linear_combination r955
  have ha5 : rho 45347 * (1 - rho 45345) = rho 45342 - rho 45343 - rho 45344 := by
    linear_combination r956
  have haddx :
      rho 45346 * (1 + 3021 * (rho 45341 * seg52In0AccX4 rho) * (rho 45340 * seg52In0AccY4 rho)) =
        rho 45341 * seg52In0AccX4 rho + rho 45340 * seg52In0AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45347 * (1 - 3021 * (rho 45341 * seg52In0AccX4 rho) * (rho 45340 * seg52In0AccY4 rho)) =
        (-1) * (rho 45341 * seg52In0AccX4 rho) - rho 45340 * seg52In0AccY4 rho +
          (seg52In0AccY4 rho - seg52In0AccX4 rho * (-1)) * (rho 45340 + rho 45341) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45347 * (1 - rho 45345) = rho 45342 - rho 45343 - rho 45344 := ha5
      _ = (-1) * rho 45343 - rho 45344 + (seg52In0AccY4 rho - seg52In0AccX4 rho * (-1)) *
          (rho 45340 + rho 45341) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX5 rho = seg52In0AccX4 rho - Bool.toZMod bit * (seg52In0AccX4 rho - rho 45346) := by
    have hd : rho 45348 = Bool.toZMod bit * (rho 45346 - seg52In0AccX4 rho) := by
      rw [← hbit]
      unfold seg52In0AccX4
      linear_combination -r957
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY5 rho = seg52In0AccY4 rho - Bool.toZMod bit * (seg52In0AccY4 rho - rho 45347) := by
    have hd : rho 45349 = Bool.toZMod bit * (rho 45347 - seg52In0AccY4 rho) := by
      rw [← hbit]
      unfold seg52In0AccY4
      linear_combination -r958
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45340 * rho 45341 = rho 45350 := by linear_combination r959
  have hd1 : rho 45340 * rho 45340 = rho 45351 := by linear_combination r960
  have hd2 : rho 45341 * rho 45341 = rho 45352 := by linear_combination r961
  have hd3 : rho 45353 * (rho 45341 * rho 45341 + rho 45340 * rho 45340 * (-1)) =
      2 * (rho 45340 * rho 45341) := by
    rw [hd0, hd1, hd2]
    linear_combination r962
  have hd4 : rho 45354 * (2 - (rho 45341 * rho 45341 + rho 45340 * rho 45340 * (-1))) =
      rho 45341 * rho 45341 - rho 45340 * rho 45340 * (-1) := by
    rw [hd1, hd2]
    linear_combination r963
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX4 rho, seg52In0AccY4 rho⟩ ⟨rho 45340, rho 45341⟩
    ⟨rho 45346, rho 45347⟩ ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45353, rho 45354⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow964 rho ∧ Seg52.relationRow965 rho ∧ Seg52.relationRow966 rho ∧ Seg52.relationRow967 rho ∧ Seg52.relationRow968 rho ∧ Seg52.relationRow969 rho ∧ Seg52.relationRow970 rho ∧ Seg52.relationRow971 rho ∧ Seg52.relationRow972 rho ∧ Seg52.relationRow973 rho ∧ Seg52.relationRow974 rho ∧ Seg52.relationRow975 rho ∧ Seg52.relationRow976 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976⟩

theorem seg52In0_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45173 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45353, rho 45354⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45353, rho 45354⟩
        ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 45366, rho 45367⟩ := by
  obtain ⟨r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976⟩ := seg52In0_rows5 rho h
  unfold Seg52.relationRow964 at r964

  unfold Seg52.relationRow965 at r965

  unfold Seg52.relationRow966 at r966

  unfold Seg52.relationRow967 at r967

  unfold Seg52.relationRow968 at r968

  unfold Seg52.relationRow969 at r969

  unfold Seg52.relationRow970 at r970

  unfold Seg52.relationRow971 at r971

  unfold Seg52.relationRow972 at r972

  unfold Seg52.relationRow973 at r973

  unfold Seg52.relationRow974 at r974

  unfold Seg52.relationRow975 at r975

  unfold Seg52.relationRow976 at r976

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX6 rho = seg52In0AccX5 rho + rho 45361 := by
    unfold seg52In0AccX6 seg52In0AccX5
    ring

  have hnexty : seg52In0AccY6 rho = seg52In0AccY5 rho + rho 45362 := by
    unfold seg52In0AccY6 seg52In0AccY5
    ring

  have ha0 : (rho 45353 + rho 45354) * (seg52In0AccX5 rho + seg52In0AccY5 rho) = rho 45355 := by
    unfold seg52In0AccX5 seg52In0AccY5
    linear_combination r964
  have ha1 : rho 45354 * seg52In0AccX5 rho = rho 45356 := by
    unfold seg52In0AccX5
    linear_combination r965
  have ha2 : rho 45353 * seg52In0AccY5 rho = rho 45357 := by
    unfold seg52In0AccY5
    linear_combination r966
  have ha3 : 3021 * rho 45356 * rho 45357 = rho 45358 := by
    linear_combination r967
  have ha4 : rho 45359 * (1 + rho 45358) = rho 45356 + rho 45357 := by
    linear_combination r968
  have ha5 : rho 45360 * (1 - rho 45358) = rho 45355 - rho 45356 - rho 45357 := by
    linear_combination r969
  have haddx :
      rho 45359 * (1 + 3021 * (rho 45354 * seg52In0AccX5 rho) * (rho 45353 * seg52In0AccY5 rho)) =
        rho 45354 * seg52In0AccX5 rho + rho 45353 * seg52In0AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45360 * (1 - 3021 * (rho 45354 * seg52In0AccX5 rho) * (rho 45353 * seg52In0AccY5 rho)) =
        (-1) * (rho 45354 * seg52In0AccX5 rho) - rho 45353 * seg52In0AccY5 rho +
          (seg52In0AccY5 rho - seg52In0AccX5 rho * (-1)) * (rho 45353 + rho 45354) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45360 * (1 - rho 45358) = rho 45355 - rho 45356 - rho 45357 := ha5
      _ = (-1) * rho 45356 - rho 45357 + (seg52In0AccY5 rho - seg52In0AccX5 rho * (-1)) *
          (rho 45353 + rho 45354) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX6 rho = seg52In0AccX5 rho - Bool.toZMod bit * (seg52In0AccX5 rho - rho 45359) := by
    have hd : rho 45361 = Bool.toZMod bit * (rho 45359 - seg52In0AccX5 rho) := by
      rw [← hbit]
      unfold seg52In0AccX5
      linear_combination -r970
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY6 rho = seg52In0AccY5 rho - Bool.toZMod bit * (seg52In0AccY5 rho - rho 45360) := by
    have hd : rho 45362 = Bool.toZMod bit * (rho 45360 - seg52In0AccY5 rho) := by
      rw [← hbit]
      unfold seg52In0AccY5
      linear_combination -r971
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45353 * rho 45354 = rho 45363 := by linear_combination r972
  have hd1 : rho 45353 * rho 45353 = rho 45364 := by linear_combination r973
  have hd2 : rho 45354 * rho 45354 = rho 45365 := by linear_combination r974
  have hd3 : rho 45366 * (rho 45354 * rho 45354 + rho 45353 * rho 45353 * (-1)) =
      2 * (rho 45353 * rho 45354) := by
    rw [hd0, hd1, hd2]
    linear_combination r975
  have hd4 : rho 45367 * (2 - (rho 45354 * rho 45354 + rho 45353 * rho 45353 * (-1))) =
      rho 45354 * rho 45354 - rho 45353 * rho 45353 * (-1) := by
    rw [hd1, hd2]
    linear_combination r976
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX5 rho, seg52In0AccY5 rho⟩ ⟨rho 45353, rho 45354⟩
    ⟨rho 45359, rho 45360⟩ ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 45366, rho 45367⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow977 rho ∧ Seg52.relationRow978 rho ∧ Seg52.relationRow979 rho ∧ Seg52.relationRow980 rho ∧ Seg52.relationRow981 rho ∧ Seg52.relationRow982 rho ∧ Seg52.relationRow983 rho ∧ Seg52.relationRow984 rho ∧ Seg52.relationRow985 rho ∧ Seg52.relationRow986 rho ∧ Seg52.relationRow987 rho ∧ Seg52.relationRow988 rho ∧ Seg52.relationRow989 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989⟩

theorem seg52In0_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45174 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45366, rho 45367⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 45366, rho 45367⟩
        ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 45379, rho 45380⟩ := by
  obtain ⟨r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989⟩ := seg52In0_rows6 rho h
  unfold Seg52.relationRow977 at r977

  unfold Seg52.relationRow978 at r978

  unfold Seg52.relationRow979 at r979

  unfold Seg52.relationRow980 at r980

  unfold Seg52.relationRow981 at r981

  unfold Seg52.relationRow982 at r982

  unfold Seg52.relationRow983 at r983

  unfold Seg52.relationRow984 at r984

  unfold Seg52.relationRow985 at r985

  unfold Seg52.relationRow986 at r986

  unfold Seg52.relationRow987 at r987

  unfold Seg52.relationRow988 at r988

  unfold Seg52.relationRow989 at r989

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX7 rho = seg52In0AccX6 rho + rho 45374 := by
    unfold seg52In0AccX7 seg52In0AccX6
    ring

  have hnexty : seg52In0AccY7 rho = seg52In0AccY6 rho + rho 45375 := by
    unfold seg52In0AccY7 seg52In0AccY6
    ring

  have ha0 : (rho 45366 + rho 45367) * (seg52In0AccX6 rho + seg52In0AccY6 rho) = rho 45368 := by
    unfold seg52In0AccX6 seg52In0AccY6
    linear_combination r977
  have ha1 : rho 45367 * seg52In0AccX6 rho = rho 45369 := by
    unfold seg52In0AccX6
    linear_combination r978
  have ha2 : rho 45366 * seg52In0AccY6 rho = rho 45370 := by
    unfold seg52In0AccY6
    linear_combination r979
  have ha3 : 3021 * rho 45369 * rho 45370 = rho 45371 := by
    linear_combination r980
  have ha4 : rho 45372 * (1 + rho 45371) = rho 45369 + rho 45370 := by
    linear_combination r981
  have ha5 : rho 45373 * (1 - rho 45371) = rho 45368 - rho 45369 - rho 45370 := by
    linear_combination r982
  have haddx :
      rho 45372 * (1 + 3021 * (rho 45367 * seg52In0AccX6 rho) * (rho 45366 * seg52In0AccY6 rho)) =
        rho 45367 * seg52In0AccX6 rho + rho 45366 * seg52In0AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45373 * (1 - 3021 * (rho 45367 * seg52In0AccX6 rho) * (rho 45366 * seg52In0AccY6 rho)) =
        (-1) * (rho 45367 * seg52In0AccX6 rho) - rho 45366 * seg52In0AccY6 rho +
          (seg52In0AccY6 rho - seg52In0AccX6 rho * (-1)) * (rho 45366 + rho 45367) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45373 * (1 - rho 45371) = rho 45368 - rho 45369 - rho 45370 := ha5
      _ = (-1) * rho 45369 - rho 45370 + (seg52In0AccY6 rho - seg52In0AccX6 rho * (-1)) *
          (rho 45366 + rho 45367) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX7 rho = seg52In0AccX6 rho - Bool.toZMod bit * (seg52In0AccX6 rho - rho 45372) := by
    have hd : rho 45374 = Bool.toZMod bit * (rho 45372 - seg52In0AccX6 rho) := by
      rw [← hbit]
      unfold seg52In0AccX6
      linear_combination -r983
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY7 rho = seg52In0AccY6 rho - Bool.toZMod bit * (seg52In0AccY6 rho - rho 45373) := by
    have hd : rho 45375 = Bool.toZMod bit * (rho 45373 - seg52In0AccY6 rho) := by
      rw [← hbit]
      unfold seg52In0AccY6
      linear_combination -r984
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45366 * rho 45367 = rho 45376 := by linear_combination r985
  have hd1 : rho 45366 * rho 45366 = rho 45377 := by linear_combination r986
  have hd2 : rho 45367 * rho 45367 = rho 45378 := by linear_combination r987
  have hd3 : rho 45379 * (rho 45367 * rho 45367 + rho 45366 * rho 45366 * (-1)) =
      2 * (rho 45366 * rho 45367) := by
    rw [hd0, hd1, hd2]
    linear_combination r988
  have hd4 : rho 45380 * (2 - (rho 45367 * rho 45367 + rho 45366 * rho 45366 * (-1))) =
      rho 45367 * rho 45367 - rho 45366 * rho 45366 * (-1) := by
    rw [hd1, hd2]
    linear_combination r989
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX6 rho, seg52In0AccY6 rho⟩ ⟨rho 45366, rho 45367⟩
    ⟨rho 45372, rho 45373⟩ ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 45379, rho 45380⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow990 rho ∧ Seg52.relationRow991 rho ∧ Seg52.relationRow992 rho ∧ Seg52.relationRow993 rho ∧ Seg52.relationRow994 rho ∧ Seg52.relationRow995 rho ∧ Seg52.relationRow996 rho ∧ Seg52.relationRow997 rho ∧ Seg52.relationRow998 rho ∧ Seg52.relationRow999 rho ∧ Seg52.relationRow1000 rho ∧ Seg52.relationRow1001 rho ∧ Seg52.relationRow1002 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002⟩

theorem seg52In0_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45175 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45379, rho 45380⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 45379, rho 45380⟩
        ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 45392, rho 45393⟩ := by
  obtain ⟨r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002⟩ := seg52In0_rows7 rho h
  unfold Seg52.relationRow990 at r990

  unfold Seg52.relationRow991 at r991

  unfold Seg52.relationRow992 at r992

  unfold Seg52.relationRow993 at r993

  unfold Seg52.relationRow994 at r994

  unfold Seg52.relationRow995 at r995

  unfold Seg52.relationRow996 at r996

  unfold Seg52.relationRow997 at r997

  unfold Seg52.relationRow998 at r998

  unfold Seg52.relationRow999 at r999

  unfold Seg52.relationRow1000 at r1000

  unfold Seg52.relationRow1001 at r1001

  unfold Seg52.relationRow1002 at r1002

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX8 rho = seg52In0AccX7 rho + rho 45387 := by
    unfold seg52In0AccX8 seg52In0AccX7
    ring

  have hnexty : seg52In0AccY8 rho = seg52In0AccY7 rho + rho 45388 := by
    unfold seg52In0AccY8 seg52In0AccY7
    ring

  have ha0 : (rho 45379 + rho 45380) * (seg52In0AccX7 rho + seg52In0AccY7 rho) = rho 45381 := by
    unfold seg52In0AccX7 seg52In0AccY7
    linear_combination r990
  have ha1 : rho 45380 * seg52In0AccX7 rho = rho 45382 := by
    unfold seg52In0AccX7
    linear_combination r991
  have ha2 : rho 45379 * seg52In0AccY7 rho = rho 45383 := by
    unfold seg52In0AccY7
    linear_combination r992
  have ha3 : 3021 * rho 45382 * rho 45383 = rho 45384 := by
    linear_combination r993
  have ha4 : rho 45385 * (1 + rho 45384) = rho 45382 + rho 45383 := by
    linear_combination r994
  have ha5 : rho 45386 * (1 - rho 45384) = rho 45381 - rho 45382 - rho 45383 := by
    linear_combination r995
  have haddx :
      rho 45385 * (1 + 3021 * (rho 45380 * seg52In0AccX7 rho) * (rho 45379 * seg52In0AccY7 rho)) =
        rho 45380 * seg52In0AccX7 rho + rho 45379 * seg52In0AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45386 * (1 - 3021 * (rho 45380 * seg52In0AccX7 rho) * (rho 45379 * seg52In0AccY7 rho)) =
        (-1) * (rho 45380 * seg52In0AccX7 rho) - rho 45379 * seg52In0AccY7 rho +
          (seg52In0AccY7 rho - seg52In0AccX7 rho * (-1)) * (rho 45379 + rho 45380) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45386 * (1 - rho 45384) = rho 45381 - rho 45382 - rho 45383 := ha5
      _ = (-1) * rho 45382 - rho 45383 + (seg52In0AccY7 rho - seg52In0AccX7 rho * (-1)) *
          (rho 45379 + rho 45380) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX8 rho = seg52In0AccX7 rho - Bool.toZMod bit * (seg52In0AccX7 rho - rho 45385) := by
    have hd : rho 45387 = Bool.toZMod bit * (rho 45385 - seg52In0AccX7 rho) := by
      rw [← hbit]
      unfold seg52In0AccX7
      linear_combination -r996
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY8 rho = seg52In0AccY7 rho - Bool.toZMod bit * (seg52In0AccY7 rho - rho 45386) := by
    have hd : rho 45388 = Bool.toZMod bit * (rho 45386 - seg52In0AccY7 rho) := by
      rw [← hbit]
      unfold seg52In0AccY7
      linear_combination -r997
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45379 * rho 45380 = rho 45389 := by linear_combination r998
  have hd1 : rho 45379 * rho 45379 = rho 45390 := by linear_combination r999
  have hd2 : rho 45380 * rho 45380 = rho 45391 := by linear_combination r1000
  have hd3 : rho 45392 * (rho 45380 * rho 45380 + rho 45379 * rho 45379 * (-1)) =
      2 * (rho 45379 * rho 45380) := by
    rw [hd0, hd1, hd2]
    linear_combination r1001
  have hd4 : rho 45393 * (2 - (rho 45380 * rho 45380 + rho 45379 * rho 45379 * (-1))) =
      rho 45380 * rho 45380 - rho 45379 * rho 45379 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1002
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX7 rho, seg52In0AccY7 rho⟩ ⟨rho 45379, rho 45380⟩
    ⟨rho 45385, rho 45386⟩ ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 45392, rho 45393⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1003 rho ∧ Seg52.relationRow1004 rho ∧ Seg52.relationRow1005 rho ∧ Seg52.relationRow1006 rho ∧ Seg52.relationRow1007 rho ∧ Seg52.relationRow1008 rho ∧ Seg52.relationRow1009 rho ∧ Seg52.relationRow1010 rho ∧ Seg52.relationRow1011 rho ∧ Seg52.relationRow1012 rho ∧ Seg52.relationRow1013 rho ∧ Seg52.relationRow1014 rho ∧ Seg52.relationRow1015 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015⟩

theorem seg52In0_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45176 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45392, rho 45393⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 45392, rho 45393⟩
        ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 45405, rho 45406⟩ := by
  obtain ⟨r1003, r1004, r1005, r1006, r1007, r1008, r1009, r1010, r1011, r1012, r1013, r1014, r1015⟩ := seg52In0_rows8 rho h
  unfold Seg52.relationRow1003 at r1003

  unfold Seg52.relationRow1004 at r1004

  unfold Seg52.relationRow1005 at r1005

  unfold Seg52.relationRow1006 at r1006

  unfold Seg52.relationRow1007 at r1007

  unfold Seg52.relationRow1008 at r1008

  unfold Seg52.relationRow1009 at r1009

  unfold Seg52.relationRow1010 at r1010

  unfold Seg52.relationRow1011 at r1011

  unfold Seg52.relationRow1012 at r1012

  unfold Seg52.relationRow1013 at r1013

  unfold Seg52.relationRow1014 at r1014

  unfold Seg52.relationRow1015 at r1015

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX9 rho = seg52In0AccX8 rho + rho 45400 := by
    unfold seg52In0AccX9 seg52In0AccX8
    ring

  have hnexty : seg52In0AccY9 rho = seg52In0AccY8 rho + rho 45401 := by
    unfold seg52In0AccY9 seg52In0AccY8
    ring

  have ha0 : (rho 45392 + rho 45393) * (seg52In0AccX8 rho + seg52In0AccY8 rho) = rho 45394 := by
    unfold seg52In0AccX8 seg52In0AccY8
    linear_combination r1003
  have ha1 : rho 45393 * seg52In0AccX8 rho = rho 45395 := by
    unfold seg52In0AccX8
    linear_combination r1004
  have ha2 : rho 45392 * seg52In0AccY8 rho = rho 45396 := by
    unfold seg52In0AccY8
    linear_combination r1005
  have ha3 : 3021 * rho 45395 * rho 45396 = rho 45397 := by
    linear_combination r1006
  have ha4 : rho 45398 * (1 + rho 45397) = rho 45395 + rho 45396 := by
    linear_combination r1007
  have ha5 : rho 45399 * (1 - rho 45397) = rho 45394 - rho 45395 - rho 45396 := by
    linear_combination r1008
  have haddx :
      rho 45398 * (1 + 3021 * (rho 45393 * seg52In0AccX8 rho) * (rho 45392 * seg52In0AccY8 rho)) =
        rho 45393 * seg52In0AccX8 rho + rho 45392 * seg52In0AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45399 * (1 - 3021 * (rho 45393 * seg52In0AccX8 rho) * (rho 45392 * seg52In0AccY8 rho)) =
        (-1) * (rho 45393 * seg52In0AccX8 rho) - rho 45392 * seg52In0AccY8 rho +
          (seg52In0AccY8 rho - seg52In0AccX8 rho * (-1)) * (rho 45392 + rho 45393) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45399 * (1 - rho 45397) = rho 45394 - rho 45395 - rho 45396 := ha5
      _ = (-1) * rho 45395 - rho 45396 + (seg52In0AccY8 rho - seg52In0AccX8 rho * (-1)) *
          (rho 45392 + rho 45393) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX9 rho = seg52In0AccX8 rho - Bool.toZMod bit * (seg52In0AccX8 rho - rho 45398) := by
    have hd : rho 45400 = Bool.toZMod bit * (rho 45398 - seg52In0AccX8 rho) := by
      rw [← hbit]
      unfold seg52In0AccX8
      linear_combination -r1009
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY9 rho = seg52In0AccY8 rho - Bool.toZMod bit * (seg52In0AccY8 rho - rho 45399) := by
    have hd : rho 45401 = Bool.toZMod bit * (rho 45399 - seg52In0AccY8 rho) := by
      rw [← hbit]
      unfold seg52In0AccY8
      linear_combination -r1010
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45392 * rho 45393 = rho 45402 := by linear_combination r1011
  have hd1 : rho 45392 * rho 45392 = rho 45403 := by linear_combination r1012
  have hd2 : rho 45393 * rho 45393 = rho 45404 := by linear_combination r1013
  have hd3 : rho 45405 * (rho 45393 * rho 45393 + rho 45392 * rho 45392 * (-1)) =
      2 * (rho 45392 * rho 45393) := by
    rw [hd0, hd1, hd2]
    linear_combination r1014
  have hd4 : rho 45406 * (2 - (rho 45393 * rho 45393 + rho 45392 * rho 45392 * (-1))) =
      rho 45393 * rho 45393 - rho 45392 * rho 45392 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1015
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX8 rho, seg52In0AccY8 rho⟩ ⟨rho 45392, rho 45393⟩
    ⟨rho 45398, rho 45399⟩ ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 45405, rho 45406⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1016 rho ∧ Seg52.relationRow1017 rho ∧ Seg52.relationRow1018 rho ∧ Seg52.relationRow1019 rho ∧ Seg52.relationRow1020 rho ∧ Seg52.relationRow1021 rho ∧ Seg52.relationRow1022 rho ∧ Seg52.relationRow1023 rho ∧ Seg52.relationRow1024 rho ∧ Seg52.relationRow1025 rho ∧ Seg52.relationRow1026 rho ∧ Seg52.relationRow1027 rho ∧ Seg52.relationRow1028 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028⟩

theorem seg52In0_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45177 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45405, rho 45406⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 45405, rho 45406⟩
        ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 45418, rho 45419⟩ := by
  obtain ⟨r1016, r1017, r1018, r1019, r1020, r1021, r1022, r1023, r1024, r1025, r1026, r1027, r1028⟩ := seg52In0_rows9 rho h
  unfold Seg52.relationRow1016 at r1016

  unfold Seg52.relationRow1017 at r1017

  unfold Seg52.relationRow1018 at r1018

  unfold Seg52.relationRow1019 at r1019

  unfold Seg52.relationRow1020 at r1020

  unfold Seg52.relationRow1021 at r1021

  unfold Seg52.relationRow1022 at r1022

  unfold Seg52.relationRow1023 at r1023

  unfold Seg52.relationRow1024 at r1024

  unfold Seg52.relationRow1025 at r1025

  unfold Seg52.relationRow1026 at r1026

  unfold Seg52.relationRow1027 at r1027

  unfold Seg52.relationRow1028 at r1028

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX10 rho = seg52In0AccX9 rho + rho 45413 := by
    unfold seg52In0AccX10 seg52In0AccX9
    ring

  have hnexty : seg52In0AccY10 rho = seg52In0AccY9 rho + rho 45414 := by
    unfold seg52In0AccY10 seg52In0AccY9
    ring

  have ha0 : (rho 45405 + rho 45406) * (seg52In0AccX9 rho + seg52In0AccY9 rho) = rho 45407 := by
    unfold seg52In0AccX9 seg52In0AccY9
    linear_combination r1016
  have ha1 : rho 45406 * seg52In0AccX9 rho = rho 45408 := by
    unfold seg52In0AccX9
    linear_combination r1017
  have ha2 : rho 45405 * seg52In0AccY9 rho = rho 45409 := by
    unfold seg52In0AccY9
    linear_combination r1018
  have ha3 : 3021 * rho 45408 * rho 45409 = rho 45410 := by
    linear_combination r1019
  have ha4 : rho 45411 * (1 + rho 45410) = rho 45408 + rho 45409 := by
    linear_combination r1020
  have ha5 : rho 45412 * (1 - rho 45410) = rho 45407 - rho 45408 - rho 45409 := by
    linear_combination r1021
  have haddx :
      rho 45411 * (1 + 3021 * (rho 45406 * seg52In0AccX9 rho) * (rho 45405 * seg52In0AccY9 rho)) =
        rho 45406 * seg52In0AccX9 rho + rho 45405 * seg52In0AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45412 * (1 - 3021 * (rho 45406 * seg52In0AccX9 rho) * (rho 45405 * seg52In0AccY9 rho)) =
        (-1) * (rho 45406 * seg52In0AccX9 rho) - rho 45405 * seg52In0AccY9 rho +
          (seg52In0AccY9 rho - seg52In0AccX9 rho * (-1)) * (rho 45405 + rho 45406) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45412 * (1 - rho 45410) = rho 45407 - rho 45408 - rho 45409 := ha5
      _ = (-1) * rho 45408 - rho 45409 + (seg52In0AccY9 rho - seg52In0AccX9 rho * (-1)) *
          (rho 45405 + rho 45406) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX10 rho = seg52In0AccX9 rho - Bool.toZMod bit * (seg52In0AccX9 rho - rho 45411) := by
    have hd : rho 45413 = Bool.toZMod bit * (rho 45411 - seg52In0AccX9 rho) := by
      rw [← hbit]
      unfold seg52In0AccX9
      linear_combination -r1022
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY10 rho = seg52In0AccY9 rho - Bool.toZMod bit * (seg52In0AccY9 rho - rho 45412) := by
    have hd : rho 45414 = Bool.toZMod bit * (rho 45412 - seg52In0AccY9 rho) := by
      rw [← hbit]
      unfold seg52In0AccY9
      linear_combination -r1023
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45405 * rho 45406 = rho 45415 := by linear_combination r1024
  have hd1 : rho 45405 * rho 45405 = rho 45416 := by linear_combination r1025
  have hd2 : rho 45406 * rho 45406 = rho 45417 := by linear_combination r1026
  have hd3 : rho 45418 * (rho 45406 * rho 45406 + rho 45405 * rho 45405 * (-1)) =
      2 * (rho 45405 * rho 45406) := by
    rw [hd0, hd1, hd2]
    linear_combination r1027
  have hd4 : rho 45419 * (2 - (rho 45406 * rho 45406 + rho 45405 * rho 45405 * (-1))) =
      rho 45406 * rho 45406 - rho 45405 * rho 45405 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1028
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX9 rho, seg52In0AccY9 rho⟩ ⟨rho 45405, rho 45406⟩
    ⟨rho 45411, rho 45412⟩ ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 45418, rho 45419⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1029 rho ∧ Seg52.relationRow1030 rho ∧ Seg52.relationRow1031 rho ∧ Seg52.relationRow1032 rho ∧ Seg52.relationRow1033 rho ∧ Seg52.relationRow1034 rho ∧ Seg52.relationRow1035 rho ∧ Seg52.relationRow1036 rho ∧ Seg52.relationRow1037 rho ∧ Seg52.relationRow1038 rho ∧ Seg52.relationRow1039 rho ∧ Seg52.relationRow1040 rho ∧ Seg52.relationRow1041 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart12 at p12

  rcases p12 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039⟩

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨r1040, r1041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039, r1040, r1041⟩

theorem seg52In0_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45178 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45418, rho 45419⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 45418, rho 45419⟩
        ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 45431, rho 45432⟩ := by
  obtain ⟨r1029, r1030, r1031, r1032, r1033, r1034, r1035, r1036, r1037, r1038, r1039, r1040, r1041⟩ := seg52In0_rows10 rho h
  unfold Seg52.relationRow1029 at r1029

  unfold Seg52.relationRow1030 at r1030

  unfold Seg52.relationRow1031 at r1031

  unfold Seg52.relationRow1032 at r1032

  unfold Seg52.relationRow1033 at r1033

  unfold Seg52.relationRow1034 at r1034

  unfold Seg52.relationRow1035 at r1035

  unfold Seg52.relationRow1036 at r1036

  unfold Seg52.relationRow1037 at r1037

  unfold Seg52.relationRow1038 at r1038

  unfold Seg52.relationRow1039 at r1039

  unfold Seg52.relationRow1040 at r1040

  unfold Seg52.relationRow1041 at r1041

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX11 rho = seg52In0AccX10 rho + rho 45426 := by
    unfold seg52In0AccX11 seg52In0AccX10
    ring

  have hnexty : seg52In0AccY11 rho = seg52In0AccY10 rho + rho 45427 := by
    unfold seg52In0AccY11 seg52In0AccY10
    ring

  have ha0 : (rho 45418 + rho 45419) * (seg52In0AccX10 rho + seg52In0AccY10 rho) = rho 45420 := by
    unfold seg52In0AccX10 seg52In0AccY10
    linear_combination r1029
  have ha1 : rho 45419 * seg52In0AccX10 rho = rho 45421 := by
    unfold seg52In0AccX10
    linear_combination r1030
  have ha2 : rho 45418 * seg52In0AccY10 rho = rho 45422 := by
    unfold seg52In0AccY10
    linear_combination r1031
  have ha3 : 3021 * rho 45421 * rho 45422 = rho 45423 := by
    linear_combination r1032
  have ha4 : rho 45424 * (1 + rho 45423) = rho 45421 + rho 45422 := by
    linear_combination r1033
  have ha5 : rho 45425 * (1 - rho 45423) = rho 45420 - rho 45421 - rho 45422 := by
    linear_combination r1034
  have haddx :
      rho 45424 * (1 + 3021 * (rho 45419 * seg52In0AccX10 rho) * (rho 45418 * seg52In0AccY10 rho)) =
        rho 45419 * seg52In0AccX10 rho + rho 45418 * seg52In0AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45425 * (1 - 3021 * (rho 45419 * seg52In0AccX10 rho) * (rho 45418 * seg52In0AccY10 rho)) =
        (-1) * (rho 45419 * seg52In0AccX10 rho) - rho 45418 * seg52In0AccY10 rho +
          (seg52In0AccY10 rho - seg52In0AccX10 rho * (-1)) * (rho 45418 + rho 45419) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45425 * (1 - rho 45423) = rho 45420 - rho 45421 - rho 45422 := ha5
      _ = (-1) * rho 45421 - rho 45422 + (seg52In0AccY10 rho - seg52In0AccX10 rho * (-1)) *
          (rho 45418 + rho 45419) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX11 rho = seg52In0AccX10 rho - Bool.toZMod bit * (seg52In0AccX10 rho - rho 45424) := by
    have hd : rho 45426 = Bool.toZMod bit * (rho 45424 - seg52In0AccX10 rho) := by
      rw [← hbit]
      unfold seg52In0AccX10
      linear_combination -r1035
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY11 rho = seg52In0AccY10 rho - Bool.toZMod bit * (seg52In0AccY10 rho - rho 45425) := by
    have hd : rho 45427 = Bool.toZMod bit * (rho 45425 - seg52In0AccY10 rho) := by
      rw [← hbit]
      unfold seg52In0AccY10
      linear_combination -r1036
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45418 * rho 45419 = rho 45428 := by linear_combination r1037
  have hd1 : rho 45418 * rho 45418 = rho 45429 := by linear_combination r1038
  have hd2 : rho 45419 * rho 45419 = rho 45430 := by linear_combination r1039
  have hd3 : rho 45431 * (rho 45419 * rho 45419 + rho 45418 * rho 45418 * (-1)) =
      2 * (rho 45418 * rho 45419) := by
    rw [hd0, hd1, hd2]
    linear_combination r1040
  have hd4 : rho 45432 * (2 - (rho 45419 * rho 45419 + rho 45418 * rho 45418 * (-1))) =
      rho 45419 * rho 45419 - rho 45418 * rho 45418 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1041
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX10 rho, seg52In0AccY10 rho⟩ ⟨rho 45418, rho 45419⟩
    ⟨rho 45424, rho 45425⟩ ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 45431, rho 45432⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg52In0_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg52In0_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg52In0_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg52In0_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg52In0_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg52In0_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg52In0_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg52In0_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg52In0_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg52In0_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
