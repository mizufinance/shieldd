import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window72 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc72 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[104]! (scalarBits rho)[103]!
        (base rho) (twice rho) (triple rho) (acc72 rho)
        (acc73 rho) ∧
      EdwardsBridge.onCurve (acc73 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r1853, r1854, r1855, r1856, r1857, r1858, r1859, r1860, r1861, r1862, r1863, r1864, r1865, r1866, r1867, r1868, r1869, r1870, r1871, r1872, r1873, r1874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1853 at r1853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1854 at r1854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1855 at r1855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1856 at r1856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1857 at r1857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1858 at r1858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1859 at r1859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1860 at r1860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1861 at r1861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1862 at r1862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1863 at r1863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1864 at r1864
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1865 at r1865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1866 at r1866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1867 at r1867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1868 at r1868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1869 at r1869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1870 at r1870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1871 at r1871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1872 at r1872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1873 at r1873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1874 at r1874
  have hshift1 : EdwardsBridge.doubleSpec (acc72 rho) (shiftOnce72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1854) (rho 1855) (rho 1856) (rho 1857) (rho 1858) (rho 1859) (rho 1860)
      (by simpa [acc72] using hacc)
      (by linear_combination r1853)
      (by linear_combination r1854)
      (by linear_combination r1855)
      (by linear_combination r1856)
      (by linear_combination r1857)
    simpa [acc72, shiftOnce72] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc72 rho) (shiftOnce72 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc72 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce72 rho) (shifted72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1859) (rho 1860) (rho 1861) (rho 1862) (rho 1863) (rho 1864) (rho 1865)
      (by simpa [shiftOnce72] using hshift1On)
      (by linear_combination r1858)
      (by linear_combination r1859)
      (by linear_combination r1860)
      (by linear_combination r1861)
      (by linear_combination r1862)
    simpa [shiftOnce72, shifted72] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce72 rho) (shifted72 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce72 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 105) (rho 104)
      (base rho) (twice rho) (triple rho) (digit72 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 105) (rho 104)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1867 + rho 1868, (1 : F) + rho 1870 + rho 1871⟩ := by
      constructor
      · refine ⟨(rho 1866 + (rho 258) - (0)), rho 1867, ?_, ?_, ?_⟩
        · linear_combination r1863 - (rho 104) * order_cast_zero
        · linear_combination r1864
        · linear_combination r1865
      · refine ⟨(rho 1869 + (rho 259) - ((1 : F))), rho 1870, ?_, ?_, ?_⟩
        · linear_combination r1866 - (rho 104) * order_cast_zero
        · linear_combination r1867
        · linear_combination r1868
    simpa [base, twice, triple, digit72] using hraw
  have hhigh : rho 105 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 104 =
      Bool.toZMod bits[103]! := by
    simpa only using rho_bit_of_map rho bits hbits 103 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[104]! bits[103]! (base rho) (twice rho) (triple rho)
    (digit72 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit72 rho) := by
    rw [hdigit]
    cases bits[104]! <;> cases bits[103]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted72 rho) (digit72 rho) (acc73 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1864) (rho 1865) (rho 1867 + rho 1868) ((1 : F) + rho 1870 + rho 1871)
      (rho 1872) (rho 1873) (rho 1874) (rho 1875) (rho 1876) (rho 1877)
      (by simpa [shifted72] using hshift2On)
      (by simpa [digit72] using hdigitOn)
      (by linear_combination r1869)
      (by linear_combination r1870)
      (by linear_combination r1871)
      (by linear_combination r1872)
      (by linear_combination r1873)
      (by linear_combination r1874)
    simpa [shifted72, digit72, acc73] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc73 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted72 rho) (digit72 rho) (acc73 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted72 rho) (digit72 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 105) (rho 104)
      (base rho) (twice rho) (triple rho) (acc72 rho)
      (acc73 rho) :=
    ⟨shiftOnce72 rho, shifted72 rho, digit72 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window73 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc73 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[102]! (scalarBits rho)[101]!
        (base rho) (twice rho) (triple rho) (acc73 rho)
        (acc74 rho) ∧
      EdwardsBridge.onCurve (acc74 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1875, r1876, r1877, r1878, r1879, r1880, r1881, r1882, r1883, r1884, r1885, r1886, r1887, r1888, r1889, r1890, r1891, r1892, r1893, r1894, r1895, r1896, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1875 at r1875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1876 at r1876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1877 at r1877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1878 at r1878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1879 at r1879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1880 at r1880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1881 at r1881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1882 at r1882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1883 at r1883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1884 at r1884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1885 at r1885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1886 at r1886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1887 at r1887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1888 at r1888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1889 at r1889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1890 at r1890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1891 at r1891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1892 at r1892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1893 at r1893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1894 at r1894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1895 at r1895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1896 at r1896
  have hshift1 : EdwardsBridge.doubleSpec (acc73 rho) (shiftOnce73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1876) (rho 1877) (rho 1878) (rho 1879) (rho 1880) (rho 1881) (rho 1882)
      (by simpa [acc73] using hacc)
      (by linear_combination r1875)
      (by linear_combination r1876)
      (by linear_combination r1877)
      (by linear_combination r1878)
      (by linear_combination r1879)
    simpa [acc73, shiftOnce73] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc73 rho) (shiftOnce73 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc73 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce73 rho) (shifted73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1881) (rho 1882) (rho 1883) (rho 1884) (rho 1885) (rho 1886) (rho 1887)
      (by simpa [shiftOnce73] using hshift1On)
      (by linear_combination r1880)
      (by linear_combination r1881)
      (by linear_combination r1882)
      (by linear_combination r1883)
      (by linear_combination r1884)
    simpa [shiftOnce73, shifted73] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce73 rho) (shifted73 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce73 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 103) (rho 102)
      (base rho) (twice rho) (triple rho) (digit73 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 103) (rho 102)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1889 + rho 1890, (1 : F) + rho 1892 + rho 1893⟩ := by
      constructor
      · refine ⟨(rho 1888 + (rho 258) - (0)), rho 1889, ?_, ?_, ?_⟩
        · linear_combination r1885 - (rho 102) * order_cast_zero
        · linear_combination r1886
        · linear_combination r1887
      · refine ⟨(rho 1891 + (rho 259) - ((1 : F))), rho 1892, ?_, ?_, ?_⟩
        · linear_combination r1888 - (rho 102) * order_cast_zero
        · linear_combination r1889
        · linear_combination r1890
    simpa [base, twice, triple, digit73] using hraw
  have hhigh : rho 103 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 102 =
      Bool.toZMod bits[101]! := by
    simpa only using rho_bit_of_map rho bits hbits 101 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[102]! bits[101]! (base rho) (twice rho) (triple rho)
    (digit73 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit73 rho) := by
    rw [hdigit]
    cases bits[102]! <;> cases bits[101]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted73 rho) (digit73 rho) (acc74 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1886) (rho 1887) (rho 1889 + rho 1890) ((1 : F) + rho 1892 + rho 1893)
      (rho 1894) (rho 1895) (rho 1896) (rho 1897) (rho 1898) (rho 1899)
      (by simpa [shifted73] using hshift2On)
      (by simpa [digit73] using hdigitOn)
      (by linear_combination r1891)
      (by linear_combination r1892)
      (by linear_combination r1893)
      (by linear_combination r1894)
      (by linear_combination r1895)
      (by linear_combination r1896)
    simpa [shifted73, digit73, acc74] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc74 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted73 rho) (digit73 rho) (acc74 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted73 rho) (digit73 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 103) (rho 102)
      (base rho) (twice rho) (triple rho) (acc73 rho)
      (acc74 rho) :=
    ⟨shiftOnce73 rho, shifted73 rho, digit73 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window74 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc74 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[100]! (scalarBits rho)[99]!
        (base rho) (twice rho) (triple rho) (acc74 rho)
        (acc75 rho) ∧
      EdwardsBridge.onCurve (acc75 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1897, r1898, r1899, r1900, r1901, r1902, r1903, r1904, r1905, r1906, r1907, r1908, r1909, r1910, r1911, r1912, r1913, r1914, r1915, r1916, r1917, r1918, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1897 at r1897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1898 at r1898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1899 at r1899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1900 at r1900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1901 at r1901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1902 at r1902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1903 at r1903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1904 at r1904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1905 at r1905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1906 at r1906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1907 at r1907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1908 at r1908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1909 at r1909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1910 at r1910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1911 at r1911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1912 at r1912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1913 at r1913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1914 at r1914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1915 at r1915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1916 at r1916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1917 at r1917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1918 at r1918
  have hshift1 : EdwardsBridge.doubleSpec (acc74 rho) (shiftOnce74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1898) (rho 1899) (rho 1900) (rho 1901) (rho 1902) (rho 1903) (rho 1904)
      (by simpa [acc74] using hacc)
      (by linear_combination r1897)
      (by linear_combination r1898)
      (by linear_combination r1899)
      (by linear_combination r1900)
      (by linear_combination r1901)
    simpa [acc74, shiftOnce74] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc74 rho) (shiftOnce74 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc74 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce74 rho) (shifted74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1903) (rho 1904) (rho 1905) (rho 1906) (rho 1907) (rho 1908) (rho 1909)
      (by simpa [shiftOnce74] using hshift1On)
      (by linear_combination r1902)
      (by linear_combination r1903)
      (by linear_combination r1904)
      (by linear_combination r1905)
      (by linear_combination r1906)
    simpa [shiftOnce74, shifted74] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce74 rho) (shifted74 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce74 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 101) (rho 100)
      (base rho) (twice rho) (triple rho) (digit74 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 101) (rho 100)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1911 + rho 1912, (1 : F) + rho 1914 + rho 1915⟩ := by
      constructor
      · refine ⟨(rho 1910 + (rho 258) - (0)), rho 1911, ?_, ?_, ?_⟩
        · linear_combination r1907 - (rho 100) * order_cast_zero
        · linear_combination r1908
        · linear_combination r1909
      · refine ⟨(rho 1913 + (rho 259) - ((1 : F))), rho 1914, ?_, ?_, ?_⟩
        · linear_combination r1910 - (rho 100) * order_cast_zero
        · linear_combination r1911
        · linear_combination r1912
    simpa [base, twice, triple, digit74] using hraw
  have hhigh : rho 101 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 100 =
      Bool.toZMod bits[99]! := by
    simpa only using rho_bit_of_map rho bits hbits 99 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[100]! bits[99]! (base rho) (twice rho) (triple rho)
    (digit74 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit74 rho) := by
    rw [hdigit]
    cases bits[100]! <;> cases bits[99]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted74 rho) (digit74 rho) (acc75 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1908) (rho 1909) (rho 1911 + rho 1912) ((1 : F) + rho 1914 + rho 1915)
      (rho 1916) (rho 1917) (rho 1918) (rho 1919) (rho 1920) (rho 1921)
      (by simpa [shifted74] using hshift2On)
      (by simpa [digit74] using hdigitOn)
      (by linear_combination r1913)
      (by linear_combination r1914)
      (by linear_combination r1915)
      (by linear_combination r1916)
      (by linear_combination r1917)
      (by linear_combination r1918)
    simpa [shifted74, digit74, acc75] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc75 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted74 rho) (digit74 rho) (acc75 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted74 rho) (digit74 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 101) (rho 100)
      (base rho) (twice rho) (triple rho) (acc74 rho)
      (acc75 rho) :=
    ⟨shiftOnce74 rho, shifted74 rho, digit74 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window75 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc75 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[98]! (scalarBits rho)[97]!
        (base rho) (twice rho) (triple rho) (acc75 rho)
        (acc76 rho) ∧
      EdwardsBridge.onCurve (acc76 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1919⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart24 at p24
  rcases p24 with ⟨r1920, r1921, r1922, r1923, r1924, r1925, r1926, r1927, r1928, r1929, r1930, r1931, r1932, r1933, r1934, r1935, r1936, r1937, r1938, r1939, r1940, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1919 at r1919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1920 at r1920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1921 at r1921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1922 at r1922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1923 at r1923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1924 at r1924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1925 at r1925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1926 at r1926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1927 at r1927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1928 at r1928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1929 at r1929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1930 at r1930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1931 at r1931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1932 at r1932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1933 at r1933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1934 at r1934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1935 at r1935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1936 at r1936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1937 at r1937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1938 at r1938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1939 at r1939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1940 at r1940
  have hshift1 : EdwardsBridge.doubleSpec (acc75 rho) (shiftOnce75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1920) (rho 1921) (rho 1922) (rho 1923) (rho 1924) (rho 1925) (rho 1926)
      (by simpa [acc75] using hacc)
      (by linear_combination r1919)
      (by linear_combination r1920)
      (by linear_combination r1921)
      (by linear_combination r1922)
      (by linear_combination r1923)
    simpa [acc75, shiftOnce75] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc75 rho) (shiftOnce75 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc75 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce75 rho) (shifted75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1925) (rho 1926) (rho 1927) (rho 1928) (rho 1929) (rho 1930) (rho 1931)
      (by simpa [shiftOnce75] using hshift1On)
      (by linear_combination r1924)
      (by linear_combination r1925)
      (by linear_combination r1926)
      (by linear_combination r1927)
      (by linear_combination r1928)
    simpa [shiftOnce75, shifted75] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce75 rho) (shifted75 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce75 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 99) (rho 98)
      (base rho) (twice rho) (triple rho) (digit75 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 99) (rho 98)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1933 + rho 1934, (1 : F) + rho 1936 + rho 1937⟩ := by
      constructor
      · refine ⟨(rho 1932 + (rho 258) - (0)), rho 1933, ?_, ?_, ?_⟩
        · linear_combination r1929 - (rho 98) * order_cast_zero
        · linear_combination r1930
        · linear_combination r1931
      · refine ⟨(rho 1935 + (rho 259) - ((1 : F))), rho 1936, ?_, ?_, ?_⟩
        · linear_combination r1932 - (rho 98) * order_cast_zero
        · linear_combination r1933
        · linear_combination r1934
    simpa [base, twice, triple, digit75] using hraw
  have hhigh : rho 99 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 98 =
      Bool.toZMod bits[97]! := by
    simpa only using rho_bit_of_map rho bits hbits 97 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[98]! bits[97]! (base rho) (twice rho) (triple rho)
    (digit75 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit75 rho) := by
    rw [hdigit]
    cases bits[98]! <;> cases bits[97]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted75 rho) (digit75 rho) (acc76 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1930) (rho 1931) (rho 1933 + rho 1934) ((1 : F) + rho 1936 + rho 1937)
      (rho 1938) (rho 1939) (rho 1940) (rho 1941) (rho 1942) (rho 1943)
      (by simpa [shifted75] using hshift2On)
      (by simpa [digit75] using hdigitOn)
      (by linear_combination r1935)
      (by linear_combination r1936)
      (by linear_combination r1937)
      (by linear_combination r1938)
      (by linear_combination r1939)
      (by linear_combination r1940)
    simpa [shifted75, digit75, acc76] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc76 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted75 rho) (digit75 rho) (acc76 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted75 rho) (digit75 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 99) (rho 98)
      (base rho) (twice rho) (triple rho) (acc75 rho)
      (acc76 rho) :=
    ⟨shiftOnce75 rho, shifted75 rho, digit75 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window76 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc76 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[96]! (scalarBits rho)[95]!
        (base rho) (twice rho) (triple rho) (acc76 rho)
        (acc77 rho) ∧
      EdwardsBridge.onCurve (acc77 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1941, r1942, r1943, r1944, r1945, r1946, r1947, r1948, r1949, r1950, r1951, r1952, r1953, r1954, r1955, r1956, r1957, r1958, r1959, r1960, r1961, r1962, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1941 at r1941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1942 at r1942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1943 at r1943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1944 at r1944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1945 at r1945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1946 at r1946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1947 at r1947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1948 at r1948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1949 at r1949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1950 at r1950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1951 at r1951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1952 at r1952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1953 at r1953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1954 at r1954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1955 at r1955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1956 at r1956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1957 at r1957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1958 at r1958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1959 at r1959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1960 at r1960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1961 at r1961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1962 at r1962
  have hshift1 : EdwardsBridge.doubleSpec (acc76 rho) (shiftOnce76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1942) (rho 1943) (rho 1944) (rho 1945) (rho 1946) (rho 1947) (rho 1948)
      (by simpa [acc76] using hacc)
      (by linear_combination r1941)
      (by linear_combination r1942)
      (by linear_combination r1943)
      (by linear_combination r1944)
      (by linear_combination r1945)
    simpa [acc76, shiftOnce76] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc76 rho) (shiftOnce76 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc76 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce76 rho) (shifted76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1947) (rho 1948) (rho 1949) (rho 1950) (rho 1951) (rho 1952) (rho 1953)
      (by simpa [shiftOnce76] using hshift1On)
      (by linear_combination r1946)
      (by linear_combination r1947)
      (by linear_combination r1948)
      (by linear_combination r1949)
      (by linear_combination r1950)
    simpa [shiftOnce76, shifted76] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce76 rho) (shifted76 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce76 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 97) (rho 96)
      (base rho) (twice rho) (triple rho) (digit76 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 97) (rho 96)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1955 + rho 1956, (1 : F) + rho 1958 + rho 1959⟩ := by
      constructor
      · refine ⟨(rho 1954 + (rho 258) - (0)), rho 1955, ?_, ?_, ?_⟩
        · linear_combination r1951 - (rho 96) * order_cast_zero
        · linear_combination r1952
        · linear_combination r1953
      · refine ⟨(rho 1957 + (rho 259) - ((1 : F))), rho 1958, ?_, ?_, ?_⟩
        · linear_combination r1954 - (rho 96) * order_cast_zero
        · linear_combination r1955
        · linear_combination r1956
    simpa [base, twice, triple, digit76] using hraw
  have hhigh : rho 97 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 96 =
      Bool.toZMod bits[95]! := by
    simpa only using rho_bit_of_map rho bits hbits 95 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[96]! bits[95]! (base rho) (twice rho) (triple rho)
    (digit76 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit76 rho) := by
    rw [hdigit]
    cases bits[96]! <;> cases bits[95]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted76 rho) (digit76 rho) (acc77 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1952) (rho 1953) (rho 1955 + rho 1956) ((1 : F) + rho 1958 + rho 1959)
      (rho 1960) (rho 1961) (rho 1962) (rho 1963) (rho 1964) (rho 1965)
      (by simpa [shifted76] using hshift2On)
      (by simpa [digit76] using hdigitOn)
      (by linear_combination r1957)
      (by linear_combination r1958)
      (by linear_combination r1959)
      (by linear_combination r1960)
      (by linear_combination r1961)
      (by linear_combination r1962)
    simpa [shifted76, digit76, acc77] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc77 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted76 rho) (digit76 rho) (acc77 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted76 rho) (digit76 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 97) (rho 96)
      (base rho) (twice rho) (triple rho) (acc76 rho)
      (acc77 rho) :=
    ⟨shiftOnce76 rho, shifted76 rho, digit76 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window77 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc77 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[94]! (scalarBits rho)[93]!
        (base rho) (twice rho) (triple rho) (acc77 rho)
        (acc78 rho) ∧
      EdwardsBridge.onCurve (acc78 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1963, r1964, r1965, r1966, r1967, r1968, r1969, r1970, r1971, r1972, r1973, r1974, r1975, r1976, r1977, r1978, r1979, r1980, r1981, r1982, r1983, r1984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1963 at r1963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1964 at r1964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1965 at r1965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1966 at r1966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1967 at r1967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1968 at r1968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1969 at r1969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1970 at r1970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1971 at r1971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1972 at r1972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1973 at r1973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1974 at r1974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1975 at r1975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1976 at r1976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1977 at r1977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1978 at r1978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1979 at r1979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1980 at r1980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1981 at r1981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1982 at r1982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1983 at r1983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow1984 at r1984
  have hshift1 : EdwardsBridge.doubleSpec (acc77 rho) (shiftOnce77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1964) (rho 1965) (rho 1966) (rho 1967) (rho 1968) (rho 1969) (rho 1970)
      (by simpa [acc77] using hacc)
      (by linear_combination r1963)
      (by linear_combination r1964)
      (by linear_combination r1965)
      (by linear_combination r1966)
      (by linear_combination r1967)
    simpa [acc77, shiftOnce77] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc77 rho) (shiftOnce77 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc77 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce77 rho) (shifted77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 1969) (rho 1970) (rho 1971) (rho 1972) (rho 1973) (rho 1974) (rho 1975)
      (by simpa [shiftOnce77] using hshift1On)
      (by linear_combination r1968)
      (by linear_combination r1969)
      (by linear_combination r1970)
      (by linear_combination r1971)
      (by linear_combination r1972)
    simpa [shiftOnce77, shifted77] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce77 rho) (shifted77 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce77 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 95) (rho 94)
      (base rho) (twice rho) (triple rho) (digit77 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 95) (rho 94)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 1977 + rho 1978, (1 : F) + rho 1980 + rho 1981⟩ := by
      constructor
      · refine ⟨(rho 1976 + (rho 258) - (0)), rho 1977, ?_, ?_, ?_⟩
        · linear_combination r1973 - (rho 94) * order_cast_zero
        · linear_combination r1974
        · linear_combination r1975
      · refine ⟨(rho 1979 + (rho 259) - ((1 : F))), rho 1980, ?_, ?_, ?_⟩
        · linear_combination r1976 - (rho 94) * order_cast_zero
        · linear_combination r1977
        · linear_combination r1978
    simpa [base, twice, triple, digit77] using hraw
  have hhigh : rho 95 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 94 =
      Bool.toZMod bits[93]! := by
    simpa only using rho_bit_of_map rho bits hbits 93 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[94]! bits[93]! (base rho) (twice rho) (triple rho)
    (digit77 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit77 rho) := by
    rw [hdigit]
    cases bits[94]! <;> cases bits[93]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted77 rho) (digit77 rho) (acc78 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 1974) (rho 1975) (rho 1977 + rho 1978) ((1 : F) + rho 1980 + rho 1981)
      (rho 1982) (rho 1983) (rho 1984) (rho 1985) (rho 1986) (rho 1987)
      (by simpa [shifted77] using hshift2On)
      (by simpa [digit77] using hdigitOn)
      (by linear_combination r1979)
      (by linear_combination r1980)
      (by linear_combination r1981)
      (by linear_combination r1982)
      (by linear_combination r1983)
      (by linear_combination r1984)
    simpa [shifted77, digit77, acc78] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc78 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted77 rho) (digit77 rho) (acc78 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted77 rho) (digit77 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 95) (rho 94)
      (base rho) (twice rho) (triple rho) (acc77 rho)
      (acc78 rho) :=
    ⟨shiftOnce77 rho, shifted77 rho, digit77 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
