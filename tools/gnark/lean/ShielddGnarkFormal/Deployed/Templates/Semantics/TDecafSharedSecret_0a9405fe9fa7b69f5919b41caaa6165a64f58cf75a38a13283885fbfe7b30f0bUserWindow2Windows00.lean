import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window0 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc0 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[248]! (scalarBits rho)[247]!
        (base rho) (twice rho) (triple rho) (acc0 rho)
        (acc1 rho) ∧
      EdwardsBridge.onCurve (acc1 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1826, r1827, r1828, r1829, r1830, r1831, r1832, r1833, r1834, r1835, r1836, r1837, r1838, r1839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1826 at r1826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1827 at r1827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1828 at r1828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1829 at r1829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1830 at r1830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1831 at r1831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1832 at r1832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1833 at r1833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1834 at r1834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1835 at r1835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1836 at r1836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1837 at r1837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1838 at r1838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1839 at r1839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1840 at r1840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1841 at r1841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1842 at r1842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1843 at r1843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1844 at r1844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1845 at r1845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1846 at r1846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1847 at r1847
  have hshift1 : EdwardsBridge.doubleSpec (acc0 rho) (shiftOnce0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1827 + rho 1828) ((1 : F) + rho 1830 + rho 1831) (rho 1832) (rho 1833) (rho 1834) (rho 1835) (rho 1836)
      (by simpa [acc0] using hacc)
      (by linear_combination r1826)
      (by linear_combination r1827)
      (by linear_combination r1828)
      (by linear_combination r1829)
      (by linear_combination r1830)
    simpa [acc0, shiftOnce0] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc0 rho) (shiftOnce0 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc0 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce0 rho) (shifted0 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1835) (rho 1836) (rho 1837) (rho 1838) (rho 1839) (rho 1840) (rho 1841)
      (by simpa [shiftOnce0] using hshift1On)
      (by linear_combination r1831)
      (by linear_combination r1832)
      (by linear_combination r1833)
      (by linear_combination r1834)
      (by linear_combination r1835)
    simpa [shiftOnce0, shifted0] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted0 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce0 rho) (shifted0 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce0 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 250) (rho 249)
      (base rho) (twice rho) (triple rho) (digit0 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 250) (rho 249)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 1843 + rho 1844, (1 : F) + rho 1846 + rho 1847⟩ := by
      constructor
      · refine ⟨(rho 1842 + (rho 1818) - (0)), rho 1843, ?_, ?_, ?_⟩
        · linear_combination r1836
        · linear_combination r1837
        · linear_combination r1838
      · refine ⟨(rho 1845 + (rho 1819) - ((1 : F))), rho 1846, ?_, ?_, ?_⟩
        · linear_combination r1839
        · linear_combination r1840
        · linear_combination r1841
    simpa [base, twice, triple, digit0] using hraw
  have hhigh : rho 250 =
      Bool.toZMod bits[248]! := by
    simpa only using rho_bit_of_map rho bits hbits 248 (by decide +kernel)
  have hlow : rho 249 =
      Bool.toZMod bits[247]! := by
    simpa only using rho_bit_of_map rho bits hbits 247 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[248]! bits[247]! (base rho) (twice rho) (triple rho)
    (digit0 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit0 rho) := by
    rw [hdigit]
    cases bits[248]! <;> cases bits[247]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted0 rho) (digit0 rho) (acc1 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1840) (rho 1841) (rho 1843 + rho 1844) ((1 : F) + rho 1846 + rho 1847)
      (rho 1848) (rho 1849) (rho 1850) (rho 1851) (rho 1852) (rho 1853)
      (by simpa [shifted0] using hshift2On)
      (by simpa [digit0] using hdigitOn)
      (by linear_combination r1842)
      (by linear_combination r1843)
      (by linear_combination r1844)
      (by linear_combination r1845)
      (by linear_combination r1846)
      (by linear_combination r1847)
    simpa [shifted0, digit0, acc1] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc1 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted0 rho) (digit0 rho) (acc1 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted0 rho) (digit0 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 250) (rho 249)
      (base rho) (twice rho) (triple rho) (acc0 rho)
      (acc1 rho) :=
    ⟨shiftOnce0 rho, shifted0 rho, digit0 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window1 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc1 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[246]! (scalarBits rho)[245]!
        (base rho) (twice rho) (triple rho) (acc1 rho)
        (acc2 rho) ∧
      EdwardsBridge.onCurve (acc2 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1848 at r1848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1849 at r1849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1850 at r1850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1851 at r1851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1852 at r1852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1853 at r1853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1854 at r1854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1855 at r1855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1856 at r1856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1857 at r1857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1858 at r1858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1859 at r1859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1860 at r1860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1861 at r1861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1862 at r1862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1863 at r1863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1864 at r1864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1865 at r1865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1866 at r1866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1867 at r1867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1868 at r1868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1869 at r1869
  have hshift1 : EdwardsBridge.doubleSpec (acc1 rho) (shiftOnce1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1852) (rho 1853) (rho 1854) (rho 1855) (rho 1856) (rho 1857) (rho 1858)
      (by simpa [acc1] using hacc)
      (by linear_combination r1848)
      (by linear_combination r1849)
      (by linear_combination r1850)
      (by linear_combination r1851)
      (by linear_combination r1852)
    simpa [acc1, shiftOnce1] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc1 rho) (shiftOnce1 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc1 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce1 rho) (shifted1 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1857) (rho 1858) (rho 1859) (rho 1860) (rho 1861) (rho 1862) (rho 1863)
      (by simpa [shiftOnce1] using hshift1On)
      (by linear_combination r1853)
      (by linear_combination r1854)
      (by linear_combination r1855)
      (by linear_combination r1856)
      (by linear_combination r1857)
    simpa [shiftOnce1, shifted1] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted1 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce1 rho) (shifted1 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce1 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 248) (rho 247)
      (base rho) (twice rho) (triple rho) (digit1 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 248) (rho 247)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 1865 + rho 1866, (1 : F) + rho 1868 + rho 1869⟩ := by
      constructor
      · refine ⟨(rho 1864 + (rho 1818) - (0)), rho 1865, ?_, ?_, ?_⟩
        · linear_combination r1858
        · linear_combination r1859
        · linear_combination r1860
      · refine ⟨(rho 1867 + (rho 1819) - ((1 : F))), rho 1868, ?_, ?_, ?_⟩
        · linear_combination r1861
        · linear_combination r1862
        · linear_combination r1863
    simpa [base, twice, triple, digit1] using hraw
  have hhigh : rho 248 =
      Bool.toZMod bits[246]! := by
    simpa only using rho_bit_of_map rho bits hbits 246 (by decide +kernel)
  have hlow : rho 247 =
      Bool.toZMod bits[245]! := by
    simpa only using rho_bit_of_map rho bits hbits 245 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[246]! bits[245]! (base rho) (twice rho) (triple rho)
    (digit1 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit1 rho) := by
    rw [hdigit]
    cases bits[246]! <;> cases bits[245]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted1 rho) (digit1 rho) (acc2 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1862) (rho 1863) (rho 1865 + rho 1866) ((1 : F) + rho 1868 + rho 1869)
      (rho 1870) (rho 1871) (rho 1872) (rho 1873) (rho 1874) (rho 1875)
      (by simpa [shifted1] using hshift2On)
      (by simpa [digit1] using hdigitOn)
      (by linear_combination r1864)
      (by linear_combination r1865)
      (by linear_combination r1866)
      (by linear_combination r1867)
      (by linear_combination r1868)
      (by linear_combination r1869)
    simpa [shifted1, digit1, acc2] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc2 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted1 rho) (digit1 rho) (acc2 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted1 rho) (digit1 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 248) (rho 247)
      (base rho) (twice rho) (triple rho) (acc1 rho)
      (acc2 rho) :=
    ⟨shiftOnce1 rho, shifted1 rho, digit1 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window2 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc2 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[244]! (scalarBits rho)[243]!
        (base rho) (twice rho) (triple rho) (acc2 rho)
        (acc3 rho) ∧
      EdwardsBridge.onCurve (acc3 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1870, r1871, r1872, r1873, r1874, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, r1890, r1891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1870 at r1870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1871 at r1871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1872 at r1872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1873 at r1873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1874 at r1874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1875 at r1875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1876 at r1876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1877 at r1877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1878 at r1878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1879 at r1879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1880 at r1880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1881 at r1881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1882 at r1882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1883 at r1883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1884 at r1884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1885 at r1885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1886 at r1886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1887 at r1887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1888 at r1888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1889 at r1889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1890 at r1890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1891 at r1891
  have hshift1 : EdwardsBridge.doubleSpec (acc2 rho) (shiftOnce2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1874) (rho 1875) (rho 1876) (rho 1877) (rho 1878) (rho 1879) (rho 1880)
      (by simpa [acc2] using hacc)
      (by linear_combination r1870)
      (by linear_combination r1871)
      (by linear_combination r1872)
      (by linear_combination r1873)
      (by linear_combination r1874)
    simpa [acc2, shiftOnce2] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc2 rho) (shiftOnce2 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc2 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce2 rho) (shifted2 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1879) (rho 1880) (rho 1881) (rho 1882) (rho 1883) (rho 1884) (rho 1885)
      (by simpa [shiftOnce2] using hshift1On)
      (by linear_combination r1875)
      (by linear_combination r1876)
      (by linear_combination r1877)
      (by linear_combination r1878)
      (by linear_combination r1879)
    simpa [shiftOnce2, shifted2] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted2 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce2 rho) (shifted2 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce2 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 246) (rho 245)
      (base rho) (twice rho) (triple rho) (digit2 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 246) (rho 245)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 1887 + rho 1888, (1 : F) + rho 1890 + rho 1891⟩ := by
      constructor
      · refine ⟨(rho 1886 + (rho 1818) - (0)), rho 1887, ?_, ?_, ?_⟩
        · linear_combination r1880
        · linear_combination r1881
        · linear_combination r1882
      · refine ⟨(rho 1889 + (rho 1819) - ((1 : F))), rho 1890, ?_, ?_, ?_⟩
        · linear_combination r1883
        · linear_combination r1884
        · linear_combination r1885
    simpa [base, twice, triple, digit2] using hraw
  have hhigh : rho 246 =
      Bool.toZMod bits[244]! := by
    simpa only using rho_bit_of_map rho bits hbits 244 (by decide +kernel)
  have hlow : rho 245 =
      Bool.toZMod bits[243]! := by
    simpa only using rho_bit_of_map rho bits hbits 243 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[244]! bits[243]! (base rho) (twice rho) (triple rho)
    (digit2 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit2 rho) := by
    rw [hdigit]
    cases bits[244]! <;> cases bits[243]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted2 rho) (digit2 rho) (acc3 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1884) (rho 1885) (rho 1887 + rho 1888) ((1 : F) + rho 1890 + rho 1891)
      (rho 1892) (rho 1893) (rho 1894) (rho 1895) (rho 1896) (rho 1897)
      (by simpa [shifted2] using hshift2On)
      (by simpa [digit2] using hdigitOn)
      (by linear_combination r1886)
      (by linear_combination r1887)
      (by linear_combination r1888)
      (by linear_combination r1889)
      (by linear_combination r1890)
      (by linear_combination r1891)
    simpa [shifted2, digit2, acc3] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc3 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted2 rho) (digit2 rho) (acc3 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted2 rho) (digit2 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 246) (rho 245)
      (base rho) (twice rho) (triple rho) (acc2 rho)
      (acc3 rho) :=
    ⟨shiftOnce2 rho, shifted2 rho, digit2 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window3 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc3 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[242]! (scalarBits rho)[241]!
        (base rho) (twice rho) (triple rho) (acc3 rho)
        (acc4 rho) ∧
      EdwardsBridge.onCurve (acc4 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1892 at r1892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1893 at r1893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1894 at r1894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1895 at r1895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1896 at r1896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1897 at r1897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1898 at r1898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1899 at r1899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1900 at r1900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1901 at r1901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1902 at r1902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1903 at r1903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1904 at r1904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1905 at r1905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1906 at r1906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1907 at r1907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1908 at r1908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1909 at r1909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1910 at r1910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1911 at r1911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1912 at r1912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1913 at r1913
  have hshift1 : EdwardsBridge.doubleSpec (acc3 rho) (shiftOnce3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1896) (rho 1897) (rho 1898) (rho 1899) (rho 1900) (rho 1901) (rho 1902)
      (by simpa [acc3] using hacc)
      (by linear_combination r1892)
      (by linear_combination r1893)
      (by linear_combination r1894)
      (by linear_combination r1895)
      (by linear_combination r1896)
    simpa [acc3, shiftOnce3] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc3 rho) (shiftOnce3 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc3 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce3 rho) (shifted3 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1901) (rho 1902) (rho 1903) (rho 1904) (rho 1905) (rho 1906) (rho 1907)
      (by simpa [shiftOnce3] using hshift1On)
      (by linear_combination r1897)
      (by linear_combination r1898)
      (by linear_combination r1899)
      (by linear_combination r1900)
      (by linear_combination r1901)
    simpa [shiftOnce3, shifted3] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted3 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce3 rho) (shifted3 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce3 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 244) (rho 243)
      (base rho) (twice rho) (triple rho) (digit3 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 244) (rho 243)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 1909 + rho 1910, (1 : F) + rho 1912 + rho 1913⟩ := by
      constructor
      · refine ⟨(rho 1908 + (rho 1818) - (0)), rho 1909, ?_, ?_, ?_⟩
        · linear_combination r1902
        · linear_combination r1903
        · linear_combination r1904
      · refine ⟨(rho 1911 + (rho 1819) - ((1 : F))), rho 1912, ?_, ?_, ?_⟩
        · linear_combination r1905
        · linear_combination r1906
        · linear_combination r1907
    simpa [base, twice, triple, digit3] using hraw
  have hhigh : rho 244 =
      Bool.toZMod bits[242]! := by
    simpa only using rho_bit_of_map rho bits hbits 242 (by decide +kernel)
  have hlow : rho 243 =
      Bool.toZMod bits[241]! := by
    simpa only using rho_bit_of_map rho bits hbits 241 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[242]! bits[241]! (base rho) (twice rho) (triple rho)
    (digit3 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit3 rho) := by
    rw [hdigit]
    cases bits[242]! <;> cases bits[241]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted3 rho) (digit3 rho) (acc4 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1906) (rho 1907) (rho 1909 + rho 1910) ((1 : F) + rho 1912 + rho 1913)
      (rho 1914) (rho 1915) (rho 1916) (rho 1917) (rho 1918) (rho 1919)
      (by simpa [shifted3] using hshift2On)
      (by simpa [digit3] using hdigitOn)
      (by linear_combination r1908)
      (by linear_combination r1909)
      (by linear_combination r1910)
      (by linear_combination r1911)
      (by linear_combination r1912)
      (by linear_combination r1913)
    simpa [shifted3, digit3, acc4] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc4 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted3 rho) (digit3 rho) (acc4 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted3 rho) (digit3 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 244) (rho 243)
      (base rho) (twice rho) (triple rho) (acc3 rho)
      (acc4 rho) :=
    ⟨shiftOnce3 rho, shifted3 rho, digit3 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window4 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc4 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[240]! (scalarBits rho)[239]!
        (base rho) (twice rho) (triple rho) (acc4 rho)
        (acc5 rho) ∧
      EdwardsBridge.onCurve (acc5 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1914, r1915, r1916, r1917, r1918, r1919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1914 at r1914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1915 at r1915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1916 at r1916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1917 at r1917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1918 at r1918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1919 at r1919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1920 at r1920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1921 at r1921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1922 at r1922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1923 at r1923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1924 at r1924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1925 at r1925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1926 at r1926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1927 at r1927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1928 at r1928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1929 at r1929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1930 at r1930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1931 at r1931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1932 at r1932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1933 at r1933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1934 at r1934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1935 at r1935
  have hshift1 : EdwardsBridge.doubleSpec (acc4 rho) (shiftOnce4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1918) (rho 1919) (rho 1920) (rho 1921) (rho 1922) (rho 1923) (rho 1924)
      (by simpa [acc4] using hacc)
      (by linear_combination r1914)
      (by linear_combination r1915)
      (by linear_combination r1916)
      (by linear_combination r1917)
      (by linear_combination r1918)
    simpa [acc4, shiftOnce4] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc4 rho) (shiftOnce4 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc4 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce4 rho) (shifted4 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1923) (rho 1924) (rho 1925) (rho 1926) (rho 1927) (rho 1928) (rho 1929)
      (by simpa [shiftOnce4] using hshift1On)
      (by linear_combination r1919)
      (by linear_combination r1920)
      (by linear_combination r1921)
      (by linear_combination r1922)
      (by linear_combination r1923)
    simpa [shiftOnce4, shifted4] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted4 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce4 rho) (shifted4 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce4 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 242) (rho 241)
      (base rho) (twice rho) (triple rho) (digit4 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 242) (rho 241)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 1931 + rho 1932, (1 : F) + rho 1934 + rho 1935⟩ := by
      constructor
      · refine ⟨(rho 1930 + (rho 1818) - (0)), rho 1931, ?_, ?_, ?_⟩
        · linear_combination r1924
        · linear_combination r1925
        · linear_combination r1926
      · refine ⟨(rho 1933 + (rho 1819) - ((1 : F))), rho 1934, ?_, ?_, ?_⟩
        · linear_combination r1927
        · linear_combination r1928
        · linear_combination r1929
    simpa [base, twice, triple, digit4] using hraw
  have hhigh : rho 242 =
      Bool.toZMod bits[240]! := by
    simpa only using rho_bit_of_map rho bits hbits 240 (by decide +kernel)
  have hlow : rho 241 =
      Bool.toZMod bits[239]! := by
    simpa only using rho_bit_of_map rho bits hbits 239 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[240]! bits[239]! (base rho) (twice rho) (triple rho)
    (digit4 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit4 rho) := by
    rw [hdigit]
    cases bits[240]! <;> cases bits[239]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted4 rho) (digit4 rho) (acc5 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1928) (rho 1929) (rho 1931 + rho 1932) ((1 : F) + rho 1934 + rho 1935)
      (rho 1936) (rho 1937) (rho 1938) (rho 1939) (rho 1940) (rho 1941)
      (by simpa [shifted4] using hshift2On)
      (by simpa [digit4] using hdigitOn)
      (by linear_combination r1930)
      (by linear_combination r1931)
      (by linear_combination r1932)
      (by linear_combination r1933)
      (by linear_combination r1934)
      (by linear_combination r1935)
    simpa [shifted4, digit4, acc5] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc5 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted4 rho) (digit4 rho) (acc5 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted4 rho) (digit4 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 242) (rho 241)
      (base rho) (twice rho) (triple rho) (acc4 rho)
      (acc5 rho) :=
    ⟨shiftOnce4 rho, shifted4 rho, digit4 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window5 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc5 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[238]! (scalarBits rho)[237]!
        (base rho) (twice rho) (triple rho) (acc5 rho)
        (acc6 rho) ∧
      EdwardsBridge.onCurve (acc6 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
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
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1936, r1937, r1938, r1939, r1940, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, r1955, r1956, r1957, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1936 at r1936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1937 at r1937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1938 at r1938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1939 at r1939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1940 at r1940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1941 at r1941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1942 at r1942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1943 at r1943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1944 at r1944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1945 at r1945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1946 at r1946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1947 at r1947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1948 at r1948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1949 at r1949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1950 at r1950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1951 at r1951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1952 at r1952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1953 at r1953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1954 at r1954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1955 at r1955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1956 at r1956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow1957 at r1957
  have hshift1 : EdwardsBridge.doubleSpec (acc5 rho) (shiftOnce5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1940) (rho 1941) (rho 1942) (rho 1943) (rho 1944) (rho 1945) (rho 1946)
      (by simpa [acc5] using hacc)
      (by linear_combination r1936)
      (by linear_combination r1937)
      (by linear_combination r1938)
      (by linear_combination r1939)
      (by linear_combination r1940)
    simpa [acc5, shiftOnce5] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc5 rho) (shiftOnce5 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc5 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce5 rho) (shifted5 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1945) (rho 1946) (rho 1947) (rho 1948) (rho 1949) (rho 1950) (rho 1951)
      (by simpa [shiftOnce5] using hshift1On)
      (by linear_combination r1941)
      (by linear_combination r1942)
      (by linear_combination r1943)
      (by linear_combination r1944)
      (by linear_combination r1945)
    simpa [shiftOnce5, shifted5] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted5 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce5 rho) (shifted5 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce5 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 240) (rho 239)
      (base rho) (twice rho) (triple rho) (digit5 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 240) (rho 239)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 1953 + rho 1954, (1 : F) + rho 1956 + rho 1957⟩ := by
      constructor
      · refine ⟨(rho 1952 + (rho 1818) - (0)), rho 1953, ?_, ?_, ?_⟩
        · linear_combination r1946
        · linear_combination r1947
        · linear_combination r1948
      · refine ⟨(rho 1955 + (rho 1819) - ((1 : F))), rho 1956, ?_, ?_, ?_⟩
        · linear_combination r1949
        · linear_combination r1950
        · linear_combination r1951
    simpa [base, twice, triple, digit5] using hraw
  have hhigh : rho 240 =
      Bool.toZMod bits[238]! := by
    simpa only using rho_bit_of_map rho bits hbits 238 (by decide +kernel)
  have hlow : rho 239 =
      Bool.toZMod bits[237]! := by
    simpa only using rho_bit_of_map rho bits hbits 237 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[238]! bits[237]! (base rho) (twice rho) (triple rho)
    (digit5 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit5 rho) := by
    rw [hdigit]
    cases bits[238]! <;> cases bits[237]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted5 rho) (digit5 rho) (acc6 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1950) (rho 1951) (rho 1953 + rho 1954) ((1 : F) + rho 1956 + rho 1957)
      (rho 1958) (rho 1959) (rho 1960) (rho 1961) (rho 1962) (rho 1963)
      (by simpa [shifted5] using hshift2On)
      (by simpa [digit5] using hdigitOn)
      (by linear_combination r1952)
      (by linear_combination r1953)
      (by linear_combination r1954)
      (by linear_combination r1955)
      (by linear_combination r1956)
      (by linear_combination r1957)
    simpa [shifted5, digit5, acc6] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc6 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted5 rho) (digit5 rho) (acc6 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted5 rho) (digit5 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 240) (rho 239)
      (base rho) (twice rho) (triple rho) (acc5 rho)
      (acc6 rho) :=
    ⟨shiftOnce5 rho, shifted5 rho, digit5 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
