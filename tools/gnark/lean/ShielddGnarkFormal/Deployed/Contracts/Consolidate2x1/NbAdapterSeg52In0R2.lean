import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1825 rho ∧ Seg52.relationRow1826 rho ∧ Seg52.relationRow1827 rho ∧ Seg52.relationRow1828 rho ∧ Seg52.relationRow1829 rho ∧ Seg52.relationRow1830 rho ∧ Seg52.relationRow1831 rho ∧ Seg52.relationRow1832 rho ∧ Seg52.relationRow1833 rho ∧ Seg52.relationRow1834 rho ∧ Seg52.relationRow1835 rho ∧ Seg52.relationRow1836 rho ∧ Seg52.relationRow1837 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837, _, _⟩

  exact ⟨r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837⟩

theorem seg52In0_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45830 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46214, rho 46215⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 46214, rho 46215⟩
        ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 46227, rho 46228⟩ := by
  obtain ⟨r1825, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837⟩ := seg52In0_rows22 rho h
  unfold Seg52.relationRow1825 at r1825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1825

  unfold Seg52.relationRow1826 at r1826

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1826

  unfold Seg52.relationRow1827 at r1827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1827

  unfold Seg52.relationRow1828 at r1828

  unfold Seg52.relationRow1829 at r1829

  unfold Seg52.relationRow1830 at r1830

  unfold Seg52.relationRow1831 at r1831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1831

  unfold Seg52.relationRow1832 at r1832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1832

  unfold Seg52.relationRow1833 at r1833

  unfold Seg52.relationRow1834 at r1834

  unfold Seg52.relationRow1835 at r1835

  unfold Seg52.relationRow1836 at r1836

  unfold Seg52.relationRow1837 at r1837

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX23 rho = seg52In0AccX22 rho + rho 46222 := by
    unfold seg52In0AccX23 seg52In0AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 22]

    ring

  have hnexty : seg52In0AccY23 rho = seg52In0AccY22 rho + rho 46223 := by
    unfold seg52In0AccY23 seg52In0AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 22]

    ring

  have ha0 : (rho 46214 + rho 46215) * (seg52In0AccX22 rho + seg52In0AccY22 rho) = rho 46216 := by
    unfold seg52In0AccX22 seg52In0AccY22
    linear_combination r1825
  have ha1 : rho 46215 * seg52In0AccX22 rho = rho 46217 := by
    unfold seg52In0AccX22
    linear_combination r1826
  have ha2 : rho 46214 * seg52In0AccY22 rho = rho 46218 := by
    unfold seg52In0AccY22
    linear_combination r1827
  have ha3 : 3021 * rho 46217 * rho 46218 = rho 46219 := by
    linear_combination r1828
  have ha4 : rho 46220 * (1 + rho 46219) = rho 46217 + rho 46218 := by
    linear_combination r1829
  have ha5 : rho 46221 * (1 - rho 46219) = rho 46216 - rho 46217 - rho 46218 := by
    linear_combination r1830
  have haddx :
      rho 46220 * (1 + 3021 * (rho 46215 * seg52In0AccX22 rho) * (rho 46214 * seg52In0AccY22 rho)) =
        rho 46215 * seg52In0AccX22 rho + rho 46214 * seg52In0AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46221 * (1 - 3021 * (rho 46215 * seg52In0AccX22 rho) * (rho 46214 * seg52In0AccY22 rho)) =
        (-1) * (rho 46215 * seg52In0AccX22 rho) - rho 46214 * seg52In0AccY22 rho +
          (seg52In0AccY22 rho - seg52In0AccX22 rho * (-1)) * (rho 46214 + rho 46215) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46221 * (1 - rho 46219) = rho 46216 - rho 46217 - rho 46218 := ha5
      _ = (-1) * rho 46217 - rho 46218 + (seg52In0AccY22 rho - seg52In0AccX22 rho * (-1)) *
          (rho 46214 + rho 46215) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX23 rho = seg52In0AccX22 rho - Bool.toZMod bit * (seg52In0AccX22 rho - rho 46220) := by
    have hd : rho 46222 = Bool.toZMod bit * (rho 46220 - seg52In0AccX22 rho) := by
      rw [← hbit]
      unfold seg52In0AccX22
      linear_combination -r1831
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY23 rho = seg52In0AccY22 rho - Bool.toZMod bit * (seg52In0AccY22 rho - rho 46221) := by
    have hd : rho 46223 = Bool.toZMod bit * (rho 46221 - seg52In0AccY22 rho) := by
      rw [← hbit]
      unfold seg52In0AccY22
      linear_combination -r1832
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46214 * rho 46215 = rho 46224 := by linear_combination r1833
  have hd1 : rho 46214 * rho 46214 = rho 46225 := by linear_combination r1834
  have hd2 : rho 46215 * rho 46215 = rho 46226 := by linear_combination r1835
  have hd3 : rho 46227 * (rho 46215 * rho 46215 + rho 46214 * rho 46214 * (-1)) =
      2 * (rho 46214 * rho 46215) := by
    rw [hd0, hd1, hd2]
    linear_combination r1836
  have hd4 : rho 46228 * (2 - (rho 46215 * rho 46215 + rho 46214 * rho 46214 * (-1))) =
      rho 46215 * rho 46215 - rho 46214 * rho 46214 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1837
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 46214, rho 46215⟩
    ⟨rho 46220, rho 46221⟩ ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 46227, rho 46228⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1838 rho ∧ Seg52.relationRow1839 rho ∧ Seg52.relationRow1840 rho ∧ Seg52.relationRow1841 rho ∧ Seg52.relationRow1842 rho ∧ Seg52.relationRow1843 rho ∧ Seg52.relationRow1844 rho ∧ Seg52.relationRow1845 rho ∧ Seg52.relationRow1846 rho ∧ Seg52.relationRow1847 rho ∧ Seg52.relationRow1848 rho ∧ Seg52.relationRow1849 rho ∧ Seg52.relationRow1850 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p22, p23, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart22 at p22

  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1838, r1839⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1838, r1839, r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850⟩

theorem seg52In0_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45831 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46227, rho 46228⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 46227, rho 46228⟩
        ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 46240, rho 46241⟩ := by
  obtain ⟨r1838, r1839, r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850⟩ := seg52In0_rows23 rho h
  unfold Seg52.relationRow1838 at r1838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1838

  unfold Seg52.relationRow1839 at r1839

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1839

  unfold Seg52.relationRow1840 at r1840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1840

  unfold Seg52.relationRow1841 at r1841

  unfold Seg52.relationRow1842 at r1842

  unfold Seg52.relationRow1843 at r1843

  unfold Seg52.relationRow1844 at r1844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1844

  unfold Seg52.relationRow1845 at r1845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1845

  unfold Seg52.relationRow1846 at r1846

  unfold Seg52.relationRow1847 at r1847

  unfold Seg52.relationRow1848 at r1848

  unfold Seg52.relationRow1849 at r1849

  unfold Seg52.relationRow1850 at r1850

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX24 rho = seg52In0AccX23 rho + rho 46235 := by
    unfold seg52In0AccX24 seg52In0AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 23]

    ring

  have hnexty : seg52In0AccY24 rho = seg52In0AccY23 rho + rho 46236 := by
    unfold seg52In0AccY24 seg52In0AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 23]

    ring

  have ha0 : (rho 46227 + rho 46228) * (seg52In0AccX23 rho + seg52In0AccY23 rho) = rho 46229 := by
    unfold seg52In0AccX23 seg52In0AccY23
    linear_combination r1838
  have ha1 : rho 46228 * seg52In0AccX23 rho = rho 46230 := by
    unfold seg52In0AccX23
    linear_combination r1839
  have ha2 : rho 46227 * seg52In0AccY23 rho = rho 46231 := by
    unfold seg52In0AccY23
    linear_combination r1840
  have ha3 : 3021 * rho 46230 * rho 46231 = rho 46232 := by
    linear_combination r1841
  have ha4 : rho 46233 * (1 + rho 46232) = rho 46230 + rho 46231 := by
    linear_combination r1842
  have ha5 : rho 46234 * (1 - rho 46232) = rho 46229 - rho 46230 - rho 46231 := by
    linear_combination r1843
  have haddx :
      rho 46233 * (1 + 3021 * (rho 46228 * seg52In0AccX23 rho) * (rho 46227 * seg52In0AccY23 rho)) =
        rho 46228 * seg52In0AccX23 rho + rho 46227 * seg52In0AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46234 * (1 - 3021 * (rho 46228 * seg52In0AccX23 rho) * (rho 46227 * seg52In0AccY23 rho)) =
        (-1) * (rho 46228 * seg52In0AccX23 rho) - rho 46227 * seg52In0AccY23 rho +
          (seg52In0AccY23 rho - seg52In0AccX23 rho * (-1)) * (rho 46227 + rho 46228) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46234 * (1 - rho 46232) = rho 46229 - rho 46230 - rho 46231 := ha5
      _ = (-1) * rho 46230 - rho 46231 + (seg52In0AccY23 rho - seg52In0AccX23 rho * (-1)) *
          (rho 46227 + rho 46228) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX24 rho = seg52In0AccX23 rho - Bool.toZMod bit * (seg52In0AccX23 rho - rho 46233) := by
    have hd : rho 46235 = Bool.toZMod bit * (rho 46233 - seg52In0AccX23 rho) := by
      rw [← hbit]
      unfold seg52In0AccX23
      linear_combination -r1844
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY24 rho = seg52In0AccY23 rho - Bool.toZMod bit * (seg52In0AccY23 rho - rho 46234) := by
    have hd : rho 46236 = Bool.toZMod bit * (rho 46234 - seg52In0AccY23 rho) := by
      rw [← hbit]
      unfold seg52In0AccY23
      linear_combination -r1845
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46227 * rho 46228 = rho 46237 := by linear_combination r1846
  have hd1 : rho 46227 * rho 46227 = rho 46238 := by linear_combination r1847
  have hd2 : rho 46228 * rho 46228 = rho 46239 := by linear_combination r1848
  have hd3 : rho 46240 * (rho 46228 * rho 46228 + rho 46227 * rho 46227 * (-1)) =
      2 * (rho 46227 * rho 46228) := by
    rw [hd0, hd1, hd2]
    linear_combination r1849
  have hd4 : rho 46241 * (2 - (rho 46228 * rho 46228 + rho 46227 * rho 46227 * (-1))) =
      rho 46228 * rho 46228 - rho 46227 * rho 46227 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1850
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX23 rho, seg52In0AccY23 rho⟩ ⟨rho 46227, rho 46228⟩
    ⟨rho 46233, rho 46234⟩ ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 46240, rho 46241⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1851 rho ∧ Seg52.relationRow1852 rho ∧ Seg52.relationRow1853 rho ∧ Seg52.relationRow1854 rho ∧ Seg52.relationRow1855 rho ∧ Seg52.relationRow1856 rho ∧ Seg52.relationRow1857 rho ∧ Seg52.relationRow1858 rho ∧ Seg52.relationRow1859 rho ∧ Seg52.relationRow1860 rho ∧ Seg52.relationRow1861 rho ∧ Seg52.relationRow1862 rho ∧ Seg52.relationRow1863 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863⟩

theorem seg52In0_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45832 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46240, rho 46241⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 46240, rho 46241⟩
        ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 46253, rho 46254⟩ := by
  obtain ⟨r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863⟩ := seg52In0_rows24 rho h
  unfold Seg52.relationRow1851 at r1851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1851

  unfold Seg52.relationRow1852 at r1852

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1852

  unfold Seg52.relationRow1853 at r1853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1853

  unfold Seg52.relationRow1854 at r1854

  unfold Seg52.relationRow1855 at r1855

  unfold Seg52.relationRow1856 at r1856

  unfold Seg52.relationRow1857 at r1857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1857

  unfold Seg52.relationRow1858 at r1858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1858

  unfold Seg52.relationRow1859 at r1859

  unfold Seg52.relationRow1860 at r1860

  unfold Seg52.relationRow1861 at r1861

  unfold Seg52.relationRow1862 at r1862

  unfold Seg52.relationRow1863 at r1863

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX25 rho = seg52In0AccX24 rho + rho 46248 := by
    unfold seg52In0AccX25 seg52In0AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 24]

    ring

  have hnexty : seg52In0AccY25 rho = seg52In0AccY24 rho + rho 46249 := by
    unfold seg52In0AccY25 seg52In0AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 24]

    ring

  have ha0 : (rho 46240 + rho 46241) * (seg52In0AccX24 rho + seg52In0AccY24 rho) = rho 46242 := by
    unfold seg52In0AccX24 seg52In0AccY24
    linear_combination r1851
  have ha1 : rho 46241 * seg52In0AccX24 rho = rho 46243 := by
    unfold seg52In0AccX24
    linear_combination r1852
  have ha2 : rho 46240 * seg52In0AccY24 rho = rho 46244 := by
    unfold seg52In0AccY24
    linear_combination r1853
  have ha3 : 3021 * rho 46243 * rho 46244 = rho 46245 := by
    linear_combination r1854
  have ha4 : rho 46246 * (1 + rho 46245) = rho 46243 + rho 46244 := by
    linear_combination r1855
  have ha5 : rho 46247 * (1 - rho 46245) = rho 46242 - rho 46243 - rho 46244 := by
    linear_combination r1856
  have haddx :
      rho 46246 * (1 + 3021 * (rho 46241 * seg52In0AccX24 rho) * (rho 46240 * seg52In0AccY24 rho)) =
        rho 46241 * seg52In0AccX24 rho + rho 46240 * seg52In0AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46247 * (1 - 3021 * (rho 46241 * seg52In0AccX24 rho) * (rho 46240 * seg52In0AccY24 rho)) =
        (-1) * (rho 46241 * seg52In0AccX24 rho) - rho 46240 * seg52In0AccY24 rho +
          (seg52In0AccY24 rho - seg52In0AccX24 rho * (-1)) * (rho 46240 + rho 46241) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46247 * (1 - rho 46245) = rho 46242 - rho 46243 - rho 46244 := ha5
      _ = (-1) * rho 46243 - rho 46244 + (seg52In0AccY24 rho - seg52In0AccX24 rho * (-1)) *
          (rho 46240 + rho 46241) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX25 rho = seg52In0AccX24 rho - Bool.toZMod bit * (seg52In0AccX24 rho - rho 46246) := by
    have hd : rho 46248 = Bool.toZMod bit * (rho 46246 - seg52In0AccX24 rho) := by
      rw [← hbit]
      unfold seg52In0AccX24
      linear_combination -r1857
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY25 rho = seg52In0AccY24 rho - Bool.toZMod bit * (seg52In0AccY24 rho - rho 46247) := by
    have hd : rho 46249 = Bool.toZMod bit * (rho 46247 - seg52In0AccY24 rho) := by
      rw [← hbit]
      unfold seg52In0AccY24
      linear_combination -r1858
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46240 * rho 46241 = rho 46250 := by linear_combination r1859
  have hd1 : rho 46240 * rho 46240 = rho 46251 := by linear_combination r1860
  have hd2 : rho 46241 * rho 46241 = rho 46252 := by linear_combination r1861
  have hd3 : rho 46253 * (rho 46241 * rho 46241 + rho 46240 * rho 46240 * (-1)) =
      2 * (rho 46240 * rho 46241) := by
    rw [hd0, hd1, hd2]
    linear_combination r1862
  have hd4 : rho 46254 * (2 - (rho 46241 * rho 46241 + rho 46240 * rho 46240 * (-1))) =
      rho 46241 * rho 46241 - rho 46240 * rho 46240 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1863
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX24 rho, seg52In0AccY24 rho⟩ ⟨rho 46240, rho 46241⟩
    ⟨rho 46246, rho 46247⟩ ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 46253, rho 46254⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1864 rho ∧ Seg52.relationRow1865 rho ∧ Seg52.relationRow1866 rho ∧ Seg52.relationRow1867 rho ∧ Seg52.relationRow1868 rho ∧ Seg52.relationRow1869 rho ∧ Seg52.relationRow1870 rho ∧ Seg52.relationRow1871 rho ∧ Seg52.relationRow1872 rho ∧ Seg52.relationRow1873 rho ∧ Seg52.relationRow1874 rho ∧ Seg52.relationRow1875 rho ∧ Seg52.relationRow1876 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876⟩

theorem seg52In0_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45833 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46253, rho 46254⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 46253, rho 46254⟩
        ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 46266, rho 46267⟩ := by
  obtain ⟨r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876⟩ := seg52In0_rows25 rho h
  unfold Seg52.relationRow1864 at r1864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1864

  unfold Seg52.relationRow1865 at r1865

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1865

  unfold Seg52.relationRow1866 at r1866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1866

  unfold Seg52.relationRow1867 at r1867

  unfold Seg52.relationRow1868 at r1868

  unfold Seg52.relationRow1869 at r1869

  unfold Seg52.relationRow1870 at r1870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1870

  unfold Seg52.relationRow1871 at r1871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1871

  unfold Seg52.relationRow1872 at r1872

  unfold Seg52.relationRow1873 at r1873

  unfold Seg52.relationRow1874 at r1874

  unfold Seg52.relationRow1875 at r1875

  unfold Seg52.relationRow1876 at r1876

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX26 rho = seg52In0AccX25 rho + rho 46261 := by
    unfold seg52In0AccX26 seg52In0AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 25]

    ring

  have hnexty : seg52In0AccY26 rho = seg52In0AccY25 rho + rho 46262 := by
    unfold seg52In0AccY26 seg52In0AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 25]

    ring

  have ha0 : (rho 46253 + rho 46254) * (seg52In0AccX25 rho + seg52In0AccY25 rho) = rho 46255 := by
    unfold seg52In0AccX25 seg52In0AccY25
    linear_combination r1864
  have ha1 : rho 46254 * seg52In0AccX25 rho = rho 46256 := by
    unfold seg52In0AccX25
    linear_combination r1865
  have ha2 : rho 46253 * seg52In0AccY25 rho = rho 46257 := by
    unfold seg52In0AccY25
    linear_combination r1866
  have ha3 : 3021 * rho 46256 * rho 46257 = rho 46258 := by
    linear_combination r1867
  have ha4 : rho 46259 * (1 + rho 46258) = rho 46256 + rho 46257 := by
    linear_combination r1868
  have ha5 : rho 46260 * (1 - rho 46258) = rho 46255 - rho 46256 - rho 46257 := by
    linear_combination r1869
  have haddx :
      rho 46259 * (1 + 3021 * (rho 46254 * seg52In0AccX25 rho) * (rho 46253 * seg52In0AccY25 rho)) =
        rho 46254 * seg52In0AccX25 rho + rho 46253 * seg52In0AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46260 * (1 - 3021 * (rho 46254 * seg52In0AccX25 rho) * (rho 46253 * seg52In0AccY25 rho)) =
        (-1) * (rho 46254 * seg52In0AccX25 rho) - rho 46253 * seg52In0AccY25 rho +
          (seg52In0AccY25 rho - seg52In0AccX25 rho * (-1)) * (rho 46253 + rho 46254) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46260 * (1 - rho 46258) = rho 46255 - rho 46256 - rho 46257 := ha5
      _ = (-1) * rho 46256 - rho 46257 + (seg52In0AccY25 rho - seg52In0AccX25 rho * (-1)) *
          (rho 46253 + rho 46254) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX26 rho = seg52In0AccX25 rho - Bool.toZMod bit * (seg52In0AccX25 rho - rho 46259) := by
    have hd : rho 46261 = Bool.toZMod bit * (rho 46259 - seg52In0AccX25 rho) := by
      rw [← hbit]
      unfold seg52In0AccX25
      linear_combination -r1870
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY26 rho = seg52In0AccY25 rho - Bool.toZMod bit * (seg52In0AccY25 rho - rho 46260) := by
    have hd : rho 46262 = Bool.toZMod bit * (rho 46260 - seg52In0AccY25 rho) := by
      rw [← hbit]
      unfold seg52In0AccY25
      linear_combination -r1871
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46253 * rho 46254 = rho 46263 := by linear_combination r1872
  have hd1 : rho 46253 * rho 46253 = rho 46264 := by linear_combination r1873
  have hd2 : rho 46254 * rho 46254 = rho 46265 := by linear_combination r1874
  have hd3 : rho 46266 * (rho 46254 * rho 46254 + rho 46253 * rho 46253 * (-1)) =
      2 * (rho 46253 * rho 46254) := by
    rw [hd0, hd1, hd2]
    linear_combination r1875
  have hd4 : rho 46267 * (2 - (rho 46254 * rho 46254 + rho 46253 * rho 46253 * (-1))) =
      rho 46254 * rho 46254 - rho 46253 * rho 46253 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1876
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX25 rho, seg52In0AccY25 rho⟩ ⟨rho 46253, rho 46254⟩
    ⟨rho 46259, rho 46260⟩ ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 46266, rho 46267⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1877 rho ∧ Seg52.relationRow1878 rho ∧ Seg52.relationRow1879 rho ∧ Seg52.relationRow1880 rho ∧ Seg52.relationRow1881 rho ∧ Seg52.relationRow1882 rho ∧ Seg52.relationRow1883 rho ∧ Seg52.relationRow1884 rho ∧ Seg52.relationRow1885 rho ∧ Seg52.relationRow1886 rho ∧ Seg52.relationRow1887 rho ∧ Seg52.relationRow1888 rho ∧ Seg52.relationRow1889 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889⟩

theorem seg52In0_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45834 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46266, rho 46267⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 46266, rho 46267⟩
        ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 46279, rho 46280⟩ := by
  obtain ⟨r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889⟩ := seg52In0_rows26 rho h
  unfold Seg52.relationRow1877 at r1877

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1877

  unfold Seg52.relationRow1878 at r1878

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1878

  unfold Seg52.relationRow1879 at r1879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1879

  unfold Seg52.relationRow1880 at r1880

  unfold Seg52.relationRow1881 at r1881

  unfold Seg52.relationRow1882 at r1882

  unfold Seg52.relationRow1883 at r1883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1883

  unfold Seg52.relationRow1884 at r1884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1884

  unfold Seg52.relationRow1885 at r1885

  unfold Seg52.relationRow1886 at r1886

  unfold Seg52.relationRow1887 at r1887

  unfold Seg52.relationRow1888 at r1888

  unfold Seg52.relationRow1889 at r1889

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX27 rho = seg52In0AccX26 rho + rho 46274 := by
    unfold seg52In0AccX27 seg52In0AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 26]

    ring

  have hnexty : seg52In0AccY27 rho = seg52In0AccY26 rho + rho 46275 := by
    unfold seg52In0AccY27 seg52In0AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 26]

    ring

  have ha0 : (rho 46266 + rho 46267) * (seg52In0AccX26 rho + seg52In0AccY26 rho) = rho 46268 := by
    unfold seg52In0AccX26 seg52In0AccY26
    linear_combination r1877
  have ha1 : rho 46267 * seg52In0AccX26 rho = rho 46269 := by
    unfold seg52In0AccX26
    linear_combination r1878
  have ha2 : rho 46266 * seg52In0AccY26 rho = rho 46270 := by
    unfold seg52In0AccY26
    linear_combination r1879
  have ha3 : 3021 * rho 46269 * rho 46270 = rho 46271 := by
    linear_combination r1880
  have ha4 : rho 46272 * (1 + rho 46271) = rho 46269 + rho 46270 := by
    linear_combination r1881
  have ha5 : rho 46273 * (1 - rho 46271) = rho 46268 - rho 46269 - rho 46270 := by
    linear_combination r1882
  have haddx :
      rho 46272 * (1 + 3021 * (rho 46267 * seg52In0AccX26 rho) * (rho 46266 * seg52In0AccY26 rho)) =
        rho 46267 * seg52In0AccX26 rho + rho 46266 * seg52In0AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46273 * (1 - 3021 * (rho 46267 * seg52In0AccX26 rho) * (rho 46266 * seg52In0AccY26 rho)) =
        (-1) * (rho 46267 * seg52In0AccX26 rho) - rho 46266 * seg52In0AccY26 rho +
          (seg52In0AccY26 rho - seg52In0AccX26 rho * (-1)) * (rho 46266 + rho 46267) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46273 * (1 - rho 46271) = rho 46268 - rho 46269 - rho 46270 := ha5
      _ = (-1) * rho 46269 - rho 46270 + (seg52In0AccY26 rho - seg52In0AccX26 rho * (-1)) *
          (rho 46266 + rho 46267) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX27 rho = seg52In0AccX26 rho - Bool.toZMod bit * (seg52In0AccX26 rho - rho 46272) := by
    have hd : rho 46274 = Bool.toZMod bit * (rho 46272 - seg52In0AccX26 rho) := by
      rw [← hbit]
      unfold seg52In0AccX26
      linear_combination -r1883
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY27 rho = seg52In0AccY26 rho - Bool.toZMod bit * (seg52In0AccY26 rho - rho 46273) := by
    have hd : rho 46275 = Bool.toZMod bit * (rho 46273 - seg52In0AccY26 rho) := by
      rw [← hbit]
      unfold seg52In0AccY26
      linear_combination -r1884
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46266 * rho 46267 = rho 46276 := by linear_combination r1885
  have hd1 : rho 46266 * rho 46266 = rho 46277 := by linear_combination r1886
  have hd2 : rho 46267 * rho 46267 = rho 46278 := by linear_combination r1887
  have hd3 : rho 46279 * (rho 46267 * rho 46267 + rho 46266 * rho 46266 * (-1)) =
      2 * (rho 46266 * rho 46267) := by
    rw [hd0, hd1, hd2]
    linear_combination r1888
  have hd4 : rho 46280 * (2 - (rho 46267 * rho 46267 + rho 46266 * rho 46266 * (-1))) =
      rho 46267 * rho 46267 - rho 46266 * rho 46266 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1889
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX26 rho, seg52In0AccY26 rho⟩ ⟨rho 46266, rho 46267⟩
    ⟨rho 46272, rho 46273⟩ ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 46279, rho 46280⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1890 rho ∧ Seg52.relationRow1891 rho ∧ Seg52.relationRow1892 rho ∧ Seg52.relationRow1893 rho ∧ Seg52.relationRow1894 rho ∧ Seg52.relationRow1895 rho ∧ Seg52.relationRow1896 rho ∧ Seg52.relationRow1897 rho ∧ Seg52.relationRow1898 rho ∧ Seg52.relationRow1899 rho ∧ Seg52.relationRow1900 rho ∧ Seg52.relationRow1901 rho ∧ Seg52.relationRow1902 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902⟩

theorem seg52In0_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45835 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46279, rho 46280⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 46279, rho 46280⟩
        ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 46292, rho 46293⟩ := by
  obtain ⟨r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902⟩ := seg52In0_rows27 rho h
  unfold Seg52.relationRow1890 at r1890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1890

  unfold Seg52.relationRow1891 at r1891

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1891

  unfold Seg52.relationRow1892 at r1892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1892

  unfold Seg52.relationRow1893 at r1893

  unfold Seg52.relationRow1894 at r1894

  unfold Seg52.relationRow1895 at r1895

  unfold Seg52.relationRow1896 at r1896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1896

  unfold Seg52.relationRow1897 at r1897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1897

  unfold Seg52.relationRow1898 at r1898

  unfold Seg52.relationRow1899 at r1899

  unfold Seg52.relationRow1900 at r1900

  unfold Seg52.relationRow1901 at r1901

  unfold Seg52.relationRow1902 at r1902

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX28 rho = seg52In0AccX27 rho + rho 46287 := by
    unfold seg52In0AccX28 seg52In0AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 27]

    ring

  have hnexty : seg52In0AccY28 rho = seg52In0AccY27 rho + rho 46288 := by
    unfold seg52In0AccY28 seg52In0AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 27]

    ring

  have ha0 : (rho 46279 + rho 46280) * (seg52In0AccX27 rho + seg52In0AccY27 rho) = rho 46281 := by
    unfold seg52In0AccX27 seg52In0AccY27
    linear_combination r1890
  have ha1 : rho 46280 * seg52In0AccX27 rho = rho 46282 := by
    unfold seg52In0AccX27
    linear_combination r1891
  have ha2 : rho 46279 * seg52In0AccY27 rho = rho 46283 := by
    unfold seg52In0AccY27
    linear_combination r1892
  have ha3 : 3021 * rho 46282 * rho 46283 = rho 46284 := by
    linear_combination r1893
  have ha4 : rho 46285 * (1 + rho 46284) = rho 46282 + rho 46283 := by
    linear_combination r1894
  have ha5 : rho 46286 * (1 - rho 46284) = rho 46281 - rho 46282 - rho 46283 := by
    linear_combination r1895
  have haddx :
      rho 46285 * (1 + 3021 * (rho 46280 * seg52In0AccX27 rho) * (rho 46279 * seg52In0AccY27 rho)) =
        rho 46280 * seg52In0AccX27 rho + rho 46279 * seg52In0AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46286 * (1 - 3021 * (rho 46280 * seg52In0AccX27 rho) * (rho 46279 * seg52In0AccY27 rho)) =
        (-1) * (rho 46280 * seg52In0AccX27 rho) - rho 46279 * seg52In0AccY27 rho +
          (seg52In0AccY27 rho - seg52In0AccX27 rho * (-1)) * (rho 46279 + rho 46280) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46286 * (1 - rho 46284) = rho 46281 - rho 46282 - rho 46283 := ha5
      _ = (-1) * rho 46282 - rho 46283 + (seg52In0AccY27 rho - seg52In0AccX27 rho * (-1)) *
          (rho 46279 + rho 46280) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX28 rho = seg52In0AccX27 rho - Bool.toZMod bit * (seg52In0AccX27 rho - rho 46285) := by
    have hd : rho 46287 = Bool.toZMod bit * (rho 46285 - seg52In0AccX27 rho) := by
      rw [← hbit]
      unfold seg52In0AccX27
      linear_combination -r1896
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY28 rho = seg52In0AccY27 rho - Bool.toZMod bit * (seg52In0AccY27 rho - rho 46286) := by
    have hd : rho 46288 = Bool.toZMod bit * (rho 46286 - seg52In0AccY27 rho) := by
      rw [← hbit]
      unfold seg52In0AccY27
      linear_combination -r1897
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46279 * rho 46280 = rho 46289 := by linear_combination r1898
  have hd1 : rho 46279 * rho 46279 = rho 46290 := by linear_combination r1899
  have hd2 : rho 46280 * rho 46280 = rho 46291 := by linear_combination r1900
  have hd3 : rho 46292 * (rho 46280 * rho 46280 + rho 46279 * rho 46279 * (-1)) =
      2 * (rho 46279 * rho 46280) := by
    rw [hd0, hd1, hd2]
    linear_combination r1901
  have hd4 : rho 46293 * (2 - (rho 46280 * rho 46280 + rho 46279 * rho 46279 * (-1))) =
      rho 46280 * rho 46280 - rho 46279 * rho 46279 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1902
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX27 rho, seg52In0AccY27 rho⟩ ⟨rho 46279, rho 46280⟩
    ⟨rho 46285, rho 46286⟩ ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 46292, rho 46293⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1903 rho ∧ Seg52.relationRow1904 rho ∧ Seg52.relationRow1905 rho ∧ Seg52.relationRow1906 rho ∧ Seg52.relationRow1907 rho ∧ Seg52.relationRow1908 rho ∧ Seg52.relationRow1909 rho ∧ Seg52.relationRow1910 rho ∧ Seg52.relationRow1911 rho ∧ Seg52.relationRow1912 rho ∧ Seg52.relationRow1913 rho ∧ Seg52.relationRow1914 rho ∧ Seg52.relationRow1915 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915, _, _, _, _⟩

  exact ⟨r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915⟩

theorem seg52In0_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45836 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46292, rho 46293⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 46292, rho 46293⟩
        ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 46305, rho 46306⟩ := by
  obtain ⟨r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915⟩ := seg52In0_rows28 rho h
  unfold Seg52.relationRow1903 at r1903

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1903

  unfold Seg52.relationRow1904 at r1904

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1904

  unfold Seg52.relationRow1905 at r1905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1905

  unfold Seg52.relationRow1906 at r1906

  unfold Seg52.relationRow1907 at r1907

  unfold Seg52.relationRow1908 at r1908

  unfold Seg52.relationRow1909 at r1909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1909

  unfold Seg52.relationRow1910 at r1910

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1910

  unfold Seg52.relationRow1911 at r1911

  unfold Seg52.relationRow1912 at r1912

  unfold Seg52.relationRow1913 at r1913

  unfold Seg52.relationRow1914 at r1914

  unfold Seg52.relationRow1915 at r1915

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX29 rho = seg52In0AccX28 rho + rho 46300 := by
    unfold seg52In0AccX29 seg52In0AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 28]

    ring

  have hnexty : seg52In0AccY29 rho = seg52In0AccY28 rho + rho 46301 := by
    unfold seg52In0AccY29 seg52In0AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 28]

    ring

  have ha0 : (rho 46292 + rho 46293) * (seg52In0AccX28 rho + seg52In0AccY28 rho) = rho 46294 := by
    unfold seg52In0AccX28 seg52In0AccY28
    linear_combination r1903
  have ha1 : rho 46293 * seg52In0AccX28 rho = rho 46295 := by
    unfold seg52In0AccX28
    linear_combination r1904
  have ha2 : rho 46292 * seg52In0AccY28 rho = rho 46296 := by
    unfold seg52In0AccY28
    linear_combination r1905
  have ha3 : 3021 * rho 46295 * rho 46296 = rho 46297 := by
    linear_combination r1906
  have ha4 : rho 46298 * (1 + rho 46297) = rho 46295 + rho 46296 := by
    linear_combination r1907
  have ha5 : rho 46299 * (1 - rho 46297) = rho 46294 - rho 46295 - rho 46296 := by
    linear_combination r1908
  have haddx :
      rho 46298 * (1 + 3021 * (rho 46293 * seg52In0AccX28 rho) * (rho 46292 * seg52In0AccY28 rho)) =
        rho 46293 * seg52In0AccX28 rho + rho 46292 * seg52In0AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46299 * (1 - 3021 * (rho 46293 * seg52In0AccX28 rho) * (rho 46292 * seg52In0AccY28 rho)) =
        (-1) * (rho 46293 * seg52In0AccX28 rho) - rho 46292 * seg52In0AccY28 rho +
          (seg52In0AccY28 rho - seg52In0AccX28 rho * (-1)) * (rho 46292 + rho 46293) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46299 * (1 - rho 46297) = rho 46294 - rho 46295 - rho 46296 := ha5
      _ = (-1) * rho 46295 - rho 46296 + (seg52In0AccY28 rho - seg52In0AccX28 rho * (-1)) *
          (rho 46292 + rho 46293) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX29 rho = seg52In0AccX28 rho - Bool.toZMod bit * (seg52In0AccX28 rho - rho 46298) := by
    have hd : rho 46300 = Bool.toZMod bit * (rho 46298 - seg52In0AccX28 rho) := by
      rw [← hbit]
      unfold seg52In0AccX28
      linear_combination -r1909
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY29 rho = seg52In0AccY28 rho - Bool.toZMod bit * (seg52In0AccY28 rho - rho 46299) := by
    have hd : rho 46301 = Bool.toZMod bit * (rho 46299 - seg52In0AccY28 rho) := by
      rw [← hbit]
      unfold seg52In0AccY28
      linear_combination -r1910
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46292 * rho 46293 = rho 46302 := by linear_combination r1911
  have hd1 : rho 46292 * rho 46292 = rho 46303 := by linear_combination r1912
  have hd2 : rho 46293 * rho 46293 = rho 46304 := by linear_combination r1913
  have hd3 : rho 46305 * (rho 46293 * rho 46293 + rho 46292 * rho 46292 * (-1)) =
      2 * (rho 46292 * rho 46293) := by
    rw [hd0, hd1, hd2]
    linear_combination r1914
  have hd4 : rho 46306 * (2 - (rho 46293 * rho 46293 + rho 46292 * rho 46292 * (-1))) =
      rho 46293 * rho 46293 - rho 46292 * rho 46292 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1915
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX28 rho, seg52In0AccY28 rho⟩ ⟨rho 46292, rho 46293⟩
    ⟨rho 46298, rho 46299⟩ ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 46305, rho 46306⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1916 rho ∧ Seg52.relationRow1917 rho ∧ Seg52.relationRow1918 rho ∧ Seg52.relationRow1919 rho ∧ Seg52.relationRow1920 rho ∧ Seg52.relationRow1921 rho ∧ Seg52.relationRow1922 rho ∧ Seg52.relationRow1923 rho ∧ Seg52.relationRow1924 rho ∧ Seg52.relationRow1925 rho ∧ Seg52.relationRow1926 rho ∧ Seg52.relationRow1927 rho ∧ Seg52.relationRow1928 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart23 at p23

  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1916, r1917, r1918, r1919⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1916, r1917, r1918, r1919, r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928⟩

theorem seg52In0_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45837 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46305, rho 46306⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 46305, rho 46306⟩
        ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 46318, rho 46319⟩ := by
  obtain ⟨r1916, r1917, r1918, r1919, r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928⟩ := seg52In0_rows29 rho h
  unfold Seg52.relationRow1916 at r1916

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1916

  unfold Seg52.relationRow1917 at r1917

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1917

  unfold Seg52.relationRow1918 at r1918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1918

  unfold Seg52.relationRow1919 at r1919

  unfold Seg52.relationRow1920 at r1920

  unfold Seg52.relationRow1921 at r1921

  unfold Seg52.relationRow1922 at r1922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1922

  unfold Seg52.relationRow1923 at r1923

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1923

  unfold Seg52.relationRow1924 at r1924

  unfold Seg52.relationRow1925 at r1925

  unfold Seg52.relationRow1926 at r1926

  unfold Seg52.relationRow1927 at r1927

  unfold Seg52.relationRow1928 at r1928

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX30 rho = seg52In0AccX29 rho + rho 46313 := by
    unfold seg52In0AccX30 seg52In0AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 29]

    ring

  have hnexty : seg52In0AccY30 rho = seg52In0AccY29 rho + rho 46314 := by
    unfold seg52In0AccY30 seg52In0AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 29]

    ring

  have ha0 : (rho 46305 + rho 46306) * (seg52In0AccX29 rho + seg52In0AccY29 rho) = rho 46307 := by
    unfold seg52In0AccX29 seg52In0AccY29
    linear_combination r1916
  have ha1 : rho 46306 * seg52In0AccX29 rho = rho 46308 := by
    unfold seg52In0AccX29
    linear_combination r1917
  have ha2 : rho 46305 * seg52In0AccY29 rho = rho 46309 := by
    unfold seg52In0AccY29
    linear_combination r1918
  have ha3 : 3021 * rho 46308 * rho 46309 = rho 46310 := by
    linear_combination r1919
  have ha4 : rho 46311 * (1 + rho 46310) = rho 46308 + rho 46309 := by
    linear_combination r1920
  have ha5 : rho 46312 * (1 - rho 46310) = rho 46307 - rho 46308 - rho 46309 := by
    linear_combination r1921
  have haddx :
      rho 46311 * (1 + 3021 * (rho 46306 * seg52In0AccX29 rho) * (rho 46305 * seg52In0AccY29 rho)) =
        rho 46306 * seg52In0AccX29 rho + rho 46305 * seg52In0AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46312 * (1 - 3021 * (rho 46306 * seg52In0AccX29 rho) * (rho 46305 * seg52In0AccY29 rho)) =
        (-1) * (rho 46306 * seg52In0AccX29 rho) - rho 46305 * seg52In0AccY29 rho +
          (seg52In0AccY29 rho - seg52In0AccX29 rho * (-1)) * (rho 46305 + rho 46306) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46312 * (1 - rho 46310) = rho 46307 - rho 46308 - rho 46309 := ha5
      _ = (-1) * rho 46308 - rho 46309 + (seg52In0AccY29 rho - seg52In0AccX29 rho * (-1)) *
          (rho 46305 + rho 46306) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX30 rho = seg52In0AccX29 rho - Bool.toZMod bit * (seg52In0AccX29 rho - rho 46311) := by
    have hd : rho 46313 = Bool.toZMod bit * (rho 46311 - seg52In0AccX29 rho) := by
      rw [← hbit]
      unfold seg52In0AccX29
      linear_combination -r1922
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY30 rho = seg52In0AccY29 rho - Bool.toZMod bit * (seg52In0AccY29 rho - rho 46312) := by
    have hd : rho 46314 = Bool.toZMod bit * (rho 46312 - seg52In0AccY29 rho) := by
      rw [← hbit]
      unfold seg52In0AccY29
      linear_combination -r1923
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46305 * rho 46306 = rho 46315 := by linear_combination r1924
  have hd1 : rho 46305 * rho 46305 = rho 46316 := by linear_combination r1925
  have hd2 : rho 46306 * rho 46306 = rho 46317 := by linear_combination r1926
  have hd3 : rho 46318 * (rho 46306 * rho 46306 + rho 46305 * rho 46305 * (-1)) =
      2 * (rho 46305 * rho 46306) := by
    rw [hd0, hd1, hd2]
    linear_combination r1927
  have hd4 : rho 46319 * (2 - (rho 46306 * rho 46306 + rho 46305 * rho 46305 * (-1))) =
      rho 46306 * rho 46306 - rho 46305 * rho 46305 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1928
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX29 rho, seg52In0AccY29 rho⟩ ⟨rho 46305, rho 46306⟩
    ⟨rho 46311, rho 46312⟩ ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 46318, rho 46319⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1929 rho ∧ Seg52.relationRow1930 rho ∧ Seg52.relationRow1931 rho ∧ Seg52.relationRow1932 rho ∧ Seg52.relationRow1933 rho ∧ Seg52.relationRow1934 rho ∧ Seg52.relationRow1935 rho ∧ Seg52.relationRow1936 rho ∧ Seg52.relationRow1937 rho ∧ Seg52.relationRow1938 rho ∧ Seg52.relationRow1939 rho ∧ Seg52.relationRow1940 rho ∧ Seg52.relationRow1941 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941⟩

theorem seg52In0_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45838 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46318, rho 46319⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 46318, rho 46319⟩
        ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 46331, rho 46332⟩ := by
  obtain ⟨r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941⟩ := seg52In0_rows30 rho h
  unfold Seg52.relationRow1929 at r1929

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1929

  unfold Seg52.relationRow1930 at r1930

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1930

  unfold Seg52.relationRow1931 at r1931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1931

  unfold Seg52.relationRow1932 at r1932

  unfold Seg52.relationRow1933 at r1933

  unfold Seg52.relationRow1934 at r1934

  unfold Seg52.relationRow1935 at r1935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1935

  unfold Seg52.relationRow1936 at r1936

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1936

  unfold Seg52.relationRow1937 at r1937

  unfold Seg52.relationRow1938 at r1938

  unfold Seg52.relationRow1939 at r1939

  unfold Seg52.relationRow1940 at r1940

  unfold Seg52.relationRow1941 at r1941

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX31 rho = seg52In0AccX30 rho + rho 46326 := by
    unfold seg52In0AccX31 seg52In0AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 30]

    ring

  have hnexty : seg52In0AccY31 rho = seg52In0AccY30 rho + rho 46327 := by
    unfold seg52In0AccY31 seg52In0AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 30]

    ring

  have ha0 : (rho 46318 + rho 46319) * (seg52In0AccX30 rho + seg52In0AccY30 rho) = rho 46320 := by
    unfold seg52In0AccX30 seg52In0AccY30
    linear_combination r1929
  have ha1 : rho 46319 * seg52In0AccX30 rho = rho 46321 := by
    unfold seg52In0AccX30
    linear_combination r1930
  have ha2 : rho 46318 * seg52In0AccY30 rho = rho 46322 := by
    unfold seg52In0AccY30
    linear_combination r1931
  have ha3 : 3021 * rho 46321 * rho 46322 = rho 46323 := by
    linear_combination r1932
  have ha4 : rho 46324 * (1 + rho 46323) = rho 46321 + rho 46322 := by
    linear_combination r1933
  have ha5 : rho 46325 * (1 - rho 46323) = rho 46320 - rho 46321 - rho 46322 := by
    linear_combination r1934
  have haddx :
      rho 46324 * (1 + 3021 * (rho 46319 * seg52In0AccX30 rho) * (rho 46318 * seg52In0AccY30 rho)) =
        rho 46319 * seg52In0AccX30 rho + rho 46318 * seg52In0AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46325 * (1 - 3021 * (rho 46319 * seg52In0AccX30 rho) * (rho 46318 * seg52In0AccY30 rho)) =
        (-1) * (rho 46319 * seg52In0AccX30 rho) - rho 46318 * seg52In0AccY30 rho +
          (seg52In0AccY30 rho - seg52In0AccX30 rho * (-1)) * (rho 46318 + rho 46319) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46325 * (1 - rho 46323) = rho 46320 - rho 46321 - rho 46322 := ha5
      _ = (-1) * rho 46321 - rho 46322 + (seg52In0AccY30 rho - seg52In0AccX30 rho * (-1)) *
          (rho 46318 + rho 46319) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX31 rho = seg52In0AccX30 rho - Bool.toZMod bit * (seg52In0AccX30 rho - rho 46324) := by
    have hd : rho 46326 = Bool.toZMod bit * (rho 46324 - seg52In0AccX30 rho) := by
      rw [← hbit]
      unfold seg52In0AccX30
      linear_combination -r1935
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY31 rho = seg52In0AccY30 rho - Bool.toZMod bit * (seg52In0AccY30 rho - rho 46325) := by
    have hd : rho 46327 = Bool.toZMod bit * (rho 46325 - seg52In0AccY30 rho) := by
      rw [← hbit]
      unfold seg52In0AccY30
      linear_combination -r1936
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46318 * rho 46319 = rho 46328 := by linear_combination r1937
  have hd1 : rho 46318 * rho 46318 = rho 46329 := by linear_combination r1938
  have hd2 : rho 46319 * rho 46319 = rho 46330 := by linear_combination r1939
  have hd3 : rho 46331 * (rho 46319 * rho 46319 + rho 46318 * rho 46318 * (-1)) =
      2 * (rho 46318 * rho 46319) := by
    rw [hd0, hd1, hd2]
    linear_combination r1940
  have hd4 : rho 46332 * (2 - (rho 46319 * rho 46319 + rho 46318 * rho 46318 * (-1))) =
      rho 46319 * rho 46319 - rho 46318 * rho 46318 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1941
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX30 rho, seg52In0AccY30 rho⟩ ⟨rho 46318, rho 46319⟩
    ⟨rho 46324, rho 46325⟩ ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 46331, rho 46332⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1942 rho ∧ Seg52.relationRow1943 rho ∧ Seg52.relationRow1944 rho ∧ Seg52.relationRow1945 rho ∧ Seg52.relationRow1946 rho ∧ Seg52.relationRow1947 rho ∧ Seg52.relationRow1948 rho ∧ Seg52.relationRow1949 rho ∧ Seg52.relationRow1950 rho ∧ Seg52.relationRow1951 rho ∧ Seg52.relationRow1952 rho ∧ Seg52.relationRow1953 rho ∧ Seg52.relationRow1954 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954⟩

theorem seg52In0_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45839 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46331, rho 46332⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 46331, rho 46332⟩
        ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 46344, rho 46345⟩ := by
  obtain ⟨r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954⟩ := seg52In0_rows31 rho h
  unfold Seg52.relationRow1942 at r1942

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1942

  unfold Seg52.relationRow1943 at r1943

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1943

  unfold Seg52.relationRow1944 at r1944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1944

  unfold Seg52.relationRow1945 at r1945

  unfold Seg52.relationRow1946 at r1946

  unfold Seg52.relationRow1947 at r1947

  unfold Seg52.relationRow1948 at r1948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1948

  unfold Seg52.relationRow1949 at r1949

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1949

  unfold Seg52.relationRow1950 at r1950

  unfold Seg52.relationRow1951 at r1951

  unfold Seg52.relationRow1952 at r1952

  unfold Seg52.relationRow1953 at r1953

  unfold Seg52.relationRow1954 at r1954

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX32 rho = seg52In0AccX31 rho + rho 46339 := by
    unfold seg52In0AccX32 seg52In0AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 31]

    ring

  have hnexty : seg52In0AccY32 rho = seg52In0AccY31 rho + rho 46340 := by
    unfold seg52In0AccY32 seg52In0AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 31]

    ring

  have ha0 : (rho 46331 + rho 46332) * (seg52In0AccX31 rho + seg52In0AccY31 rho) = rho 46333 := by
    unfold seg52In0AccX31 seg52In0AccY31
    linear_combination r1942
  have ha1 : rho 46332 * seg52In0AccX31 rho = rho 46334 := by
    unfold seg52In0AccX31
    linear_combination r1943
  have ha2 : rho 46331 * seg52In0AccY31 rho = rho 46335 := by
    unfold seg52In0AccY31
    linear_combination r1944
  have ha3 : 3021 * rho 46334 * rho 46335 = rho 46336 := by
    linear_combination r1945
  have ha4 : rho 46337 * (1 + rho 46336) = rho 46334 + rho 46335 := by
    linear_combination r1946
  have ha5 : rho 46338 * (1 - rho 46336) = rho 46333 - rho 46334 - rho 46335 := by
    linear_combination r1947
  have haddx :
      rho 46337 * (1 + 3021 * (rho 46332 * seg52In0AccX31 rho) * (rho 46331 * seg52In0AccY31 rho)) =
        rho 46332 * seg52In0AccX31 rho + rho 46331 * seg52In0AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46338 * (1 - 3021 * (rho 46332 * seg52In0AccX31 rho) * (rho 46331 * seg52In0AccY31 rho)) =
        (-1) * (rho 46332 * seg52In0AccX31 rho) - rho 46331 * seg52In0AccY31 rho +
          (seg52In0AccY31 rho - seg52In0AccX31 rho * (-1)) * (rho 46331 + rho 46332) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46338 * (1 - rho 46336) = rho 46333 - rho 46334 - rho 46335 := ha5
      _ = (-1) * rho 46334 - rho 46335 + (seg52In0AccY31 rho - seg52In0AccX31 rho * (-1)) *
          (rho 46331 + rho 46332) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX32 rho = seg52In0AccX31 rho - Bool.toZMod bit * (seg52In0AccX31 rho - rho 46337) := by
    have hd : rho 46339 = Bool.toZMod bit * (rho 46337 - seg52In0AccX31 rho) := by
      rw [← hbit]
      unfold seg52In0AccX31
      linear_combination -r1948
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY32 rho = seg52In0AccY31 rho - Bool.toZMod bit * (seg52In0AccY31 rho - rho 46338) := by
    have hd : rho 46340 = Bool.toZMod bit * (rho 46338 - seg52In0AccY31 rho) := by
      rw [← hbit]
      unfold seg52In0AccY31
      linear_combination -r1949
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46331 * rho 46332 = rho 46341 := by linear_combination r1950
  have hd1 : rho 46331 * rho 46331 = rho 46342 := by linear_combination r1951
  have hd2 : rho 46332 * rho 46332 = rho 46343 := by linear_combination r1952
  have hd3 : rho 46344 * (rho 46332 * rho 46332 + rho 46331 * rho 46331 * (-1)) =
      2 * (rho 46331 * rho 46332) := by
    rw [hd0, hd1, hd2]
    linear_combination r1953
  have hd4 : rho 46345 * (2 - (rho 46332 * rho 46332 + rho 46331 * rho 46331 * (-1))) =
      rho 46332 * rho 46332 - rho 46331 * rho 46331 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1954
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX31 rho, seg52In0AccY31 rho⟩ ⟨rho 46331, rho 46332⟩
    ⟨rho 46337, rho 46338⟩ ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 46344, rho 46345⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1955 rho ∧ Seg52.relationRow1956 rho ∧ Seg52.relationRow1957 rho ∧ Seg52.relationRow1958 rho ∧ Seg52.relationRow1959 rho ∧ Seg52.relationRow1960 rho ∧ Seg52.relationRow1961 rho ∧ Seg52.relationRow1962 rho ∧ Seg52.relationRow1963 rho ∧ Seg52.relationRow1964 rho ∧ Seg52.relationRow1965 rho ∧ Seg52.relationRow1966 rho ∧ Seg52.relationRow1967 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart24 at p24

  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, r1967, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, r1967⟩

theorem seg52In0_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45840 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 46344, rho 46345⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 46344, rho 46345⟩
        ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 46357, rho 46358⟩ := by
  obtain ⟨r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, r1967⟩ := seg52In0_rows32 rho h
  unfold Seg52.relationRow1955 at r1955

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1955

  unfold Seg52.relationRow1956 at r1956

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1956

  unfold Seg52.relationRow1957 at r1957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1957

  unfold Seg52.relationRow1958 at r1958

  unfold Seg52.relationRow1959 at r1959

  unfold Seg52.relationRow1960 at r1960

  unfold Seg52.relationRow1961 at r1961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1961

  unfold Seg52.relationRow1962 at r1962

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1962

  unfold Seg52.relationRow1963 at r1963

  unfold Seg52.relationRow1964 at r1964

  unfold Seg52.relationRow1965 at r1965

  unfold Seg52.relationRow1966 at r1966

  unfold Seg52.relationRow1967 at r1967

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX33 rho = seg52In0AccX32 rho + rho 46352 := by
    unfold seg52In0AccX33 seg52In0AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45936 13 32]

    ring

  have hnexty : seg52In0AccY33 rho = seg52In0AccY32 rho + rho 46353 := by
    unfold seg52In0AccY33 seg52In0AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45937 13 32]

    ring

  have ha0 : (rho 46344 + rho 46345) * (seg52In0AccX32 rho + seg52In0AccY32 rho) = rho 46346 := by
    unfold seg52In0AccX32 seg52In0AccY32
    linear_combination r1955
  have ha1 : rho 46345 * seg52In0AccX32 rho = rho 46347 := by
    unfold seg52In0AccX32
    linear_combination r1956
  have ha2 : rho 46344 * seg52In0AccY32 rho = rho 46348 := by
    unfold seg52In0AccY32
    linear_combination r1957
  have ha3 : 3021 * rho 46347 * rho 46348 = rho 46349 := by
    linear_combination r1958
  have ha4 : rho 46350 * (1 + rho 46349) = rho 46347 + rho 46348 := by
    linear_combination r1959
  have ha5 : rho 46351 * (1 - rho 46349) = rho 46346 - rho 46347 - rho 46348 := by
    linear_combination r1960
  have haddx :
      rho 46350 * (1 + 3021 * (rho 46345 * seg52In0AccX32 rho) * (rho 46344 * seg52In0AccY32 rho)) =
        rho 46345 * seg52In0AccX32 rho + rho 46344 * seg52In0AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 46351 * (1 - 3021 * (rho 46345 * seg52In0AccX32 rho) * (rho 46344 * seg52In0AccY32 rho)) =
        (-1) * (rho 46345 * seg52In0AccX32 rho) - rho 46344 * seg52In0AccY32 rho +
          (seg52In0AccY32 rho - seg52In0AccX32 rho * (-1)) * (rho 46344 + rho 46345) := by
    rw [ha1, ha2, ha3]
    calc
      rho 46351 * (1 - rho 46349) = rho 46346 - rho 46347 - rho 46348 := ha5
      _ = (-1) * rho 46347 - rho 46348 + (seg52In0AccY32 rho - seg52In0AccX32 rho * (-1)) *
          (rho 46344 + rho 46345) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX33 rho = seg52In0AccX32 rho - Bool.toZMod bit * (seg52In0AccX32 rho - rho 46350) := by
    have hd : rho 46352 = Bool.toZMod bit * (rho 46350 - seg52In0AccX32 rho) := by
      rw [← hbit]
      unfold seg52In0AccX32
      linear_combination -r1961
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY33 rho = seg52In0AccY32 rho - Bool.toZMod bit * (seg52In0AccY32 rho - rho 46351) := by
    have hd : rho 46353 = Bool.toZMod bit * (rho 46351 - seg52In0AccY32 rho) := by
      rw [← hbit]
      unfold seg52In0AccY32
      linear_combination -r1962
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 46344 * rho 46345 = rho 46354 := by linear_combination r1963
  have hd1 : rho 46344 * rho 46344 = rho 46355 := by linear_combination r1964
  have hd2 : rho 46345 * rho 46345 = rho 46356 := by linear_combination r1965
  have hd3 : rho 46357 * (rho 46345 * rho 46345 + rho 46344 * rho 46344 * (-1)) =
      2 * (rho 46344 * rho 46345) := by
    rw [hd0, hd1, hd2]
    linear_combination r1966
  have hd4 : rho 46358 * (2 - (rho 46345 * rho 46345 + rho 46344 * rho 46344 * (-1))) =
      rho 46345 * rho 46345 - rho 46344 * rho 46344 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1967
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX32 rho, seg52In0AccY32 rho⟩ ⟨rho 46344, rho 46345⟩
    ⟨rho 46350, rho 46351⟩ ⟨seg52In0AccX33 rho, seg52In0AccY33 rho⟩ ⟨rho 46357, rho 46358⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45808 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg52In0_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg52In0_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg52In0_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg52In0_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg52In0_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg52In0_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg52In0_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg52In0_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg52In0_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg52In0_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
