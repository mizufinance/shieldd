import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681InputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window36 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc36 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[54]! (scalarBits rho)[53]!
        (base rho) (twice rho) (triple rho) (acc36 rho)
        (acc37 rho) ∧
      EdwardsBridge.onCurve (acc37 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, r2234, r2235, r2236, r2237, r2238, r2239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart28 at p28
  rcases p28 with ⟨r2240, r2241, r2242, r2243, r2244, r2245, r2246, r2247, r2248, r2249, r2250, r2251, r2252, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2231 at r2231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2232 at r2232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2233 at r2233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2234 at r2234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2235 at r2235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2236 at r2236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2237 at r2237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2238 at r2238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2239 at r2239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2240 at r2240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2241 at r2241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2242 at r2242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2243 at r2243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2244 at r2244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2245 at r2245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2246 at r2246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2247 at r2247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2248 at r2248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2249 at r2249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2250 at r2250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2251 at r2251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2252 at r2252
  have hshift1 : EdwardsBridge.doubleSpec (acc36 rho) (shiftOnce36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2056) (rho 2057) (rho 2058) (rho 2059) (rho 2060) (rho 2061) (rho 2062)
      (by simpa [acc36] using hacc)
      (by linear_combination r2231)
      (by linear_combination r2232)
      (by linear_combination r2233)
      (by linear_combination r2234)
      (by linear_combination r2235)
    simpa [acc36, shiftOnce36] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc36 rho) (shiftOnce36 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc36 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce36 rho) (shifted36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2061) (rho 2062) (rho 2063) (rho 2064) (rho 2065) (rho 2066) (rho 2067)
      (by simpa [shiftOnce36] using hshift1On)
      (by linear_combination r2236)
      (by linear_combination r2237)
      (by linear_combination r2238)
      (by linear_combination r2239)
      (by linear_combination r2240)
    simpa [shiftOnce36, shifted36] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce36 rho) (shifted36 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce36 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1174) (rho 1173)
      (base rho) (twice rho) (triple rho) (digit36 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1174) (rho 1173)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2069 + rho 2070, (1 : F) + rho 2072 + rho 2073⟩ := by
      constructor
      · refine ⟨(rho 2068 + (rho 1252) - (0)), rho 2069, ?_, ?_, ?_⟩
        · linear_combination r2241
        · linear_combination r2242
        · linear_combination r2243
      · refine ⟨(rho 2071 + (rho 1253) - ((1 : F))), rho 2072, ?_, ?_, ?_⟩
        · linear_combination r2244
        · linear_combination r2245
        · linear_combination r2246
    simpa [base, twice, triple, digit36] using hraw
  have hhigh : rho 1174 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 1173 =
      Bool.toZMod bits[53]! := by
    simpa only using rho_bit_of_map rho bits hbits 53 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[54]! bits[53]! (base rho) (twice rho) (triple rho)
    (digit36 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit36 rho) := by
    rw [hdigit]
    cases bits[54]! <;> cases bits[53]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted36 rho) (digit36 rho) (acc37 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2066) (rho 2067) (rho 2069 + rho 2070) ((1 : F) + rho 2072 + rho 2073)
      (rho 2074) (rho 2075) (rho 2076) (rho 2077) (rho 2078) (rho 2079)
      (by simpa [shifted36] using hshift2On)
      (by simpa [digit36] using hdigitOn)
      (by linear_combination r2247)
      (by linear_combination r2248)
      (by linear_combination r2249)
      (by linear_combination r2250)
      (by linear_combination r2251)
      (by linear_combination r2252)
    simpa [shifted36, digit36, acc37] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc37 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted36 rho) (digit36 rho) (acc37 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted36 rho) (digit36 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1174) (rho 1173)
      (base rho) (twice rho) (triple rho) (acc36 rho)
      (acc37 rho) :=
    ⟨shiftOnce36 rho, shifted36 rho, digit36 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window37 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc37 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[52]! (scalarBits rho)[51]!
        (base rho) (twice rho) (triple rho) (acc37 rho)
        (acc38 rho) ∧
      EdwardsBridge.onCurve (acc38 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2253, r2254, r2255, r2256, r2257, r2258, r2259, r2260, r2261, r2262, r2263, r2264, r2265, r2266, r2267, r2268, r2269, r2270, r2271, r2272, r2273, r2274, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2253 at r2253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2254 at r2254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2255 at r2255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2256 at r2256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2257 at r2257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2258 at r2258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2259 at r2259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2260 at r2260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2261 at r2261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2262 at r2262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2263 at r2263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2264 at r2264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2265 at r2265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2266 at r2266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2267 at r2267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2268 at r2268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2269 at r2269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2270 at r2270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2271 at r2271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2272 at r2272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2273 at r2273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2274 at r2274
  have hshift1 : EdwardsBridge.doubleSpec (acc37 rho) (shiftOnce37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2078) (rho 2079) (rho 2080) (rho 2081) (rho 2082) (rho 2083) (rho 2084)
      (by simpa [acc37] using hacc)
      (by linear_combination r2253)
      (by linear_combination r2254)
      (by linear_combination r2255)
      (by linear_combination r2256)
      (by linear_combination r2257)
    simpa [acc37, shiftOnce37] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc37 rho) (shiftOnce37 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc37 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce37 rho) (shifted37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2083) (rho 2084) (rho 2085) (rho 2086) (rho 2087) (rho 2088) (rho 2089)
      (by simpa [shiftOnce37] using hshift1On)
      (by linear_combination r2258)
      (by linear_combination r2259)
      (by linear_combination r2260)
      (by linear_combination r2261)
      (by linear_combination r2262)
    simpa [shiftOnce37, shifted37] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce37 rho) (shifted37 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce37 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1172) (rho 1171)
      (base rho) (twice rho) (triple rho) (digit37 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1172) (rho 1171)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2091 + rho 2092, (1 : F) + rho 2094 + rho 2095⟩ := by
      constructor
      · refine ⟨(rho 2090 + (rho 1252) - (0)), rho 2091, ?_, ?_, ?_⟩
        · linear_combination r2263
        · linear_combination r2264
        · linear_combination r2265
      · refine ⟨(rho 2093 + (rho 1253) - ((1 : F))), rho 2094, ?_, ?_, ?_⟩
        · linear_combination r2266
        · linear_combination r2267
        · linear_combination r2268
    simpa [base, twice, triple, digit37] using hraw
  have hhigh : rho 1172 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 1171 =
      Bool.toZMod bits[51]! := by
    simpa only using rho_bit_of_map rho bits hbits 51 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[52]! bits[51]! (base rho) (twice rho) (triple rho)
    (digit37 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit37 rho) := by
    rw [hdigit]
    cases bits[52]! <;> cases bits[51]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted37 rho) (digit37 rho) (acc38 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2088) (rho 2089) (rho 2091 + rho 2092) ((1 : F) + rho 2094 + rho 2095)
      (rho 2096) (rho 2097) (rho 2098) (rho 2099) (rho 2100) (rho 2101)
      (by simpa [shifted37] using hshift2On)
      (by simpa [digit37] using hdigitOn)
      (by linear_combination r2269)
      (by linear_combination r2270)
      (by linear_combination r2271)
      (by linear_combination r2272)
      (by linear_combination r2273)
      (by linear_combination r2274)
    simpa [shifted37, digit37, acc38] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc38 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted37 rho) (digit37 rho) (acc38 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted37 rho) (digit37 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1172) (rho 1171)
      (base rho) (twice rho) (triple rho) (acc37 rho)
      (acc38 rho) :=
    ⟨shiftOnce37 rho, shifted37 rho, digit37 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window38 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc38 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[50]! (scalarBits rho)[49]!
        (base rho) (twice rho) (triple rho) (acc38 rho)
        (acc39 rho) ∧
      EdwardsBridge.onCurve (acc39 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2275, r2276, r2277, r2278, r2279, r2280, r2281, r2282, r2283, r2284, r2285, r2286, r2287, r2288, r2289, r2290, r2291, r2292, r2293, r2294, r2295, r2296, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2275 at r2275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2276 at r2276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2277 at r2277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2278 at r2278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2279 at r2279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2280 at r2280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2281 at r2281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2282 at r2282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2283 at r2283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2284 at r2284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2285 at r2285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2286 at r2286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2287 at r2287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2288 at r2288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2289 at r2289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2290 at r2290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2291 at r2291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2292 at r2292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2293 at r2293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2294 at r2294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2295 at r2295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2296 at r2296
  have hshift1 : EdwardsBridge.doubleSpec (acc38 rho) (shiftOnce38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2100) (rho 2101) (rho 2102) (rho 2103) (rho 2104) (rho 2105) (rho 2106)
      (by simpa [acc38] using hacc)
      (by linear_combination r2275)
      (by linear_combination r2276)
      (by linear_combination r2277)
      (by linear_combination r2278)
      (by linear_combination r2279)
    simpa [acc38, shiftOnce38] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc38 rho) (shiftOnce38 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc38 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce38 rho) (shifted38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2105) (rho 2106) (rho 2107) (rho 2108) (rho 2109) (rho 2110) (rho 2111)
      (by simpa [shiftOnce38] using hshift1On)
      (by linear_combination r2280)
      (by linear_combination r2281)
      (by linear_combination r2282)
      (by linear_combination r2283)
      (by linear_combination r2284)
    simpa [shiftOnce38, shifted38] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce38 rho) (shifted38 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce38 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1170) (rho 1169)
      (base rho) (twice rho) (triple rho) (digit38 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1170) (rho 1169)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2113 + rho 2114, (1 : F) + rho 2116 + rho 2117⟩ := by
      constructor
      · refine ⟨(rho 2112 + (rho 1252) - (0)), rho 2113, ?_, ?_, ?_⟩
        · linear_combination r2285
        · linear_combination r2286
        · linear_combination r2287
      · refine ⟨(rho 2115 + (rho 1253) - ((1 : F))), rho 2116, ?_, ?_, ?_⟩
        · linear_combination r2288
        · linear_combination r2289
        · linear_combination r2290
    simpa [base, twice, triple, digit38] using hraw
  have hhigh : rho 1170 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 1169 =
      Bool.toZMod bits[49]! := by
    simpa only using rho_bit_of_map rho bits hbits 49 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[50]! bits[49]! (base rho) (twice rho) (triple rho)
    (digit38 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit38 rho) := by
    rw [hdigit]
    cases bits[50]! <;> cases bits[49]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted38 rho) (digit38 rho) (acc39 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2110) (rho 2111) (rho 2113 + rho 2114) ((1 : F) + rho 2116 + rho 2117)
      (rho 2118) (rho 2119) (rho 2120) (rho 2121) (rho 2122) (rho 2123)
      (by simpa [shifted38] using hshift2On)
      (by simpa [digit38] using hdigitOn)
      (by linear_combination r2291)
      (by linear_combination r2292)
      (by linear_combination r2293)
      (by linear_combination r2294)
      (by linear_combination r2295)
      (by linear_combination r2296)
    simpa [shifted38, digit38, acc39] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc39 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted38 rho) (digit38 rho) (acc39 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted38 rho) (digit38 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1170) (rho 1169)
      (base rho) (twice rho) (triple rho) (acc38 rho)
      (acc39 rho) :=
    ⟨shiftOnce38 rho, shifted38 rho, digit38 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window39 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc39 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[48]! (scalarBits rho)[47]!
        (base rho) (twice rho) (triple rho) (acc39 rho)
        (acc40 rho) ∧
      EdwardsBridge.onCurve (acc40 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2297, r2298, r2299, r2300, r2301, r2302, r2303, r2304, r2305, r2306, r2307, r2308, r2309, r2310, r2311, r2312, r2313, r2314, r2315, r2316, r2317, r2318, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2297 at r2297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2298 at r2298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2299 at r2299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2300 at r2300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2301 at r2301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2302 at r2302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2303 at r2303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2304 at r2304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2305 at r2305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2306 at r2306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2307 at r2307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2308 at r2308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2309 at r2309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2310 at r2310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2311 at r2311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2312 at r2312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2313 at r2313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2314 at r2314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2315 at r2315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2316 at r2316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2317 at r2317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2318 at r2318
  have hshift1 : EdwardsBridge.doubleSpec (acc39 rho) (shiftOnce39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2122) (rho 2123) (rho 2124) (rho 2125) (rho 2126) (rho 2127) (rho 2128)
      (by simpa [acc39] using hacc)
      (by linear_combination r2297)
      (by linear_combination r2298)
      (by linear_combination r2299)
      (by linear_combination r2300)
      (by linear_combination r2301)
    simpa [acc39, shiftOnce39] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc39 rho) (shiftOnce39 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc39 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce39 rho) (shifted39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2127) (rho 2128) (rho 2129) (rho 2130) (rho 2131) (rho 2132) (rho 2133)
      (by simpa [shiftOnce39] using hshift1On)
      (by linear_combination r2302)
      (by linear_combination r2303)
      (by linear_combination r2304)
      (by linear_combination r2305)
      (by linear_combination r2306)
    simpa [shiftOnce39, shifted39] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce39 rho) (shifted39 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce39 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1168) (rho 1167)
      (base rho) (twice rho) (triple rho) (digit39 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1168) (rho 1167)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2135 + rho 2136, (1 : F) + rho 2138 + rho 2139⟩ := by
      constructor
      · refine ⟨(rho 2134 + (rho 1252) - (0)), rho 2135, ?_, ?_, ?_⟩
        · linear_combination r2307
        · linear_combination r2308
        · linear_combination r2309
      · refine ⟨(rho 2137 + (rho 1253) - ((1 : F))), rho 2138, ?_, ?_, ?_⟩
        · linear_combination r2310
        · linear_combination r2311
        · linear_combination r2312
    simpa [base, twice, triple, digit39] using hraw
  have hhigh : rho 1168 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 1167 =
      Bool.toZMod bits[47]! := by
    simpa only using rho_bit_of_map rho bits hbits 47 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[48]! bits[47]! (base rho) (twice rho) (triple rho)
    (digit39 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit39 rho) := by
    rw [hdigit]
    cases bits[48]! <;> cases bits[47]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted39 rho) (digit39 rho) (acc40 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2132) (rho 2133) (rho 2135 + rho 2136) ((1 : F) + rho 2138 + rho 2139)
      (rho 2140) (rho 2141) (rho 2142) (rho 2143) (rho 2144) (rho 2145)
      (by simpa [shifted39] using hshift2On)
      (by simpa [digit39] using hdigitOn)
      (by linear_combination r2313)
      (by linear_combination r2314)
      (by linear_combination r2315)
      (by linear_combination r2316)
      (by linear_combination r2317)
      (by linear_combination r2318)
    simpa [shifted39, digit39, acc40] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc40 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted39 rho) (digit39 rho) (acc40 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted39 rho) (digit39 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1168) (rho 1167)
      (base rho) (twice rho) (triple rho) (acc39 rho)
      (acc40 rho) :=
    ⟨shiftOnce39 rho, shifted39 rho, digit39 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window40 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc40 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[46]! (scalarBits rho)[45]!
        (base rho) (twice rho) (triple rho) (acc40 rho)
        (acc41 rho) ∧
      EdwardsBridge.onCurve (acc41 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart29 at p29
  rcases p29 with ⟨r2320, r2321, r2322, r2323, r2324, r2325, r2326, r2327, r2328, r2329, r2330, r2331, r2332, r2333, r2334, r2335, r2336, r2337, r2338, r2339, r2340, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2319 at r2319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2320 at r2320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2321 at r2321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2322 at r2322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2323 at r2323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2324 at r2324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2325 at r2325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2326 at r2326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2327 at r2327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2328 at r2328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2329 at r2329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2330 at r2330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2331 at r2331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2332 at r2332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2333 at r2333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2334 at r2334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2335 at r2335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2336 at r2336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2337 at r2337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2338 at r2338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2339 at r2339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2340 at r2340
  have hshift1 : EdwardsBridge.doubleSpec (acc40 rho) (shiftOnce40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2144) (rho 2145) (rho 2146) (rho 2147) (rho 2148) (rho 2149) (rho 2150)
      (by simpa [acc40] using hacc)
      (by linear_combination r2319)
      (by linear_combination r2320)
      (by linear_combination r2321)
      (by linear_combination r2322)
      (by linear_combination r2323)
    simpa [acc40, shiftOnce40] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc40 rho) (shiftOnce40 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc40 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce40 rho) (shifted40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2149) (rho 2150) (rho 2151) (rho 2152) (rho 2153) (rho 2154) (rho 2155)
      (by simpa [shiftOnce40] using hshift1On)
      (by linear_combination r2324)
      (by linear_combination r2325)
      (by linear_combination r2326)
      (by linear_combination r2327)
      (by linear_combination r2328)
    simpa [shiftOnce40, shifted40] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce40 rho) (shifted40 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce40 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1166) (rho 1165)
      (base rho) (twice rho) (triple rho) (digit40 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1166) (rho 1165)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2157 + rho 2158, (1 : F) + rho 2160 + rho 2161⟩ := by
      constructor
      · refine ⟨(rho 2156 + (rho 1252) - (0)), rho 2157, ?_, ?_, ?_⟩
        · linear_combination r2329
        · linear_combination r2330
        · linear_combination r2331
      · refine ⟨(rho 2159 + (rho 1253) - ((1 : F))), rho 2160, ?_, ?_, ?_⟩
        · linear_combination r2332
        · linear_combination r2333
        · linear_combination r2334
    simpa [base, twice, triple, digit40] using hraw
  have hhigh : rho 1166 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 1165 =
      Bool.toZMod bits[45]! := by
    simpa only using rho_bit_of_map rho bits hbits 45 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[46]! bits[45]! (base rho) (twice rho) (triple rho)
    (digit40 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit40 rho) := by
    rw [hdigit]
    cases bits[46]! <;> cases bits[45]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted40 rho) (digit40 rho) (acc41 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2154) (rho 2155) (rho 2157 + rho 2158) ((1 : F) + rho 2160 + rho 2161)
      (rho 2162) (rho 2163) (rho 2164) (rho 2165) (rho 2166) (rho 2167)
      (by simpa [shifted40] using hshift2On)
      (by simpa [digit40] using hdigitOn)
      (by linear_combination r2335)
      (by linear_combination r2336)
      (by linear_combination r2337)
      (by linear_combination r2338)
      (by linear_combination r2339)
      (by linear_combination r2340)
    simpa [shifted40, digit40, acc41] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc41 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted40 rho) (digit40 rho) (acc41 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted40 rho) (digit40 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1166) (rho 1165)
      (base rho) (twice rho) (triple rho) (acc40 rho)
      (acc41 rho) :=
    ⟨shiftOnce40 rho, shifted40 rho, digit40 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window41 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc41 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[44]! (scalarBits rho)[43]!
        (base rho) (twice rho) (triple rho) (acc41 rho)
        (acc42 rho) ∧
      EdwardsBridge.onCurve (acc42 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2341, r2342, r2343, r2344, r2345, r2346, r2347, r2348, r2349, r2350, r2351, r2352, r2353, r2354, r2355, r2356, r2357, r2358, r2359, r2360, r2361, r2362, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2341 at r2341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2342 at r2342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2343 at r2343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2344 at r2344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2345 at r2345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2346 at r2346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2347 at r2347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2348 at r2348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2349 at r2349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2350 at r2350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2351 at r2351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2352 at r2352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2353 at r2353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2354 at r2354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2355 at r2355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2356 at r2356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2357 at r2357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2358 at r2358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2359 at r2359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2360 at r2360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2361 at r2361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2362 at r2362
  have hshift1 : EdwardsBridge.doubleSpec (acc41 rho) (shiftOnce41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2166) (rho 2167) (rho 2168) (rho 2169) (rho 2170) (rho 2171) (rho 2172)
      (by simpa [acc41] using hacc)
      (by linear_combination r2341)
      (by linear_combination r2342)
      (by linear_combination r2343)
      (by linear_combination r2344)
      (by linear_combination r2345)
    simpa [acc41, shiftOnce41] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc41 rho) (shiftOnce41 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc41 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce41 rho) (shifted41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2171) (rho 2172) (rho 2173) (rho 2174) (rho 2175) (rho 2176) (rho 2177)
      (by simpa [shiftOnce41] using hshift1On)
      (by linear_combination r2346)
      (by linear_combination r2347)
      (by linear_combination r2348)
      (by linear_combination r2349)
      (by linear_combination r2350)
    simpa [shiftOnce41, shifted41] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce41 rho) (shifted41 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce41 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1164) (rho 1163)
      (base rho) (twice rho) (triple rho) (digit41 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1164) (rho 1163)
        ⟨rho 598, rho 600⟩ ⟨rho 1252, rho 1253⟩
        ⟨rho 1258, rho 1259⟩ ⟨rho 2179 + rho 2180, (1 : F) + rho 2182 + rho 2183⟩ := by
      constructor
      · refine ⟨(rho 2178 + (rho 1252) - (0)), rho 2179, ?_, ?_, ?_⟩
        · linear_combination r2351
        · linear_combination r2352
        · linear_combination r2353
      · refine ⟨(rho 2181 + (rho 1253) - ((1 : F))), rho 2182, ?_, ?_, ?_⟩
        · linear_combination r2354
        · linear_combination r2355
        · linear_combination r2356
    simpa [base, twice, triple, digit41] using hraw
  have hhigh : rho 1164 =
      Bool.toZMod bits[44]! := by
    simpa only using rho_bit_of_map rho bits hbits 44 (by decide +kernel)
  have hlow : rho 1163 =
      Bool.toZMod bits[43]! := by
    simpa only using rho_bit_of_map rho bits hbits 43 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[44]! bits[43]! (base rho) (twice rho) (triple rho)
    (digit41 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit41 rho) := by
    rw [hdigit]
    cases bits[44]! <;> cases bits[43]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted41 rho) (digit41 rho) (acc42 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2176) (rho 2177) (rho 2179 + rho 2180) ((1 : F) + rho 2182 + rho 2183)
      (rho 2184) (rho 2185) (rho 2186) (rho 2187) (rho 2188) (rho 2189)
      (by simpa [shifted41] using hshift2On)
      (by simpa [digit41] using hdigitOn)
      (by linear_combination r2357)
      (by linear_combination r2358)
      (by linear_combination r2359)
      (by linear_combination r2360)
      (by linear_combination r2361)
      (by linear_combination r2362)
    simpa [shifted41, digit41, acc42] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc42 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted41 rho) (digit41 rho) (acc42 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted41 rho) (digit41 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1164) (rho 1163)
      (base rho) (twice rho) (triple rho) (acc41 rho)
      (acc42 rho) :=
    ⟨shiftOnce41 rho, shifted41 rho, digit41 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.InputsWindowSupport
