import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41IssuerWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window120 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc120 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[8]! (scalarBits rho)[7]!
        (base rho) (twice rho) (triple rho) (acc120 rho)
        (acc121 rho) ∧
      EdwardsBridge.onCurve (acc121 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p90, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart90 at p90
  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7223, r7224, r7225, r7226, r7227, r7228, r7229, r7230, r7231, r7232, r7233, r7234, r7235, r7236, r7237, r7238, r7239, r7240, r7241, r7242, r7243, r7244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7223 at r7223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7224 at r7224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7225 at r7225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7226 at r7226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7227 at r7227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7228 at r7228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7229 at r7229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7230 at r7230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7231 at r7231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7232 at r7232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7233 at r7233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7234 at r7234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7235 at r7235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7236 at r7236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7237 at r7237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7238 at r7238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7239 at r7239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7240 at r7240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7241 at r7241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7242 at r7242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7243 at r7243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7244 at r7244
  have hshift1 : EdwardsBridge.doubleSpec (acc120 rho) (shiftOnce120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7229) (rho 7230) (rho 7231) (rho 7232) (rho 7233) (rho 7234) (rho 7235)
      (by simpa [acc120] using hacc)
      (by linear_combination r7223)
      (by linear_combination r7224)
      (by linear_combination r7225)
      (by linear_combination r7226)
      (by linear_combination r7227)
    simpa [acc120, shiftOnce120] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc120 rho) (shiftOnce120 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc120 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce120 rho) (shifted120 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7234) (rho 7235) (rho 7236) (rho 7237) (rho 7238) (rho 7239) (rho 7240)
      (by simpa [shiftOnce120] using hshift1On)
      (by linear_combination r7228)
      (by linear_combination r7229)
      (by linear_combination r7230)
      (by linear_combination r7231)
      (by linear_combination r7232)
    simpa [shiftOnce120, shifted120] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted120 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce120 rho) (shifted120 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce120 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 9) (rho 8)
      (base rho) (twice rho) (triple rho) (digit120 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 9) (rho 8)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7242 + rho 7243, (1 : F) + rho 7245 + rho 7246⟩ := by
      constructor
      · refine ⟨(rho 7241 + (rho 4577) - (0)), rho 7242, ?_, ?_, ?_⟩
        · linear_combination r7233 - (rho 8) * order_cast_zero
        · linear_combination r7234
        · linear_combination r7235
      · refine ⟨(rho 7244 + (rho 4578) - ((1 : F))), rho 7245, ?_, ?_, ?_⟩
        · linear_combination r7236 - (rho 8) * order_cast_zero
        · linear_combination r7237
        · linear_combination r7238
    simpa [base, twice, triple, digit120] using hraw
  have hhigh : rho 9 =
      Bool.toZMod bits[8]! := by
    simpa only using rho_bit_of_map rho bits hbits 8 (by decide +kernel)
  have hlow : rho 8 =
      Bool.toZMod bits[7]! := by
    simpa only using rho_bit_of_map rho bits hbits 7 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[8]! bits[7]! (base rho) (twice rho) (triple rho)
    (digit120 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit120 rho) := by
    rw [hdigit]
    cases bits[8]! <;> cases bits[7]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted120 rho) (digit120 rho) (acc121 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7239) (rho 7240) (rho 7242 + rho 7243) ((1 : F) + rho 7245 + rho 7246)
      (rho 7247) (rho 7248) (rho 7249) (rho 7250) (rho 7251) (rho 7252)
      (by simpa [shifted120] using hshift2On)
      (by simpa [digit120] using hdigitOn)
      (by linear_combination r7239)
      (by linear_combination r7240)
      (by linear_combination r7241)
      (by linear_combination r7242)
      (by linear_combination r7243)
      (by linear_combination r7244)
    simpa [shifted120, digit120, acc121] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc121 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted120 rho) (digit120 rho) (acc121 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted120 rho) (digit120 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 9) (rho 8)
      (base rho) (twice rho) (triple rho) (acc120 rho)
      (acc121 rho) :=
    ⟨shiftOnce120 rho, shifted120 rho, digit120 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window121 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc121 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[6]! (scalarBits rho)[5]!
        (base rho) (twice rho) (triple rho) (acc121 rho)
        (acc122 rho) ∧
      EdwardsBridge.onCurve (acc122 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p90, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart90 at p90
  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7245, r7246, r7247, r7248, r7249, r7250, r7251, r7252, r7253, r7254, r7255, r7256, r7257, r7258, r7259, r7260, r7261, r7262, r7263, r7264, r7265, r7266, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7245 at r7245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7246 at r7246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7247 at r7247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7248 at r7248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7249 at r7249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7250 at r7250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7251 at r7251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7252 at r7252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7253 at r7253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7254 at r7254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7255 at r7255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7256 at r7256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7257 at r7257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7258 at r7258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7259 at r7259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7260 at r7260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7261 at r7261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7262 at r7262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7263 at r7263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7264 at r7264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7265 at r7265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7266 at r7266
  have hshift1 : EdwardsBridge.doubleSpec (acc121 rho) (shiftOnce121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7251) (rho 7252) (rho 7253) (rho 7254) (rho 7255) (rho 7256) (rho 7257)
      (by simpa [acc121] using hacc)
      (by linear_combination r7245)
      (by linear_combination r7246)
      (by linear_combination r7247)
      (by linear_combination r7248)
      (by linear_combination r7249)
    simpa [acc121, shiftOnce121] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc121 rho) (shiftOnce121 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc121 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce121 rho) (shifted121 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7256) (rho 7257) (rho 7258) (rho 7259) (rho 7260) (rho 7261) (rho 7262)
      (by simpa [shiftOnce121] using hshift1On)
      (by linear_combination r7250)
      (by linear_combination r7251)
      (by linear_combination r7252)
      (by linear_combination r7253)
      (by linear_combination r7254)
    simpa [shiftOnce121, shifted121] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted121 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce121 rho) (shifted121 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce121 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 7) (rho 6)
      (base rho) (twice rho) (triple rho) (digit121 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 7) (rho 6)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7264 + rho 7265, (1 : F) + rho 7267 + rho 7268⟩ := by
      constructor
      · refine ⟨(rho 7263 + (rho 4577) - (0)), rho 7264, ?_, ?_, ?_⟩
        · linear_combination r7255 - (rho 6) * order_cast_zero
        · linear_combination r7256
        · linear_combination r7257
      · refine ⟨(rho 7266 + (rho 4578) - ((1 : F))), rho 7267, ?_, ?_, ?_⟩
        · linear_combination r7258 - (rho 6) * order_cast_zero
        · linear_combination r7259
        · linear_combination r7260
    simpa [base, twice, triple, digit121] using hraw
  have hhigh : rho 7 =
      Bool.toZMod bits[6]! := by
    simpa only using rho_bit_of_map rho bits hbits 6 (by decide +kernel)
  have hlow : rho 6 =
      Bool.toZMod bits[5]! := by
    simpa only using rho_bit_of_map rho bits hbits 5 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[6]! bits[5]! (base rho) (twice rho) (triple rho)
    (digit121 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit121 rho) := by
    rw [hdigit]
    cases bits[6]! <;> cases bits[5]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted121 rho) (digit121 rho) (acc122 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7261) (rho 7262) (rho 7264 + rho 7265) ((1 : F) + rho 7267 + rho 7268)
      (rho 7269) (rho 7270) (rho 7271) (rho 7272) (rho 7273) (rho 7274)
      (by simpa [shifted121] using hshift2On)
      (by simpa [digit121] using hdigitOn)
      (by linear_combination r7261)
      (by linear_combination r7262)
      (by linear_combination r7263)
      (by linear_combination r7264)
      (by linear_combination r7265)
      (by linear_combination r7266)
    simpa [shifted121, digit121, acc122] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc122 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted121 rho) (digit121 rho) (acc122 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted121 rho) (digit121 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 7) (rho 6)
      (base rho) (twice rho) (triple rho) (acc121 rho)
      (acc122 rho) :=
    ⟨shiftOnce121 rho, shifted121 rho, digit121 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window122 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc122 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[4]! (scalarBits rho)[3]!
        (base rho) (twice rho) (triple rho) (acc122 rho)
        (acc123 rho) ∧
      EdwardsBridge.onCurve (acc123 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p90, p91
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart90 at p90
  rcases p90 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7267, r7268, r7269, r7270, r7271, r7272, r7273, r7274, r7275, r7276, r7277, r7278, r7279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart91 at p91
  rcases p91 with ⟨r7280, r7281, r7282, r7283, r7284, r7285, r7286, r7287, r7288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7267 at r7267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7268 at r7268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7269 at r7269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7270 at r7270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7271 at r7271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7272 at r7272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7273 at r7273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7274 at r7274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7275 at r7275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7276 at r7276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7277 at r7277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7278 at r7278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7279 at r7279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7280 at r7280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7281 at r7281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7282 at r7282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7283 at r7283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7284 at r7284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7285 at r7285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7286 at r7286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7287 at r7287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7288 at r7288
  have hshift1 : EdwardsBridge.doubleSpec (acc122 rho) (shiftOnce122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7273) (rho 7274) (rho 7275) (rho 7276) (rho 7277) (rho 7278) (rho 7279)
      (by simpa [acc122] using hacc)
      (by linear_combination r7267)
      (by linear_combination r7268)
      (by linear_combination r7269)
      (by linear_combination r7270)
      (by linear_combination r7271)
    simpa [acc122, shiftOnce122] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc122 rho) (shiftOnce122 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc122 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce122 rho) (shifted122 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7278) (rho 7279) (rho 7280) (rho 7281) (rho 7282) (rho 7283) (rho 7284)
      (by simpa [shiftOnce122] using hshift1On)
      (by linear_combination r7272)
      (by linear_combination r7273)
      (by linear_combination r7274)
      (by linear_combination r7275)
      (by linear_combination r7276)
    simpa [shiftOnce122, shifted122] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted122 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce122 rho) (shifted122 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce122 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 5) (rho 4)
      (base rho) (twice rho) (triple rho) (digit122 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 5) (rho 4)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7286 + rho 7287, (1 : F) + rho 7289 + rho 7290⟩ := by
      constructor
      · refine ⟨(rho 7285 + (rho 4577) - (0)), rho 7286, ?_, ?_, ?_⟩
        · linear_combination r7277 - (rho 4) * order_cast_zero
        · linear_combination r7278
        · linear_combination r7279
      · refine ⟨(rho 7288 + (rho 4578) - ((1 : F))), rho 7289, ?_, ?_, ?_⟩
        · linear_combination r7280 - (rho 4) * order_cast_zero
        · linear_combination r7281
        · linear_combination r7282
    simpa [base, twice, triple, digit122] using hraw
  have hhigh : rho 5 =
      Bool.toZMod bits[4]! := by
    simpa only using rho_bit_of_map rho bits hbits 4 (by decide +kernel)
  have hlow : rho 4 =
      Bool.toZMod bits[3]! := by
    simpa only using rho_bit_of_map rho bits hbits 3 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[4]! bits[3]! (base rho) (twice rho) (triple rho)
    (digit122 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit122 rho) := by
    rw [hdigit]
    cases bits[4]! <;> cases bits[3]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted122 rho) (digit122 rho) (acc123 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7283) (rho 7284) (rho 7286 + rho 7287) ((1 : F) + rho 7289 + rho 7290)
      (rho 7291) (rho 7292) (rho 7293) (rho 7294) (rho 7295) (rho 7296)
      (by simpa [shifted122] using hshift2On)
      (by simpa [digit122] using hdigitOn)
      (by linear_combination r7283)
      (by linear_combination r7284)
      (by linear_combination r7285)
      (by linear_combination r7286)
      (by linear_combination r7287)
      (by linear_combination r7288)
    simpa [shifted122, digit122, acc123] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc123 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted122 rho) (digit122 rho) (acc123 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted122 rho) (digit122 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 5) (rho 4)
      (base rho) (twice rho) (triple rho) (acc122 rho)
      (acc123 rho) :=
    ⟨shiftOnce122 rho, shifted122 rho, digit122 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window123 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc123 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[2]! (scalarBits rho)[1]!
        (base rho) (twice rho) (triple rho) (acc123 rho)
        (acc124 rho) ∧
      EdwardsBridge.onCurve (acc124 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p91
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart91 at p91
  rcases p91 with ⟨_, _, _, _, _, _, _, _, _, r7289, r7290, r7291, r7292, r7293, r7294, r7295, r7296, r7297, r7298, r7299, r7300, r7301, r7302, r7303, r7304, r7305, r7306, r7307, r7308, r7309, r7310, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7289 at r7289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7290 at r7290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7291 at r7291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7292 at r7292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7293 at r7293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7294 at r7294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7295 at r7295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7296 at r7296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7297 at r7297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7298 at r7298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7299 at r7299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7300 at r7300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7301 at r7301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7302 at r7302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7303 at r7303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7304 at r7304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7305 at r7305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7306 at r7306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7307 at r7307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7308 at r7308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7309 at r7309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow7310 at r7310
  have hshift1 : EdwardsBridge.doubleSpec (acc123 rho) (shiftOnce123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7295) (rho 7296) (rho 7297) (rho 7298) (rho 7299) (rho 7300) (rho 7301)
      (by simpa [acc123] using hacc)
      (by linear_combination r7289)
      (by linear_combination r7290)
      (by linear_combination r7291)
      (by linear_combination r7292)
      (by linear_combination r7293)
    simpa [acc123, shiftOnce123] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc123 rho) (shiftOnce123 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc123 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce123 rho) (shifted123 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 7300) (rho 7301) (rho 7302) (rho 7303) (rho 7304) (rho 7305) (rho 7306)
      (by simpa [shiftOnce123] using hshift1On)
      (by linear_combination r7294)
      (by linear_combination r7295)
      (by linear_combination r7296)
      (by linear_combination r7297)
      (by linear_combination r7298)
    simpa [shiftOnce123, shifted123] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted123 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce123 rho) (shifted123 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce123 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 3) (rho 2)
      (base rho) (twice rho) (triple rho) (digit123 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 3) (rho 2)
        ⟨(6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) * ((1 : F)) + rho 4572, (2174545944513429084000285632212505083184015391631831920218451010714927555391 : F) * ((1 : F)) + rho 4573⟩ ⟨rho 4577, rho 4578⟩
        ⟨rho 4583, rho 4584⟩ ⟨rho 7308 + rho 7309, (1 : F) + rho 7311 + rho 7312⟩ := by
      constructor
      · refine ⟨(rho 7307 + (rho 4577) - (0)), rho 7308, ?_, ?_, ?_⟩
        · linear_combination r7299 - (rho 2) * order_cast_zero
        · linear_combination r7300
        · linear_combination r7301
      · refine ⟨(rho 7310 + (rho 4578) - ((1 : F))), rho 7311, ?_, ?_, ?_⟩
        · linear_combination r7302 - (rho 2) * order_cast_zero
        · linear_combination r7303
        · linear_combination r7304
    simpa [base, twice, triple, digit123] using hraw
  have hhigh : rho 3 =
      Bool.toZMod bits[2]! := by
    simpa only using rho_bit_of_map rho bits hbits 2 (by decide +kernel)
  have hlow : rho 2 =
      Bool.toZMod bits[1]! := by
    simpa only using rho_bit_of_map rho bits hbits 1 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[2]! bits[1]! (base rho) (twice rho) (triple rho)
    (digit123 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit123 rho) := by
    rw [hdigit]
    cases bits[2]! <;> cases bits[1]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted123 rho) (digit123 rho) (acc124 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 7305) (rho 7306) (rho 7308 + rho 7309) ((1 : F) + rho 7311 + rho 7312)
      (rho 7313) (rho 7314) (rho 7315) (rho 7316) (rho 7317) (rho 7318)
      (by simpa [shifted123] using hshift2On)
      (by simpa [digit123] using hdigitOn)
      (by linear_combination r7305)
      (by linear_combination r7306)
      (by linear_combination r7307)
      (by linear_combination r7308)
      (by linear_combination r7309)
      (by linear_combination r7310)
    simpa [shifted123, digit123, acc124] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc124 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted123 rho) (digit123 rho) (acc124 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted123 rho) (digit123 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 3) (rho 2)
      (base rho) (twice rho) (triple rho) (acc123 rho)
      (acc124 rho) :=
    ⟨shiftOnce123 rho, shifted123 rho, digit123 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.IssuerWindowSupport
