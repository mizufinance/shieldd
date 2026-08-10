import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window12 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc12 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[224]! (scalarBits rho)[223]!
        (base rho) (twice rho) (triple rho) (acc12 rho)
        (acc13 rho) ∧
      EdwardsBridge.onCurve (acc13 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, r2089, r2090, r2091, r2092, r2093, r2094, r2095, r2096, r2097, r2098, r2099, r2100, r2101, r2102, r2103, r2104, r2105, r2106, r2107, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2089 at r2089
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2090 at r2090
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2091 at r2091
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2092 at r2092
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2093 at r2093
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2094 at r2094
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2095 at r2095
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2096 at r2096
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2097 at r2097
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2098 at r2098
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2099 at r2099
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2100 at r2100
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2101 at r2101
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2102 at r2102
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2103 at r2103
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2104 at r2104
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2105 at r2105
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2106 at r2106
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2107 at r2107
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2108 at r2108
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2109 at r2109
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2110 at r2110
  have hshift1 : EdwardsBridge.doubleSpec (acc12 rho) (shiftOnce12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2093) (rho 2094) (rho 2095) (rho 2096) (rho 2097) (rho 2098) (rho 2099)
      (by simpa [acc12] using hacc)
      (by linear_combination r2089)
      (by linear_combination r2090)
      (by linear_combination r2091)
      (by linear_combination r2092)
      (by linear_combination r2093)
    simpa [acc12, shiftOnce12] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc12 rho) (shiftOnce12 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc12 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce12 rho) (shifted12 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2098) (rho 2099) (rho 2100) (rho 2101) (rho 2102) (rho 2103) (rho 2104)
      (by simpa [shiftOnce12] using hshift1On)
      (by linear_combination r2094)
      (by linear_combination r2095)
      (by linear_combination r2096)
      (by linear_combination r2097)
      (by linear_combination r2098)
    simpa [shiftOnce12, shifted12] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted12 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce12 rho) (shifted12 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce12 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 225) (rho 224)
      (base rho) (twice rho) (triple rho) (digit12 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 225) (rho 224)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2106 + rho 2107, (1 : F) + rho 2109 + rho 2110⟩ := by
      constructor
      · refine ⟨(rho 2105 + (rho 1817) - (0)), rho 2106, ?_, ?_, ?_⟩
        · linear_combination r2099
        · linear_combination r2100
        · linear_combination r2101
      · refine ⟨(rho 2108 + (rho 1818) - ((1 : F))), rho 2109, ?_, ?_, ?_⟩
        · linear_combination r2102
        · linear_combination r2103
        · linear_combination r2104
    simpa [base, twice, triple, digit12] using hraw
  have hhigh : rho 225 =
      Bool.toZMod bits[224]! := by
    simpa only using rho_bit_of_map rho bits hbits 224 (by decide +kernel)
  have hlow : rho 224 =
      Bool.toZMod bits[223]! := by
    simpa only using rho_bit_of_map rho bits hbits 223 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[224]! bits[223]! (base rho) (twice rho) (triple rho)
    (digit12 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit12 rho) := by
    rw [hdigit]
    cases bits[224]! <;> cases bits[223]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted12 rho) (digit12 rho) (acc13 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2103) (rho 2104) (rho 2106 + rho 2107) ((1 : F) + rho 2109 + rho 2110)
      (rho 2111) (rho 2112) (rho 2113) (rho 2114) (rho 2115) (rho 2116)
      (by simpa [shifted12] using hshift2On)
      (by simpa [digit12] using hdigitOn)
      (by linear_combination r2105)
      (by linear_combination r2106)
      (by linear_combination r2107)
      (by linear_combination r2108)
      (by linear_combination r2109)
      (by linear_combination r2110)
    simpa [shifted12, digit12, acc13] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc13 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted12 rho) (digit12 rho) (acc13 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted12 rho) (digit12 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 225) (rho 224)
      (base rho) (twice rho) (triple rho) (acc12 rho)
      (acc13 rho) :=
    ⟨shiftOnce12 rho, shifted12 rho, digit12 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window13 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc13 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[222]! (scalarBits rho)[221]!
        (base rho) (twice rho) (triple rho) (acc13 rho)
        (acc14 rho) ∧
      EdwardsBridge.onCurve (acc14 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, r2114, r2115, r2116, r2117, r2118, r2119, r2120, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2111 at r2111
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2112 at r2112
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2113 at r2113
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2114 at r2114
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2115 at r2115
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2116 at r2116
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2117 at r2117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2118 at r2118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2119 at r2119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2120 at r2120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2121 at r2121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2122 at r2122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2123 at r2123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2124 at r2124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2125 at r2125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2126 at r2126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2127 at r2127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2128 at r2128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2129 at r2129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2130 at r2130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2131 at r2131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2132 at r2132
  have hshift1 : EdwardsBridge.doubleSpec (acc13 rho) (shiftOnce13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2115) (rho 2116) (rho 2117) (rho 2118) (rho 2119) (rho 2120) (rho 2121)
      (by simpa [acc13] using hacc)
      (by linear_combination r2111)
      (by linear_combination r2112)
      (by linear_combination r2113)
      (by linear_combination r2114)
      (by linear_combination r2115)
    simpa [acc13, shiftOnce13] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc13 rho) (shiftOnce13 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc13 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce13 rho) (shifted13 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2120) (rho 2121) (rho 2122) (rho 2123) (rho 2124) (rho 2125) (rho 2126)
      (by simpa [shiftOnce13] using hshift1On)
      (by linear_combination r2116)
      (by linear_combination r2117)
      (by linear_combination r2118)
      (by linear_combination r2119)
      (by linear_combination r2120)
    simpa [shiftOnce13, shifted13] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted13 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce13 rho) (shifted13 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce13 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 223) (rho 222)
      (base rho) (twice rho) (triple rho) (digit13 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 223) (rho 222)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2128 + rho 2129, (1 : F) + rho 2131 + rho 2132⟩ := by
      constructor
      · refine ⟨(rho 2127 + (rho 1817) - (0)), rho 2128, ?_, ?_, ?_⟩
        · linear_combination r2121
        · linear_combination r2122
        · linear_combination r2123
      · refine ⟨(rho 2130 + (rho 1818) - ((1 : F))), rho 2131, ?_, ?_, ?_⟩
        · linear_combination r2124
        · linear_combination r2125
        · linear_combination r2126
    simpa [base, twice, triple, digit13] using hraw
  have hhigh : rho 223 =
      Bool.toZMod bits[222]! := by
    simpa only using rho_bit_of_map rho bits hbits 222 (by decide +kernel)
  have hlow : rho 222 =
      Bool.toZMod bits[221]! := by
    simpa only using rho_bit_of_map rho bits hbits 221 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[222]! bits[221]! (base rho) (twice rho) (triple rho)
    (digit13 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit13 rho) := by
    rw [hdigit]
    cases bits[222]! <;> cases bits[221]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted13 rho) (digit13 rho) (acc14 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2125) (rho 2126) (rho 2128 + rho 2129) ((1 : F) + rho 2131 + rho 2132)
      (rho 2133) (rho 2134) (rho 2135) (rho 2136) (rho 2137) (rho 2138)
      (by simpa [shifted13] using hshift2On)
      (by simpa [digit13] using hdigitOn)
      (by linear_combination r2127)
      (by linear_combination r2128)
      (by linear_combination r2129)
      (by linear_combination r2130)
      (by linear_combination r2131)
      (by linear_combination r2132)
    simpa [shifted13, digit13, acc14] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc14 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted13 rho) (digit13 rho) (acc14 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted13 rho) (digit13 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 223) (rho 222)
      (base rho) (twice rho) (triple rho) (acc13 rho)
      (acc14 rho) :=
    ⟨shiftOnce13 rho, shifted13 rho, digit13 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window14 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc14 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[220]! (scalarBits rho)[219]!
        (base rho) (twice rho) (triple rho) (acc14 rho)
        (acc15 rho) ∧
      EdwardsBridge.onCurve (acc15 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2133, r2134, r2135, r2136, r2137, r2138, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2133 at r2133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2134 at r2134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2135 at r2135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2136 at r2136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2137 at r2137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2138 at r2138
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2139 at r2139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2140 at r2140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2141 at r2141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2142 at r2142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2143 at r2143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2144 at r2144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2145 at r2145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2146 at r2146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2147 at r2147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2148 at r2148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2149 at r2149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2150 at r2150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2151 at r2151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2152 at r2152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2153 at r2153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2154 at r2154
  have hshift1 : EdwardsBridge.doubleSpec (acc14 rho) (shiftOnce14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2137) (rho 2138) (rho 2139) (rho 2140) (rho 2141) (rho 2142) (rho 2143)
      (by simpa [acc14] using hacc)
      (by linear_combination r2133)
      (by linear_combination r2134)
      (by linear_combination r2135)
      (by linear_combination r2136)
      (by linear_combination r2137)
    simpa [acc14, shiftOnce14] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc14 rho) (shiftOnce14 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc14 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce14 rho) (shifted14 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2142) (rho 2143) (rho 2144) (rho 2145) (rho 2146) (rho 2147) (rho 2148)
      (by simpa [shiftOnce14] using hshift1On)
      (by linear_combination r2138)
      (by linear_combination r2139)
      (by linear_combination r2140)
      (by linear_combination r2141)
      (by linear_combination r2142)
    simpa [shiftOnce14, shifted14] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted14 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce14 rho) (shifted14 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce14 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 221) (rho 220)
      (base rho) (twice rho) (triple rho) (digit14 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 221) (rho 220)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2150 + rho 2151, (1 : F) + rho 2153 + rho 2154⟩ := by
      constructor
      · refine ⟨(rho 2149 + (rho 1817) - (0)), rho 2150, ?_, ?_, ?_⟩
        · linear_combination r2143
        · linear_combination r2144
        · linear_combination r2145
      · refine ⟨(rho 2152 + (rho 1818) - ((1 : F))), rho 2153, ?_, ?_, ?_⟩
        · linear_combination r2146
        · linear_combination r2147
        · linear_combination r2148
    simpa [base, twice, triple, digit14] using hraw
  have hhigh : rho 221 =
      Bool.toZMod bits[220]! := by
    simpa only using rho_bit_of_map rho bits hbits 220 (by decide +kernel)
  have hlow : rho 220 =
      Bool.toZMod bits[219]! := by
    simpa only using rho_bit_of_map rho bits hbits 219 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[220]! bits[219]! (base rho) (twice rho) (triple rho)
    (digit14 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit14 rho) := by
    rw [hdigit]
    cases bits[220]! <;> cases bits[219]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted14 rho) (digit14 rho) (acc15 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2147) (rho 2148) (rho 2150 + rho 2151) ((1 : F) + rho 2153 + rho 2154)
      (rho 2155) (rho 2156) (rho 2157) (rho 2158) (rho 2159) (rho 2160)
      (by simpa [shifted14] using hshift2On)
      (by simpa [digit14] using hdigitOn)
      (by linear_combination r2149)
      (by linear_combination r2150)
      (by linear_combination r2151)
      (by linear_combination r2152)
      (by linear_combination r2153)
      (by linear_combination r2154)
    simpa [shifted14, digit14, acc15] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc15 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted14 rho) (digit14 rho) (acc15 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted14 rho) (digit14 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 221) (rho 220)
      (base rho) (twice rho) (triple rho) (acc14 rho)
      (acc15 rho) :=
    ⟨shiftOnce14 rho, shifted14 rho, digit14 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window15 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc15 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[218]! (scalarBits rho)[217]!
        (base rho) (twice rho) (triple rho) (acc15 rho)
        (acc16 rho) ∧
      EdwardsBridge.onCurve (acc16 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2155, r2156, r2157, r2158, r2159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart27 at p27
  rcases p27 with ⟨r2160, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175, r2176, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2155 at r2155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2156 at r2156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2157 at r2157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2158 at r2158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2159 at r2159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2160 at r2160
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2161 at r2161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2162 at r2162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2163 at r2163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2164 at r2164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2165 at r2165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2166 at r2166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2167 at r2167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2168 at r2168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2169 at r2169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2170 at r2170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2171 at r2171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2172 at r2172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2173 at r2173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2174 at r2174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2175 at r2175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2176 at r2176
  have hshift1 : EdwardsBridge.doubleSpec (acc15 rho) (shiftOnce15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2159) (rho 2160) (rho 2161) (rho 2162) (rho 2163) (rho 2164) (rho 2165)
      (by simpa [acc15] using hacc)
      (by linear_combination r2155)
      (by linear_combination r2156)
      (by linear_combination r2157)
      (by linear_combination r2158)
      (by linear_combination r2159)
    simpa [acc15, shiftOnce15] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc15 rho) (shiftOnce15 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc15 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce15 rho) (shifted15 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2164) (rho 2165) (rho 2166) (rho 2167) (rho 2168) (rho 2169) (rho 2170)
      (by simpa [shiftOnce15] using hshift1On)
      (by linear_combination r2160)
      (by linear_combination r2161)
      (by linear_combination r2162)
      (by linear_combination r2163)
      (by linear_combination r2164)
    simpa [shiftOnce15, shifted15] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted15 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce15 rho) (shifted15 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce15 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 219) (rho 218)
      (base rho) (twice rho) (triple rho) (digit15 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 219) (rho 218)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2172 + rho 2173, (1 : F) + rho 2175 + rho 2176⟩ := by
      constructor
      · refine ⟨(rho 2171 + (rho 1817) - (0)), rho 2172, ?_, ?_, ?_⟩
        · linear_combination r2165
        · linear_combination r2166
        · linear_combination r2167
      · refine ⟨(rho 2174 + (rho 1818) - ((1 : F))), rho 2175, ?_, ?_, ?_⟩
        · linear_combination r2168
        · linear_combination r2169
        · linear_combination r2170
    simpa [base, twice, triple, digit15] using hraw
  have hhigh : rho 219 =
      Bool.toZMod bits[218]! := by
    simpa only using rho_bit_of_map rho bits hbits 218 (by decide +kernel)
  have hlow : rho 218 =
      Bool.toZMod bits[217]! := by
    simpa only using rho_bit_of_map rho bits hbits 217 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[218]! bits[217]! (base rho) (twice rho) (triple rho)
    (digit15 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit15 rho) := by
    rw [hdigit]
    cases bits[218]! <;> cases bits[217]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted15 rho) (digit15 rho) (acc16 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2169) (rho 2170) (rho 2172 + rho 2173) ((1 : F) + rho 2175 + rho 2176)
      (rho 2177) (rho 2178) (rho 2179) (rho 2180) (rho 2181) (rho 2182)
      (by simpa [shifted15] using hshift2On)
      (by simpa [digit15] using hdigitOn)
      (by linear_combination r2171)
      (by linear_combination r2172)
      (by linear_combination r2173)
      (by linear_combination r2174)
      (by linear_combination r2175)
      (by linear_combination r2176)
    simpa [shifted15, digit15, acc16] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc16 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted15 rho) (digit15 rho) (acc16 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted15 rho) (digit15 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 219) (rho 218)
      (base rho) (twice rho) (triple rho) (acc15 rho)
      (acc16 rho) :=
    ⟨shiftOnce15 rho, shifted15 rho, digit15 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window16 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc16 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[216]! (scalarBits rho)[215]!
        (base rho) (twice rho) (triple rho) (acc16 rho)
        (acc17 rho) ∧
      EdwardsBridge.onCurve (acc17 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2177, r2178, r2179, r2180, r2181, r2182, r2183, r2184, r2185, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2177 at r2177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2178 at r2178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2179 at r2179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2180 at r2180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2181 at r2181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2182 at r2182
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2183 at r2183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2184 at r2184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2185 at r2185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2186 at r2186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2187 at r2187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2188 at r2188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2189 at r2189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2190 at r2190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2191 at r2191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2192 at r2192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2193 at r2193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2194 at r2194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2195 at r2195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2196 at r2196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2197 at r2197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2198 at r2198
  have hshift1 : EdwardsBridge.doubleSpec (acc16 rho) (shiftOnce16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2181) (rho 2182) (rho 2183) (rho 2184) (rho 2185) (rho 2186) (rho 2187)
      (by simpa [acc16] using hacc)
      (by linear_combination r2177)
      (by linear_combination r2178)
      (by linear_combination r2179)
      (by linear_combination r2180)
      (by linear_combination r2181)
    simpa [acc16, shiftOnce16] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc16 rho) (shiftOnce16 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc16 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce16 rho) (shifted16 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2186) (rho 2187) (rho 2188) (rho 2189) (rho 2190) (rho 2191) (rho 2192)
      (by simpa [shiftOnce16] using hshift1On)
      (by linear_combination r2182)
      (by linear_combination r2183)
      (by linear_combination r2184)
      (by linear_combination r2185)
      (by linear_combination r2186)
    simpa [shiftOnce16, shifted16] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted16 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce16 rho) (shifted16 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce16 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 217) (rho 216)
      (base rho) (twice rho) (triple rho) (digit16 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 217) (rho 216)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2194 + rho 2195, (1 : F) + rho 2197 + rho 2198⟩ := by
      constructor
      · refine ⟨(rho 2193 + (rho 1817) - (0)), rho 2194, ?_, ?_, ?_⟩
        · linear_combination r2187
        · linear_combination r2188
        · linear_combination r2189
      · refine ⟨(rho 2196 + (rho 1818) - ((1 : F))), rho 2197, ?_, ?_, ?_⟩
        · linear_combination r2190
        · linear_combination r2191
        · linear_combination r2192
    simpa [base, twice, triple, digit16] using hraw
  have hhigh : rho 217 =
      Bool.toZMod bits[216]! := by
    simpa only using rho_bit_of_map rho bits hbits 216 (by decide +kernel)
  have hlow : rho 216 =
      Bool.toZMod bits[215]! := by
    simpa only using rho_bit_of_map rho bits hbits 215 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[216]! bits[215]! (base rho) (twice rho) (triple rho)
    (digit16 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit16 rho) := by
    rw [hdigit]
    cases bits[216]! <;> cases bits[215]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted16 rho) (digit16 rho) (acc17 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2191) (rho 2192) (rho 2194 + rho 2195) ((1 : F) + rho 2197 + rho 2198)
      (rho 2199) (rho 2200) (rho 2201) (rho 2202) (rho 2203) (rho 2204)
      (by simpa [shifted16] using hshift2On)
      (by simpa [digit16] using hdigitOn)
      (by linear_combination r2193)
      (by linear_combination r2194)
      (by linear_combination r2195)
      (by linear_combination r2196)
      (by linear_combination r2197)
      (by linear_combination r2198)
    simpa [shifted16, digit16, acc17] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc17 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted16 rho) (digit16 rho) (acc17 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted16 rho) (digit16 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 217) (rho 216)
      (base rho) (twice rho) (triple rho) (acc16 rho)
      (acc17 rho) :=
    ⟨shiftOnce16 rho, shifted16 rho, digit16 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window17 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc17 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[214]! (scalarBits rho)[213]!
        (base rho) (twice rho) (triple rho) (acc17 rho)
        (acc18 rho) ∧
      EdwardsBridge.onCurve (acc18 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2199, r2200, r2201, r2202, r2203, r2204, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2199 at r2199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2200 at r2200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2201 at r2201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2202 at r2202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2203 at r2203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2204 at r2204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2205 at r2205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2206 at r2206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2207 at r2207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2208 at r2208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2209 at r2209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2210 at r2210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2211 at r2211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2212 at r2212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2213 at r2213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2214 at r2214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2215 at r2215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2216 at r2216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2217 at r2217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2218 at r2218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2219 at r2219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow2220 at r2220
  have hshift1 : EdwardsBridge.doubleSpec (acc17 rho) (shiftOnce17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2203) (rho 2204) (rho 2205) (rho 2206) (rho 2207) (rho 2208) (rho 2209)
      (by simpa [acc17] using hacc)
      (by linear_combination r2199)
      (by linear_combination r2200)
      (by linear_combination r2201)
      (by linear_combination r2202)
      (by linear_combination r2203)
    simpa [acc17, shiftOnce17] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc17 rho) (shiftOnce17 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc17 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce17 rho) (shifted17 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2208) (rho 2209) (rho 2210) (rho 2211) (rho 2212) (rho 2213) (rho 2214)
      (by simpa [shiftOnce17] using hshift1On)
      (by linear_combination r2204)
      (by linear_combination r2205)
      (by linear_combination r2206)
      (by linear_combination r2207)
      (by linear_combination r2208)
    simpa [shiftOnce17, shifted17] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted17 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce17 rho) (shifted17 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce17 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 215) (rho 214)
      (base rho) (twice rho) (triple rho) (digit17 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 215) (rho 214)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 2216 + rho 2217, (1 : F) + rho 2219 + rho 2220⟩ := by
      constructor
      · refine ⟨(rho 2215 + (rho 1817) - (0)), rho 2216, ?_, ?_, ?_⟩
        · linear_combination r2209
        · linear_combination r2210
        · linear_combination r2211
      · refine ⟨(rho 2218 + (rho 1818) - ((1 : F))), rho 2219, ?_, ?_, ?_⟩
        · linear_combination r2212
        · linear_combination r2213
        · linear_combination r2214
    simpa [base, twice, triple, digit17] using hraw
  have hhigh : rho 215 =
      Bool.toZMod bits[214]! := by
    simpa only using rho_bit_of_map rho bits hbits 214 (by decide +kernel)
  have hlow : rho 214 =
      Bool.toZMod bits[213]! := by
    simpa only using rho_bit_of_map rho bits hbits 213 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[214]! bits[213]! (base rho) (twice rho) (triple rho)
    (digit17 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit17 rho) := by
    rw [hdigit]
    cases bits[214]! <;> cases bits[213]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted17 rho) (digit17 rho) (acc18 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2213) (rho 2214) (rho 2216 + rho 2217) ((1 : F) + rho 2219 + rho 2220)
      (rho 2221) (rho 2222) (rho 2223) (rho 2224) (rho 2225) (rho 2226)
      (by simpa [shifted17] using hshift2On)
      (by simpa [digit17] using hdigitOn)
      (by linear_combination r2215)
      (by linear_combination r2216)
      (by linear_combination r2217)
      (by linear_combination r2218)
      (by linear_combination r2219)
      (by linear_combination r2220)
    simpa [shifted17, digit17, acc18] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc18 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted17 rho) (digit17 rho) (acc18 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted17 rho) (digit17 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 215) (rho 214)
      (base rho) (twice rho) (triple rho) (acc17 rho)
      (acc18 rho) :=
    ⟨shiftOnce17 rho, shifted17 rho, digit17 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
