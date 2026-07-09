import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1900 rho ∧ Seg48.relationRow1901 rho ∧ Seg48.relationRow1902 rho ∧ Seg48.relationRow1903 rho ∧ Seg48.relationRow1904 rho ∧ Seg48.relationRow1905 rho ∧ Seg48.relationRow1906 rho ∧ Seg48.relationRow1907 rho ∧ Seg48.relationRow1908 rho ∧ Seg48.relationRow1909 rho ∧ Seg48.relationRow1910 rho ∧ Seg48.relationRow1911 rho ∧ Seg48.relationRow1912 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, _, _, _, _, _, _, _⟩

  exact ⟨r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912⟩

theorem seg48In0_rung77 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33613 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX77 rho, seg48In0AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34657, rho 34658⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX77 rho, seg48In0AccY77 rho⟩ ⟨rho 34657, rho 34658⟩
        ⟨seg48In0AccX78 rho, seg48In0AccY78 rho⟩ ⟨rho 34670, rho 34671⟩ := by
  obtain ⟨r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912⟩ := seg48In0_rows77 rho h
  unfold Seg48.relationRow1900 at r1900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1900

  unfold Seg48.relationRow1901 at r1901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1901

  unfold Seg48.relationRow1902 at r1902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1902

  unfold Seg48.relationRow1903 at r1903

  unfold Seg48.relationRow1904 at r1904

  unfold Seg48.relationRow1905 at r1905

  unfold Seg48.relationRow1906 at r1906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1906

  unfold Seg48.relationRow1907 at r1907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1907

  unfold Seg48.relationRow1908 at r1908

  unfold Seg48.relationRow1909 at r1909

  unfold Seg48.relationRow1910 at r1910

  unfold Seg48.relationRow1911 at r1911

  unfold Seg48.relationRow1912 at r1912

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX78 rho = seg48In0AccX77 rho + rho 34665 := by
    unfold seg48In0AccX78 seg48In0AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 77]

    ring

  have hnexty : seg48In0AccY78 rho = seg48In0AccY77 rho + rho 34666 := by
    unfold seg48In0AccY78 seg48In0AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 77]

    ring

  have ha0 : (rho 34657 + rho 34658) * (seg48In0AccX77 rho + seg48In0AccY77 rho) = rho 34659 := by
    unfold seg48In0AccX77 seg48In0AccY77
    linear_combination r1900
  have ha1 : rho 34658 * seg48In0AccX77 rho = rho 34660 := by
    unfold seg48In0AccX77
    linear_combination r1901
  have ha2 : rho 34657 * seg48In0AccY77 rho = rho 34661 := by
    unfold seg48In0AccY77
    linear_combination r1902
  have ha3 : 3021 * rho 34660 * rho 34661 = rho 34662 := by
    linear_combination r1903
  have ha4 : rho 34663 * (1 + rho 34662) = rho 34660 + rho 34661 := by
    linear_combination r1904
  have ha5 : rho 34664 * (1 - rho 34662) = rho 34659 - rho 34660 - rho 34661 := by
    linear_combination r1905
  have haddx :
      rho 34663 * (1 + 3021 * (rho 34658 * seg48In0AccX77 rho) * (rho 34657 * seg48In0AccY77 rho)) =
        rho 34658 * seg48In0AccX77 rho + rho 34657 * seg48In0AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34664 * (1 - 3021 * (rho 34658 * seg48In0AccX77 rho) * (rho 34657 * seg48In0AccY77 rho)) =
        (-1) * (rho 34658 * seg48In0AccX77 rho) - rho 34657 * seg48In0AccY77 rho +
          (seg48In0AccY77 rho - seg48In0AccX77 rho * (-1)) * (rho 34657 + rho 34658) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34664 * (1 - rho 34662) = rho 34659 - rho 34660 - rho 34661 := ha5
      _ = (-1) * rho 34660 - rho 34661 + (seg48In0AccY77 rho - seg48In0AccX77 rho * (-1)) *
          (rho 34657 + rho 34658) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX78 rho = seg48In0AccX77 rho - Bool.toZMod bit * (seg48In0AccX77 rho - rho 34663) := by
    have hd : rho 34665 = Bool.toZMod bit * (rho 34663 - seg48In0AccX77 rho) := by
      rw [← hbit]
      unfold seg48In0AccX77
      linear_combination -r1906
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY78 rho = seg48In0AccY77 rho - Bool.toZMod bit * (seg48In0AccY77 rho - rho 34664) := by
    have hd : rho 34666 = Bool.toZMod bit * (rho 34664 - seg48In0AccY77 rho) := by
      rw [← hbit]
      unfold seg48In0AccY77
      linear_combination -r1907
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34657 * rho 34658 = rho 34667 := by linear_combination r1908
  have hd1 : rho 34657 * rho 34657 = rho 34668 := by linear_combination r1909
  have hd2 : rho 34658 * rho 34658 = rho 34669 := by linear_combination r1910
  have hd3 : rho 34670 * (rho 34658 * rho 34658 + rho 34657 * rho 34657 * (-1)) =
      2 * (rho 34657 * rho 34658) := by
    rw [hd0, hd1, hd2]
    linear_combination r1911
  have hd4 : rho 34671 * (2 - (rho 34658 * rho 34658 + rho 34657 * rho 34657 * (-1))) =
      rho 34658 * rho 34658 - rho 34657 * rho 34657 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1912
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX77 rho, seg48In0AccY77 rho⟩ ⟨rho 34657, rho 34658⟩
    ⟨rho 34663, rho 34664⟩ ⟨seg48In0AccX78 rho, seg48In0AccY78 rho⟩ ⟨rho 34670, rho 34671⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1913 rho ∧ Seg48.relationRow1914 rho ∧ Seg48.relationRow1915 rho ∧ Seg48.relationRow1916 rho ∧ Seg48.relationRow1917 rho ∧ Seg48.relationRow1918 rho ∧ Seg48.relationRow1919 rho ∧ Seg48.relationRow1920 rho ∧ Seg48.relationRow1921 rho ∧ Seg48.relationRow1922 rho ∧ Seg48.relationRow1923 rho ∧ Seg48.relationRow1924 rho ∧ Seg48.relationRow1925 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1913, r1914, r1915, r1916, r1917, r1918, r1919⟩

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1913, r1914, r1915, r1916, r1917, r1918, r1919, r1920, r1921, r1922, r1923, r1924, r1925⟩

theorem seg48In0_rung78 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33614 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX78 rho, seg48In0AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34670, rho 34671⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX78 rho, seg48In0AccY78 rho⟩ ⟨rho 34670, rho 34671⟩
        ⟨seg48In0AccX79 rho, seg48In0AccY79 rho⟩ ⟨rho 34683, rho 34684⟩ := by
  obtain ⟨r1913, r1914, r1915, r1916, r1917, r1918, r1919, r1920, r1921, r1922, r1923, r1924, r1925⟩ := seg48In0_rows78 rho h
  unfold Seg48.relationRow1913 at r1913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1913

  unfold Seg48.relationRow1914 at r1914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1914

  unfold Seg48.relationRow1915 at r1915

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1915

  unfold Seg48.relationRow1916 at r1916

  unfold Seg48.relationRow1917 at r1917

  unfold Seg48.relationRow1918 at r1918

  unfold Seg48.relationRow1919 at r1919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1919

  unfold Seg48.relationRow1920 at r1920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1920

  unfold Seg48.relationRow1921 at r1921

  unfold Seg48.relationRow1922 at r1922

  unfold Seg48.relationRow1923 at r1923

  unfold Seg48.relationRow1924 at r1924

  unfold Seg48.relationRow1925 at r1925

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX79 rho = seg48In0AccX78 rho + rho 34678 := by
    unfold seg48In0AccX79 seg48In0AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 78]

    ring

  have hnexty : seg48In0AccY79 rho = seg48In0AccY78 rho + rho 34679 := by
    unfold seg48In0AccY79 seg48In0AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 78]

    ring

  have ha0 : (rho 34670 + rho 34671) * (seg48In0AccX78 rho + seg48In0AccY78 rho) = rho 34672 := by
    unfold seg48In0AccX78 seg48In0AccY78
    linear_combination r1913
  have ha1 : rho 34671 * seg48In0AccX78 rho = rho 34673 := by
    unfold seg48In0AccX78
    linear_combination r1914
  have ha2 : rho 34670 * seg48In0AccY78 rho = rho 34674 := by
    unfold seg48In0AccY78
    linear_combination r1915
  have ha3 : 3021 * rho 34673 * rho 34674 = rho 34675 := by
    linear_combination r1916
  have ha4 : rho 34676 * (1 + rho 34675) = rho 34673 + rho 34674 := by
    linear_combination r1917
  have ha5 : rho 34677 * (1 - rho 34675) = rho 34672 - rho 34673 - rho 34674 := by
    linear_combination r1918
  have haddx :
      rho 34676 * (1 + 3021 * (rho 34671 * seg48In0AccX78 rho) * (rho 34670 * seg48In0AccY78 rho)) =
        rho 34671 * seg48In0AccX78 rho + rho 34670 * seg48In0AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34677 * (1 - 3021 * (rho 34671 * seg48In0AccX78 rho) * (rho 34670 * seg48In0AccY78 rho)) =
        (-1) * (rho 34671 * seg48In0AccX78 rho) - rho 34670 * seg48In0AccY78 rho +
          (seg48In0AccY78 rho - seg48In0AccX78 rho * (-1)) * (rho 34670 + rho 34671) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34677 * (1 - rho 34675) = rho 34672 - rho 34673 - rho 34674 := ha5
      _ = (-1) * rho 34673 - rho 34674 + (seg48In0AccY78 rho - seg48In0AccX78 rho * (-1)) *
          (rho 34670 + rho 34671) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX79 rho = seg48In0AccX78 rho - Bool.toZMod bit * (seg48In0AccX78 rho - rho 34676) := by
    have hd : rho 34678 = Bool.toZMod bit * (rho 34676 - seg48In0AccX78 rho) := by
      rw [← hbit]
      unfold seg48In0AccX78
      linear_combination -r1919
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY79 rho = seg48In0AccY78 rho - Bool.toZMod bit * (seg48In0AccY78 rho - rho 34677) := by
    have hd : rho 34679 = Bool.toZMod bit * (rho 34677 - seg48In0AccY78 rho) := by
      rw [← hbit]
      unfold seg48In0AccY78
      linear_combination -r1920
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34670 * rho 34671 = rho 34680 := by linear_combination r1921
  have hd1 : rho 34670 * rho 34670 = rho 34681 := by linear_combination r1922
  have hd2 : rho 34671 * rho 34671 = rho 34682 := by linear_combination r1923
  have hd3 : rho 34683 * (rho 34671 * rho 34671 + rho 34670 * rho 34670 * (-1)) =
      2 * (rho 34670 * rho 34671) := by
    rw [hd0, hd1, hd2]
    linear_combination r1924
  have hd4 : rho 34684 * (2 - (rho 34671 * rho 34671 + rho 34670 * rho 34670 * (-1))) =
      rho 34671 * rho 34671 - rho 34670 * rho 34670 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1925
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX78 rho, seg48In0AccY78 rho⟩ ⟨rho 34670, rho 34671⟩
    ⟨rho 34676, rho 34677⟩ ⟨seg48In0AccX79 rho, seg48In0AccY79 rho⟩ ⟨rho 34683, rho 34684⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1926 rho ∧ Seg48.relationRow1927 rho ∧ Seg48.relationRow1928 rho ∧ Seg48.relationRow1929 rho ∧ Seg48.relationRow1930 rho ∧ Seg48.relationRow1931 rho ∧ Seg48.relationRow1932 rho ∧ Seg48.relationRow1933 rho ∧ Seg48.relationRow1934 rho ∧ Seg48.relationRow1935 rho ∧ Seg48.relationRow1936 rho ∧ Seg48.relationRow1937 rho ∧ Seg48.relationRow1938 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938⟩

theorem seg48In0_rung79 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33615 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX79 rho, seg48In0AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34683, rho 34684⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX79 rho, seg48In0AccY79 rho⟩ ⟨rho 34683, rho 34684⟩
        ⟨seg48In0AccX80 rho, seg48In0AccY80 rho⟩ ⟨rho 34696, rho 34697⟩ := by
  obtain ⟨r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938⟩ := seg48In0_rows79 rho h
  unfold Seg48.relationRow1926 at r1926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1926

  unfold Seg48.relationRow1927 at r1927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1927

  unfold Seg48.relationRow1928 at r1928

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1928

  unfold Seg48.relationRow1929 at r1929

  unfold Seg48.relationRow1930 at r1930

  unfold Seg48.relationRow1931 at r1931

  unfold Seg48.relationRow1932 at r1932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1932

  unfold Seg48.relationRow1933 at r1933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1933

  unfold Seg48.relationRow1934 at r1934

  unfold Seg48.relationRow1935 at r1935

  unfold Seg48.relationRow1936 at r1936

  unfold Seg48.relationRow1937 at r1937

  unfold Seg48.relationRow1938 at r1938

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX80 rho = seg48In0AccX79 rho + rho 34691 := by
    unfold seg48In0AccX80 seg48In0AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 79]

    ring

  have hnexty : seg48In0AccY80 rho = seg48In0AccY79 rho + rho 34692 := by
    unfold seg48In0AccY80 seg48In0AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 79]

    ring

  have ha0 : (rho 34683 + rho 34684) * (seg48In0AccX79 rho + seg48In0AccY79 rho) = rho 34685 := by
    unfold seg48In0AccX79 seg48In0AccY79
    linear_combination r1926
  have ha1 : rho 34684 * seg48In0AccX79 rho = rho 34686 := by
    unfold seg48In0AccX79
    linear_combination r1927
  have ha2 : rho 34683 * seg48In0AccY79 rho = rho 34687 := by
    unfold seg48In0AccY79
    linear_combination r1928
  have ha3 : 3021 * rho 34686 * rho 34687 = rho 34688 := by
    linear_combination r1929
  have ha4 : rho 34689 * (1 + rho 34688) = rho 34686 + rho 34687 := by
    linear_combination r1930
  have ha5 : rho 34690 * (1 - rho 34688) = rho 34685 - rho 34686 - rho 34687 := by
    linear_combination r1931
  have haddx :
      rho 34689 * (1 + 3021 * (rho 34684 * seg48In0AccX79 rho) * (rho 34683 * seg48In0AccY79 rho)) =
        rho 34684 * seg48In0AccX79 rho + rho 34683 * seg48In0AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34690 * (1 - 3021 * (rho 34684 * seg48In0AccX79 rho) * (rho 34683 * seg48In0AccY79 rho)) =
        (-1) * (rho 34684 * seg48In0AccX79 rho) - rho 34683 * seg48In0AccY79 rho +
          (seg48In0AccY79 rho - seg48In0AccX79 rho * (-1)) * (rho 34683 + rho 34684) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34690 * (1 - rho 34688) = rho 34685 - rho 34686 - rho 34687 := ha5
      _ = (-1) * rho 34686 - rho 34687 + (seg48In0AccY79 rho - seg48In0AccX79 rho * (-1)) *
          (rho 34683 + rho 34684) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX80 rho = seg48In0AccX79 rho - Bool.toZMod bit * (seg48In0AccX79 rho - rho 34689) := by
    have hd : rho 34691 = Bool.toZMod bit * (rho 34689 - seg48In0AccX79 rho) := by
      rw [← hbit]
      unfold seg48In0AccX79
      linear_combination -r1932
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY80 rho = seg48In0AccY79 rho - Bool.toZMod bit * (seg48In0AccY79 rho - rho 34690) := by
    have hd : rho 34692 = Bool.toZMod bit * (rho 34690 - seg48In0AccY79 rho) := by
      rw [← hbit]
      unfold seg48In0AccY79
      linear_combination -r1933
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34683 * rho 34684 = rho 34693 := by linear_combination r1934
  have hd1 : rho 34683 * rho 34683 = rho 34694 := by linear_combination r1935
  have hd2 : rho 34684 * rho 34684 = rho 34695 := by linear_combination r1936
  have hd3 : rho 34696 * (rho 34684 * rho 34684 + rho 34683 * rho 34683 * (-1)) =
      2 * (rho 34683 * rho 34684) := by
    rw [hd0, hd1, hd2]
    linear_combination r1937
  have hd4 : rho 34697 * (2 - (rho 34684 * rho 34684 + rho 34683 * rho 34683 * (-1))) =
      rho 34684 * rho 34684 - rho 34683 * rho 34683 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1938
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX79 rho, seg48In0AccY79 rho⟩ ⟨rho 34683, rho 34684⟩
    ⟨rho 34689, rho 34690⟩ ⟨seg48In0AccX80 rho, seg48In0AccY80 rho⟩ ⟨rho 34696, rho 34697⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1939 rho ∧ Seg48.relationRow1940 rho ∧ Seg48.relationRow1941 rho ∧ Seg48.relationRow1942 rho ∧ Seg48.relationRow1943 rho ∧ Seg48.relationRow1944 rho ∧ Seg48.relationRow1945 rho ∧ Seg48.relationRow1946 rho ∧ Seg48.relationRow1947 rho ∧ Seg48.relationRow1948 rho ∧ Seg48.relationRow1949 rho ∧ Seg48.relationRow1950 rho ∧ Seg48.relationRow1951 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951⟩

theorem seg48In0_rung80 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33616 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX80 rho, seg48In0AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34696, rho 34697⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX80 rho, seg48In0AccY80 rho⟩ ⟨rho 34696, rho 34697⟩
        ⟨seg48In0AccX81 rho, seg48In0AccY81 rho⟩ ⟨rho 34709, rho 34710⟩ := by
  obtain ⟨r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951⟩ := seg48In0_rows80 rho h
  unfold Seg48.relationRow1939 at r1939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1939

  unfold Seg48.relationRow1940 at r1940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1940

  unfold Seg48.relationRow1941 at r1941

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1941

  unfold Seg48.relationRow1942 at r1942

  unfold Seg48.relationRow1943 at r1943

  unfold Seg48.relationRow1944 at r1944

  unfold Seg48.relationRow1945 at r1945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1945

  unfold Seg48.relationRow1946 at r1946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1946

  unfold Seg48.relationRow1947 at r1947

  unfold Seg48.relationRow1948 at r1948

  unfold Seg48.relationRow1949 at r1949

  unfold Seg48.relationRow1950 at r1950

  unfold Seg48.relationRow1951 at r1951

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX81 rho = seg48In0AccX80 rho + rho 34704 := by
    unfold seg48In0AccX81 seg48In0AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 80]

    ring

  have hnexty : seg48In0AccY81 rho = seg48In0AccY80 rho + rho 34705 := by
    unfold seg48In0AccY81 seg48In0AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 80]

    ring

  have ha0 : (rho 34696 + rho 34697) * (seg48In0AccX80 rho + seg48In0AccY80 rho) = rho 34698 := by
    unfold seg48In0AccX80 seg48In0AccY80
    linear_combination r1939
  have ha1 : rho 34697 * seg48In0AccX80 rho = rho 34699 := by
    unfold seg48In0AccX80
    linear_combination r1940
  have ha2 : rho 34696 * seg48In0AccY80 rho = rho 34700 := by
    unfold seg48In0AccY80
    linear_combination r1941
  have ha3 : 3021 * rho 34699 * rho 34700 = rho 34701 := by
    linear_combination r1942
  have ha4 : rho 34702 * (1 + rho 34701) = rho 34699 + rho 34700 := by
    linear_combination r1943
  have ha5 : rho 34703 * (1 - rho 34701) = rho 34698 - rho 34699 - rho 34700 := by
    linear_combination r1944
  have haddx :
      rho 34702 * (1 + 3021 * (rho 34697 * seg48In0AccX80 rho) * (rho 34696 * seg48In0AccY80 rho)) =
        rho 34697 * seg48In0AccX80 rho + rho 34696 * seg48In0AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34703 * (1 - 3021 * (rho 34697 * seg48In0AccX80 rho) * (rho 34696 * seg48In0AccY80 rho)) =
        (-1) * (rho 34697 * seg48In0AccX80 rho) - rho 34696 * seg48In0AccY80 rho +
          (seg48In0AccY80 rho - seg48In0AccX80 rho * (-1)) * (rho 34696 + rho 34697) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34703 * (1 - rho 34701) = rho 34698 - rho 34699 - rho 34700 := ha5
      _ = (-1) * rho 34699 - rho 34700 + (seg48In0AccY80 rho - seg48In0AccX80 rho * (-1)) *
          (rho 34696 + rho 34697) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX81 rho = seg48In0AccX80 rho - Bool.toZMod bit * (seg48In0AccX80 rho - rho 34702) := by
    have hd : rho 34704 = Bool.toZMod bit * (rho 34702 - seg48In0AccX80 rho) := by
      rw [← hbit]
      unfold seg48In0AccX80
      linear_combination -r1945
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY81 rho = seg48In0AccY80 rho - Bool.toZMod bit * (seg48In0AccY80 rho - rho 34703) := by
    have hd : rho 34705 = Bool.toZMod bit * (rho 34703 - seg48In0AccY80 rho) := by
      rw [← hbit]
      unfold seg48In0AccY80
      linear_combination -r1946
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34696 * rho 34697 = rho 34706 := by linear_combination r1947
  have hd1 : rho 34696 * rho 34696 = rho 34707 := by linear_combination r1948
  have hd2 : rho 34697 * rho 34697 = rho 34708 := by linear_combination r1949
  have hd3 : rho 34709 * (rho 34697 * rho 34697 + rho 34696 * rho 34696 * (-1)) =
      2 * (rho 34696 * rho 34697) := by
    rw [hd0, hd1, hd2]
    linear_combination r1950
  have hd4 : rho 34710 * (2 - (rho 34697 * rho 34697 + rho 34696 * rho 34696 * (-1))) =
      rho 34697 * rho 34697 - rho 34696 * rho 34696 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1951
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX80 rho, seg48In0AccY80 rho⟩ ⟨rho 34696, rho 34697⟩
    ⟨rho 34702, rho 34703⟩ ⟨seg48In0AccX81 rho, seg48In0AccY81 rho⟩ ⟨rho 34709, rho 34710⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1952 rho ∧ Seg48.relationRow1953 rho ∧ Seg48.relationRow1954 rho ∧ Seg48.relationRow1955 rho ∧ Seg48.relationRow1956 rho ∧ Seg48.relationRow1957 rho ∧ Seg48.relationRow1958 rho ∧ Seg48.relationRow1959 rho ∧ Seg48.relationRow1960 rho ∧ Seg48.relationRow1961 rho ∧ Seg48.relationRow1962 rho ∧ Seg48.relationRow1963 rho ∧ Seg48.relationRow1964 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964⟩

theorem seg48In0_rung81 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33617 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX81 rho, seg48In0AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34709, rho 34710⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX81 rho, seg48In0AccY81 rho⟩ ⟨rho 34709, rho 34710⟩
        ⟨seg48In0AccX82 rho, seg48In0AccY82 rho⟩ ⟨rho 34722, rho 34723⟩ := by
  obtain ⟨r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964⟩ := seg48In0_rows81 rho h
  unfold Seg48.relationRow1952 at r1952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1952

  unfold Seg48.relationRow1953 at r1953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1953

  unfold Seg48.relationRow1954 at r1954

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1954

  unfold Seg48.relationRow1955 at r1955

  unfold Seg48.relationRow1956 at r1956

  unfold Seg48.relationRow1957 at r1957

  unfold Seg48.relationRow1958 at r1958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1958

  unfold Seg48.relationRow1959 at r1959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1959

  unfold Seg48.relationRow1960 at r1960

  unfold Seg48.relationRow1961 at r1961

  unfold Seg48.relationRow1962 at r1962

  unfold Seg48.relationRow1963 at r1963

  unfold Seg48.relationRow1964 at r1964

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX82 rho = seg48In0AccX81 rho + rho 34717 := by
    unfold seg48In0AccX82 seg48In0AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 81]

    ring

  have hnexty : seg48In0AccY82 rho = seg48In0AccY81 rho + rho 34718 := by
    unfold seg48In0AccY82 seg48In0AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 81]

    ring

  have ha0 : (rho 34709 + rho 34710) * (seg48In0AccX81 rho + seg48In0AccY81 rho) = rho 34711 := by
    unfold seg48In0AccX81 seg48In0AccY81
    linear_combination r1952
  have ha1 : rho 34710 * seg48In0AccX81 rho = rho 34712 := by
    unfold seg48In0AccX81
    linear_combination r1953
  have ha2 : rho 34709 * seg48In0AccY81 rho = rho 34713 := by
    unfold seg48In0AccY81
    linear_combination r1954
  have ha3 : 3021 * rho 34712 * rho 34713 = rho 34714 := by
    linear_combination r1955
  have ha4 : rho 34715 * (1 + rho 34714) = rho 34712 + rho 34713 := by
    linear_combination r1956
  have ha5 : rho 34716 * (1 - rho 34714) = rho 34711 - rho 34712 - rho 34713 := by
    linear_combination r1957
  have haddx :
      rho 34715 * (1 + 3021 * (rho 34710 * seg48In0AccX81 rho) * (rho 34709 * seg48In0AccY81 rho)) =
        rho 34710 * seg48In0AccX81 rho + rho 34709 * seg48In0AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34716 * (1 - 3021 * (rho 34710 * seg48In0AccX81 rho) * (rho 34709 * seg48In0AccY81 rho)) =
        (-1) * (rho 34710 * seg48In0AccX81 rho) - rho 34709 * seg48In0AccY81 rho +
          (seg48In0AccY81 rho - seg48In0AccX81 rho * (-1)) * (rho 34709 + rho 34710) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34716 * (1 - rho 34714) = rho 34711 - rho 34712 - rho 34713 := ha5
      _ = (-1) * rho 34712 - rho 34713 + (seg48In0AccY81 rho - seg48In0AccX81 rho * (-1)) *
          (rho 34709 + rho 34710) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX82 rho = seg48In0AccX81 rho - Bool.toZMod bit * (seg48In0AccX81 rho - rho 34715) := by
    have hd : rho 34717 = Bool.toZMod bit * (rho 34715 - seg48In0AccX81 rho) := by
      rw [← hbit]
      unfold seg48In0AccX81
      linear_combination -r1958
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY82 rho = seg48In0AccY81 rho - Bool.toZMod bit * (seg48In0AccY81 rho - rho 34716) := by
    have hd : rho 34718 = Bool.toZMod bit * (rho 34716 - seg48In0AccY81 rho) := by
      rw [← hbit]
      unfold seg48In0AccY81
      linear_combination -r1959
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34709 * rho 34710 = rho 34719 := by linear_combination r1960
  have hd1 : rho 34709 * rho 34709 = rho 34720 := by linear_combination r1961
  have hd2 : rho 34710 * rho 34710 = rho 34721 := by linear_combination r1962
  have hd3 : rho 34722 * (rho 34710 * rho 34710 + rho 34709 * rho 34709 * (-1)) =
      2 * (rho 34709 * rho 34710) := by
    rw [hd0, hd1, hd2]
    linear_combination r1963
  have hd4 : rho 34723 * (2 - (rho 34710 * rho 34710 + rho 34709 * rho 34709 * (-1))) =
      rho 34710 * rho 34710 - rho 34709 * rho 34709 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1964
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX81 rho, seg48In0AccY81 rho⟩ ⟨rho 34709, rho 34710⟩
    ⟨rho 34715, rho 34716⟩ ⟨seg48In0AccX82 rho, seg48In0AccY82 rho⟩ ⟨rho 34722, rho 34723⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1965 rho ∧ Seg48.relationRow1966 rho ∧ Seg48.relationRow1967 rho ∧ Seg48.relationRow1968 rho ∧ Seg48.relationRow1969 rho ∧ Seg48.relationRow1970 rho ∧ Seg48.relationRow1971 rho ∧ Seg48.relationRow1972 rho ∧ Seg48.relationRow1973 rho ∧ Seg48.relationRow1974 rho ∧ Seg48.relationRow1975 rho ∧ Seg48.relationRow1976 rho ∧ Seg48.relationRow1977 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977⟩

theorem seg48In0_rung82 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33618 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX82 rho, seg48In0AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34722, rho 34723⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX82 rho, seg48In0AccY82 rho⟩ ⟨rho 34722, rho 34723⟩
        ⟨seg48In0AccX83 rho, seg48In0AccY83 rho⟩ ⟨rho 34735, rho 34736⟩ := by
  obtain ⟨r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977⟩ := seg48In0_rows82 rho h
  unfold Seg48.relationRow1965 at r1965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1965

  unfold Seg48.relationRow1966 at r1966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1966

  unfold Seg48.relationRow1967 at r1967

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1967

  unfold Seg48.relationRow1968 at r1968

  unfold Seg48.relationRow1969 at r1969

  unfold Seg48.relationRow1970 at r1970

  unfold Seg48.relationRow1971 at r1971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1971

  unfold Seg48.relationRow1972 at r1972

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1972

  unfold Seg48.relationRow1973 at r1973

  unfold Seg48.relationRow1974 at r1974

  unfold Seg48.relationRow1975 at r1975

  unfold Seg48.relationRow1976 at r1976

  unfold Seg48.relationRow1977 at r1977

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX83 rho = seg48In0AccX82 rho + rho 34730 := by
    unfold seg48In0AccX83 seg48In0AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 82]

    ring

  have hnexty : seg48In0AccY83 rho = seg48In0AccY82 rho + rho 34731 := by
    unfold seg48In0AccY83 seg48In0AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 82]

    ring

  have ha0 : (rho 34722 + rho 34723) * (seg48In0AccX82 rho + seg48In0AccY82 rho) = rho 34724 := by
    unfold seg48In0AccX82 seg48In0AccY82
    linear_combination r1965
  have ha1 : rho 34723 * seg48In0AccX82 rho = rho 34725 := by
    unfold seg48In0AccX82
    linear_combination r1966
  have ha2 : rho 34722 * seg48In0AccY82 rho = rho 34726 := by
    unfold seg48In0AccY82
    linear_combination r1967
  have ha3 : 3021 * rho 34725 * rho 34726 = rho 34727 := by
    linear_combination r1968
  have ha4 : rho 34728 * (1 + rho 34727) = rho 34725 + rho 34726 := by
    linear_combination r1969
  have ha5 : rho 34729 * (1 - rho 34727) = rho 34724 - rho 34725 - rho 34726 := by
    linear_combination r1970
  have haddx :
      rho 34728 * (1 + 3021 * (rho 34723 * seg48In0AccX82 rho) * (rho 34722 * seg48In0AccY82 rho)) =
        rho 34723 * seg48In0AccX82 rho + rho 34722 * seg48In0AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34729 * (1 - 3021 * (rho 34723 * seg48In0AccX82 rho) * (rho 34722 * seg48In0AccY82 rho)) =
        (-1) * (rho 34723 * seg48In0AccX82 rho) - rho 34722 * seg48In0AccY82 rho +
          (seg48In0AccY82 rho - seg48In0AccX82 rho * (-1)) * (rho 34722 + rho 34723) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34729 * (1 - rho 34727) = rho 34724 - rho 34725 - rho 34726 := ha5
      _ = (-1) * rho 34725 - rho 34726 + (seg48In0AccY82 rho - seg48In0AccX82 rho * (-1)) *
          (rho 34722 + rho 34723) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX83 rho = seg48In0AccX82 rho - Bool.toZMod bit * (seg48In0AccX82 rho - rho 34728) := by
    have hd : rho 34730 = Bool.toZMod bit * (rho 34728 - seg48In0AccX82 rho) := by
      rw [← hbit]
      unfold seg48In0AccX82
      linear_combination -r1971
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY83 rho = seg48In0AccY82 rho - Bool.toZMod bit * (seg48In0AccY82 rho - rho 34729) := by
    have hd : rho 34731 = Bool.toZMod bit * (rho 34729 - seg48In0AccY82 rho) := by
      rw [← hbit]
      unfold seg48In0AccY82
      linear_combination -r1972
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34722 * rho 34723 = rho 34732 := by linear_combination r1973
  have hd1 : rho 34722 * rho 34722 = rho 34733 := by linear_combination r1974
  have hd2 : rho 34723 * rho 34723 = rho 34734 := by linear_combination r1975
  have hd3 : rho 34735 * (rho 34723 * rho 34723 + rho 34722 * rho 34722 * (-1)) =
      2 * (rho 34722 * rho 34723) := by
    rw [hd0, hd1, hd2]
    linear_combination r1976
  have hd4 : rho 34736 * (2 - (rho 34723 * rho 34723 + rho 34722 * rho 34722 * (-1))) =
      rho 34723 * rho 34723 - rho 34722 * rho 34722 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1977
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX82 rho, seg48In0AccY82 rho⟩ ⟨rho 34722, rho 34723⟩
    ⟨rho 34728, rho 34729⟩ ⟨seg48In0AccX83 rho, seg48In0AccY83 rho⟩ ⟨rho 34735, rho 34736⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1978 rho ∧ Seg48.relationRow1979 rho ∧ Seg48.relationRow1980 rho ∧ Seg48.relationRow1981 rho ∧ Seg48.relationRow1982 rho ∧ Seg48.relationRow1983 rho ∧ Seg48.relationRow1984 rho ∧ Seg48.relationRow1985 rho ∧ Seg48.relationRow1986 rho ∧ Seg48.relationRow1987 rho ∧ Seg48.relationRow1988 rho ∧ Seg48.relationRow1989 rho ∧ Seg48.relationRow1990 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990⟩

theorem seg48In0_rung83 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33619 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX83 rho, seg48In0AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34735, rho 34736⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX83 rho, seg48In0AccY83 rho⟩ ⟨rho 34735, rho 34736⟩
        ⟨seg48In0AccX84 rho, seg48In0AccY84 rho⟩ ⟨rho 34748, rho 34749⟩ := by
  obtain ⟨r1978, r1979, r1980, r1981, r1982, r1983, r1984, r1985, r1986, r1987, r1988, r1989, r1990⟩ := seg48In0_rows83 rho h
  unfold Seg48.relationRow1978 at r1978

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1978

  unfold Seg48.relationRow1979 at r1979

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1979

  unfold Seg48.relationRow1980 at r1980

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1980

  unfold Seg48.relationRow1981 at r1981

  unfold Seg48.relationRow1982 at r1982

  unfold Seg48.relationRow1983 at r1983

  unfold Seg48.relationRow1984 at r1984

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1984

  unfold Seg48.relationRow1985 at r1985

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1985

  unfold Seg48.relationRow1986 at r1986

  unfold Seg48.relationRow1987 at r1987

  unfold Seg48.relationRow1988 at r1988

  unfold Seg48.relationRow1989 at r1989

  unfold Seg48.relationRow1990 at r1990

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX84 rho = seg48In0AccX83 rho + rho 34743 := by
    unfold seg48In0AccX84 seg48In0AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 83]

    ring

  have hnexty : seg48In0AccY84 rho = seg48In0AccY83 rho + rho 34744 := by
    unfold seg48In0AccY84 seg48In0AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 83]

    ring

  have ha0 : (rho 34735 + rho 34736) * (seg48In0AccX83 rho + seg48In0AccY83 rho) = rho 34737 := by
    unfold seg48In0AccX83 seg48In0AccY83
    linear_combination r1978
  have ha1 : rho 34736 * seg48In0AccX83 rho = rho 34738 := by
    unfold seg48In0AccX83
    linear_combination r1979
  have ha2 : rho 34735 * seg48In0AccY83 rho = rho 34739 := by
    unfold seg48In0AccY83
    linear_combination r1980
  have ha3 : 3021 * rho 34738 * rho 34739 = rho 34740 := by
    linear_combination r1981
  have ha4 : rho 34741 * (1 + rho 34740) = rho 34738 + rho 34739 := by
    linear_combination r1982
  have ha5 : rho 34742 * (1 - rho 34740) = rho 34737 - rho 34738 - rho 34739 := by
    linear_combination r1983
  have haddx :
      rho 34741 * (1 + 3021 * (rho 34736 * seg48In0AccX83 rho) * (rho 34735 * seg48In0AccY83 rho)) =
        rho 34736 * seg48In0AccX83 rho + rho 34735 * seg48In0AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34742 * (1 - 3021 * (rho 34736 * seg48In0AccX83 rho) * (rho 34735 * seg48In0AccY83 rho)) =
        (-1) * (rho 34736 * seg48In0AccX83 rho) - rho 34735 * seg48In0AccY83 rho +
          (seg48In0AccY83 rho - seg48In0AccX83 rho * (-1)) * (rho 34735 + rho 34736) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34742 * (1 - rho 34740) = rho 34737 - rho 34738 - rho 34739 := ha5
      _ = (-1) * rho 34738 - rho 34739 + (seg48In0AccY83 rho - seg48In0AccX83 rho * (-1)) *
          (rho 34735 + rho 34736) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX84 rho = seg48In0AccX83 rho - Bool.toZMod bit * (seg48In0AccX83 rho - rho 34741) := by
    have hd : rho 34743 = Bool.toZMod bit * (rho 34741 - seg48In0AccX83 rho) := by
      rw [← hbit]
      unfold seg48In0AccX83
      linear_combination -r1984
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY84 rho = seg48In0AccY83 rho - Bool.toZMod bit * (seg48In0AccY83 rho - rho 34742) := by
    have hd : rho 34744 = Bool.toZMod bit * (rho 34742 - seg48In0AccY83 rho) := by
      rw [← hbit]
      unfold seg48In0AccY83
      linear_combination -r1985
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34735 * rho 34736 = rho 34745 := by linear_combination r1986
  have hd1 : rho 34735 * rho 34735 = rho 34746 := by linear_combination r1987
  have hd2 : rho 34736 * rho 34736 = rho 34747 := by linear_combination r1988
  have hd3 : rho 34748 * (rho 34736 * rho 34736 + rho 34735 * rho 34735 * (-1)) =
      2 * (rho 34735 * rho 34736) := by
    rw [hd0, hd1, hd2]
    linear_combination r1989
  have hd4 : rho 34749 * (2 - (rho 34736 * rho 34736 + rho 34735 * rho 34735 * (-1))) =
      rho 34736 * rho 34736 - rho 34735 * rho 34735 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1990
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX83 rho, seg48In0AccY83 rho⟩ ⟨rho 34735, rho 34736⟩
    ⟨rho 34741, rho 34742⟩ ⟨seg48In0AccX84 rho, seg48In0AccY84 rho⟩ ⟨rho 34748, rho 34749⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1991 rho ∧ Seg48.relationRow1992 rho ∧ Seg48.relationRow1993 rho ∧ Seg48.relationRow1994 rho ∧ Seg48.relationRow1995 rho ∧ Seg48.relationRow1996 rho ∧ Seg48.relationRow1997 rho ∧ Seg48.relationRow1998 rho ∧ Seg48.relationRow1999 rho ∧ Seg48.relationRow2000 rho ∧ Seg48.relationRow2001 rho ∧ Seg48.relationRow2002 rho ∧ Seg48.relationRow2003 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999⟩

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨r2000, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999, r2000, r2001, r2002, r2003⟩

theorem seg48In0_rung84 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33620 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX84 rho, seg48In0AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34748, rho 34749⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX84 rho, seg48In0AccY84 rho⟩ ⟨rho 34748, rho 34749⟩
        ⟨seg48In0AccX85 rho, seg48In0AccY85 rho⟩ ⟨rho 34761, rho 34762⟩ := by
  obtain ⟨r1991, r1992, r1993, r1994, r1995, r1996, r1997, r1998, r1999, r2000, r2001, r2002, r2003⟩ := seg48In0_rows84 rho h
  unfold Seg48.relationRow1991 at r1991

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1991

  unfold Seg48.relationRow1992 at r1992

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1992

  unfold Seg48.relationRow1993 at r1993

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1993

  unfold Seg48.relationRow1994 at r1994

  unfold Seg48.relationRow1995 at r1995

  unfold Seg48.relationRow1996 at r1996

  unfold Seg48.relationRow1997 at r1997

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1997

  unfold Seg48.relationRow1998 at r1998

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1998

  unfold Seg48.relationRow1999 at r1999

  unfold Seg48.relationRow2000 at r2000

  unfold Seg48.relationRow2001 at r2001

  unfold Seg48.relationRow2002 at r2002

  unfold Seg48.relationRow2003 at r2003

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX85 rho = seg48In0AccX84 rho + rho 34756 := by
    unfold seg48In0AccX85 seg48In0AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 84]

    ring

  have hnexty : seg48In0AccY85 rho = seg48In0AccY84 rho + rho 34757 := by
    unfold seg48In0AccY85 seg48In0AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 84]

    ring

  have ha0 : (rho 34748 + rho 34749) * (seg48In0AccX84 rho + seg48In0AccY84 rho) = rho 34750 := by
    unfold seg48In0AccX84 seg48In0AccY84
    linear_combination r1991
  have ha1 : rho 34749 * seg48In0AccX84 rho = rho 34751 := by
    unfold seg48In0AccX84
    linear_combination r1992
  have ha2 : rho 34748 * seg48In0AccY84 rho = rho 34752 := by
    unfold seg48In0AccY84
    linear_combination r1993
  have ha3 : 3021 * rho 34751 * rho 34752 = rho 34753 := by
    linear_combination r1994
  have ha4 : rho 34754 * (1 + rho 34753) = rho 34751 + rho 34752 := by
    linear_combination r1995
  have ha5 : rho 34755 * (1 - rho 34753) = rho 34750 - rho 34751 - rho 34752 := by
    linear_combination r1996
  have haddx :
      rho 34754 * (1 + 3021 * (rho 34749 * seg48In0AccX84 rho) * (rho 34748 * seg48In0AccY84 rho)) =
        rho 34749 * seg48In0AccX84 rho + rho 34748 * seg48In0AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34755 * (1 - 3021 * (rho 34749 * seg48In0AccX84 rho) * (rho 34748 * seg48In0AccY84 rho)) =
        (-1) * (rho 34749 * seg48In0AccX84 rho) - rho 34748 * seg48In0AccY84 rho +
          (seg48In0AccY84 rho - seg48In0AccX84 rho * (-1)) * (rho 34748 + rho 34749) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34755 * (1 - rho 34753) = rho 34750 - rho 34751 - rho 34752 := ha5
      _ = (-1) * rho 34751 - rho 34752 + (seg48In0AccY84 rho - seg48In0AccX84 rho * (-1)) *
          (rho 34748 + rho 34749) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX85 rho = seg48In0AccX84 rho - Bool.toZMod bit * (seg48In0AccX84 rho - rho 34754) := by
    have hd : rho 34756 = Bool.toZMod bit * (rho 34754 - seg48In0AccX84 rho) := by
      rw [← hbit]
      unfold seg48In0AccX84
      linear_combination -r1997
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY85 rho = seg48In0AccY84 rho - Bool.toZMod bit * (seg48In0AccY84 rho - rho 34755) := by
    have hd : rho 34757 = Bool.toZMod bit * (rho 34755 - seg48In0AccY84 rho) := by
      rw [← hbit]
      unfold seg48In0AccY84
      linear_combination -r1998
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34748 * rho 34749 = rho 34758 := by linear_combination r1999
  have hd1 : rho 34748 * rho 34748 = rho 34759 := by linear_combination r2000
  have hd2 : rho 34749 * rho 34749 = rho 34760 := by linear_combination r2001
  have hd3 : rho 34761 * (rho 34749 * rho 34749 + rho 34748 * rho 34748 * (-1)) =
      2 * (rho 34748 * rho 34749) := by
    rw [hd0, hd1, hd2]
    linear_combination r2002
  have hd4 : rho 34762 * (2 - (rho 34749 * rho 34749 + rho 34748 * rho 34748 * (-1))) =
      rho 34749 * rho 34749 - rho 34748 * rho 34748 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2003
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX84 rho, seg48In0AccY84 rho⟩ ⟨rho 34748, rho 34749⟩
    ⟨rho 34754, rho 34755⟩ ⟨seg48In0AccX85 rho, seg48In0AccY85 rho⟩ ⟨rho 34761, rho 34762⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2004 rho ∧ Seg48.relationRow2005 rho ∧ Seg48.relationRow2006 rho ∧ Seg48.relationRow2007 rho ∧ Seg48.relationRow2008 rho ∧ Seg48.relationRow2009 rho ∧ Seg48.relationRow2010 rho ∧ Seg48.relationRow2011 rho ∧ Seg48.relationRow2012 rho ∧ Seg48.relationRow2013 rho ∧ Seg48.relationRow2014 rho ∧ Seg48.relationRow2015 rho ∧ Seg48.relationRow2016 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016⟩

theorem seg48In0_rung85 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33621 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX85 rho, seg48In0AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34761, rho 34762⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX85 rho, seg48In0AccY85 rho⟩ ⟨rho 34761, rho 34762⟩
        ⟨seg48In0AccX86 rho, seg48In0AccY86 rho⟩ ⟨rho 34774, rho 34775⟩ := by
  obtain ⟨r2004, r2005, r2006, r2007, r2008, r2009, r2010, r2011, r2012, r2013, r2014, r2015, r2016⟩ := seg48In0_rows85 rho h
  unfold Seg48.relationRow2004 at r2004

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2004

  unfold Seg48.relationRow2005 at r2005

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2005

  unfold Seg48.relationRow2006 at r2006

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2006

  unfold Seg48.relationRow2007 at r2007

  unfold Seg48.relationRow2008 at r2008

  unfold Seg48.relationRow2009 at r2009

  unfold Seg48.relationRow2010 at r2010

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2010

  unfold Seg48.relationRow2011 at r2011

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2011

  unfold Seg48.relationRow2012 at r2012

  unfold Seg48.relationRow2013 at r2013

  unfold Seg48.relationRow2014 at r2014

  unfold Seg48.relationRow2015 at r2015

  unfold Seg48.relationRow2016 at r2016

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX86 rho = seg48In0AccX85 rho + rho 34769 := by
    unfold seg48In0AccX86 seg48In0AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 85]

    ring

  have hnexty : seg48In0AccY86 rho = seg48In0AccY85 rho + rho 34770 := by
    unfold seg48In0AccY86 seg48In0AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 85]

    ring

  have ha0 : (rho 34761 + rho 34762) * (seg48In0AccX85 rho + seg48In0AccY85 rho) = rho 34763 := by
    unfold seg48In0AccX85 seg48In0AccY85
    linear_combination r2004
  have ha1 : rho 34762 * seg48In0AccX85 rho = rho 34764 := by
    unfold seg48In0AccX85
    linear_combination r2005
  have ha2 : rho 34761 * seg48In0AccY85 rho = rho 34765 := by
    unfold seg48In0AccY85
    linear_combination r2006
  have ha3 : 3021 * rho 34764 * rho 34765 = rho 34766 := by
    linear_combination r2007
  have ha4 : rho 34767 * (1 + rho 34766) = rho 34764 + rho 34765 := by
    linear_combination r2008
  have ha5 : rho 34768 * (1 - rho 34766) = rho 34763 - rho 34764 - rho 34765 := by
    linear_combination r2009
  have haddx :
      rho 34767 * (1 + 3021 * (rho 34762 * seg48In0AccX85 rho) * (rho 34761 * seg48In0AccY85 rho)) =
        rho 34762 * seg48In0AccX85 rho + rho 34761 * seg48In0AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34768 * (1 - 3021 * (rho 34762 * seg48In0AccX85 rho) * (rho 34761 * seg48In0AccY85 rho)) =
        (-1) * (rho 34762 * seg48In0AccX85 rho) - rho 34761 * seg48In0AccY85 rho +
          (seg48In0AccY85 rho - seg48In0AccX85 rho * (-1)) * (rho 34761 + rho 34762) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34768 * (1 - rho 34766) = rho 34763 - rho 34764 - rho 34765 := ha5
      _ = (-1) * rho 34764 - rho 34765 + (seg48In0AccY85 rho - seg48In0AccX85 rho * (-1)) *
          (rho 34761 + rho 34762) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX86 rho = seg48In0AccX85 rho - Bool.toZMod bit * (seg48In0AccX85 rho - rho 34767) := by
    have hd : rho 34769 = Bool.toZMod bit * (rho 34767 - seg48In0AccX85 rho) := by
      rw [← hbit]
      unfold seg48In0AccX85
      linear_combination -r2010
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY86 rho = seg48In0AccY85 rho - Bool.toZMod bit * (seg48In0AccY85 rho - rho 34768) := by
    have hd : rho 34770 = Bool.toZMod bit * (rho 34768 - seg48In0AccY85 rho) := by
      rw [← hbit]
      unfold seg48In0AccY85
      linear_combination -r2011
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34761 * rho 34762 = rho 34771 := by linear_combination r2012
  have hd1 : rho 34761 * rho 34761 = rho 34772 := by linear_combination r2013
  have hd2 : rho 34762 * rho 34762 = rho 34773 := by linear_combination r2014
  have hd3 : rho 34774 * (rho 34762 * rho 34762 + rho 34761 * rho 34761 * (-1)) =
      2 * (rho 34761 * rho 34762) := by
    rw [hd0, hd1, hd2]
    linear_combination r2015
  have hd4 : rho 34775 * (2 - (rho 34762 * rho 34762 + rho 34761 * rho 34761 * (-1))) =
      rho 34762 * rho 34762 - rho 34761 * rho 34761 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2016
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX85 rho, seg48In0AccY85 rho⟩ ⟨rho 34761, rho 34762⟩
    ⟨rho 34767, rho 34768⟩ ⟨seg48In0AccX86 rho, seg48In0AccY86 rho⟩ ⟨rho 34774, rho 34775⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2017 rho ∧ Seg48.relationRow2018 rho ∧ Seg48.relationRow2019 rho ∧ Seg48.relationRow2020 rho ∧ Seg48.relationRow2021 rho ∧ Seg48.relationRow2022 rho ∧ Seg48.relationRow2023 rho ∧ Seg48.relationRow2024 rho ∧ Seg48.relationRow2025 rho ∧ Seg48.relationRow2026 rho ∧ Seg48.relationRow2027 rho ∧ Seg48.relationRow2028 rho ∧ Seg48.relationRow2029 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029⟩

theorem seg48In0_rung86 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33622 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX86 rho, seg48In0AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34774, rho 34775⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX86 rho, seg48In0AccY86 rho⟩ ⟨rho 34774, rho 34775⟩
        ⟨seg48In0AccX87 rho, seg48In0AccY87 rho⟩ ⟨rho 34787, rho 34788⟩ := by
  obtain ⟨r2017, r2018, r2019, r2020, r2021, r2022, r2023, r2024, r2025, r2026, r2027, r2028, r2029⟩ := seg48In0_rows86 rho h
  unfold Seg48.relationRow2017 at r2017

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2017

  unfold Seg48.relationRow2018 at r2018

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2018

  unfold Seg48.relationRow2019 at r2019

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2019

  unfold Seg48.relationRow2020 at r2020

  unfold Seg48.relationRow2021 at r2021

  unfold Seg48.relationRow2022 at r2022

  unfold Seg48.relationRow2023 at r2023

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2023

  unfold Seg48.relationRow2024 at r2024

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2024

  unfold Seg48.relationRow2025 at r2025

  unfold Seg48.relationRow2026 at r2026

  unfold Seg48.relationRow2027 at r2027

  unfold Seg48.relationRow2028 at r2028

  unfold Seg48.relationRow2029 at r2029

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX87 rho = seg48In0AccX86 rho + rho 34782 := by
    unfold seg48In0AccX87 seg48In0AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 86]

    ring

  have hnexty : seg48In0AccY87 rho = seg48In0AccY86 rho + rho 34783 := by
    unfold seg48In0AccY87 seg48In0AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 86]

    ring

  have ha0 : (rho 34774 + rho 34775) * (seg48In0AccX86 rho + seg48In0AccY86 rho) = rho 34776 := by
    unfold seg48In0AccX86 seg48In0AccY86
    linear_combination r2017
  have ha1 : rho 34775 * seg48In0AccX86 rho = rho 34777 := by
    unfold seg48In0AccX86
    linear_combination r2018
  have ha2 : rho 34774 * seg48In0AccY86 rho = rho 34778 := by
    unfold seg48In0AccY86
    linear_combination r2019
  have ha3 : 3021 * rho 34777 * rho 34778 = rho 34779 := by
    linear_combination r2020
  have ha4 : rho 34780 * (1 + rho 34779) = rho 34777 + rho 34778 := by
    linear_combination r2021
  have ha5 : rho 34781 * (1 - rho 34779) = rho 34776 - rho 34777 - rho 34778 := by
    linear_combination r2022
  have haddx :
      rho 34780 * (1 + 3021 * (rho 34775 * seg48In0AccX86 rho) * (rho 34774 * seg48In0AccY86 rho)) =
        rho 34775 * seg48In0AccX86 rho + rho 34774 * seg48In0AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34781 * (1 - 3021 * (rho 34775 * seg48In0AccX86 rho) * (rho 34774 * seg48In0AccY86 rho)) =
        (-1) * (rho 34775 * seg48In0AccX86 rho) - rho 34774 * seg48In0AccY86 rho +
          (seg48In0AccY86 rho - seg48In0AccX86 rho * (-1)) * (rho 34774 + rho 34775) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34781 * (1 - rho 34779) = rho 34776 - rho 34777 - rho 34778 := ha5
      _ = (-1) * rho 34777 - rho 34778 + (seg48In0AccY86 rho - seg48In0AccX86 rho * (-1)) *
          (rho 34774 + rho 34775) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX87 rho = seg48In0AccX86 rho - Bool.toZMod bit * (seg48In0AccX86 rho - rho 34780) := by
    have hd : rho 34782 = Bool.toZMod bit * (rho 34780 - seg48In0AccX86 rho) := by
      rw [← hbit]
      unfold seg48In0AccX86
      linear_combination -r2023
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY87 rho = seg48In0AccY86 rho - Bool.toZMod bit * (seg48In0AccY86 rho - rho 34781) := by
    have hd : rho 34783 = Bool.toZMod bit * (rho 34781 - seg48In0AccY86 rho) := by
      rw [← hbit]
      unfold seg48In0AccY86
      linear_combination -r2024
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34774 * rho 34775 = rho 34784 := by linear_combination r2025
  have hd1 : rho 34774 * rho 34774 = rho 34785 := by linear_combination r2026
  have hd2 : rho 34775 * rho 34775 = rho 34786 := by linear_combination r2027
  have hd3 : rho 34787 * (rho 34775 * rho 34775 + rho 34774 * rho 34774 * (-1)) =
      2 * (rho 34774 * rho 34775) := by
    rw [hd0, hd1, hd2]
    linear_combination r2028
  have hd4 : rho 34788 * (2 - (rho 34775 * rho 34775 + rho 34774 * rho 34774 * (-1))) =
      rho 34775 * rho 34775 - rho 34774 * rho 34774 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2029
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX86 rho, seg48In0AccY86 rho⟩ ⟨rho 34774, rho 34775⟩
    ⟨rho 34780, rho 34781⟩ ⟨seg48In0AccX87 rho, seg48In0AccY87 rho⟩ ⟨rho 34787, rho 34788⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2030 rho ∧ Seg48.relationRow2031 rho ∧ Seg48.relationRow2032 rho ∧ Seg48.relationRow2033 rho ∧ Seg48.relationRow2034 rho ∧ Seg48.relationRow2035 rho ∧ Seg48.relationRow2036 rho ∧ Seg48.relationRow2037 rho ∧ Seg48.relationRow2038 rho ∧ Seg48.relationRow2039 rho ∧ Seg48.relationRow2040 rho ∧ Seg48.relationRow2041 rho ∧ Seg48.relationRow2042 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart25 at p25

  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042⟩

theorem seg48In0_rung87 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33623 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX87 rho, seg48In0AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 34787, rho 34788⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX87 rho, seg48In0AccY87 rho⟩ ⟨rho 34787, rho 34788⟩
        ⟨seg48In0AccX88 rho, seg48In0AccY88 rho⟩ ⟨rho 34800, rho 34801⟩ := by
  obtain ⟨r2030, r2031, r2032, r2033, r2034, r2035, r2036, r2037, r2038, r2039, r2040, r2041, r2042⟩ := seg48In0_rows87 rho h
  unfold Seg48.relationRow2030 at r2030

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2030

  unfold Seg48.relationRow2031 at r2031

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2031

  unfold Seg48.relationRow2032 at r2032

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2032

  unfold Seg48.relationRow2033 at r2033

  unfold Seg48.relationRow2034 at r2034

  unfold Seg48.relationRow2035 at r2035

  unfold Seg48.relationRow2036 at r2036

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2036

  unfold Seg48.relationRow2037 at r2037

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2037

  unfold Seg48.relationRow2038 at r2038

  unfold Seg48.relationRow2039 at r2039

  unfold Seg48.relationRow2040 at r2040

  unfold Seg48.relationRow2041 at r2041

  unfold Seg48.relationRow2042 at r2042

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX88 rho = seg48In0AccX87 rho + rho 34795 := by
    unfold seg48In0AccX88 seg48In0AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 87]

    ring

  have hnexty : seg48In0AccY88 rho = seg48In0AccY87 rho + rho 34796 := by
    unfold seg48In0AccY88 seg48In0AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 87]

    ring

  have ha0 : (rho 34787 + rho 34788) * (seg48In0AccX87 rho + seg48In0AccY87 rho) = rho 34789 := by
    unfold seg48In0AccX87 seg48In0AccY87
    linear_combination r2030
  have ha1 : rho 34788 * seg48In0AccX87 rho = rho 34790 := by
    unfold seg48In0AccX87
    linear_combination r2031
  have ha2 : rho 34787 * seg48In0AccY87 rho = rho 34791 := by
    unfold seg48In0AccY87
    linear_combination r2032
  have ha3 : 3021 * rho 34790 * rho 34791 = rho 34792 := by
    linear_combination r2033
  have ha4 : rho 34793 * (1 + rho 34792) = rho 34790 + rho 34791 := by
    linear_combination r2034
  have ha5 : rho 34794 * (1 - rho 34792) = rho 34789 - rho 34790 - rho 34791 := by
    linear_combination r2035
  have haddx :
      rho 34793 * (1 + 3021 * (rho 34788 * seg48In0AccX87 rho) * (rho 34787 * seg48In0AccY87 rho)) =
        rho 34788 * seg48In0AccX87 rho + rho 34787 * seg48In0AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 34794 * (1 - 3021 * (rho 34788 * seg48In0AccX87 rho) * (rho 34787 * seg48In0AccY87 rho)) =
        (-1) * (rho 34788 * seg48In0AccX87 rho) - rho 34787 * seg48In0AccY87 rho +
          (seg48In0AccY87 rho - seg48In0AccX87 rho * (-1)) * (rho 34787 + rho 34788) := by
    rw [ha1, ha2, ha3]
    calc
      rho 34794 * (1 - rho 34792) = rho 34789 - rho 34790 - rho 34791 := ha5
      _ = (-1) * rho 34790 - rho 34791 + (seg48In0AccY87 rho - seg48In0AccX87 rho * (-1)) *
          (rho 34787 + rho 34788) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX88 rho = seg48In0AccX87 rho - Bool.toZMod bit * (seg48In0AccX87 rho - rho 34793) := by
    have hd : rho 34795 = Bool.toZMod bit * (rho 34793 - seg48In0AccX87 rho) := by
      rw [← hbit]
      unfold seg48In0AccX87
      linear_combination -r2036
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY88 rho = seg48In0AccY87 rho - Bool.toZMod bit * (seg48In0AccY87 rho - rho 34794) := by
    have hd : rho 34796 = Bool.toZMod bit * (rho 34794 - seg48In0AccY87 rho) := by
      rw [← hbit]
      unfold seg48In0AccY87
      linear_combination -r2037
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 34787 * rho 34788 = rho 34797 := by linear_combination r2038
  have hd1 : rho 34787 * rho 34787 = rho 34798 := by linear_combination r2039
  have hd2 : rho 34788 * rho 34788 = rho 34799 := by linear_combination r2040
  have hd3 : rho 34800 * (rho 34788 * rho 34788 + rho 34787 * rho 34787 * (-1)) =
      2 * (rho 34787 * rho 34788) := by
    rw [hd0, hd1, hd2]
    linear_combination r2041
  have hd4 : rho 34801 * (2 - (rho 34788 * rho 34788 + rho 34787 * rho 34787 * (-1))) =
      rho 34788 * rho 34788 - rho 34787 * rho 34787 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2042
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX87 rho, seg48In0AccY87 rho⟩ ⟨rho 34787, rho 34788⟩
    ⟨rho 34793, rho 34794⟩ ⟨seg48In0AccX88 rho, seg48In0AccY88 rho⟩ ⟨rho 34800, rho 34801⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c7 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg48In0_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg48In0_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg48In0_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg48In0_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg48In0_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg48In0_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg48In0_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg48In0_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg48In0_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg48In0_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
