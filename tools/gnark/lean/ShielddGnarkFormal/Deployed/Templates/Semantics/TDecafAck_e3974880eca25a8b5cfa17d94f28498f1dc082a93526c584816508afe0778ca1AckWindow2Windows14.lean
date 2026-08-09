import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1AckWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window84 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc84 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[80]! (scalarBits rho)[79]!
        (base rho) (twice rho) (triple rho) (acc84 rho)
        (acc85 rho) ∧
      EdwardsBridge.onCurve (acc85 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2117, r2118, r2119, r2120, r2121, r2122, r2123, r2124, r2125, r2126, r2127, r2128, r2129, r2130, r2131, r2132, r2133, r2134, r2135, r2136, r2137, r2138, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2117 at r2117
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2118 at r2118
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2119 at r2119
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2120 at r2120
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2121 at r2121
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2122 at r2122
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2123 at r2123
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2124 at r2124
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2125 at r2125
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2126 at r2126
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2127 at r2127
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2128 at r2128
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2129 at r2129
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2130 at r2130
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2131 at r2131
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2132 at r2132
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2133 at r2133
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2134 at r2134
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2135 at r2135
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2136 at r2136
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2137 at r2137
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2138 at r2138
  have hshift1 : EdwardsBridge.doubleSpec (acc84 rho) (shiftOnce84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2118) (rho 2119) (rho 2120) (rho 2121) (rho 2122) (rho 2123) (rho 2124)
      (by simpa [acc84] using hacc)
      (by linear_combination r2117)
      (by linear_combination r2118)
      (by linear_combination r2119)
      (by linear_combination r2120)
      (by linear_combination r2121)
    simpa [acc84, shiftOnce84] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc84 rho) (shiftOnce84 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc84 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce84 rho) (shifted84 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2123) (rho 2124) (rho 2125) (rho 2126) (rho 2127) (rho 2128) (rho 2129)
      (by simpa [shiftOnce84] using hshift1On)
      (by linear_combination r2122)
      (by linear_combination r2123)
      (by linear_combination r2124)
      (by linear_combination r2125)
      (by linear_combination r2126)
    simpa [shiftOnce84, shifted84] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted84 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce84 rho) (shifted84 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce84 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 81) (rho 80)
      (base rho) (twice rho) (triple rho) (digit84 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 81) (rho 80)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2131 + rho 2132, (1 : F) + rho 2134 + rho 2135⟩ := by
      constructor
      · refine ⟨(rho 2130 + (rho 258) - (0)), rho 2131, ?_, ?_, ?_⟩
        · linear_combination r2127 - (rho 80) * order_cast_zero
        · linear_combination r2128
        · linear_combination r2129
      · refine ⟨(rho 2133 + (rho 259) - ((1 : F))), rho 2134, ?_, ?_, ?_⟩
        · linear_combination r2130 - (rho 80) * order_cast_zero
        · linear_combination r2131
        · linear_combination r2132
    simpa [base, twice, triple, digit84] using hraw
  have hhigh : rho 81 =
      Bool.toZMod bits[80]! := by
    simpa only using rho_bit_of_map rho bits hbits 80 (by decide +kernel)
  have hlow : rho 80 =
      Bool.toZMod bits[79]! := by
    simpa only using rho_bit_of_map rho bits hbits 79 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[80]! bits[79]! (base rho) (twice rho) (triple rho)
    (digit84 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit84 rho) := by
    rw [hdigit]
    cases bits[80]! <;> cases bits[79]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted84 rho) (digit84 rho) (acc85 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2128) (rho 2129) (rho 2131 + rho 2132) ((1 : F) + rho 2134 + rho 2135)
      (rho 2136) (rho 2137) (rho 2138) (rho 2139) (rho 2140) (rho 2141)
      (by simpa [shifted84] using hshift2On)
      (by simpa [digit84] using hdigitOn)
      (by linear_combination r2133)
      (by linear_combination r2134)
      (by linear_combination r2135)
      (by linear_combination r2136)
      (by linear_combination r2137)
      (by linear_combination r2138)
    simpa [shifted84, digit84, acc85] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc85 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted84 rho) (digit84 rho) (acc85 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted84 rho) (digit84 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 81) (rho 80)
      (base rho) (twice rho) (triple rho) (acc84 rho)
      (acc85 rho) :=
    ⟨shiftOnce84 rho, shifted84 rho, digit84 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window85 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc85 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[78]! (scalarBits rho)[77]!
        (base rho) (twice rho) (triple rho) (acc85 rho)
        (acc86 rho) ∧
      EdwardsBridge.onCurve (acc86 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, p27, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2139, r2140, r2141, r2142, r2143, r2144, r2145, r2146, r2147, r2148, r2149, r2150, r2151, r2152, r2153, r2154, r2155, r2156, r2157, r2158, r2159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart27 at p27
  rcases p27 with ⟨r2160, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2139 at r2139
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2140 at r2140
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2141 at r2141
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2142 at r2142
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2143 at r2143
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2144 at r2144
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2145 at r2145
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2146 at r2146
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2147 at r2147
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2148 at r2148
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2149 at r2149
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2150 at r2150
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2151 at r2151
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2152 at r2152
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2153 at r2153
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2154 at r2154
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2155 at r2155
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2156 at r2156
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2157 at r2157
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2158 at r2158
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2159 at r2159
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2160 at r2160
  have hshift1 : EdwardsBridge.doubleSpec (acc85 rho) (shiftOnce85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2140) (rho 2141) (rho 2142) (rho 2143) (rho 2144) (rho 2145) (rho 2146)
      (by simpa [acc85] using hacc)
      (by linear_combination r2139)
      (by linear_combination r2140)
      (by linear_combination r2141)
      (by linear_combination r2142)
      (by linear_combination r2143)
    simpa [acc85, shiftOnce85] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc85 rho) (shiftOnce85 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc85 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce85 rho) (shifted85 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2145) (rho 2146) (rho 2147) (rho 2148) (rho 2149) (rho 2150) (rho 2151)
      (by simpa [shiftOnce85] using hshift1On)
      (by linear_combination r2144)
      (by linear_combination r2145)
      (by linear_combination r2146)
      (by linear_combination r2147)
      (by linear_combination r2148)
    simpa [shiftOnce85, shifted85] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted85 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce85 rho) (shifted85 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce85 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 79) (rho 78)
      (base rho) (twice rho) (triple rho) (digit85 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 79) (rho 78)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2153 + rho 2154, (1 : F) + rho 2156 + rho 2157⟩ := by
      constructor
      · refine ⟨(rho 2152 + (rho 258) - (0)), rho 2153, ?_, ?_, ?_⟩
        · linear_combination r2149 - (rho 78) * order_cast_zero
        · linear_combination r2150
        · linear_combination r2151
      · refine ⟨(rho 2155 + (rho 259) - ((1 : F))), rho 2156, ?_, ?_, ?_⟩
        · linear_combination r2152 - (rho 78) * order_cast_zero
        · linear_combination r2153
        · linear_combination r2154
    simpa [base, twice, triple, digit85] using hraw
  have hhigh : rho 79 =
      Bool.toZMod bits[78]! := by
    simpa only using rho_bit_of_map rho bits hbits 78 (by decide +kernel)
  have hlow : rho 78 =
      Bool.toZMod bits[77]! := by
    simpa only using rho_bit_of_map rho bits hbits 77 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[78]! bits[77]! (base rho) (twice rho) (triple rho)
    (digit85 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit85 rho) := by
    rw [hdigit]
    cases bits[78]! <;> cases bits[77]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted85 rho) (digit85 rho) (acc86 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2150) (rho 2151) (rho 2153 + rho 2154) ((1 : F) + rho 2156 + rho 2157)
      (rho 2158) (rho 2159) (rho 2160) (rho 2161) (rho 2162) (rho 2163)
      (by simpa [shifted85] using hshift2On)
      (by simpa [digit85] using hdigitOn)
      (by linear_combination r2155)
      (by linear_combination r2156)
      (by linear_combination r2157)
      (by linear_combination r2158)
      (by linear_combination r2159)
      (by linear_combination r2160)
    simpa [shifted85, digit85, acc86] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc86 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted85 rho) (digit85 rho) (acc86 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted85 rho) (digit85 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 79) (rho 78)
      (base rho) (twice rho) (triple rho) (acc85 rho)
      (acc86 rho) :=
    ⟨shiftOnce85 rho, shifted85 rho, digit85 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window86 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc86 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[76]! (scalarBits rho)[75]!
        (base rho) (twice rho) (triple rho) (acc86 rho)
        (acc87 rho) ∧
      EdwardsBridge.onCurve (acc87 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart27 at p27
  rcases p27 with ⟨_, r2161, r2162, r2163, r2164, r2165, r2166, r2167, r2168, r2169, r2170, r2171, r2172, r2173, r2174, r2175, r2176, r2177, r2178, r2179, r2180, r2181, r2182, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2161 at r2161
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2162 at r2162
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2163 at r2163
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2164 at r2164
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2165 at r2165
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2166 at r2166
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2167 at r2167
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2168 at r2168
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2169 at r2169
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2170 at r2170
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2171 at r2171
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2172 at r2172
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2173 at r2173
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2174 at r2174
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2175 at r2175
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2176 at r2176
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2177 at r2177
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2178 at r2178
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2179 at r2179
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2180 at r2180
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2181 at r2181
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2182 at r2182
  have hshift1 : EdwardsBridge.doubleSpec (acc86 rho) (shiftOnce86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2162) (rho 2163) (rho 2164) (rho 2165) (rho 2166) (rho 2167) (rho 2168)
      (by simpa [acc86] using hacc)
      (by linear_combination r2161)
      (by linear_combination r2162)
      (by linear_combination r2163)
      (by linear_combination r2164)
      (by linear_combination r2165)
    simpa [acc86, shiftOnce86] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc86 rho) (shiftOnce86 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc86 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce86 rho) (shifted86 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2167) (rho 2168) (rho 2169) (rho 2170) (rho 2171) (rho 2172) (rho 2173)
      (by simpa [shiftOnce86] using hshift1On)
      (by linear_combination r2166)
      (by linear_combination r2167)
      (by linear_combination r2168)
      (by linear_combination r2169)
      (by linear_combination r2170)
    simpa [shiftOnce86, shifted86] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted86 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce86 rho) (shifted86 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce86 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 77) (rho 76)
      (base rho) (twice rho) (triple rho) (digit86 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 77) (rho 76)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2175 + rho 2176, (1 : F) + rho 2178 + rho 2179⟩ := by
      constructor
      · refine ⟨(rho 2174 + (rho 258) - (0)), rho 2175, ?_, ?_, ?_⟩
        · linear_combination r2171 - (rho 76) * order_cast_zero
        · linear_combination r2172
        · linear_combination r2173
      · refine ⟨(rho 2177 + (rho 259) - ((1 : F))), rho 2178, ?_, ?_, ?_⟩
        · linear_combination r2174 - (rho 76) * order_cast_zero
        · linear_combination r2175
        · linear_combination r2176
    simpa [base, twice, triple, digit86] using hraw
  have hhigh : rho 77 =
      Bool.toZMod bits[76]! := by
    simpa only using rho_bit_of_map rho bits hbits 76 (by decide +kernel)
  have hlow : rho 76 =
      Bool.toZMod bits[75]! := by
    simpa only using rho_bit_of_map rho bits hbits 75 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[76]! bits[75]! (base rho) (twice rho) (triple rho)
    (digit86 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit86 rho) := by
    rw [hdigit]
    cases bits[76]! <;> cases bits[75]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted86 rho) (digit86 rho) (acc87 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2172) (rho 2173) (rho 2175 + rho 2176) ((1 : F) + rho 2178 + rho 2179)
      (rho 2180) (rho 2181) (rho 2182) (rho 2183) (rho 2184) (rho 2185)
      (by simpa [shifted86] using hshift2On)
      (by simpa [digit86] using hdigitOn)
      (by linear_combination r2177)
      (by linear_combination r2178)
      (by linear_combination r2179)
      (by linear_combination r2180)
      (by linear_combination r2181)
      (by linear_combination r2182)
    simpa [shifted86, digit86, acc87] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc87 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted86 rho) (digit86 rho) (acc87 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted86 rho) (digit86 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 77) (rho 76)
      (base rho) (twice rho) (triple rho) (acc86 rho)
      (acc87 rho) :=
    ⟨shiftOnce86 rho, shifted86 rho, digit86 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window87 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc87 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[74]! (scalarBits rho)[73]!
        (base rho) (twice rho) (triple rho) (acc87 rho)
        (acc88 rho) ∧
      EdwardsBridge.onCurve (acc88 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2183, r2184, r2185, r2186, r2187, r2188, r2189, r2190, r2191, r2192, r2193, r2194, r2195, r2196, r2197, r2198, r2199, r2200, r2201, r2202, r2203, r2204, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2183 at r2183
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2184 at r2184
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2185 at r2185
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2186 at r2186
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2187 at r2187
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2188 at r2188
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2189 at r2189
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2190 at r2190
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2191 at r2191
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2192 at r2192
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2193 at r2193
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2194 at r2194
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2195 at r2195
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2196 at r2196
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2197 at r2197
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2198 at r2198
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2199 at r2199
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2200 at r2200
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2201 at r2201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2202 at r2202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2203 at r2203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2204 at r2204
  have hshift1 : EdwardsBridge.doubleSpec (acc87 rho) (shiftOnce87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2184) (rho 2185) (rho 2186) (rho 2187) (rho 2188) (rho 2189) (rho 2190)
      (by simpa [acc87] using hacc)
      (by linear_combination r2183)
      (by linear_combination r2184)
      (by linear_combination r2185)
      (by linear_combination r2186)
      (by linear_combination r2187)
    simpa [acc87, shiftOnce87] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc87 rho) (shiftOnce87 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc87 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce87 rho) (shifted87 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2189) (rho 2190) (rho 2191) (rho 2192) (rho 2193) (rho 2194) (rho 2195)
      (by simpa [shiftOnce87] using hshift1On)
      (by linear_combination r2188)
      (by linear_combination r2189)
      (by linear_combination r2190)
      (by linear_combination r2191)
      (by linear_combination r2192)
    simpa [shiftOnce87, shifted87] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted87 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce87 rho) (shifted87 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce87 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 75) (rho 74)
      (base rho) (twice rho) (triple rho) (digit87 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 75) (rho 74)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2197 + rho 2198, (1 : F) + rho 2200 + rho 2201⟩ := by
      constructor
      · refine ⟨(rho 2196 + (rho 258) - (0)), rho 2197, ?_, ?_, ?_⟩
        · linear_combination r2193 - (rho 74) * order_cast_zero
        · linear_combination r2194
        · linear_combination r2195
      · refine ⟨(rho 2199 + (rho 259) - ((1 : F))), rho 2200, ?_, ?_, ?_⟩
        · linear_combination r2196 - (rho 74) * order_cast_zero
        · linear_combination r2197
        · linear_combination r2198
    simpa [base, twice, triple, digit87] using hraw
  have hhigh : rho 75 =
      Bool.toZMod bits[74]! := by
    simpa only using rho_bit_of_map rho bits hbits 74 (by decide +kernel)
  have hlow : rho 74 =
      Bool.toZMod bits[73]! := by
    simpa only using rho_bit_of_map rho bits hbits 73 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[74]! bits[73]! (base rho) (twice rho) (triple rho)
    (digit87 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit87 rho) := by
    rw [hdigit]
    cases bits[74]! <;> cases bits[73]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted87 rho) (digit87 rho) (acc88 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2194) (rho 2195) (rho 2197 + rho 2198) ((1 : F) + rho 2200 + rho 2201)
      (rho 2202) (rho 2203) (rho 2204) (rho 2205) (rho 2206) (rho 2207)
      (by simpa [shifted87] using hshift2On)
      (by simpa [digit87] using hdigitOn)
      (by linear_combination r2199)
      (by linear_combination r2200)
      (by linear_combination r2201)
      (by linear_combination r2202)
      (by linear_combination r2203)
      (by linear_combination r2204)
    simpa [shifted87, digit87, acc88] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc88 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted87 rho) (digit87 rho) (acc88 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted87 rho) (digit87 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 75) (rho 74)
      (base rho) (twice rho) (triple rho) (acc87 rho)
      (acc88 rho) :=
    ⟨shiftOnce87 rho, shifted87 rho, digit87 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window88 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc88 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[72]! (scalarBits rho)[71]!
        (base rho) (twice rho) (triple rho) (acc88 rho)
        (acc89 rho) ∧
      EdwardsBridge.onCurve (acc89 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2205, r2206, r2207, r2208, r2209, r2210, r2211, r2212, r2213, r2214, r2215, r2216, r2217, r2218, r2219, r2220, r2221, r2222, r2223, r2224, r2225, r2226, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2205 at r2205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2206 at r2206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2207 at r2207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2208 at r2208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2209 at r2209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2210 at r2210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2211 at r2211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2212 at r2212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2213 at r2213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2214 at r2214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2215 at r2215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2216 at r2216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2217 at r2217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2218 at r2218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2219 at r2219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2220 at r2220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2221 at r2221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2222 at r2222
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2223 at r2223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2224 at r2224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2225 at r2225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2226 at r2226
  have hshift1 : EdwardsBridge.doubleSpec (acc88 rho) (shiftOnce88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2206) (rho 2207) (rho 2208) (rho 2209) (rho 2210) (rho 2211) (rho 2212)
      (by simpa [acc88] using hacc)
      (by linear_combination r2205)
      (by linear_combination r2206)
      (by linear_combination r2207)
      (by linear_combination r2208)
      (by linear_combination r2209)
    simpa [acc88, shiftOnce88] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc88 rho) (shiftOnce88 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc88 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce88 rho) (shifted88 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2211) (rho 2212) (rho 2213) (rho 2214) (rho 2215) (rho 2216) (rho 2217)
      (by simpa [shiftOnce88] using hshift1On)
      (by linear_combination r2210)
      (by linear_combination r2211)
      (by linear_combination r2212)
      (by linear_combination r2213)
      (by linear_combination r2214)
    simpa [shiftOnce88, shifted88] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted88 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce88 rho) (shifted88 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce88 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 73) (rho 72)
      (base rho) (twice rho) (triple rho) (digit88 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 73) (rho 72)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2219 + rho 2220, (1 : F) + rho 2222 + rho 2223⟩ := by
      constructor
      · refine ⟨(rho 2218 + (rho 258) - (0)), rho 2219, ?_, ?_, ?_⟩
        · linear_combination r2215 - (rho 72) * order_cast_zero
        · linear_combination r2216
        · linear_combination r2217
      · refine ⟨(rho 2221 + (rho 259) - ((1 : F))), rho 2222, ?_, ?_, ?_⟩
        · linear_combination r2218 - (rho 72) * order_cast_zero
        · linear_combination r2219
        · linear_combination r2220
    simpa [base, twice, triple, digit88] using hraw
  have hhigh : rho 73 =
      Bool.toZMod bits[72]! := by
    simpa only using rho_bit_of_map rho bits hbits 72 (by decide +kernel)
  have hlow : rho 72 =
      Bool.toZMod bits[71]! := by
    simpa only using rho_bit_of_map rho bits hbits 71 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[72]! bits[71]! (base rho) (twice rho) (triple rho)
    (digit88 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit88 rho) := by
    rw [hdigit]
    cases bits[72]! <;> cases bits[71]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted88 rho) (digit88 rho) (acc89 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2216) (rho 2217) (rho 2219 + rho 2220) ((1 : F) + rho 2222 + rho 2223)
      (rho 2224) (rho 2225) (rho 2226) (rho 2227) (rho 2228) (rho 2229)
      (by simpa [shifted88] using hshift2On)
      (by simpa [digit88] using hdigitOn)
      (by linear_combination r2221)
      (by linear_combination r2222)
      (by linear_combination r2223)
      (by linear_combination r2224)
      (by linear_combination r2225)
      (by linear_combination r2226)
    simpa [shifted88, digit88, acc89] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc89 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted88 rho) (digit88 rho) (acc89 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted88 rho) (digit88 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 73) (rho 72)
      (base rho) (twice rho) (triple rho) (acc88 rho)
      (acc89 rho) :=
    ⟨shiftOnce88 rho, shifted88 rho, digit88 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window89 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc89 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[70]! (scalarBits rho)[69]!
        (base rho) (twice rho) (triple rho) (acc89 rho)
        (acc90 rho) ∧
      EdwardsBridge.onCurve (acc90 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, p28, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2227, r2228, r2229, r2230, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationPart28 at p28
  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2227 at r2227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2228 at r2228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2229 at r2229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2230 at r2230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2231 at r2231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2232 at r2232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2233 at r2233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2234 at r2234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2235 at r2235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2236 at r2236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2237 at r2237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2238 at r2238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2239 at r2239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2240 at r2240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2241 at r2241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2242 at r2242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2243 at r2243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2244 at r2244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2245 at r2245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2246 at r2246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2247 at r2247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.relationRow2248 at r2248
  have hshift1 : EdwardsBridge.doubleSpec (acc89 rho) (shiftOnce89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2228) (rho 2229) (rho 2230) (rho 2231) (rho 2232) (rho 2233) (rho 2234)
      (by simpa [acc89] using hacc)
      (by linear_combination r2227)
      (by linear_combination r2228)
      (by linear_combination r2229)
      (by linear_combination r2230)
      (by linear_combination r2231)
    simpa [acc89, shiftOnce89] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc89 rho) (shiftOnce89 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc89 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce89 rho) (shifted89 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2233) (rho 2234) (rho 2235) (rho 2236) (rho 2237) (rho 2238) (rho 2239)
      (by simpa [shiftOnce89] using hshift1On)
      (by linear_combination r2232)
      (by linear_combination r2233)
      (by linear_combination r2234)
      (by linear_combination r2235)
      (by linear_combination r2236)
    simpa [shiftOnce89, shifted89] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted89 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce89 rho) (shifted89 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce89 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 71) (rho 70)
      (base rho) (twice rho) (triple rho) (digit89 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 71) (rho 70)
        ⟨(3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) * ((1 : F)) + rho 253, (4435054869909997083204234178514060517908537592280323551921416368800279852461 : F) * ((1 : F)) + rho 254⟩ ⟨rho 258, rho 259⟩
        ⟨rho 264, rho 265⟩ ⟨rho 2241 + rho 2242, (1 : F) + rho 2244 + rho 2245⟩ := by
      constructor
      · refine ⟨(rho 2240 + (rho 258) - (0)), rho 2241, ?_, ?_, ?_⟩
        · linear_combination r2237 - (rho 70) * order_cast_zero
        · linear_combination r2238
        · linear_combination r2239
      · refine ⟨(rho 2243 + (rho 259) - ((1 : F))), rho 2244, ?_, ?_, ?_⟩
        · linear_combination r2240 - (rho 70) * order_cast_zero
        · linear_combination r2241
        · linear_combination r2242
    simpa [base, twice, triple, digit89] using hraw
  have hhigh : rho 71 =
      Bool.toZMod bits[70]! := by
    simpa only using rho_bit_of_map rho bits hbits 70 (by decide +kernel)
  have hlow : rho 70 =
      Bool.toZMod bits[69]! := by
    simpa only using rho_bit_of_map rho bits hbits 69 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[70]! bits[69]! (base rho) (twice rho) (triple rho)
    (digit89 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit89 rho) := by
    rw [hdigit]
    cases bits[70]! <;> cases bits[69]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted89 rho) (digit89 rho) (acc90 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2238) (rho 2239) (rho 2241 + rho 2242) ((1 : F) + rho 2244 + rho 2245)
      (rho 2246) (rho 2247) (rho 2248) (rho 2249) (rho 2250) (rho 2251)
      (by simpa [shifted89] using hshift2On)
      (by simpa [digit89] using hdigitOn)
      (by linear_combination r2243)
      (by linear_combination r2244)
      (by linear_combination r2245)
      (by linear_combination r2246)
      (by linear_combination r2247)
      (by linear_combination r2248)
    simpa [shifted89, digit89, acc90] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc90 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted89 rho) (digit89 rho) (acc90 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted89 rho) (digit89 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 71) (rho 70)
      (base rho) (twice rho) (triple rho) (acc89 rho)
      (acc90 rho) :=
    ⟨shiftOnce89 rho, shifted89 rho, digit89 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.AckSupport
