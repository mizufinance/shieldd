import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window18 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc18 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[90]! (scalarBits rho)[89]!
        (base rho) (twice rho) (triple rho) (acc18 rho)
        (acc19 rho) ∧
      EdwardsBridge.onCurve (acc19 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p22, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart22 at p22
  rcases p22 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1835, r1836, r1837, r1838, r1839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart23 at p23
  rcases p23 with ⟨r1840, r1841, r1842, r1843, r1844, r1845, r1846, r1847, r1848, r1849, r1850, r1851, r1852, r1853, r1854, r1855, r1856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1835 at r1835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1836 at r1836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1837 at r1837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1838 at r1838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1839 at r1839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1840 at r1840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1841 at r1841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1842 at r1842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1843 at r1843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1844 at r1844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1845 at r1845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1846 at r1846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1847 at r1847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1848 at r1848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1849 at r1849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1850 at r1850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1851 at r1851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1852 at r1852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1853 at r1853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1854 at r1854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1855 at r1855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1856 at r1856
  have hshift1 : EdwardsBridge.doubleSpec (acc18 rho) (shiftOnce18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1660) (rho 1661) (rho 1662) (rho 1663) (rho 1664) (rho 1665) (rho 1666)
      (by simpa [acc18] using hacc)
      (by linear_combination r1835)
      (by linear_combination r1836)
      (by linear_combination r1837)
      (by linear_combination r1838)
      (by linear_combination r1839)
    simpa [acc18, shiftOnce18] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc18 rho) (shiftOnce18 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc18 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce18 rho) (shifted18 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1665) (rho 1666) (rho 1667) (rho 1668) (rho 1669) (rho 1670) (rho 1671)
      (by simpa [shiftOnce18] using hshift1On)
      (by linear_combination r1840)
      (by linear_combination r1841)
      (by linear_combination r1842)
      (by linear_combination r1843)
      (by linear_combination r1844)
    simpa [shiftOnce18, shifted18] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted18 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce18 rho) (shifted18 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce18 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1210) (rho 1209)
      (base rho) (twice rho) (triple rho) (digit18 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1210) (rho 1209)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1673 + rho 1674, (1 : F) + rho 1676 + rho 1677⟩ := by
      constructor
      · refine ⟨(rho 1672 + (rho 1252) - (0)), rho 1673, ?_, ?_, ?_⟩
        · linear_combination r1845
        · linear_combination r1846
        · linear_combination r1847
      · refine ⟨(rho 1675 + (rho 1253) - ((1 : F))), rho 1676, ?_, ?_, ?_⟩
        · linear_combination r1848
        · linear_combination r1849
        · linear_combination r1850
    simpa [base, twice, triple, digit18] using hraw
  have hhigh : rho 1210 =
      Bool.toZMod bits[90]! := by
    simpa only using rho_bit_of_map rho bits hbits 90 (by decide +kernel)
  have hlow : rho 1209 =
      Bool.toZMod bits[89]! := by
    simpa only using rho_bit_of_map rho bits hbits 89 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[90]! bits[89]! (base rho) (twice rho) (triple rho)
    (digit18 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit18 rho) := by
    rw [hdigit]
    cases bits[90]! <;> cases bits[89]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted18 rho) (digit18 rho) (acc19 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1670) (rho 1671) (rho 1673 + rho 1674) ((1 : F) + rho 1676 + rho 1677)
      (rho 1678) (rho 1679) (rho 1680) (rho 1681) (rho 1682) (rho 1683)
      (by simpa [shifted18] using hshift2On)
      (by simpa [digit18] using hdigitOn)
      (by linear_combination r1851)
      (by linear_combination r1852)
      (by linear_combination r1853)
      (by linear_combination r1854)
      (by linear_combination r1855)
      (by linear_combination r1856)
    simpa [shifted18, digit18, acc19] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc19 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted18 rho) (digit18 rho) (acc19 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted18 rho) (digit18 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1210) (rho 1209)
      (base rho) (twice rho) (triple rho) (acc18 rho)
      (acc19 rho) :=
    ⟨shiftOnce18 rho, shifted18 rho, digit18 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window19 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc19 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[88]! (scalarBits rho)[87]!
        (base rho) (twice rho) (triple rho) (acc19 rho)
        (acc20 rho) ∧
      EdwardsBridge.onCurve (acc20 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1857, r1858, r1859, r1860, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, r1875, r1876, r1877, r1878, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1857 at r1857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1858 at r1858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1859 at r1859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1860 at r1860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1861 at r1861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1862 at r1862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1863 at r1863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1864 at r1864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1865 at r1865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1866 at r1866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1867 at r1867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1868 at r1868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1869 at r1869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1870 at r1870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1871 at r1871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1872 at r1872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1873 at r1873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1874 at r1874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1875 at r1875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1876 at r1876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1877 at r1877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1878 at r1878
  have hshift1 : EdwardsBridge.doubleSpec (acc19 rho) (shiftOnce19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1682) (rho 1683) (rho 1684) (rho 1685) (rho 1686) (rho 1687) (rho 1688)
      (by simpa [acc19] using hacc)
      (by linear_combination r1857)
      (by linear_combination r1858)
      (by linear_combination r1859)
      (by linear_combination r1860)
      (by linear_combination r1861)
    simpa [acc19, shiftOnce19] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc19 rho) (shiftOnce19 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc19 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce19 rho) (shifted19 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1687) (rho 1688) (rho 1689) (rho 1690) (rho 1691) (rho 1692) (rho 1693)
      (by simpa [shiftOnce19] using hshift1On)
      (by linear_combination r1862)
      (by linear_combination r1863)
      (by linear_combination r1864)
      (by linear_combination r1865)
      (by linear_combination r1866)
    simpa [shiftOnce19, shifted19] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted19 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce19 rho) (shifted19 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce19 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1208) (rho 1207)
      (base rho) (twice rho) (triple rho) (digit19 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1208) (rho 1207)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1695 + rho 1696, (1 : F) + rho 1698 + rho 1699⟩ := by
      constructor
      · refine ⟨(rho 1694 + (rho 1252) - (0)), rho 1695, ?_, ?_, ?_⟩
        · linear_combination r1867
        · linear_combination r1868
        · linear_combination r1869
      · refine ⟨(rho 1697 + (rho 1253) - ((1 : F))), rho 1698, ?_, ?_, ?_⟩
        · linear_combination r1870
        · linear_combination r1871
        · linear_combination r1872
    simpa [base, twice, triple, digit19] using hraw
  have hhigh : rho 1208 =
      Bool.toZMod bits[88]! := by
    simpa only using rho_bit_of_map rho bits hbits 88 (by decide +kernel)
  have hlow : rho 1207 =
      Bool.toZMod bits[87]! := by
    simpa only using rho_bit_of_map rho bits hbits 87 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[88]! bits[87]! (base rho) (twice rho) (triple rho)
    (digit19 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit19 rho) := by
    rw [hdigit]
    cases bits[88]! <;> cases bits[87]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted19 rho) (digit19 rho) (acc20 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1692) (rho 1693) (rho 1695 + rho 1696) ((1 : F) + rho 1698 + rho 1699)
      (rho 1700) (rho 1701) (rho 1702) (rho 1703) (rho 1704) (rho 1705)
      (by simpa [shifted19] using hshift2On)
      (by simpa [digit19] using hdigitOn)
      (by linear_combination r1873)
      (by linear_combination r1874)
      (by linear_combination r1875)
      (by linear_combination r1876)
      (by linear_combination r1877)
      (by linear_combination r1878)
    simpa [shifted19, digit19, acc20] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc20 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted19 rho) (digit19 rho) (acc20 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted19 rho) (digit19 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1208) (rho 1207)
      (base rho) (twice rho) (triple rho) (acc19 rho)
      (acc20 rho) :=
    ⟨shiftOnce19 rho, shifted19 rho, digit19 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window20 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc20 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[86]! (scalarBits rho)[85]!
        (base rho) (twice rho) (triple rho) (acc20 rho)
        (acc21 rho) ∧
      EdwardsBridge.onCurve (acc21 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, r1897, r1898, r1899, r1900, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1879 at r1879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1880 at r1880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1881 at r1881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1882 at r1882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1883 at r1883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1884 at r1884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1885 at r1885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1886 at r1886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1887 at r1887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1888 at r1888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1889 at r1889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1890 at r1890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1891 at r1891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1892 at r1892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1893 at r1893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1894 at r1894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1895 at r1895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1896 at r1896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1897 at r1897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1898 at r1898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1899 at r1899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1900 at r1900
  have hshift1 : EdwardsBridge.doubleSpec (acc20 rho) (shiftOnce20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1704) (rho 1705) (rho 1706) (rho 1707) (rho 1708) (rho 1709) (rho 1710)
      (by simpa [acc20] using hacc)
      (by linear_combination r1879)
      (by linear_combination r1880)
      (by linear_combination r1881)
      (by linear_combination r1882)
      (by linear_combination r1883)
    simpa [acc20, shiftOnce20] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc20 rho) (shiftOnce20 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc20 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce20 rho) (shifted20 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1709) (rho 1710) (rho 1711) (rho 1712) (rho 1713) (rho 1714) (rho 1715)
      (by simpa [shiftOnce20] using hshift1On)
      (by linear_combination r1884)
      (by linear_combination r1885)
      (by linear_combination r1886)
      (by linear_combination r1887)
      (by linear_combination r1888)
    simpa [shiftOnce20, shifted20] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted20 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce20 rho) (shifted20 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce20 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1206) (rho 1205)
      (base rho) (twice rho) (triple rho) (digit20 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1206) (rho 1205)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1717 + rho 1718, (1 : F) + rho 1720 + rho 1721⟩ := by
      constructor
      · refine ⟨(rho 1716 + (rho 1252) - (0)), rho 1717, ?_, ?_, ?_⟩
        · linear_combination r1889
        · linear_combination r1890
        · linear_combination r1891
      · refine ⟨(rho 1719 + (rho 1253) - ((1 : F))), rho 1720, ?_, ?_, ?_⟩
        · linear_combination r1892
        · linear_combination r1893
        · linear_combination r1894
    simpa [base, twice, triple, digit20] using hraw
  have hhigh : rho 1206 =
      Bool.toZMod bits[86]! := by
    simpa only using rho_bit_of_map rho bits hbits 86 (by decide +kernel)
  have hlow : rho 1205 =
      Bool.toZMod bits[85]! := by
    simpa only using rho_bit_of_map rho bits hbits 85 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[86]! bits[85]! (base rho) (twice rho) (triple rho)
    (digit20 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit20 rho) := by
    rw [hdigit]
    cases bits[86]! <;> cases bits[85]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted20 rho) (digit20 rho) (acc21 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1714) (rho 1715) (rho 1717 + rho 1718) ((1 : F) + rho 1720 + rho 1721)
      (rho 1722) (rho 1723) (rho 1724) (rho 1725) (rho 1726) (rho 1727)
      (by simpa [shifted20] using hshift2On)
      (by simpa [digit20] using hdigitOn)
      (by linear_combination r1895)
      (by linear_combination r1896)
      (by linear_combination r1897)
      (by linear_combination r1898)
      (by linear_combination r1899)
      (by linear_combination r1900)
    simpa [shifted20, digit20, acc21] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc21 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted20 rho) (digit20 rho) (acc21 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted20 rho) (digit20 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1206) (rho 1205)
      (base rho) (twice rho) (triple rho) (acc20 rho)
      (acc21 rho) :=
    ⟨shiftOnce20 rho, shifted20 rho, digit20 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window21 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc21 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[84]! (scalarBits rho)[83]!
        (base rho) (twice rho) (triple rho) (acc21 rho)
        (acc22 rho) ∧
      EdwardsBridge.onCurve (acc22 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915, r1916, r1917, r1918, r1919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, r1922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1901 at r1901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1902 at r1902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1903 at r1903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1904 at r1904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1905 at r1905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1906 at r1906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1907 at r1907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1908 at r1908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1909 at r1909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1910 at r1910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1911 at r1911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1912 at r1912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1913 at r1913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1914 at r1914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1915 at r1915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1916 at r1916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1917 at r1917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1918 at r1918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1919 at r1919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1920 at r1920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1921 at r1921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1922 at r1922
  have hshift1 : EdwardsBridge.doubleSpec (acc21 rho) (shiftOnce21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1726) (rho 1727) (rho 1728) (rho 1729) (rho 1730) (rho 1731) (rho 1732)
      (by simpa [acc21] using hacc)
      (by linear_combination r1901)
      (by linear_combination r1902)
      (by linear_combination r1903)
      (by linear_combination r1904)
      (by linear_combination r1905)
    simpa [acc21, shiftOnce21] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc21 rho) (shiftOnce21 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc21 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce21 rho) (shifted21 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1731) (rho 1732) (rho 1733) (rho 1734) (rho 1735) (rho 1736) (rho 1737)
      (by simpa [shiftOnce21] using hshift1On)
      (by linear_combination r1906)
      (by linear_combination r1907)
      (by linear_combination r1908)
      (by linear_combination r1909)
      (by linear_combination r1910)
    simpa [shiftOnce21, shifted21] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted21 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce21 rho) (shifted21 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce21 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1204) (rho 1203)
      (base rho) (twice rho) (triple rho) (digit21 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1204) (rho 1203)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1739 + rho 1740, (1 : F) + rho 1742 + rho 1743⟩ := by
      constructor
      · refine ⟨(rho 1738 + (rho 1252) - (0)), rho 1739, ?_, ?_, ?_⟩
        · linear_combination r1911
        · linear_combination r1912
        · linear_combination r1913
      · refine ⟨(rho 1741 + (rho 1253) - ((1 : F))), rho 1742, ?_, ?_, ?_⟩
        · linear_combination r1914
        · linear_combination r1915
        · linear_combination r1916
    simpa [base, twice, triple, digit21] using hraw
  have hhigh : rho 1204 =
      Bool.toZMod bits[84]! := by
    simpa only using rho_bit_of_map rho bits hbits 84 (by decide +kernel)
  have hlow : rho 1203 =
      Bool.toZMod bits[83]! := by
    simpa only using rho_bit_of_map rho bits hbits 83 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[84]! bits[83]! (base rho) (twice rho) (triple rho)
    (digit21 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit21 rho) := by
    rw [hdigit]
    cases bits[84]! <;> cases bits[83]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted21 rho) (digit21 rho) (acc22 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1736) (rho 1737) (rho 1739 + rho 1740) ((1 : F) + rho 1742 + rho 1743)
      (rho 1744) (rho 1745) (rho 1746) (rho 1747) (rho 1748) (rho 1749)
      (by simpa [shifted21] using hshift2On)
      (by simpa [digit21] using hdigitOn)
      (by linear_combination r1917)
      (by linear_combination r1918)
      (by linear_combination r1919)
      (by linear_combination r1920)
      (by linear_combination r1921)
      (by linear_combination r1922)
    simpa [shifted21, digit21, acc22] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc22 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted21 rho) (digit21 rho) (acc22 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted21 rho) (digit21 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1204) (rho 1203)
      (base rho) (twice rho) (triple rho) (acc21 rho)
      (acc22 rho) :=
    ⟨shiftOnce21 rho, shifted21 rho, digit21 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window22 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc22 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[82]! (scalarBits rho)[81]!
        (base rho) (twice rho) (triple rho) (acc22 rho)
        (acc23 rho) ∧
      EdwardsBridge.onCurve (acc23 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart24 at p24
  rcases p24 with ⟨_, _, _, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, r1941, r1942, r1943, r1944, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1923 at r1923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1924 at r1924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1925 at r1925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1926 at r1926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1927 at r1927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1928 at r1928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1929 at r1929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1930 at r1930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1931 at r1931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1932 at r1932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1933 at r1933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1934 at r1934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1935 at r1935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1936 at r1936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1937 at r1937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1938 at r1938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1939 at r1939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1940 at r1940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1941 at r1941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1942 at r1942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1943 at r1943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1944 at r1944
  have hshift1 : EdwardsBridge.doubleSpec (acc22 rho) (shiftOnce22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1748) (rho 1749) (rho 1750) (rho 1751) (rho 1752) (rho 1753) (rho 1754)
      (by simpa [acc22] using hacc)
      (by linear_combination r1923)
      (by linear_combination r1924)
      (by linear_combination r1925)
      (by linear_combination r1926)
      (by linear_combination r1927)
    simpa [acc22, shiftOnce22] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc22 rho) (shiftOnce22 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc22 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce22 rho) (shifted22 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1753) (rho 1754) (rho 1755) (rho 1756) (rho 1757) (rho 1758) (rho 1759)
      (by simpa [shiftOnce22] using hshift1On)
      (by linear_combination r1928)
      (by linear_combination r1929)
      (by linear_combination r1930)
      (by linear_combination r1931)
      (by linear_combination r1932)
    simpa [shiftOnce22, shifted22] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted22 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce22 rho) (shifted22 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce22 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1202) (rho 1201)
      (base rho) (twice rho) (triple rho) (digit22 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1202) (rho 1201)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1761 + rho 1762, (1 : F) + rho 1764 + rho 1765⟩ := by
      constructor
      · refine ⟨(rho 1760 + (rho 1252) - (0)), rho 1761, ?_, ?_, ?_⟩
        · linear_combination r1933
        · linear_combination r1934
        · linear_combination r1935
      · refine ⟨(rho 1763 + (rho 1253) - ((1 : F))), rho 1764, ?_, ?_, ?_⟩
        · linear_combination r1936
        · linear_combination r1937
        · linear_combination r1938
    simpa [base, twice, triple, digit22] using hraw
  have hhigh : rho 1202 =
      Bool.toZMod bits[82]! := by
    simpa only using rho_bit_of_map rho bits hbits 82 (by decide +kernel)
  have hlow : rho 1201 =
      Bool.toZMod bits[81]! := by
    simpa only using rho_bit_of_map rho bits hbits 81 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[82]! bits[81]! (base rho) (twice rho) (triple rho)
    (digit22 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit22 rho) := by
    rw [hdigit]
    cases bits[82]! <;> cases bits[81]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted22 rho) (digit22 rho) (acc23 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1758) (rho 1759) (rho 1761 + rho 1762) ((1 : F) + rho 1764 + rho 1765)
      (rho 1766) (rho 1767) (rho 1768) (rho 1769) (rho 1770) (rho 1771)
      (by simpa [shifted22] using hshift2On)
      (by simpa [digit22] using hdigitOn)
      (by linear_combination r1939)
      (by linear_combination r1940)
      (by linear_combination r1941)
      (by linear_combination r1942)
      (by linear_combination r1943)
      (by linear_combination r1944)
    simpa [shifted22, digit22, acc23] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc23 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted22 rho) (digit22 rho) (acc23 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted22 rho) (digit22 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1202) (rho 1201)
      (base rho) (twice rho) (triple rho) (acc22 rho)
      (acc23 rho) :=
    ⟨shiftOnce22 rho, shifted22 rho, digit22 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window23 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc23 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[80]! (scalarBits rho)[79]!
        (base rho) (twice rho) (triple rho) (acc23 rho)
        (acc24 rho) ∧
      EdwardsBridge.onCurve (acc24 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, r1963, r1964, r1965, r1966, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1945 at r1945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1946 at r1946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1947 at r1947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1948 at r1948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1949 at r1949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1950 at r1950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1951 at r1951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1952 at r1952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1953 at r1953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1954 at r1954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1955 at r1955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1956 at r1956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1957 at r1957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1958 at r1958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1959 at r1959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1960 at r1960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1961 at r1961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1962 at r1962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1963 at r1963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1964 at r1964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1965 at r1965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow1966 at r1966
  have hshift1 : EdwardsBridge.doubleSpec (acc23 rho) (shiftOnce23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1770) (rho 1771) (rho 1772) (rho 1773) (rho 1774) (rho 1775) (rho 1776)
      (by simpa [acc23] using hacc)
      (by linear_combination r1945)
      (by linear_combination r1946)
      (by linear_combination r1947)
      (by linear_combination r1948)
      (by linear_combination r1949)
    simpa [acc23, shiftOnce23] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc23 rho) (shiftOnce23 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc23 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce23 rho) (shifted23 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1775) (rho 1776) (rho 1777) (rho 1778) (rho 1779) (rho 1780) (rho 1781)
      (by simpa [shiftOnce23] using hshift1On)
      (by linear_combination r1950)
      (by linear_combination r1951)
      (by linear_combination r1952)
      (by linear_combination r1953)
      (by linear_combination r1954)
    simpa [shiftOnce23, shifted23] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted23 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce23 rho) (shifted23 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce23 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1200) (rho 1199)
      (base rho) (twice rho) (triple rho) (digit23 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1200) (rho 1199)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 1783 + rho 1784, (1 : F) + rho 1786 + rho 1787⟩ := by
      constructor
      · refine ⟨(rho 1782 + (rho 1252) - (0)), rho 1783, ?_, ?_, ?_⟩
        · linear_combination r1955
        · linear_combination r1956
        · linear_combination r1957
      · refine ⟨(rho 1785 + (rho 1253) - ((1 : F))), rho 1786, ?_, ?_, ?_⟩
        · linear_combination r1958
        · linear_combination r1959
        · linear_combination r1960
    simpa [base, twice, triple, digit23] using hraw
  have hhigh : rho 1200 =
      Bool.toZMod bits[80]! := by
    simpa only using rho_bit_of_map rho bits hbits 80 (by decide +kernel)
  have hlow : rho 1199 =
      Bool.toZMod bits[79]! := by
    simpa only using rho_bit_of_map rho bits hbits 79 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[80]! bits[79]! (base rho) (twice rho) (triple rho)
    (digit23 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit23 rho) := by
    rw [hdigit]
    cases bits[80]! <;> cases bits[79]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted23 rho) (digit23 rho) (acc24 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1780) (rho 1781) (rho 1783 + rho 1784) ((1 : F) + rho 1786 + rho 1787)
      (rho 1788) (rho 1789) (rho 1790) (rho 1791) (rho 1792) (rho 1793)
      (by simpa [shifted23] using hshift2On)
      (by simpa [digit23] using hdigitOn)
      (by linear_combination r1961)
      (by linear_combination r1962)
      (by linear_combination r1963)
      (by linear_combination r1964)
      (by linear_combination r1965)
      (by linear_combination r1966)
    simpa [shifted23, digit23, acc24] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc24 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted23 rho) (digit23 rho) (acc24 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted23 rho) (digit23 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1200) (rho 1199)
      (base rho) (twice rho) (triple rho) (acc23 rho)
      (acc24 rho) :=
    ⟨shiftOnce23 rho, shifted23 rho, digit23 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
