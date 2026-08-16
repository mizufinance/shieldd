import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window108 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc108 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[32]! (scalarBits rho)[31]!
        (base rho) (twice rho) (triple rho) (acc108 rho)
        (acc109 rho) ∧
      EdwardsBridge.onCurve (acc109 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4201, r4202, r4203, r4204, r4205, r4206, r4207, r4208, r4209, r4210, r4211, r4212, r4213, r4214, r4215, r4216, r4217, r4218, r4219, r4220, r4221, r4222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4201 at r4201
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4202 at r4202
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4203 at r4203
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4204 at r4204
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4205 at r4205
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4206 at r4206
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4207 at r4207
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4208 at r4208
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4209 at r4209
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4210 at r4210
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4211 at r4211
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4212 at r4212
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4213 at r4213
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4214 at r4214
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4215 at r4215
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4216 at r4216
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4217 at r4217
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4218 at r4218
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4219 at r4219
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4220 at r4220
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4221 at r4221
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4222 at r4222
  have hshift1 : EdwardsBridge.doubleSpec (acc108 rho) (shiftOnce108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4205) (rho 4206) (rho 4207) (rho 4208) (rho 4209) (rho 4210) (rho 4211)
      (by simpa [acc108] using hacc)
      (by linear_combination r4201)
      (by linear_combination r4202)
      (by linear_combination r4203)
      (by linear_combination r4204)
      (by linear_combination r4205)
    simpa [acc108, shiftOnce108] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc108 rho) (shiftOnce108 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc108 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce108 rho) (shifted108 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4210) (rho 4211) (rho 4212) (rho 4213) (rho 4214) (rho 4215) (rho 4216)
      (by simpa [shiftOnce108] using hshift1On)
      (by linear_combination r4206)
      (by linear_combination r4207)
      (by linear_combination r4208)
      (by linear_combination r4209)
      (by linear_combination r4210)
    simpa [shiftOnce108, shifted108] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted108 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce108 rho) (shifted108 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce108 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 33) (rho 32)
      (base rho) (twice rho) (triple rho) (digit108 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 33) (rho 32)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4218 + rho 4219, (1 : F) + rho 4221 + rho 4222⟩ := by
      constructor
      · refine ⟨(rho 4217 + (rho 1817) - (0)), rho 4218, ?_, ?_, ?_⟩
        · linear_combination r4211
        · linear_combination r4212
        · linear_combination r4213
      · refine ⟨(rho 4220 + (rho 1818) - ((1 : F))), rho 4221, ?_, ?_, ?_⟩
        · linear_combination r4214
        · linear_combination r4215
        · linear_combination r4216
    simpa [base, twice, triple, digit108] using hraw
  have hhigh : rho 33 =
      Bool.toZMod bits[32]! := by
    simpa only using rho_bit_of_map rho bits hbits 32 (by decide +kernel)
  have hlow : rho 32 =
      Bool.toZMod bits[31]! := by
    simpa only using rho_bit_of_map rho bits hbits 31 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[32]! bits[31]! (base rho) (twice rho) (triple rho)
    (digit108 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit108 rho) := by
    rw [hdigit]
    cases bits[32]! <;> cases bits[31]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted108 rho) (digit108 rho) (acc109 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4215) (rho 4216) (rho 4218 + rho 4219) ((1 : F) + rho 4221 + rho 4222)
      (rho 4223) (rho 4224) (rho 4225) (rho 4226) (rho 4227) (rho 4228)
      (by simpa [shifted108] using hshift2On)
      (by simpa [digit108] using hdigitOn)
      (by linear_combination r4217)
      (by linear_combination r4218)
      (by linear_combination r4219)
      (by linear_combination r4220)
      (by linear_combination r4221)
      (by linear_combination r4222)
    simpa [shifted108, digit108, acc109] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc109 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted108 rho) (digit108 rho) (acc109 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted108 rho) (digit108 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 33) (rho 32)
      (base rho) (twice rho) (triple rho) (acc108 rho)
      (acc109 rho) :=
    ⟨shiftOnce108 rho, shifted108 rho, digit108 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window109 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc109 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[30]! (scalarBits rho)[29]!
        (base rho) (twice rho) (triple rho) (acc109 rho)
        (acc110 rho) ∧
      EdwardsBridge.onCurve (acc110 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p52, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart52 at p52
  rcases p52 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4223, r4224, r4225, r4226, r4227, r4228, r4229, r4230, r4231, r4232, r4233, r4234, r4235, r4236, r4237, r4238, r4239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart53 at p53
  rcases p53 with ⟨r4240, r4241, r4242, r4243, r4244, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4223 at r4223
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4224 at r4224
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4225 at r4225
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4226 at r4226
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4227 at r4227
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4228 at r4228
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4229 at r4229
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4230 at r4230
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4231 at r4231
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4232 at r4232
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4233 at r4233
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4234 at r4234
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4235 at r4235
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4236 at r4236
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4237 at r4237
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4238 at r4238
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4239 at r4239
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4240 at r4240
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4241 at r4241
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4242 at r4242
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4243 at r4243
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4244 at r4244
  have hshift1 : EdwardsBridge.doubleSpec (acc109 rho) (shiftOnce109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4227) (rho 4228) (rho 4229) (rho 4230) (rho 4231) (rho 4232) (rho 4233)
      (by simpa [acc109] using hacc)
      (by linear_combination r4223)
      (by linear_combination r4224)
      (by linear_combination r4225)
      (by linear_combination r4226)
      (by linear_combination r4227)
    simpa [acc109, shiftOnce109] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc109 rho) (shiftOnce109 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc109 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce109 rho) (shifted109 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4232) (rho 4233) (rho 4234) (rho 4235) (rho 4236) (rho 4237) (rho 4238)
      (by simpa [shiftOnce109] using hshift1On)
      (by linear_combination r4228)
      (by linear_combination r4229)
      (by linear_combination r4230)
      (by linear_combination r4231)
      (by linear_combination r4232)
    simpa [shiftOnce109, shifted109] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted109 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce109 rho) (shifted109 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce109 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 31) (rho 30)
      (base rho) (twice rho) (triple rho) (digit109 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 31) (rho 30)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4240 + rho 4241, (1 : F) + rho 4243 + rho 4244⟩ := by
      constructor
      · refine ⟨(rho 4239 + (rho 1817) - (0)), rho 4240, ?_, ?_, ?_⟩
        · linear_combination r4233
        · linear_combination r4234
        · linear_combination r4235
      · refine ⟨(rho 4242 + (rho 1818) - ((1 : F))), rho 4243, ?_, ?_, ?_⟩
        · linear_combination r4236
        · linear_combination r4237
        · linear_combination r4238
    simpa [base, twice, triple, digit109] using hraw
  have hhigh : rho 31 =
      Bool.toZMod bits[30]! := by
    simpa only using rho_bit_of_map rho bits hbits 30 (by decide +kernel)
  have hlow : rho 30 =
      Bool.toZMod bits[29]! := by
    simpa only using rho_bit_of_map rho bits hbits 29 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[30]! bits[29]! (base rho) (twice rho) (triple rho)
    (digit109 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit109 rho) := by
    rw [hdigit]
    cases bits[30]! <;> cases bits[29]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted109 rho) (digit109 rho) (acc110 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4237) (rho 4238) (rho 4240 + rho 4241) ((1 : F) + rho 4243 + rho 4244)
      (rho 4245) (rho 4246) (rho 4247) (rho 4248) (rho 4249) (rho 4250)
      (by simpa [shifted109] using hshift2On)
      (by simpa [digit109] using hdigitOn)
      (by linear_combination r4239)
      (by linear_combination r4240)
      (by linear_combination r4241)
      (by linear_combination r4242)
      (by linear_combination r4243)
      (by linear_combination r4244)
    simpa [shifted109, digit109, acc110] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc110 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted109 rho) (digit109 rho) (acc110 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted109 rho) (digit109 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 31) (rho 30)
      (base rho) (twice rho) (triple rho) (acc109 rho)
      (acc110 rho) :=
    ⟨shiftOnce109 rho, shifted109 rho, digit109 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window110 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc110 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[28]! (scalarBits rho)[27]!
        (base rho) (twice rho) (triple rho) (acc110 rho)
        (acc111 rho) ∧
      EdwardsBridge.onCurve (acc111 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, r4245, r4246, r4247, r4248, r4249, r4250, r4251, r4252, r4253, r4254, r4255, r4256, r4257, r4258, r4259, r4260, r4261, r4262, r4263, r4264, r4265, r4266, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4245 at r4245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4246 at r4246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4247 at r4247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4248 at r4248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4249 at r4249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4250 at r4250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4251 at r4251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4252 at r4252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4253 at r4253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4254 at r4254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4255 at r4255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4256 at r4256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4257 at r4257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4258 at r4258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4259 at r4259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4260 at r4260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4261 at r4261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4262 at r4262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4263 at r4263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4264 at r4264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4265 at r4265
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4266 at r4266
  have hshift1 : EdwardsBridge.doubleSpec (acc110 rho) (shiftOnce110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4249) (rho 4250) (rho 4251) (rho 4252) (rho 4253) (rho 4254) (rho 4255)
      (by simpa [acc110] using hacc)
      (by linear_combination r4245)
      (by linear_combination r4246)
      (by linear_combination r4247)
      (by linear_combination r4248)
      (by linear_combination r4249)
    simpa [acc110, shiftOnce110] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc110 rho) (shiftOnce110 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc110 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce110 rho) (shifted110 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4254) (rho 4255) (rho 4256) (rho 4257) (rho 4258) (rho 4259) (rho 4260)
      (by simpa [shiftOnce110] using hshift1On)
      (by linear_combination r4250)
      (by linear_combination r4251)
      (by linear_combination r4252)
      (by linear_combination r4253)
      (by linear_combination r4254)
    simpa [shiftOnce110, shifted110] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted110 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce110 rho) (shifted110 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce110 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 29) (rho 28)
      (base rho) (twice rho) (triple rho) (digit110 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 29) (rho 28)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4262 + rho 4263, (1 : F) + rho 4265 + rho 4266⟩ := by
      constructor
      · refine ⟨(rho 4261 + (rho 1817) - (0)), rho 4262, ?_, ?_, ?_⟩
        · linear_combination r4255
        · linear_combination r4256
        · linear_combination r4257
      · refine ⟨(rho 4264 + (rho 1818) - ((1 : F))), rho 4265, ?_, ?_, ?_⟩
        · linear_combination r4258
        · linear_combination r4259
        · linear_combination r4260
    simpa [base, twice, triple, digit110] using hraw
  have hhigh : rho 29 =
      Bool.toZMod bits[28]! := by
    simpa only using rho_bit_of_map rho bits hbits 28 (by decide +kernel)
  have hlow : rho 28 =
      Bool.toZMod bits[27]! := by
    simpa only using rho_bit_of_map rho bits hbits 27 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[28]! bits[27]! (base rho) (twice rho) (triple rho)
    (digit110 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit110 rho) := by
    rw [hdigit]
    cases bits[28]! <;> cases bits[27]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted110 rho) (digit110 rho) (acc111 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4259) (rho 4260) (rho 4262 + rho 4263) ((1 : F) + rho 4265 + rho 4266)
      (rho 4267) (rho 4268) (rho 4269) (rho 4270) (rho 4271) (rho 4272)
      (by simpa [shifted110] using hshift2On)
      (by simpa [digit110] using hdigitOn)
      (by linear_combination r4261)
      (by linear_combination r4262)
      (by linear_combination r4263)
      (by linear_combination r4264)
      (by linear_combination r4265)
      (by linear_combination r4266)
    simpa [shifted110, digit110, acc111] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc111 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted110 rho) (digit110 rho) (acc111 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted110 rho) (digit110 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 29) (rho 28)
      (base rho) (twice rho) (triple rho) (acc110 rho)
      (acc111 rho) :=
    ⟨shiftOnce110 rho, shifted110 rho, digit110 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window111 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc111 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[26]! (scalarBits rho)[25]!
        (base rho) (twice rho) (triple rho) (acc111 rho)
        (acc112 rho) ∧
      EdwardsBridge.onCurve (acc112 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4267, r4268, r4269, r4270, r4271, r4272, r4273, r4274, r4275, r4276, r4277, r4278, r4279, r4280, r4281, r4282, r4283, r4284, r4285, r4286, r4287, r4288, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4267 at r4267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4268 at r4268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4269 at r4269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4270 at r4270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4271 at r4271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4272 at r4272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4273 at r4273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4274 at r4274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4275 at r4275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4276 at r4276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4277 at r4277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4278 at r4278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4279 at r4279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4280 at r4280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4281 at r4281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4282 at r4282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4283 at r4283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4284 at r4284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4285 at r4285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4286 at r4286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4287 at r4287
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4288 at r4288
  have hshift1 : EdwardsBridge.doubleSpec (acc111 rho) (shiftOnce111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4271) (rho 4272) (rho 4273) (rho 4274) (rho 4275) (rho 4276) (rho 4277)
      (by simpa [acc111] using hacc)
      (by linear_combination r4267)
      (by linear_combination r4268)
      (by linear_combination r4269)
      (by linear_combination r4270)
      (by linear_combination r4271)
    simpa [acc111, shiftOnce111] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc111 rho) (shiftOnce111 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc111 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce111 rho) (shifted111 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4276) (rho 4277) (rho 4278) (rho 4279) (rho 4280) (rho 4281) (rho 4282)
      (by simpa [shiftOnce111] using hshift1On)
      (by linear_combination r4272)
      (by linear_combination r4273)
      (by linear_combination r4274)
      (by linear_combination r4275)
      (by linear_combination r4276)
    simpa [shiftOnce111, shifted111] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted111 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce111 rho) (shifted111 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce111 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 27) (rho 26)
      (base rho) (twice rho) (triple rho) (digit111 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 27) (rho 26)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4284 + rho 4285, (1 : F) + rho 4287 + rho 4288⟩ := by
      constructor
      · refine ⟨(rho 4283 + (rho 1817) - (0)), rho 4284, ?_, ?_, ?_⟩
        · linear_combination r4277
        · linear_combination r4278
        · linear_combination r4279
      · refine ⟨(rho 4286 + (rho 1818) - ((1 : F))), rho 4287, ?_, ?_, ?_⟩
        · linear_combination r4280
        · linear_combination r4281
        · linear_combination r4282
    simpa [base, twice, triple, digit111] using hraw
  have hhigh : rho 27 =
      Bool.toZMod bits[26]! := by
    simpa only using rho_bit_of_map rho bits hbits 26 (by decide +kernel)
  have hlow : rho 26 =
      Bool.toZMod bits[25]! := by
    simpa only using rho_bit_of_map rho bits hbits 25 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[26]! bits[25]! (base rho) (twice rho) (triple rho)
    (digit111 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit111 rho) := by
    rw [hdigit]
    cases bits[26]! <;> cases bits[25]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted111 rho) (digit111 rho) (acc112 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4281) (rho 4282) (rho 4284 + rho 4285) ((1 : F) + rho 4287 + rho 4288)
      (rho 4289) (rho 4290) (rho 4291) (rho 4292) (rho 4293) (rho 4294)
      (by simpa [shifted111] using hshift2On)
      (by simpa [digit111] using hdigitOn)
      (by linear_combination r4283)
      (by linear_combination r4284)
      (by linear_combination r4285)
      (by linear_combination r4286)
      (by linear_combination r4287)
      (by linear_combination r4288)
    simpa [shifted111, digit111, acc112] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc112 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted111 rho) (digit111 rho) (acc112 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted111 rho) (digit111 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 27) (rho 26)
      (base rho) (twice rho) (triple rho) (acc111 rho)
      (acc112 rho) :=
    ⟨shiftOnce111 rho, shifted111 rho, digit111 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window112 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc112 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[24]! (scalarBits rho)[23]!
        (base rho) (twice rho) (triple rho) (acc112 rho)
        (acc113 rho) ∧
      EdwardsBridge.onCurve (acc113 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4289, r4290, r4291, r4292, r4293, r4294, r4295, r4296, r4297, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4289 at r4289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4290 at r4290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4291 at r4291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4292 at r4292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4293 at r4293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4294 at r4294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4295 at r4295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4296 at r4296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4297 at r4297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4298 at r4298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4299 at r4299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4300 at r4300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4301 at r4301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4302 at r4302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4303 at r4303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4304 at r4304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4305 at r4305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4306 at r4306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4307 at r4307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4308 at r4308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4309 at r4309
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4310 at r4310
  have hshift1 : EdwardsBridge.doubleSpec (acc112 rho) (shiftOnce112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4293) (rho 4294) (rho 4295) (rho 4296) (rho 4297) (rho 4298) (rho 4299)
      (by simpa [acc112] using hacc)
      (by linear_combination r4289)
      (by linear_combination r4290)
      (by linear_combination r4291)
      (by linear_combination r4292)
      (by linear_combination r4293)
    simpa [acc112, shiftOnce112] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc112 rho) (shiftOnce112 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc112 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce112 rho) (shifted112 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4298) (rho 4299) (rho 4300) (rho 4301) (rho 4302) (rho 4303) (rho 4304)
      (by simpa [shiftOnce112] using hshift1On)
      (by linear_combination r4294)
      (by linear_combination r4295)
      (by linear_combination r4296)
      (by linear_combination r4297)
      (by linear_combination r4298)
    simpa [shiftOnce112, shifted112] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted112 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce112 rho) (shifted112 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce112 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 25) (rho 24)
      (base rho) (twice rho) (triple rho) (digit112 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 25) (rho 24)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4306 + rho 4307, (1 : F) + rho 4309 + rho 4310⟩ := by
      constructor
      · refine ⟨(rho 4305 + (rho 1817) - (0)), rho 4306, ?_, ?_, ?_⟩
        · linear_combination r4299
        · linear_combination r4300
        · linear_combination r4301
      · refine ⟨(rho 4308 + (rho 1818) - ((1 : F))), rho 4309, ?_, ?_, ?_⟩
        · linear_combination r4302
        · linear_combination r4303
        · linear_combination r4304
    simpa [base, twice, triple, digit112] using hraw
  have hhigh : rho 25 =
      Bool.toZMod bits[24]! := by
    simpa only using rho_bit_of_map rho bits hbits 24 (by decide +kernel)
  have hlow : rho 24 =
      Bool.toZMod bits[23]! := by
    simpa only using rho_bit_of_map rho bits hbits 23 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[24]! bits[23]! (base rho) (twice rho) (triple rho)
    (digit112 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit112 rho) := by
    rw [hdigit]
    cases bits[24]! <;> cases bits[23]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted112 rho) (digit112 rho) (acc113 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4303) (rho 4304) (rho 4306 + rho 4307) ((1 : F) + rho 4309 + rho 4310)
      (rho 4311) (rho 4312) (rho 4313) (rho 4314) (rho 4315) (rho 4316)
      (by simpa [shifted112] using hshift2On)
      (by simpa [digit112] using hdigitOn)
      (by linear_combination r4305)
      (by linear_combination r4306)
      (by linear_combination r4307)
      (by linear_combination r4308)
      (by linear_combination r4309)
      (by linear_combination r4310)
    simpa [shifted112, digit112, acc113] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc113 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted112 rho) (digit112 rho) (acc113 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted112 rho) (digit112 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 25) (rho 24)
      (base rho) (twice rho) (triple rho) (acc112 rho)
      (acc113 rho) :=
    ⟨shiftOnce112 rho, shifted112 rho, digit112 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window113 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc113 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[22]! (scalarBits rho)[21]!
        (base rho) (twice rho) (triple rho) (acc113 rho)
        (acc114 rho) ∧
      EdwardsBridge.onCurve (acc114 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4311 at r4311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4312 at r4312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4313 at r4313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4314 at r4314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4315 at r4315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4316 at r4316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4317 at r4317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4318 at r4318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4319 at r4319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4320 at r4320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4321 at r4321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4322 at r4322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4323 at r4323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4324 at r4324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4325 at r4325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4326 at r4326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4327 at r4327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4328 at r4328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4329 at r4329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4330 at r4330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4331 at r4331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4332 at r4332
  have hshift1 : EdwardsBridge.doubleSpec (acc113 rho) (shiftOnce113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4315) (rho 4316) (rho 4317) (rho 4318) (rho 4319) (rho 4320) (rho 4321)
      (by simpa [acc113] using hacc)
      (by linear_combination r4311)
      (by linear_combination r4312)
      (by linear_combination r4313)
      (by linear_combination r4314)
      (by linear_combination r4315)
    simpa [acc113, shiftOnce113] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc113 rho) (shiftOnce113 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc113 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce113 rho) (shifted113 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4320) (rho 4321) (rho 4322) (rho 4323) (rho 4324) (rho 4325) (rho 4326)
      (by simpa [shiftOnce113] using hshift1On)
      (by linear_combination r4316)
      (by linear_combination r4317)
      (by linear_combination r4318)
      (by linear_combination r4319)
      (by linear_combination r4320)
    simpa [shiftOnce113, shifted113] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted113 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce113 rho) (shifted113 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce113 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 23) (rho 22)
      (base rho) (twice rho) (triple rho) (digit113 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 23) (rho 22)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4328 + rho 4329, (1 : F) + rho 4331 + rho 4332⟩ := by
      constructor
      · refine ⟨(rho 4327 + (rho 1817) - (0)), rho 4328, ?_, ?_, ?_⟩
        · linear_combination r4321
        · linear_combination r4322
        · linear_combination r4323
      · refine ⟨(rho 4330 + (rho 1818) - ((1 : F))), rho 4331, ?_, ?_, ?_⟩
        · linear_combination r4324
        · linear_combination r4325
        · linear_combination r4326
    simpa [base, twice, triple, digit113] using hraw
  have hhigh : rho 23 =
      Bool.toZMod bits[22]! := by
    simpa only using rho_bit_of_map rho bits hbits 22 (by decide +kernel)
  have hlow : rho 22 =
      Bool.toZMod bits[21]! := by
    simpa only using rho_bit_of_map rho bits hbits 21 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[22]! bits[21]! (base rho) (twice rho) (triple rho)
    (digit113 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit113 rho) := by
    rw [hdigit]
    cases bits[22]! <;> cases bits[21]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted113 rho) (digit113 rho) (acc114 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4325) (rho 4326) (rho 4328 + rho 4329) ((1 : F) + rho 4331 + rho 4332)
      (rho 4333) (rho 4334) (rho 4335) (rho 4336) (rho 4337) (rho 4338)
      (by simpa [shifted113] using hshift2On)
      (by simpa [digit113] using hdigitOn)
      (by linear_combination r4327)
      (by linear_combination r4328)
      (by linear_combination r4329)
      (by linear_combination r4330)
      (by linear_combination r4331)
      (by linear_combination r4332)
    simpa [shifted113, digit113, acc114] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc114 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted113 rho) (digit113 rho) (acc114 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted113 rho) (digit113 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 23) (rho 22)
      (base rho) (twice rho) (triple rho) (acc113 rho)
      (acc114 rho) :=
    ⟨shiftOnce113 rho, shifted113 rho, digit113 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
