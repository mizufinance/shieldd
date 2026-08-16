import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window30 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc30 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[188]! (scalarBits rho)[187]!
        (base rho) (twice rho) (triple rho) (acc30 rho)
        (acc31 rho) ∧
      EdwardsBridge.onCurve (acc31 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5243, r5244, r5245, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5243 at r5243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5244 at r5244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5245 at r5245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5246 at r5246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5247 at r5247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5248 at r5248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5249 at r5249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5250 at r5250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5251 at r5251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5252 at r5252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5253 at r5253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5254 at r5254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5255 at r5255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5256 at r5256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5257 at r5257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5258 at r5258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5259 at r5259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5260 at r5260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5261 at r5261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5262 at r5262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5263 at r5263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5264 at r5264
  have hshift1 : EdwardsBridge.doubleSpec (acc30 rho) (shiftOnce30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5249) (rho 5250) (rho 5251) (rho 5252) (rho 5253) (rho 5254) (rho 5255)
      (by simpa [acc30] using hacc)
      (by linear_combination r5243)
      (by linear_combination r5244)
      (by linear_combination r5245)
      (by linear_combination r5246)
      (by linear_combination r5247)
    simpa [acc30, shiftOnce30] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc30 rho) (shiftOnce30 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc30 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce30 rho) (shifted30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5254) (rho 5255) (rho 5256) (rho 5257) (rho 5258) (rho 5259) (rho 5260)
      (by simpa [shiftOnce30] using hshift1On)
      (by linear_combination r5248)
      (by linear_combination r5249)
      (by linear_combination r5250)
      (by linear_combination r5251)
      (by linear_combination r5252)
    simpa [shiftOnce30, shifted30] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce30 rho) (shifted30 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce30 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 189) (rho 188)
      (base rho) (twice rho) (triple rho) (digit30 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 189) (rho 188)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5262 + rho 5263, (1 : F) + rho 5265 + rho 5266⟩ := by
      constructor
      · refine ⟨(rho 5261 + (rho 4577) - (0)), rho 5262, ?_, ?_, ?_⟩
        · linear_combination r5253 - (rho 188) * order_cast_zero
        · linear_combination r5254
        · linear_combination r5255
      · refine ⟨(rho 5264 + (rho 4578) - ((1 : F))), rho 5265, ?_, ?_, ?_⟩
        · linear_combination r5256 - (rho 188) * order_cast_zero
        · linear_combination r5257
        · linear_combination r5258
    simpa [base, twice, triple, digit30] using hraw
  have hhigh : rho 189 =
      Bool.toZMod bits[188]! := by
    simpa only using rho_bit_of_map rho bits hbits 188 (by decide +kernel)
  have hlow : rho 188 =
      Bool.toZMod bits[187]! := by
    simpa only using rho_bit_of_map rho bits hbits 187 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[188]! bits[187]! (base rho) (twice rho) (triple rho)
    (digit30 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit30 rho) := by
    rw [hdigit]
    cases bits[188]! <;> cases bits[187]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted30 rho) (digit30 rho) (acc31 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5259) (rho 5260) (rho 5262 + rho 5263) ((1 : F) + rho 5265 + rho 5266)
      (rho 5267) (rho 5268) (rho 5269) (rho 5270) (rho 5271) (rho 5272)
      (by simpa [shifted30] using hshift2On)
      (by simpa [digit30] using hdigitOn)
      (by linear_combination r5259)
      (by linear_combination r5260)
      (by linear_combination r5261)
      (by linear_combination r5262)
      (by linear_combination r5263)
      (by linear_combination r5264)
    simpa [shifted30, digit30, acc31] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc31 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted30 rho) (digit30 rho) (acc31 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted30 rho) (digit30 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 189) (rho 188)
      (base rho) (twice rho) (triple rho) (acc30 rho)
      (acc31 rho) :=
    ⟨shiftOnce30 rho, shifted30 rho, digit30 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window31 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc31 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[186]! (scalarBits rho)[185]!
        (base rho) (twice rho) (triple rho) (acc31 rho)
        (acc32 rho) ∧
      EdwardsBridge.onCurve (acc32 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5265, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5265 at r5265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5266 at r5266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5267 at r5267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5268 at r5268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5269 at r5269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5270 at r5270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5271 at r5271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5272 at r5272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5273 at r5273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5274 at r5274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5275 at r5275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5276 at r5276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5277 at r5277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5278 at r5278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5279 at r5279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5280 at r5280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5281 at r5281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5282 at r5282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5283 at r5283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5284 at r5284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5285 at r5285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5286 at r5286
  have hshift1 : EdwardsBridge.doubleSpec (acc31 rho) (shiftOnce31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5271) (rho 5272) (rho 5273) (rho 5274) (rho 5275) (rho 5276) (rho 5277)
      (by simpa [acc31] using hacc)
      (by linear_combination r5265)
      (by linear_combination r5266)
      (by linear_combination r5267)
      (by linear_combination r5268)
      (by linear_combination r5269)
    simpa [acc31, shiftOnce31] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc31 rho) (shiftOnce31 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc31 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce31 rho) (shifted31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5276) (rho 5277) (rho 5278) (rho 5279) (rho 5280) (rho 5281) (rho 5282)
      (by simpa [shiftOnce31] using hshift1On)
      (by linear_combination r5270)
      (by linear_combination r5271)
      (by linear_combination r5272)
      (by linear_combination r5273)
      (by linear_combination r5274)
    simpa [shiftOnce31, shifted31] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce31 rho) (shifted31 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce31 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 187) (rho 186)
      (base rho) (twice rho) (triple rho) (digit31 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 187) (rho 186)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5284 + rho 5285, (1 : F) + rho 5287 + rho 5288⟩ := by
      constructor
      · refine ⟨(rho 5283 + (rho 4577) - (0)), rho 5284, ?_, ?_, ?_⟩
        · linear_combination r5275 - (rho 186) * order_cast_zero
        · linear_combination r5276
        · linear_combination r5277
      · refine ⟨(rho 5286 + (rho 4578) - ((1 : F))), rho 5287, ?_, ?_, ?_⟩
        · linear_combination r5278 - (rho 186) * order_cast_zero
        · linear_combination r5279
        · linear_combination r5280
    simpa [base, twice, triple, digit31] using hraw
  have hhigh : rho 187 =
      Bool.toZMod bits[186]! := by
    simpa only using rho_bit_of_map rho bits hbits 186 (by decide +kernel)
  have hlow : rho 186 =
      Bool.toZMod bits[185]! := by
    simpa only using rho_bit_of_map rho bits hbits 185 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[186]! bits[185]! (base rho) (twice rho) (triple rho)
    (digit31 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit31 rho) := by
    rw [hdigit]
    cases bits[186]! <;> cases bits[185]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted31 rho) (digit31 rho) (acc32 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5281) (rho 5282) (rho 5284 + rho 5285) ((1 : F) + rho 5287 + rho 5288)
      (rho 5289) (rho 5290) (rho 5291) (rho 5292) (rho 5293) (rho 5294)
      (by simpa [shifted31] using hshift2On)
      (by simpa [digit31] using hdigitOn)
      (by linear_combination r5281)
      (by linear_combination r5282)
      (by linear_combination r5283)
      (by linear_combination r5284)
      (by linear_combination r5285)
      (by linear_combination r5286)
    simpa [shifted31, digit31, acc32] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc32 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted31 rho) (digit31 rho) (acc32 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted31 rho) (digit31 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 187) (rho 186)
      (base rho) (twice rho) (triple rho) (acc31 rho)
      (acc32 rho) :=
    ⟨shiftOnce31 rho, shifted31 rho, digit31 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window32 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc32 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[184]! (scalarBits rho)[183]!
        (base rho) (twice rho) (triple rho) (acc32 rho)
        (acc33 rho) ∧
      EdwardsBridge.onCurve (acc33 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, r5287, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5287 at r5287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5288 at r5288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5289 at r5289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5290 at r5290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5291 at r5291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5292 at r5292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5293 at r5293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5294 at r5294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5295 at r5295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5296 at r5296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5297 at r5297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5298 at r5298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5299 at r5299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5300 at r5300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5301 at r5301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5302 at r5302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5303 at r5303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5304 at r5304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5305 at r5305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5306 at r5306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5307 at r5307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5308 at r5308
  have hshift1 : EdwardsBridge.doubleSpec (acc32 rho) (shiftOnce32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5293) (rho 5294) (rho 5295) (rho 5296) (rho 5297) (rho 5298) (rho 5299)
      (by simpa [acc32] using hacc)
      (by linear_combination r5287)
      (by linear_combination r5288)
      (by linear_combination r5289)
      (by linear_combination r5290)
      (by linear_combination r5291)
    simpa [acc32, shiftOnce32] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc32 rho) (shiftOnce32 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc32 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce32 rho) (shifted32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5298) (rho 5299) (rho 5300) (rho 5301) (rho 5302) (rho 5303) (rho 5304)
      (by simpa [shiftOnce32] using hshift1On)
      (by linear_combination r5292)
      (by linear_combination r5293)
      (by linear_combination r5294)
      (by linear_combination r5295)
      (by linear_combination r5296)
    simpa [shiftOnce32, shifted32] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce32 rho) (shifted32 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce32 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 185) (rho 184)
      (base rho) (twice rho) (triple rho) (digit32 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 185) (rho 184)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5306 + rho 5307, (1 : F) + rho 5309 + rho 5310⟩ := by
      constructor
      · refine ⟨(rho 5305 + (rho 4577) - (0)), rho 5306, ?_, ?_, ?_⟩
        · linear_combination r5297 - (rho 184) * order_cast_zero
        · linear_combination r5298
        · linear_combination r5299
      · refine ⟨(rho 5308 + (rho 4578) - ((1 : F))), rho 5309, ?_, ?_, ?_⟩
        · linear_combination r5300 - (rho 184) * order_cast_zero
        · linear_combination r5301
        · linear_combination r5302
    simpa [base, twice, triple, digit32] using hraw
  have hhigh : rho 185 =
      Bool.toZMod bits[184]! := by
    simpa only using rho_bit_of_map rho bits hbits 184 (by decide +kernel)
  have hlow : rho 184 =
      Bool.toZMod bits[183]! := by
    simpa only using rho_bit_of_map rho bits hbits 183 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[184]! bits[183]! (base rho) (twice rho) (triple rho)
    (digit32 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit32 rho) := by
    rw [hdigit]
    cases bits[184]! <;> cases bits[183]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted32 rho) (digit32 rho) (acc33 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5303) (rho 5304) (rho 5306 + rho 5307) ((1 : F) + rho 5309 + rho 5310)
      (rho 5311) (rho 5312) (rho 5313) (rho 5314) (rho 5315) (rho 5316)
      (by simpa [shifted32] using hshift2On)
      (by simpa [digit32] using hdigitOn)
      (by linear_combination r5303)
      (by linear_combination r5304)
      (by linear_combination r5305)
      (by linear_combination r5306)
      (by linear_combination r5307)
      (by linear_combination r5308)
    simpa [shifted32, digit32, acc33] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc33 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted32 rho) (digit32 rho) (acc33 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted32 rho) (digit32 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 185) (rho 184)
      (base rho) (twice rho) (triple rho) (acc32 rho)
      (acc33 rho) :=
    ⟨shiftOnce32 rho, shifted32 rho, digit32 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window33 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc33 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[182]! (scalarBits rho)[181]!
        (base rho) (twice rho) (triple rho) (acc33 rho)
        (acc34 rho) ∧
      EdwardsBridge.onCurve (acc34 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5309, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5309 at r5309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5310 at r5310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5311 at r5311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5312 at r5312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5313 at r5313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5314 at r5314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5315 at r5315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5316 at r5316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5317 at r5317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5318 at r5318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5319 at r5319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5320 at r5320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5321 at r5321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5322 at r5322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5323 at r5323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5324 at r5324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5325 at r5325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5326 at r5326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5327 at r5327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5328 at r5328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5329 at r5329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5330 at r5330
  have hshift1 : EdwardsBridge.doubleSpec (acc33 rho) (shiftOnce33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5315) (rho 5316) (rho 5317) (rho 5318) (rho 5319) (rho 5320) (rho 5321)
      (by simpa [acc33] using hacc)
      (by linear_combination r5309)
      (by linear_combination r5310)
      (by linear_combination r5311)
      (by linear_combination r5312)
      (by linear_combination r5313)
    simpa [acc33, shiftOnce33] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc33 rho) (shiftOnce33 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc33 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce33 rho) (shifted33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5320) (rho 5321) (rho 5322) (rho 5323) (rho 5324) (rho 5325) (rho 5326)
      (by simpa [shiftOnce33] using hshift1On)
      (by linear_combination r5314)
      (by linear_combination r5315)
      (by linear_combination r5316)
      (by linear_combination r5317)
      (by linear_combination r5318)
    simpa [shiftOnce33, shifted33] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce33 rho) (shifted33 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce33 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 183) (rho 182)
      (base rho) (twice rho) (triple rho) (digit33 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 183) (rho 182)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5328 + rho 5329, (1 : F) + rho 5331 + rho 5332⟩ := by
      constructor
      · refine ⟨(rho 5327 + (rho 4577) - (0)), rho 5328, ?_, ?_, ?_⟩
        · linear_combination r5319 - (rho 182) * order_cast_zero
        · linear_combination r5320
        · linear_combination r5321
      · refine ⟨(rho 5330 + (rho 4578) - ((1 : F))), rho 5331, ?_, ?_, ?_⟩
        · linear_combination r5322 - (rho 182) * order_cast_zero
        · linear_combination r5323
        · linear_combination r5324
    simpa [base, twice, triple, digit33] using hraw
  have hhigh : rho 183 =
      Bool.toZMod bits[182]! := by
    simpa only using rho_bit_of_map rho bits hbits 182 (by decide +kernel)
  have hlow : rho 182 =
      Bool.toZMod bits[181]! := by
    simpa only using rho_bit_of_map rho bits hbits 181 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[182]! bits[181]! (base rho) (twice rho) (triple rho)
    (digit33 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit33 rho) := by
    rw [hdigit]
    cases bits[182]! <;> cases bits[181]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted33 rho) (digit33 rho) (acc34 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5325) (rho 5326) (rho 5328 + rho 5329) ((1 : F) + rho 5331 + rho 5332)
      (rho 5333) (rho 5334) (rho 5335) (rho 5336) (rho 5337) (rho 5338)
      (by simpa [shifted33] using hshift2On)
      (by simpa [digit33] using hdigitOn)
      (by linear_combination r5325)
      (by linear_combination r5326)
      (by linear_combination r5327)
      (by linear_combination r5328)
      (by linear_combination r5329)
      (by linear_combination r5330)
    simpa [shifted33, digit33, acc34] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc34 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted33 rho) (digit33 rho) (acc34 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted33 rho) (digit33 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 183) (rho 182)
      (base rho) (twice rho) (triple rho) (acc33 rho)
      (acc34 rho) :=
    ⟨shiftOnce33 rho, shifted33 rho, digit33 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window34 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc34 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[180]! (scalarBits rho)[179]!
        (base rho) (twice rho) (triple rho) (acc34 rho)
        (acc35 rho) ∧
      EdwardsBridge.onCurve (acc35 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5331, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5331 at r5331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5332 at r5332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5333 at r5333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5334 at r5334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5335 at r5335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5336 at r5336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5337 at r5337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5338 at r5338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5339 at r5339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5340 at r5340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5341 at r5341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5342 at r5342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5343 at r5343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5344 at r5344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5345 at r5345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5346 at r5346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5347 at r5347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5348 at r5348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5349 at r5349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5350 at r5350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5351 at r5351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5352 at r5352
  have hshift1 : EdwardsBridge.doubleSpec (acc34 rho) (shiftOnce34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5337) (rho 5338) (rho 5339) (rho 5340) (rho 5341) (rho 5342) (rho 5343)
      (by simpa [acc34] using hacc)
      (by linear_combination r5331)
      (by linear_combination r5332)
      (by linear_combination r5333)
      (by linear_combination r5334)
      (by linear_combination r5335)
    simpa [acc34, shiftOnce34] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc34 rho) (shiftOnce34 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc34 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce34 rho) (shifted34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5342) (rho 5343) (rho 5344) (rho 5345) (rho 5346) (rho 5347) (rho 5348)
      (by simpa [shiftOnce34] using hshift1On)
      (by linear_combination r5336)
      (by linear_combination r5337)
      (by linear_combination r5338)
      (by linear_combination r5339)
      (by linear_combination r5340)
    simpa [shiftOnce34, shifted34] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce34 rho) (shifted34 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce34 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 181) (rho 180)
      (base rho) (twice rho) (triple rho) (digit34 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 181) (rho 180)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5350 + rho 5351, (1 : F) + rho 5353 + rho 5354⟩ := by
      constructor
      · refine ⟨(rho 5349 + (rho 4577) - (0)), rho 5350, ?_, ?_, ?_⟩
        · linear_combination r5341 - (rho 180) * order_cast_zero
        · linear_combination r5342
        · linear_combination r5343
      · refine ⟨(rho 5352 + (rho 4578) - ((1 : F))), rho 5353, ?_, ?_, ?_⟩
        · linear_combination r5344 - (rho 180) * order_cast_zero
        · linear_combination r5345
        · linear_combination r5346
    simpa [base, twice, triple, digit34] using hraw
  have hhigh : rho 181 =
      Bool.toZMod bits[180]! := by
    simpa only using rho_bit_of_map rho bits hbits 180 (by decide +kernel)
  have hlow : rho 180 =
      Bool.toZMod bits[179]! := by
    simpa only using rho_bit_of_map rho bits hbits 179 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[180]! bits[179]! (base rho) (twice rho) (triple rho)
    (digit34 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit34 rho) := by
    rw [hdigit]
    cases bits[180]! <;> cases bits[179]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted34 rho) (digit34 rho) (acc35 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5347) (rho 5348) (rho 5350 + rho 5351) ((1 : F) + rho 5353 + rho 5354)
      (rho 5355) (rho 5356) (rho 5357) (rho 5358) (rho 5359) (rho 5360)
      (by simpa [shifted34] using hshift2On)
      (by simpa [digit34] using hdigitOn)
      (by linear_combination r5347)
      (by linear_combination r5348)
      (by linear_combination r5349)
      (by linear_combination r5350)
      (by linear_combination r5351)
      (by linear_combination r5352)
    simpa [shifted34, digit34, acc35] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc35 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted34 rho) (digit34 rho) (acc35 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted34 rho) (digit34 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 181) (rho 180)
      (base rho) (twice rho) (triple rho) (acc34 rho)
      (acc35 rho) :=
    ⟨shiftOnce34 rho, shifted34 rho, digit34 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window35 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc35 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[178]! (scalarBits rho)[177]!
        (base rho) (twice rho) (triple rho) (acc35 rho)
        (acc36 rho) ∧
      EdwardsBridge.onCurve (acc36 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, p67, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5353, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5353 at r5353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5354 at r5354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5355 at r5355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5356 at r5356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5357 at r5357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5358 at r5358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5359 at r5359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5360 at r5360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5361 at r5361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5362 at r5362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5363 at r5363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5364 at r5364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5365 at r5365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5366 at r5366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5367 at r5367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5368 at r5368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5369 at r5369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5370 at r5370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5371 at r5371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5372 at r5372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5373 at r5373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow5374 at r5374
  have hshift1 : EdwardsBridge.doubleSpec (acc35 rho) (shiftOnce35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5359) (rho 5360) (rho 5361) (rho 5362) (rho 5363) (rho 5364) (rho 5365)
      (by simpa [acc35] using hacc)
      (by linear_combination r5353)
      (by linear_combination r5354)
      (by linear_combination r5355)
      (by linear_combination r5356)
      (by linear_combination r5357)
    simpa [acc35, shiftOnce35] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc35 rho) (shiftOnce35 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc35 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce35 rho) (shifted35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 5364) (rho 5365) (rho 5366) (rho 5367) (rho 5368) (rho 5369) (rho 5370)
      (by simpa [shiftOnce35] using hshift1On)
      (by linear_combination r5358)
      (by linear_combination r5359)
      (by linear_combination r5360)
      (by linear_combination r5361)
      (by linear_combination r5362)
    simpa [shiftOnce35, shifted35] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce35 rho) (shifted35 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce35 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 179) (rho 178)
      (base rho) (twice rho) (triple rho) (digit35 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 179) (rho 178)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 5372 + rho 5373, (1 : F) + rho 5375 + rho 5376⟩ := by
      constructor
      · refine ⟨(rho 5371 + (rho 4577) - (0)), rho 5372, ?_, ?_, ?_⟩
        · linear_combination r5363 - (rho 178) * order_cast_zero
        · linear_combination r5364
        · linear_combination r5365
      · refine ⟨(rho 5374 + (rho 4578) - ((1 : F))), rho 5375, ?_, ?_, ?_⟩
        · linear_combination r5366 - (rho 178) * order_cast_zero
        · linear_combination r5367
        · linear_combination r5368
    simpa [base, twice, triple, digit35] using hraw
  have hhigh : rho 179 =
      Bool.toZMod bits[178]! := by
    simpa only using rho_bit_of_map rho bits hbits 178 (by decide +kernel)
  have hlow : rho 178 =
      Bool.toZMod bits[177]! := by
    simpa only using rho_bit_of_map rho bits hbits 177 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[178]! bits[177]! (base rho) (twice rho) (triple rho)
    (digit35 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit35 rho) := by
    rw [hdigit]
    cases bits[178]! <;> cases bits[177]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted35 rho) (digit35 rho) (acc36 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 5369) (rho 5370) (rho 5372 + rho 5373) ((1 : F) + rho 5375 + rho 5376)
      (rho 5377) (rho 5378) (rho 5379) (rho 5380) (rho 5381) (rho 5382)
      (by simpa [shifted35] using hshift2On)
      (by simpa [digit35] using hdigitOn)
      (by linear_combination r5369)
      (by linear_combination r5370)
      (by linear_combination r5371)
      (by linear_combination r5372)
      (by linear_combination r5373)
      (by linear_combination r5374)
    simpa [shifted35, digit35, acc36] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc36 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted35 rho) (digit35 rho) (acc36 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted35 rho) (digit35 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 179) (rho 178)
      (base rho) (twice rho) (triple rho) (acc35 rho)
      (acc36 rho) :=
    ⟨shiftOnce35 rho, shifted35 rho, digit35 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
