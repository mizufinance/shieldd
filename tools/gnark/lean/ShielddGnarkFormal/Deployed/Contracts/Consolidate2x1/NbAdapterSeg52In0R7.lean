import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1900 rho ∧ Seg52.relationRow1901 rho ∧ Seg52.relationRow1902 rho ∧ Seg52.relationRow1903 rho ∧ Seg52.relationRow1904 rho ∧ Seg52.relationRow1905 rho ∧ Seg52.relationRow1906 rho ∧ Seg52.relationRow1907 rho ∧ Seg52.relationRow1908 rho ∧ Seg52.relationRow1909 rho ∧ Seg52.relationRow1910 rho ∧ Seg52.relationRow1911 rho ∧ Seg52.relationRow1912 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, _, _, _, _, _, _, _⟩

  exact ⟨r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912⟩

theorem seg52In0_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45245 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46289, rho 46290⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46289, rho 46290⟩
        ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46302, rho 46303⟩ := by
  obtain ⟨r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912⟩ := seg52In0_rows77 rho h
  unfold Seg52.relationRow1900 at r1900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1900

  unfold Seg52.relationRow1901 at r1901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1901

  unfold Seg52.relationRow1902 at r1902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1902

  unfold Seg52.relationRow1903 at r1903

  unfold Seg52.relationRow1904 at r1904

  unfold Seg52.relationRow1905 at r1905

  unfold Seg52.relationRow1906 at r1906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1906

  unfold Seg52.relationRow1907 at r1907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1907

  unfold Seg52.relationRow1908 at r1908

  unfold Seg52.relationRow1909 at r1909

  unfold Seg52.relationRow1910 at r1910

  unfold Seg52.relationRow1911 at r1911

  unfold Seg52.relationRow1912 at r1912

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX78 rho = seg52In0AccX77 rho + rho 46297 := by
    unfold seg52In0AccX78 seg52In0AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 77]

    ring

  have hnexty : seg52In0AccY78 rho = seg52In0AccY77 rho + rho 46298 := by
    unfold seg52In0AccY78 seg52In0AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 77]

    ring

  have ha0 : (rho 46289 + rho 46290) * (seg52In0AccX77 rho + seg52In0AccY77 rho) = rho 46291 := by
    unfold seg52In0AccX77 seg52In0AccY77
    linear_combination r1900
  have ha1 : rho 46290 * seg52In0AccX77 rho = rho 46292 := by
    unfold seg52In0AccX77
    linear_combination r1901
  have ha2 : rho 46289 * seg52In0AccY77 rho = rho 46293 := by
    unfold seg52In0AccY77
    linear_combination r1902
  have ha3 : 3021 * rho 46292 * rho 46293 = rho 46294 := by
    linear_combination r1903
  have ha4 : rho 46295 * (1 + rho 46294) = rho 46292 + rho 46293 := by
    linear_combination r1904
  have ha5 : rho 46296 * (1 - rho 46294) = rho 46291 - rho 46292 - rho 46293 := by
    linear_combination r1905
  have haddx :
      rho 46295 * (1 + 3021 * (rho 46290 * seg52In0AccX77 rho) * (rho 46289 * seg52In0AccY77 rho)) =
        rho 46290 * seg52In0AccX77 rho + rho 46289 * seg52In0AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46296 * (1 - 3021 * (rho 46290 * seg52In0AccX77 rho) * (rho 46289 * seg52In0AccY77 rho)) =
        (-1) * (rho 46290 * seg52In0AccX77 rho) - rho 46289 * seg52In0AccY77 rho +
          (seg52In0AccY77 rho - seg52In0AccX77 rho * (-1)) * (rho 46289 + rho 46290) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46296 * (1 - rho 46294) = rho 46291 - rho 46292 - rho 46293 := ha5
      _ = (-1) * rho 46292 - rho 46293 + (seg52In0AccY77 rho - seg52In0AccX77 rho * (-1)) *
          (rho 46289 + rho 46290) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX78 rho = seg52In0AccX77 rho - Bool.toZMod bit * (seg52In0AccX77 rho - rho 46295) := by
    have hd : rho 46297 = Bool.toZMod bit * (rho 46295 - seg52In0AccX77 rho) := by
      rw [← hbit]
      unfold seg52In0AccX77
      linear_combination -r1906
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY78 rho = seg52In0AccY77 rho - Bool.toZMod bit * (seg52In0AccY77 rho - rho 46296) := by
    have hd : rho 46298 = Bool.toZMod bit * (rho 46296 - seg52In0AccY77 rho) := by
      rw [← hbit]
      unfold seg52In0AccY77
      linear_combination -r1907
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46289 * rho 46290 = rho 46299 := by linear_combination r1908
  have hd1 : rho 46289 * rho 46289 = rho 46300 := by linear_combination r1909
  have hd2 : rho 46290 * rho 46290 = rho 46301 := by linear_combination r1910
  have hd3 : rho 46302 * (rho 46290 * rho 46290 + rho 46289 * rho 46289 * (-1)) =
      2 * (rho 46289 * rho 46290) := by
    rw [hd0, hd1, hd2]
    linear_combination r1911
  have hd4 : rho 46303 * (2 - (rho 46290 * rho 46290 + rho 46289 * rho 46289 * (-1))) =
      rho 46290 * rho 46290 - rho 46289 * rho 46289 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1912
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX77 rho, seg52In0AccY77 rho⟩ ⟨rho 46289, rho 46290⟩
    ⟨rho 46295, rho 46296⟩ ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46302, rho 46303⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1913 rho ∧ Seg52.relationRow1914 rho ∧ Seg52.relationRow1915 rho ∧ Seg52.relationRow1916 rho ∧ Seg52.relationRow1917 rho ∧ Seg52.relationRow1918 rho ∧ Seg52.relationRow1919 rho ∧ Seg52.relationRow1920 rho ∧ Seg52.relationRow1921 rho ∧ Seg52.relationRow1922 rho ∧ Seg52.relationRow1923 rho ∧ Seg52.relationRow1924 rho ∧ Seg52.relationRow1925 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p23, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1913, r1914, r1915, r1916, r1917, r1918, r1919⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1913, r1914, r1915, r1916, r1917, r1918, r1919, r1920, r1921, r1922, r1923, r1924, r1925⟩

theorem seg52In0_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45246 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46302, rho 46303⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46302, rho 46303⟩
        ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46315, rho 46316⟩ := by
  obtain ⟨r1913, r1914, r1915, r1916, r1917, r1918, r1919, r1920, r1921, r1922, r1923, r1924, r1925⟩ := seg52In0_rows78 rho h
  unfold Seg52.relationRow1913 at r1913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1913

  unfold Seg52.relationRow1914 at r1914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1914

  unfold Seg52.relationRow1915 at r1915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1915

  unfold Seg52.relationRow1916 at r1916

  unfold Seg52.relationRow1917 at r1917

  unfold Seg52.relationRow1918 at r1918

  unfold Seg52.relationRow1919 at r1919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1919

  unfold Seg52.relationRow1920 at r1920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1920

  unfold Seg52.relationRow1921 at r1921

  unfold Seg52.relationRow1922 at r1922

  unfold Seg52.relationRow1923 at r1923

  unfold Seg52.relationRow1924 at r1924

  unfold Seg52.relationRow1925 at r1925

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX79 rho = seg52In0AccX78 rho + rho 46310 := by
    unfold seg52In0AccX79 seg52In0AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 78]

    ring

  have hnexty : seg52In0AccY79 rho = seg52In0AccY78 rho + rho 46311 := by
    unfold seg52In0AccY79 seg52In0AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 78]

    ring

  have ha0 : (rho 46302 + rho 46303) * (seg52In0AccX78 rho + seg52In0AccY78 rho) = rho 46304 := by
    unfold seg52In0AccX78 seg52In0AccY78
    linear_combination r1913
  have ha1 : rho 46303 * seg52In0AccX78 rho = rho 46305 := by
    unfold seg52In0AccX78
    linear_combination r1914
  have ha2 : rho 46302 * seg52In0AccY78 rho = rho 46306 := by
    unfold seg52In0AccY78
    linear_combination r1915
  have ha3 : 3021 * rho 46305 * rho 46306 = rho 46307 := by
    linear_combination r1916
  have ha4 : rho 46308 * (1 + rho 46307) = rho 46305 + rho 46306 := by
    linear_combination r1917
  have ha5 : rho 46309 * (1 - rho 46307) = rho 46304 - rho 46305 - rho 46306 := by
    linear_combination r1918
  have haddx :
      rho 46308 * (1 + 3021 * (rho 46303 * seg52In0AccX78 rho) * (rho 46302 * seg52In0AccY78 rho)) =
        rho 46303 * seg52In0AccX78 rho + rho 46302 * seg52In0AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46309 * (1 - 3021 * (rho 46303 * seg52In0AccX78 rho) * (rho 46302 * seg52In0AccY78 rho)) =
        (-1) * (rho 46303 * seg52In0AccX78 rho) - rho 46302 * seg52In0AccY78 rho +
          (seg52In0AccY78 rho - seg52In0AccX78 rho * (-1)) * (rho 46302 + rho 46303) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46309 * (1 - rho 46307) = rho 46304 - rho 46305 - rho 46306 := ha5
      _ = (-1) * rho 46305 - rho 46306 + (seg52In0AccY78 rho - seg52In0AccX78 rho * (-1)) *
          (rho 46302 + rho 46303) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX79 rho = seg52In0AccX78 rho - Bool.toZMod bit * (seg52In0AccX78 rho - rho 46308) := by
    have hd : rho 46310 = Bool.toZMod bit * (rho 46308 - seg52In0AccX78 rho) := by
      rw [← hbit]
      unfold seg52In0AccX78
      linear_combination -r1919
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY79 rho = seg52In0AccY78 rho - Bool.toZMod bit * (seg52In0AccY78 rho - rho 46309) := by
    have hd : rho 46311 = Bool.toZMod bit * (rho 46309 - seg52In0AccY78 rho) := by
      rw [← hbit]
      unfold seg52In0AccY78
      linear_combination -r1920
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46302 * rho 46303 = rho 46312 := by linear_combination r1921
  have hd1 : rho 46302 * rho 46302 = rho 46313 := by linear_combination r1922
  have hd2 : rho 46303 * rho 46303 = rho 46314 := by linear_combination r1923
  have hd3 : rho 46315 * (rho 46303 * rho 46303 + rho 46302 * rho 46302 * (-1)) =
      2 * (rho 46302 * rho 46303) := by
    rw [hd0, hd1, hd2]
    linear_combination r1924
  have hd4 : rho 46316 * (2 - (rho 46303 * rho 46303 + rho 46302 * rho 46302 * (-1))) =
      rho 46303 * rho 46303 - rho 46302 * rho 46302 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1925
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX78 rho, seg52In0AccY78 rho⟩ ⟨rho 46302, rho 46303⟩
    ⟨rho 46308, rho 46309⟩ ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46315, rho 46316⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1926 rho ∧ Seg52.relationRow1927 rho ∧ Seg52.relationRow1928 rho ∧ Seg52.relationRow1929 rho ∧ Seg52.relationRow1930 rho ∧ Seg52.relationRow1931 rho ∧ Seg52.relationRow1932 rho ∧ Seg52.relationRow1933 rho ∧ Seg52.relationRow1934 rho ∧ Seg52.relationRow1935 rho ∧ Seg52.relationRow1936 rho ∧ Seg52.relationRow1937 rho ∧ Seg52.relationRow1938 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938⟩

theorem seg52In0_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45247 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46315, rho 46316⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46315, rho 46316⟩
        ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46328, rho 46329⟩ := by
  obtain ⟨r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938⟩ := seg52In0_rows79 rho h
  unfold Seg52.relationRow1926 at r1926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1926

  unfold Seg52.relationRow1927 at r1927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1927

  unfold Seg52.relationRow1928 at r1928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1928

  unfold Seg52.relationRow1929 at r1929

  unfold Seg52.relationRow1930 at r1930

  unfold Seg52.relationRow1931 at r1931

  unfold Seg52.relationRow1932 at r1932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1932

  unfold Seg52.relationRow1933 at r1933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1933

  unfold Seg52.relationRow1934 at r1934

  unfold Seg52.relationRow1935 at r1935

  unfold Seg52.relationRow1936 at r1936

  unfold Seg52.relationRow1937 at r1937

  unfold Seg52.relationRow1938 at r1938

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX80 rho = seg52In0AccX79 rho + rho 46323 := by
    unfold seg52In0AccX80 seg52In0AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 79]

    ring

  have hnexty : seg52In0AccY80 rho = seg52In0AccY79 rho + rho 46324 := by
    unfold seg52In0AccY80 seg52In0AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 79]

    ring

  have ha0 : (rho 46315 + rho 46316) * (seg52In0AccX79 rho + seg52In0AccY79 rho) = rho 46317 := by
    unfold seg52In0AccX79 seg52In0AccY79
    linear_combination r1926
  have ha1 : rho 46316 * seg52In0AccX79 rho = rho 46318 := by
    unfold seg52In0AccX79
    linear_combination r1927
  have ha2 : rho 46315 * seg52In0AccY79 rho = rho 46319 := by
    unfold seg52In0AccY79
    linear_combination r1928
  have ha3 : 3021 * rho 46318 * rho 46319 = rho 46320 := by
    linear_combination r1929
  have ha4 : rho 46321 * (1 + rho 46320) = rho 46318 + rho 46319 := by
    linear_combination r1930
  have ha5 : rho 46322 * (1 - rho 46320) = rho 46317 - rho 46318 - rho 46319 := by
    linear_combination r1931
  have haddx :
      rho 46321 * (1 + 3021 * (rho 46316 * seg52In0AccX79 rho) * (rho 46315 * seg52In0AccY79 rho)) =
        rho 46316 * seg52In0AccX79 rho + rho 46315 * seg52In0AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46322 * (1 - 3021 * (rho 46316 * seg52In0AccX79 rho) * (rho 46315 * seg52In0AccY79 rho)) =
        (-1) * (rho 46316 * seg52In0AccX79 rho) - rho 46315 * seg52In0AccY79 rho +
          (seg52In0AccY79 rho - seg52In0AccX79 rho * (-1)) * (rho 46315 + rho 46316) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46322 * (1 - rho 46320) = rho 46317 - rho 46318 - rho 46319 := ha5
      _ = (-1) * rho 46318 - rho 46319 + (seg52In0AccY79 rho - seg52In0AccX79 rho * (-1)) *
          (rho 46315 + rho 46316) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX80 rho = seg52In0AccX79 rho - Bool.toZMod bit * (seg52In0AccX79 rho - rho 46321) := by
    have hd : rho 46323 = Bool.toZMod bit * (rho 46321 - seg52In0AccX79 rho) := by
      rw [← hbit]
      unfold seg52In0AccX79
      linear_combination -r1932
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY80 rho = seg52In0AccY79 rho - Bool.toZMod bit * (seg52In0AccY79 rho - rho 46322) := by
    have hd : rho 46324 = Bool.toZMod bit * (rho 46322 - seg52In0AccY79 rho) := by
      rw [← hbit]
      unfold seg52In0AccY79
      linear_combination -r1933
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46315 * rho 46316 = rho 46325 := by linear_combination r1934
  have hd1 : rho 46315 * rho 46315 = rho 46326 := by linear_combination r1935
  have hd2 : rho 46316 * rho 46316 = rho 46327 := by linear_combination r1936
  have hd3 : rho 46328 * (rho 46316 * rho 46316 + rho 46315 * rho 46315 * (-1)) =
      2 * (rho 46315 * rho 46316) := by
    rw [hd0, hd1, hd2]
    linear_combination r1937
  have hd4 : rho 46329 * (2 - (rho 46316 * rho 46316 + rho 46315 * rho 46315 * (-1))) =
      rho 46316 * rho 46316 - rho 46315 * rho 46315 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1938
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX79 rho, seg52In0AccY79 rho⟩ ⟨rho 46315, rho 46316⟩
    ⟨rho 46321, rho 46322⟩ ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46328, rho 46329⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1939 rho ∧ Seg52.relationRow1940 rho ∧ Seg52.relationRow1941 rho ∧ Seg52.relationRow1942 rho ∧ Seg52.relationRow1943 rho ∧ Seg52.relationRow1944 rho ∧ Seg52.relationRow1945 rho ∧ Seg52.relationRow1946 rho ∧ Seg52.relationRow1947 rho ∧ Seg52.relationRow1948 rho ∧ Seg52.relationRow1949 rho ∧ Seg52.relationRow1950 rho ∧ Seg52.relationRow1951 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951⟩

theorem seg52In0_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45248 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46328, rho 46329⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46328, rho 46329⟩
        ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46341, rho 46342⟩ := by
  obtain ⟨r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951⟩ := seg52In0_rows80 rho h
  unfold Seg52.relationRow1939 at r1939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1939

  unfold Seg52.relationRow1940 at r1940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1940

  unfold Seg52.relationRow1941 at r1941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1941

  unfold Seg52.relationRow1942 at r1942

  unfold Seg52.relationRow1943 at r1943

  unfold Seg52.relationRow1944 at r1944

  unfold Seg52.relationRow1945 at r1945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1945

  unfold Seg52.relationRow1946 at r1946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1946

  unfold Seg52.relationRow1947 at r1947

  unfold Seg52.relationRow1948 at r1948

  unfold Seg52.relationRow1949 at r1949

  unfold Seg52.relationRow1950 at r1950

  unfold Seg52.relationRow1951 at r1951

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX81 rho = seg52In0AccX80 rho + rho 46336 := by
    unfold seg52In0AccX81 seg52In0AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 80]

    ring

  have hnexty : seg52In0AccY81 rho = seg52In0AccY80 rho + rho 46337 := by
    unfold seg52In0AccY81 seg52In0AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 80]

    ring

  have ha0 : (rho 46328 + rho 46329) * (seg52In0AccX80 rho + seg52In0AccY80 rho) = rho 46330 := by
    unfold seg52In0AccX80 seg52In0AccY80
    linear_combination r1939
  have ha1 : rho 46329 * seg52In0AccX80 rho = rho 46331 := by
    unfold seg52In0AccX80
    linear_combination r1940
  have ha2 : rho 46328 * seg52In0AccY80 rho = rho 46332 := by
    unfold seg52In0AccY80
    linear_combination r1941
  have ha3 : 3021 * rho 46331 * rho 46332 = rho 46333 := by
    linear_combination r1942
  have ha4 : rho 46334 * (1 + rho 46333) = rho 46331 + rho 46332 := by
    linear_combination r1943
  have ha5 : rho 46335 * (1 - rho 46333) = rho 46330 - rho 46331 - rho 46332 := by
    linear_combination r1944
  have haddx :
      rho 46334 * (1 + 3021 * (rho 46329 * seg52In0AccX80 rho) * (rho 46328 * seg52In0AccY80 rho)) =
        rho 46329 * seg52In0AccX80 rho + rho 46328 * seg52In0AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46335 * (1 - 3021 * (rho 46329 * seg52In0AccX80 rho) * (rho 46328 * seg52In0AccY80 rho)) =
        (-1) * (rho 46329 * seg52In0AccX80 rho) - rho 46328 * seg52In0AccY80 rho +
          (seg52In0AccY80 rho - seg52In0AccX80 rho * (-1)) * (rho 46328 + rho 46329) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46335 * (1 - rho 46333) = rho 46330 - rho 46331 - rho 46332 := ha5
      _ = (-1) * rho 46331 - rho 46332 + (seg52In0AccY80 rho - seg52In0AccX80 rho * (-1)) *
          (rho 46328 + rho 46329) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX81 rho = seg52In0AccX80 rho - Bool.toZMod bit * (seg52In0AccX80 rho - rho 46334) := by
    have hd : rho 46336 = Bool.toZMod bit * (rho 46334 - seg52In0AccX80 rho) := by
      rw [← hbit]
      unfold seg52In0AccX80
      linear_combination -r1945
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY81 rho = seg52In0AccY80 rho - Bool.toZMod bit * (seg52In0AccY80 rho - rho 46335) := by
    have hd : rho 46337 = Bool.toZMod bit * (rho 46335 - seg52In0AccY80 rho) := by
      rw [← hbit]
      unfold seg52In0AccY80
      linear_combination -r1946
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46328 * rho 46329 = rho 46338 := by linear_combination r1947
  have hd1 : rho 46328 * rho 46328 = rho 46339 := by linear_combination r1948
  have hd2 : rho 46329 * rho 46329 = rho 46340 := by linear_combination r1949
  have hd3 : rho 46341 * (rho 46329 * rho 46329 + rho 46328 * rho 46328 * (-1)) =
      2 * (rho 46328 * rho 46329) := by
    rw [hd0, hd1, hd2]
    linear_combination r1950
  have hd4 : rho 46342 * (2 - (rho 46329 * rho 46329 + rho 46328 * rho 46328 * (-1))) =
      rho 46329 * rho 46329 - rho 46328 * rho 46328 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1951
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX80 rho, seg52In0AccY80 rho⟩ ⟨rho 46328, rho 46329⟩
    ⟨rho 46334, rho 46335⟩ ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46341, rho 46342⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1952 rho ∧ Seg52.relationRow1953 rho ∧ Seg52.relationRow1954 rho ∧ Seg52.relationRow1955 rho ∧ Seg52.relationRow1956 rho ∧ Seg52.relationRow1957 rho ∧ Seg52.relationRow1958 rho ∧ Seg52.relationRow1959 rho ∧ Seg52.relationRow1960 rho ∧ Seg52.relationRow1961 rho ∧ Seg52.relationRow1962 rho ∧ Seg52.relationRow1963 rho ∧ Seg52.relationRow1964 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964⟩

theorem seg52In0_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45249 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46341, rho 46342⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46341, rho 46342⟩
        ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46354, rho 46355⟩ := by
  obtain ⟨r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964⟩ := seg52In0_rows81 rho h
  unfold Seg52.relationRow1952 at r1952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1952

  unfold Seg52.relationRow1953 at r1953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1953

  unfold Seg52.relationRow1954 at r1954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1954

  unfold Seg52.relationRow1955 at r1955

  unfold Seg52.relationRow1956 at r1956

  unfold Seg52.relationRow1957 at r1957

  unfold Seg52.relationRow1958 at r1958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1958

  unfold Seg52.relationRow1959 at r1959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1959

  unfold Seg52.relationRow1960 at r1960

  unfold Seg52.relationRow1961 at r1961

  unfold Seg52.relationRow1962 at r1962

  unfold Seg52.relationRow1963 at r1963

  unfold Seg52.relationRow1964 at r1964

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX82 rho = seg52In0AccX81 rho + rho 46349 := by
    unfold seg52In0AccX82 seg52In0AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 81]

    ring

  have hnexty : seg52In0AccY82 rho = seg52In0AccY81 rho + rho 46350 := by
    unfold seg52In0AccY82 seg52In0AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 81]

    ring

  have ha0 : (rho 46341 + rho 46342) * (seg52In0AccX81 rho + seg52In0AccY81 rho) = rho 46343 := by
    unfold seg52In0AccX81 seg52In0AccY81
    linear_combination r1952
  have ha1 : rho 46342 * seg52In0AccX81 rho = rho 46344 := by
    unfold seg52In0AccX81
    linear_combination r1953
  have ha2 : rho 46341 * seg52In0AccY81 rho = rho 46345 := by
    unfold seg52In0AccY81
    linear_combination r1954
  have ha3 : 3021 * rho 46344 * rho 46345 = rho 46346 := by
    linear_combination r1955
  have ha4 : rho 46347 * (1 + rho 46346) = rho 46344 + rho 46345 := by
    linear_combination r1956
  have ha5 : rho 46348 * (1 - rho 46346) = rho 46343 - rho 46344 - rho 46345 := by
    linear_combination r1957
  have haddx :
      rho 46347 * (1 + 3021 * (rho 46342 * seg52In0AccX81 rho) * (rho 46341 * seg52In0AccY81 rho)) =
        rho 46342 * seg52In0AccX81 rho + rho 46341 * seg52In0AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46348 * (1 - 3021 * (rho 46342 * seg52In0AccX81 rho) * (rho 46341 * seg52In0AccY81 rho)) =
        (-1) * (rho 46342 * seg52In0AccX81 rho) - rho 46341 * seg52In0AccY81 rho +
          (seg52In0AccY81 rho - seg52In0AccX81 rho * (-1)) * (rho 46341 + rho 46342) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46348 * (1 - rho 46346) = rho 46343 - rho 46344 - rho 46345 := ha5
      _ = (-1) * rho 46344 - rho 46345 + (seg52In0AccY81 rho - seg52In0AccX81 rho * (-1)) *
          (rho 46341 + rho 46342) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX82 rho = seg52In0AccX81 rho - Bool.toZMod bit * (seg52In0AccX81 rho - rho 46347) := by
    have hd : rho 46349 = Bool.toZMod bit * (rho 46347 - seg52In0AccX81 rho) := by
      rw [← hbit]
      unfold seg52In0AccX81
      linear_combination -r1958
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY82 rho = seg52In0AccY81 rho - Bool.toZMod bit * (seg52In0AccY81 rho - rho 46348) := by
    have hd : rho 46350 = Bool.toZMod bit * (rho 46348 - seg52In0AccY81 rho) := by
      rw [← hbit]
      unfold seg52In0AccY81
      linear_combination -r1959
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46341 * rho 46342 = rho 46351 := by linear_combination r1960
  have hd1 : rho 46341 * rho 46341 = rho 46352 := by linear_combination r1961
  have hd2 : rho 46342 * rho 46342 = rho 46353 := by linear_combination r1962
  have hd3 : rho 46354 * (rho 46342 * rho 46342 + rho 46341 * rho 46341 * (-1)) =
      2 * (rho 46341 * rho 46342) := by
    rw [hd0, hd1, hd2]
    linear_combination r1963
  have hd4 : rho 46355 * (2 - (rho 46342 * rho 46342 + rho 46341 * rho 46341 * (-1))) =
      rho 46342 * rho 46342 - rho 46341 * rho 46341 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1964
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX81 rho, seg52In0AccY81 rho⟩ ⟨rho 46341, rho 46342⟩
    ⟨rho 46347, rho 46348⟩ ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46354, rho 46355⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1965 rho ∧ Seg52.relationRow1966 rho ∧ Seg52.relationRow1967 rho ∧ Seg52.relationRow1968 rho ∧ Seg52.relationRow1969 rho ∧ Seg52.relationRow1970 rho ∧ Seg52.relationRow1971 rho ∧ Seg52.relationRow1972 rho ∧ Seg52.relationRow1973 rho ∧ Seg52.relationRow1974 rho ∧ Seg52.relationRow1975 rho ∧ Seg52.relationRow1976 rho ∧ Seg52.relationRow1977 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977⟩

theorem seg52In0_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45250 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46354, rho 46355⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46354, rho 46355⟩
        ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 46367, rho 46368⟩ := by
  obtain ⟨r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977⟩ := seg52In0_rows82 rho h
  unfold Seg52.relationRow1965 at r1965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1965

  unfold Seg52.relationRow1966 at r1966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1966

  unfold Seg52.relationRow1967 at r1967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1967

  unfold Seg52.relationRow1968 at r1968

  unfold Seg52.relationRow1969 at r1969

  unfold Seg52.relationRow1970 at r1970

  unfold Seg52.relationRow1971 at r1971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1971

  unfold Seg52.relationRow1972 at r1972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1972

  unfold Seg52.relationRow1973 at r1973

  unfold Seg52.relationRow1974 at r1974

  unfold Seg52.relationRow1975 at r1975

  unfold Seg52.relationRow1976 at r1976

  unfold Seg52.relationRow1977 at r1977

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX83 rho = seg52In0AccX82 rho + rho 46362 := by
    unfold seg52In0AccX83 seg52In0AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 82]

    ring

  have hnexty : seg52In0AccY83 rho = seg52In0AccY82 rho + rho 46363 := by
    unfold seg52In0AccY83 seg52In0AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 82]

    ring

  have ha0 : (rho 46354 + rho 46355) * (seg52In0AccX82 rho + seg52In0AccY82 rho) = rho 46356 := by
    unfold seg52In0AccX82 seg52In0AccY82
    linear_combination r1965
  have ha1 : rho 46355 * seg52In0AccX82 rho = rho 46357 := by
    unfold seg52In0AccX82
    linear_combination r1966
  have ha2 : rho 46354 * seg52In0AccY82 rho = rho 46358 := by
    unfold seg52In0AccY82
    linear_combination r1967
  have ha3 : 3021 * rho 46357 * rho 46358 = rho 46359 := by
    linear_combination r1968
  have ha4 : rho 46360 * (1 + rho 46359) = rho 46357 + rho 46358 := by
    linear_combination r1969
  have ha5 : rho 46361 * (1 - rho 46359) = rho 46356 - rho 46357 - rho 46358 := by
    linear_combination r1970
  have haddx :
      rho 46360 * (1 + 3021 * (rho 46355 * seg52In0AccX82 rho) * (rho 46354 * seg52In0AccY82 rho)) =
        rho 46355 * seg52In0AccX82 rho + rho 46354 * seg52In0AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46361 * (1 - 3021 * (rho 46355 * seg52In0AccX82 rho) * (rho 46354 * seg52In0AccY82 rho)) =
        (-1) * (rho 46355 * seg52In0AccX82 rho) - rho 46354 * seg52In0AccY82 rho +
          (seg52In0AccY82 rho - seg52In0AccX82 rho * (-1)) * (rho 46354 + rho 46355) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46361 * (1 - rho 46359) = rho 46356 - rho 46357 - rho 46358 := ha5
      _ = (-1) * rho 46357 - rho 46358 + (seg52In0AccY82 rho - seg52In0AccX82 rho * (-1)) *
          (rho 46354 + rho 46355) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX83 rho = seg52In0AccX82 rho - Bool.toZMod bit * (seg52In0AccX82 rho - rho 46360) := by
    have hd : rho 46362 = Bool.toZMod bit * (rho 46360 - seg52In0AccX82 rho) := by
      rw [← hbit]
      unfold seg52In0AccX82
      linear_combination -r1971
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY83 rho = seg52In0AccY82 rho - Bool.toZMod bit * (seg52In0AccY82 rho - rho 46361) := by
    have hd : rho 46363 = Bool.toZMod bit * (rho 46361 - seg52In0AccY82 rho) := by
      rw [← hbit]
      unfold seg52In0AccY82
      linear_combination -r1972
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46354 * rho 46355 = rho 46364 := by linear_combination r1973
  have hd1 : rho 46354 * rho 46354 = rho 46365 := by linear_combination r1974
  have hd2 : rho 46355 * rho 46355 = rho 46366 := by linear_combination r1975
  have hd3 : rho 46367 * (rho 46355 * rho 46355 + rho 46354 * rho 46354 * (-1)) =
      2 * (rho 46354 * rho 46355) := by
    rw [hd0, hd1, hd2]
    linear_combination r1976
  have hd4 : rho 46368 * (2 - (rho 46355 * rho 46355 + rho 46354 * rho 46354 * (-1))) =
      rho 46355 * rho 46355 - rho 46354 * rho 46354 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1977
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX82 rho, seg52In0AccY82 rho⟩ ⟨rho 46354, rho 46355⟩
    ⟨rho 46360, rho 46361⟩ ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 46367, rho 46368⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1978 rho ∧ Seg52.relationRow1979 rho ∧ Seg52.relationRow1980 rho ∧ Seg52.relationRow1981 rho ∧ Seg52.relationRow1982 rho ∧ Seg52.relationRow1983 rho ∧ Seg52.relationRow1984 rho ∧ Seg52.relationRow1985 rho ∧ Seg52.relationRow1986 rho ∧ Seg52.relationRow1987 rho ∧ Seg52.relationRow1988 rho ∧ Seg52.relationRow1989 rho ∧ Seg52.relationRow1990 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990⟩

theorem seg52In0_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45251 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46367, rho 46368⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 46367, rho 46368⟩
        ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 46380, rho 46381⟩ := by
  obtain ⟨r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990⟩ := seg52In0_rows83 rho h
  unfold Seg52.relationRow1978 at r1978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1978

  unfold Seg52.relationRow1979 at r1979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1979

  unfold Seg52.relationRow1980 at r1980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1980

  unfold Seg52.relationRow1981 at r1981

  unfold Seg52.relationRow1982 at r1982

  unfold Seg52.relationRow1983 at r1983

  unfold Seg52.relationRow1984 at r1984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1984

  unfold Seg52.relationRow1985 at r1985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1985

  unfold Seg52.relationRow1986 at r1986

  unfold Seg52.relationRow1987 at r1987

  unfold Seg52.relationRow1988 at r1988

  unfold Seg52.relationRow1989 at r1989

  unfold Seg52.relationRow1990 at r1990

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX84 rho = seg52In0AccX83 rho + rho 46375 := by
    unfold seg52In0AccX84 seg52In0AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 83]

    ring

  have hnexty : seg52In0AccY84 rho = seg52In0AccY83 rho + rho 46376 := by
    unfold seg52In0AccY84 seg52In0AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 83]

    ring

  have ha0 : (rho 46367 + rho 46368) * (seg52In0AccX83 rho + seg52In0AccY83 rho) = rho 46369 := by
    unfold seg52In0AccX83 seg52In0AccY83
    linear_combination r1978
  have ha1 : rho 46368 * seg52In0AccX83 rho = rho 46370 := by
    unfold seg52In0AccX83
    linear_combination r1979
  have ha2 : rho 46367 * seg52In0AccY83 rho = rho 46371 := by
    unfold seg52In0AccY83
    linear_combination r1980
  have ha3 : 3021 * rho 46370 * rho 46371 = rho 46372 := by
    linear_combination r1981
  have ha4 : rho 46373 * (1 + rho 46372) = rho 46370 + rho 46371 := by
    linear_combination r1982
  have ha5 : rho 46374 * (1 - rho 46372) = rho 46369 - rho 46370 - rho 46371 := by
    linear_combination r1983
  have haddx :
      rho 46373 * (1 + 3021 * (rho 46368 * seg52In0AccX83 rho) * (rho 46367 * seg52In0AccY83 rho)) =
        rho 46368 * seg52In0AccX83 rho + rho 46367 * seg52In0AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46374 * (1 - 3021 * (rho 46368 * seg52In0AccX83 rho) * (rho 46367 * seg52In0AccY83 rho)) =
        (-1) * (rho 46368 * seg52In0AccX83 rho) - rho 46367 * seg52In0AccY83 rho +
          (seg52In0AccY83 rho - seg52In0AccX83 rho * (-1)) * (rho 46367 + rho 46368) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46374 * (1 - rho 46372) = rho 46369 - rho 46370 - rho 46371 := ha5
      _ = (-1) * rho 46370 - rho 46371 + (seg52In0AccY83 rho - seg52In0AccX83 rho * (-1)) *
          (rho 46367 + rho 46368) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX84 rho = seg52In0AccX83 rho - Bool.toZMod bit * (seg52In0AccX83 rho - rho 46373) := by
    have hd : rho 46375 = Bool.toZMod bit * (rho 46373 - seg52In0AccX83 rho) := by
      rw [← hbit]
      unfold seg52In0AccX83
      linear_combination -r1984
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY84 rho = seg52In0AccY83 rho - Bool.toZMod bit * (seg52In0AccY83 rho - rho 46374) := by
    have hd : rho 46376 = Bool.toZMod bit * (rho 46374 - seg52In0AccY83 rho) := by
      rw [← hbit]
      unfold seg52In0AccY83
      linear_combination -r1985
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46367 * rho 46368 = rho 46377 := by linear_combination r1986
  have hd1 : rho 46367 * rho 46367 = rho 46378 := by linear_combination r1987
  have hd2 : rho 46368 * rho 46368 = rho 46379 := by linear_combination r1988
  have hd3 : rho 46380 * (rho 46368 * rho 46368 + rho 46367 * rho 46367 * (-1)) =
      2 * (rho 46367 * rho 46368) := by
    rw [hd0, hd1, hd2]
    linear_combination r1989
  have hd4 : rho 46381 * (2 - (rho 46368 * rho 46368 + rho 46367 * rho 46367 * (-1))) =
      rho 46368 * rho 46368 - rho 46367 * rho 46367 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1990
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX83 rho, seg52In0AccY83 rho⟩ ⟨rho 46367, rho 46368⟩
    ⟨rho 46373, rho 46374⟩ ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 46380, rho 46381⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1991 rho ∧ Seg52.relationRow1992 rho ∧ Seg52.relationRow1993 rho ∧ Seg52.relationRow1994 rho ∧ Seg52.relationRow1995 rho ∧ Seg52.relationRow1996 rho ∧ Seg52.relationRow1997 rho ∧ Seg52.relationRow1998 rho ∧ Seg52.relationRow1999 rho ∧ Seg52.relationRow2000 rho ∧ Seg52.relationRow2001 rho ∧ Seg52.relationRow2002 rho ∧ Seg52.relationRow2003 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p24, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨r2000, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999, r2000, r2001, r2002, r2003⟩

theorem seg52In0_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45252 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46380, rho 46381⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 46380, rho 46381⟩
        ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 46393, rho 46394⟩ := by
  obtain ⟨r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999, r2000, r2001, r2002, r2003⟩ := seg52In0_rows84 rho h
  unfold Seg52.relationRow1991 at r1991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1991

  unfold Seg52.relationRow1992 at r1992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1992

  unfold Seg52.relationRow1993 at r1993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1993

  unfold Seg52.relationRow1994 at r1994

  unfold Seg52.relationRow1995 at r1995

  unfold Seg52.relationRow1996 at r1996

  unfold Seg52.relationRow1997 at r1997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1997

  unfold Seg52.relationRow1998 at r1998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1998

  unfold Seg52.relationRow1999 at r1999

  unfold Seg52.relationRow2000 at r2000

  unfold Seg52.relationRow2001 at r2001

  unfold Seg52.relationRow2002 at r2002

  unfold Seg52.relationRow2003 at r2003

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX85 rho = seg52In0AccX84 rho + rho 46388 := by
    unfold seg52In0AccX85 seg52In0AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 84]

    ring

  have hnexty : seg52In0AccY85 rho = seg52In0AccY84 rho + rho 46389 := by
    unfold seg52In0AccY85 seg52In0AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 84]

    ring

  have ha0 : (rho 46380 + rho 46381) * (seg52In0AccX84 rho + seg52In0AccY84 rho) = rho 46382 := by
    unfold seg52In0AccX84 seg52In0AccY84
    linear_combination r1991
  have ha1 : rho 46381 * seg52In0AccX84 rho = rho 46383 := by
    unfold seg52In0AccX84
    linear_combination r1992
  have ha2 : rho 46380 * seg52In0AccY84 rho = rho 46384 := by
    unfold seg52In0AccY84
    linear_combination r1993
  have ha3 : 3021 * rho 46383 * rho 46384 = rho 46385 := by
    linear_combination r1994
  have ha4 : rho 46386 * (1 + rho 46385) = rho 46383 + rho 46384 := by
    linear_combination r1995
  have ha5 : rho 46387 * (1 - rho 46385) = rho 46382 - rho 46383 - rho 46384 := by
    linear_combination r1996
  have haddx :
      rho 46386 * (1 + 3021 * (rho 46381 * seg52In0AccX84 rho) * (rho 46380 * seg52In0AccY84 rho)) =
        rho 46381 * seg52In0AccX84 rho + rho 46380 * seg52In0AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46387 * (1 - 3021 * (rho 46381 * seg52In0AccX84 rho) * (rho 46380 * seg52In0AccY84 rho)) =
        (-1) * (rho 46381 * seg52In0AccX84 rho) - rho 46380 * seg52In0AccY84 rho +
          (seg52In0AccY84 rho - seg52In0AccX84 rho * (-1)) * (rho 46380 + rho 46381) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46387 * (1 - rho 46385) = rho 46382 - rho 46383 - rho 46384 := ha5
      _ = (-1) * rho 46383 - rho 46384 + (seg52In0AccY84 rho - seg52In0AccX84 rho * (-1)) *
          (rho 46380 + rho 46381) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX85 rho = seg52In0AccX84 rho - Bool.toZMod bit * (seg52In0AccX84 rho - rho 46386) := by
    have hd : rho 46388 = Bool.toZMod bit * (rho 46386 - seg52In0AccX84 rho) := by
      rw [← hbit]
      unfold seg52In0AccX84
      linear_combination -r1997
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY85 rho = seg52In0AccY84 rho - Bool.toZMod bit * (seg52In0AccY84 rho - rho 46387) := by
    have hd : rho 46389 = Bool.toZMod bit * (rho 46387 - seg52In0AccY84 rho) := by
      rw [← hbit]
      unfold seg52In0AccY84
      linear_combination -r1998
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46380 * rho 46381 = rho 46390 := by linear_combination r1999
  have hd1 : rho 46380 * rho 46380 = rho 46391 := by linear_combination r2000
  have hd2 : rho 46381 * rho 46381 = rho 46392 := by linear_combination r2001
  have hd3 : rho 46393 * (rho 46381 * rho 46381 + rho 46380 * rho 46380 * (-1)) =
      2 * (rho 46380 * rho 46381) := by
    rw [hd0, hd1, hd2]
    linear_combination r2002
  have hd4 : rho 46394 * (2 - (rho 46381 * rho 46381 + rho 46380 * rho 46380 * (-1))) =
      rho 46381 * rho 46381 - rho 46380 * rho 46380 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2003
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX84 rho, seg52In0AccY84 rho⟩ ⟨rho 46380, rho 46381⟩
    ⟨rho 46386, rho 46387⟩ ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 46393, rho 46394⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2004 rho ∧ Seg52.relationRow2005 rho ∧ Seg52.relationRow2006 rho ∧ Seg52.relationRow2007 rho ∧ Seg52.relationRow2008 rho ∧ Seg52.relationRow2009 rho ∧ Seg52.relationRow2010 rho ∧ Seg52.relationRow2011 rho ∧ Seg52.relationRow2012 rho ∧ Seg52.relationRow2013 rho ∧ Seg52.relationRow2014 rho ∧ Seg52.relationRow2015 rho ∧ Seg52.relationRow2016 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016⟩

theorem seg52In0_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45253 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46393, rho 46394⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 46393, rho 46394⟩
        ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 46406, rho 46407⟩ := by
  obtain ⟨r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016⟩ := seg52In0_rows85 rho h
  unfold Seg52.relationRow2004 at r2004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2004

  unfold Seg52.relationRow2005 at r2005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2005

  unfold Seg52.relationRow2006 at r2006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2006

  unfold Seg52.relationRow2007 at r2007

  unfold Seg52.relationRow2008 at r2008

  unfold Seg52.relationRow2009 at r2009

  unfold Seg52.relationRow2010 at r2010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2010

  unfold Seg52.relationRow2011 at r2011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2011

  unfold Seg52.relationRow2012 at r2012

  unfold Seg52.relationRow2013 at r2013

  unfold Seg52.relationRow2014 at r2014

  unfold Seg52.relationRow2015 at r2015

  unfold Seg52.relationRow2016 at r2016

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX86 rho = seg52In0AccX85 rho + rho 46401 := by
    unfold seg52In0AccX86 seg52In0AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 85]

    ring

  have hnexty : seg52In0AccY86 rho = seg52In0AccY85 rho + rho 46402 := by
    unfold seg52In0AccY86 seg52In0AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 85]

    ring

  have ha0 : (rho 46393 + rho 46394) * (seg52In0AccX85 rho + seg52In0AccY85 rho) = rho 46395 := by
    unfold seg52In0AccX85 seg52In0AccY85
    linear_combination r2004
  have ha1 : rho 46394 * seg52In0AccX85 rho = rho 46396 := by
    unfold seg52In0AccX85
    linear_combination r2005
  have ha2 : rho 46393 * seg52In0AccY85 rho = rho 46397 := by
    unfold seg52In0AccY85
    linear_combination r2006
  have ha3 : 3021 * rho 46396 * rho 46397 = rho 46398 := by
    linear_combination r2007
  have ha4 : rho 46399 * (1 + rho 46398) = rho 46396 + rho 46397 := by
    linear_combination r2008
  have ha5 : rho 46400 * (1 - rho 46398) = rho 46395 - rho 46396 - rho 46397 := by
    linear_combination r2009
  have haddx :
      rho 46399 * (1 + 3021 * (rho 46394 * seg52In0AccX85 rho) * (rho 46393 * seg52In0AccY85 rho)) =
        rho 46394 * seg52In0AccX85 rho + rho 46393 * seg52In0AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46400 * (1 - 3021 * (rho 46394 * seg52In0AccX85 rho) * (rho 46393 * seg52In0AccY85 rho)) =
        (-1) * (rho 46394 * seg52In0AccX85 rho) - rho 46393 * seg52In0AccY85 rho +
          (seg52In0AccY85 rho - seg52In0AccX85 rho * (-1)) * (rho 46393 + rho 46394) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46400 * (1 - rho 46398) = rho 46395 - rho 46396 - rho 46397 := ha5
      _ = (-1) * rho 46396 - rho 46397 + (seg52In0AccY85 rho - seg52In0AccX85 rho * (-1)) *
          (rho 46393 + rho 46394) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX86 rho = seg52In0AccX85 rho - Bool.toZMod bit * (seg52In0AccX85 rho - rho 46399) := by
    have hd : rho 46401 = Bool.toZMod bit * (rho 46399 - seg52In0AccX85 rho) := by
      rw [← hbit]
      unfold seg52In0AccX85
      linear_combination -r2010
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY86 rho = seg52In0AccY85 rho - Bool.toZMod bit * (seg52In0AccY85 rho - rho 46400) := by
    have hd : rho 46402 = Bool.toZMod bit * (rho 46400 - seg52In0AccY85 rho) := by
      rw [← hbit]
      unfold seg52In0AccY85
      linear_combination -r2011
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46393 * rho 46394 = rho 46403 := by linear_combination r2012
  have hd1 : rho 46393 * rho 46393 = rho 46404 := by linear_combination r2013
  have hd2 : rho 46394 * rho 46394 = rho 46405 := by linear_combination r2014
  have hd3 : rho 46406 * (rho 46394 * rho 46394 + rho 46393 * rho 46393 * (-1)) =
      2 * (rho 46393 * rho 46394) := by
    rw [hd0, hd1, hd2]
    linear_combination r2015
  have hd4 : rho 46407 * (2 - (rho 46394 * rho 46394 + rho 46393 * rho 46393 * (-1))) =
      rho 46394 * rho 46394 - rho 46393 * rho 46393 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2016
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX85 rho, seg52In0AccY85 rho⟩ ⟨rho 46393, rho 46394⟩
    ⟨rho 46399, rho 46400⟩ ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 46406, rho 46407⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2017 rho ∧ Seg52.relationRow2018 rho ∧ Seg52.relationRow2019 rho ∧ Seg52.relationRow2020 rho ∧ Seg52.relationRow2021 rho ∧ Seg52.relationRow2022 rho ∧ Seg52.relationRow2023 rho ∧ Seg52.relationRow2024 rho ∧ Seg52.relationRow2025 rho ∧ Seg52.relationRow2026 rho ∧ Seg52.relationRow2027 rho ∧ Seg52.relationRow2028 rho ∧ Seg52.relationRow2029 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029⟩

theorem seg52In0_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45254 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46406, rho 46407⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 46406, rho 46407⟩
        ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 46419, rho 46420⟩ := by
  obtain ⟨r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029⟩ := seg52In0_rows86 rho h
  unfold Seg52.relationRow2017 at r2017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2017

  unfold Seg52.relationRow2018 at r2018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2018

  unfold Seg52.relationRow2019 at r2019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2019

  unfold Seg52.relationRow2020 at r2020

  unfold Seg52.relationRow2021 at r2021

  unfold Seg52.relationRow2022 at r2022

  unfold Seg52.relationRow2023 at r2023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2023

  unfold Seg52.relationRow2024 at r2024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2024

  unfold Seg52.relationRow2025 at r2025

  unfold Seg52.relationRow2026 at r2026

  unfold Seg52.relationRow2027 at r2027

  unfold Seg52.relationRow2028 at r2028

  unfold Seg52.relationRow2029 at r2029

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX87 rho = seg52In0AccX86 rho + rho 46414 := by
    unfold seg52In0AccX87 seg52In0AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 86]

    ring

  have hnexty : seg52In0AccY87 rho = seg52In0AccY86 rho + rho 46415 := by
    unfold seg52In0AccY87 seg52In0AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 86]

    ring

  have ha0 : (rho 46406 + rho 46407) * (seg52In0AccX86 rho + seg52In0AccY86 rho) = rho 46408 := by
    unfold seg52In0AccX86 seg52In0AccY86
    linear_combination r2017
  have ha1 : rho 46407 * seg52In0AccX86 rho = rho 46409 := by
    unfold seg52In0AccX86
    linear_combination r2018
  have ha2 : rho 46406 * seg52In0AccY86 rho = rho 46410 := by
    unfold seg52In0AccY86
    linear_combination r2019
  have ha3 : 3021 * rho 46409 * rho 46410 = rho 46411 := by
    linear_combination r2020
  have ha4 : rho 46412 * (1 + rho 46411) = rho 46409 + rho 46410 := by
    linear_combination r2021
  have ha5 : rho 46413 * (1 - rho 46411) = rho 46408 - rho 46409 - rho 46410 := by
    linear_combination r2022
  have haddx :
      rho 46412 * (1 + 3021 * (rho 46407 * seg52In0AccX86 rho) * (rho 46406 * seg52In0AccY86 rho)) =
        rho 46407 * seg52In0AccX86 rho + rho 46406 * seg52In0AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46413 * (1 - 3021 * (rho 46407 * seg52In0AccX86 rho) * (rho 46406 * seg52In0AccY86 rho)) =
        (-1) * (rho 46407 * seg52In0AccX86 rho) - rho 46406 * seg52In0AccY86 rho +
          (seg52In0AccY86 rho - seg52In0AccX86 rho * (-1)) * (rho 46406 + rho 46407) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46413 * (1 - rho 46411) = rho 46408 - rho 46409 - rho 46410 := ha5
      _ = (-1) * rho 46409 - rho 46410 + (seg52In0AccY86 rho - seg52In0AccX86 rho * (-1)) *
          (rho 46406 + rho 46407) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX87 rho = seg52In0AccX86 rho - Bool.toZMod bit * (seg52In0AccX86 rho - rho 46412) := by
    have hd : rho 46414 = Bool.toZMod bit * (rho 46412 - seg52In0AccX86 rho) := by
      rw [← hbit]
      unfold seg52In0AccX86
      linear_combination -r2023
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY87 rho = seg52In0AccY86 rho - Bool.toZMod bit * (seg52In0AccY86 rho - rho 46413) := by
    have hd : rho 46415 = Bool.toZMod bit * (rho 46413 - seg52In0AccY86 rho) := by
      rw [← hbit]
      unfold seg52In0AccY86
      linear_combination -r2024
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46406 * rho 46407 = rho 46416 := by linear_combination r2025
  have hd1 : rho 46406 * rho 46406 = rho 46417 := by linear_combination r2026
  have hd2 : rho 46407 * rho 46407 = rho 46418 := by linear_combination r2027
  have hd3 : rho 46419 * (rho 46407 * rho 46407 + rho 46406 * rho 46406 * (-1)) =
      2 * (rho 46406 * rho 46407) := by
    rw [hd0, hd1, hd2]
    linear_combination r2028
  have hd4 : rho 46420 * (2 - (rho 46407 * rho 46407 + rho 46406 * rho 46406 * (-1))) =
      rho 46407 * rho 46407 - rho 46406 * rho 46406 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2029
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX86 rho, seg52In0AccY86 rho⟩ ⟨rho 46406, rho 46407⟩
    ⟨rho 46412, rho 46413⟩ ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 46419, rho 46420⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow2030 rho ∧ Seg52.relationRow2031 rho ∧ Seg52.relationRow2032 rho ∧ Seg52.relationRow2033 rho ∧ Seg52.relationRow2034 rho ∧ Seg52.relationRow2035 rho ∧ Seg52.relationRow2036 rho ∧ Seg52.relationRow2037 rho ∧ Seg52.relationRow2038 rho ∧ Seg52.relationRow2039 rho ∧ Seg52.relationRow2040 rho ∧ Seg52.relationRow2041 rho ∧ Seg52.relationRow2042 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p25, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042⟩

theorem seg52In0_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45255 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46419, rho 46420⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 46419, rho 46420⟩
        ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 46432, rho 46433⟩ := by
  obtain ⟨r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042⟩ := seg52In0_rows87 rho h
  unfold Seg52.relationRow2030 at r2030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2030

  unfold Seg52.relationRow2031 at r2031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2031

  unfold Seg52.relationRow2032 at r2032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2032

  unfold Seg52.relationRow2033 at r2033

  unfold Seg52.relationRow2034 at r2034

  unfold Seg52.relationRow2035 at r2035

  unfold Seg52.relationRow2036 at r2036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2036

  unfold Seg52.relationRow2037 at r2037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2037

  unfold Seg52.relationRow2038 at r2038

  unfold Seg52.relationRow2039 at r2039

  unfold Seg52.relationRow2040 at r2040

  unfold Seg52.relationRow2041 at r2041

  unfold Seg52.relationRow2042 at r2042

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX88 rho = seg52In0AccX87 rho + rho 46427 := by
    unfold seg52In0AccX88 seg52In0AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 87]

    ring

  have hnexty : seg52In0AccY88 rho = seg52In0AccY87 rho + rho 46428 := by
    unfold seg52In0AccY88 seg52In0AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 87]

    ring

  have ha0 : (rho 46419 + rho 46420) * (seg52In0AccX87 rho + seg52In0AccY87 rho) = rho 46421 := by
    unfold seg52In0AccX87 seg52In0AccY87
    linear_combination r2030
  have ha1 : rho 46420 * seg52In0AccX87 rho = rho 46422 := by
    unfold seg52In0AccX87
    linear_combination r2031
  have ha2 : rho 46419 * seg52In0AccY87 rho = rho 46423 := by
    unfold seg52In0AccY87
    linear_combination r2032
  have ha3 : 3021 * rho 46422 * rho 46423 = rho 46424 := by
    linear_combination r2033
  have ha4 : rho 46425 * (1 + rho 46424) = rho 46422 + rho 46423 := by
    linear_combination r2034
  have ha5 : rho 46426 * (1 - rho 46424) = rho 46421 - rho 46422 - rho 46423 := by
    linear_combination r2035
  have haddx :
      rho 46425 * (1 + 3021 * (rho 46420 * seg52In0AccX87 rho) * (rho 46419 * seg52In0AccY87 rho)) =
        rho 46420 * seg52In0AccX87 rho + rho 46419 * seg52In0AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46426 * (1 - 3021 * (rho 46420 * seg52In0AccX87 rho) * (rho 46419 * seg52In0AccY87 rho)) =
        (-1) * (rho 46420 * seg52In0AccX87 rho) - rho 46419 * seg52In0AccY87 rho +
          (seg52In0AccY87 rho - seg52In0AccX87 rho * (-1)) * (rho 46419 + rho 46420) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46426 * (1 - rho 46424) = rho 46421 - rho 46422 - rho 46423 := ha5
      _ = (-1) * rho 46422 - rho 46423 + (seg52In0AccY87 rho - seg52In0AccX87 rho * (-1)) *
          (rho 46419 + rho 46420) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX88 rho = seg52In0AccX87 rho - Bool.toZMod bit * (seg52In0AccX87 rho - rho 46425) := by
    have hd : rho 46427 = Bool.toZMod bit * (rho 46425 - seg52In0AccX87 rho) := by
      rw [← hbit]
      unfold seg52In0AccX87
      linear_combination -r2036
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY88 rho = seg52In0AccY87 rho - Bool.toZMod bit * (seg52In0AccY87 rho - rho 46426) := by
    have hd : rho 46428 = Bool.toZMod bit * (rho 46426 - seg52In0AccY87 rho) := by
      rw [← hbit]
      unfold seg52In0AccY87
      linear_combination -r2037
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46419 * rho 46420 = rho 46429 := by linear_combination r2038
  have hd1 : rho 46419 * rho 46419 = rho 46430 := by linear_combination r2039
  have hd2 : rho 46420 * rho 46420 = rho 46431 := by linear_combination r2040
  have hd3 : rho 46432 * (rho 46420 * rho 46420 + rho 46419 * rho 46419 * (-1)) =
      2 * (rho 46419 * rho 46420) := by
    rw [hd0, hd1, hd2]
    linear_combination r2041
  have hd4 : rho 46433 * (2 - (rho 46420 * rho 46420 + rho 46419 * rho 46419 * (-1))) =
      rho 46420 * rho 46420 - rho 46419 * rho 46419 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2042
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX87 rho, seg52In0AccY87 rho⟩ ⟨rho 46419, rho 46420⟩
    ⟨rho 46425, rho 46426⟩ ⟨seg52In0AccX88 rho, seg52In0AccY88 rho⟩ ⟨rho 46432, rho 46433⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg52In0_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg52In0_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg52In0_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg52In0_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg52In0_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg52In0_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg52In0_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg52In0_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg52In0_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg52In0_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
