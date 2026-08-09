import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window114 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc114 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[20]! (scalarBits rho)[19]!
        (base rho) (twice rho) (triple rho) (acc114 rho)
        (acc115 rho) ∧
      EdwardsBridge.onCurve (acc115 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5244, r5245, r5246, r5247, r5248, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, r5262, r5263, r5264, r5265, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5244 at r5244
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5245 at r5245
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5246 at r5246
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5247 at r5247
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5248 at r5248
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5249 at r5249
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5250 at r5250
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5251 at r5251
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5252 at r5252
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5253 at r5253
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5254 at r5254
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5255 at r5255
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5256 at r5256
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5257 at r5257
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5258 at r5258
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5259 at r5259
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5260 at r5260
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5261 at r5261
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5262 at r5262
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5263 at r5263
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5264 at r5264
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5265 at r5265
  have hshift1 : EdwardsBridge.doubleSpec (acc114 rho) (shiftOnce114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4736) (rho 4737) (rho 4738) (rho 4739) (rho 4740) (rho 4741) (rho 4742)
      (by simpa [acc114] using hacc)
      (by linear_combination r5244)
      (by linear_combination r5245)
      (by linear_combination r5246)
      (by linear_combination r5247)
      (by linear_combination r5248)
    simpa [acc114, shiftOnce114] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc114 rho) (shiftOnce114 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc114 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce114 rho) (shifted114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4741) (rho 4742) (rho 4743) (rho 4744) (rho 4745) (rho 4746) (rho 4747)
      (by simpa [shiftOnce114] using hshift1On)
      (by linear_combination r5249)
      (by linear_combination r5250)
      (by linear_combination r5251)
      (by linear_combination r5252)
      (by linear_combination r5253)
    simpa [shiftOnce114, shifted114] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce114 rho) (shifted114 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce114 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1003) (rho 1002)
      (base rho) (twice rho) (triple rho) (digit114 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1003) (rho 1002)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4749 + rho 4750, (1 : F) + rho 4752 + rho 4753⟩ := by
      constructor
      · refine ⟨(rho 4748 + (rho 2216) - (0)), rho 4749, ?_, ?_, ?_⟩
        · linear_combination r5254
        · linear_combination r5255
        · linear_combination r5256
      · refine ⟨(rho 4751 + (rho 2217) - ((1 : F))), rho 4752, ?_, ?_, ?_⟩
        · linear_combination r5257
        · linear_combination r5258
        · linear_combination r5259
    simpa [base, twice, triple, digit114] using hraw
  have hhigh : rho 1003 =
      Bool.toZMod bits[20]! := by
    simpa only using rho_bit_of_map rho bits hbits 20 (by decide +kernel)
  have hlow : rho 1002 =
      Bool.toZMod bits[19]! := by
    simpa only using rho_bit_of_map rho bits hbits 19 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[20]! bits[19]! (base rho) (twice rho) (triple rho)
    (digit114 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit114 rho) := by
    rw [hdigit]
    cases bits[20]! <;> cases bits[19]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted114 rho) (digit114 rho) (acc115 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4746) (rho 4747) (rho 4749 + rho 4750) ((1 : F) + rho 4752 + rho 4753)
      (rho 4754) (rho 4755) (rho 4756) (rho 4757) (rho 4758) (rho 4759)
      (by simpa [shifted114] using hshift2On)
      (by simpa [digit114] using hdigitOn)
      (by linear_combination r5260)
      (by linear_combination r5261)
      (by linear_combination r5262)
      (by linear_combination r5263)
      (by linear_combination r5264)
      (by linear_combination r5265)
    simpa [shifted114, digit114, acc115] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc115 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted114 rho) (digit114 rho) (acc115 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted114 rho) (digit114 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1003) (rho 1002)
      (base rho) (twice rho) (triple rho) (acc114 rho)
      (acc115 rho) :=
    ⟨shiftOnce114 rho, shifted114 rho, digit114 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window115 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc115 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[18]! (scalarBits rho)[17]!
        (base rho) (twice rho) (triple rho) (acc115 rho)
        (acc116 rho) ∧
      EdwardsBridge.onCurve (acc116 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p65, p66, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart65 at p65
  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5266, r5267, r5268, r5269, r5270, r5271, r5272, r5273, r5274, r5275, r5276, r5277, r5278, r5279⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart66 at p66
  rcases p66 with ⟨r5280, r5281, r5282, r5283, r5284, r5285, r5286, r5287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5266 at r5266
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5267 at r5267
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5268 at r5268
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5269 at r5269
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5270 at r5270
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5271 at r5271
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5272 at r5272
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5273 at r5273
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5274 at r5274
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5275 at r5275
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5276 at r5276
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5277 at r5277
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5278 at r5278
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5279 at r5279
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5280 at r5280
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5281 at r5281
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5282 at r5282
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5283 at r5283
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5284 at r5284
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5285 at r5285
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5286 at r5286
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5287 at r5287
  have hshift1 : EdwardsBridge.doubleSpec (acc115 rho) (shiftOnce115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4758) (rho 4759) (rho 4760) (rho 4761) (rho 4762) (rho 4763) (rho 4764)
      (by simpa [acc115] using hacc)
      (by linear_combination r5266)
      (by linear_combination r5267)
      (by linear_combination r5268)
      (by linear_combination r5269)
      (by linear_combination r5270)
    simpa [acc115, shiftOnce115] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc115 rho) (shiftOnce115 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc115 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce115 rho) (shifted115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4763) (rho 4764) (rho 4765) (rho 4766) (rho 4767) (rho 4768) (rho 4769)
      (by simpa [shiftOnce115] using hshift1On)
      (by linear_combination r5271)
      (by linear_combination r5272)
      (by linear_combination r5273)
      (by linear_combination r5274)
      (by linear_combination r5275)
    simpa [shiftOnce115, shifted115] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce115 rho) (shifted115 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce115 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1001) (rho 1000)
      (base rho) (twice rho) (triple rho) (digit115 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1001) (rho 1000)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4771 + rho 4772, (1 : F) + rho 4774 + rho 4775⟩ := by
      constructor
      · refine ⟨(rho 4770 + (rho 2216) - (0)), rho 4771, ?_, ?_, ?_⟩
        · linear_combination r5276
        · linear_combination r5277
        · linear_combination r5278
      · refine ⟨(rho 4773 + (rho 2217) - ((1 : F))), rho 4774, ?_, ?_, ?_⟩
        · linear_combination r5279
        · linear_combination r5280
        · linear_combination r5281
    simpa [base, twice, triple, digit115] using hraw
  have hhigh : rho 1001 =
      Bool.toZMod bits[18]! := by
    simpa only using rho_bit_of_map rho bits hbits 18 (by decide +kernel)
  have hlow : rho 1000 =
      Bool.toZMod bits[17]! := by
    simpa only using rho_bit_of_map rho bits hbits 17 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[18]! bits[17]! (base rho) (twice rho) (triple rho)
    (digit115 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit115 rho) := by
    rw [hdigit]
    cases bits[18]! <;> cases bits[17]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted115 rho) (digit115 rho) (acc116 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4768) (rho 4769) (rho 4771 + rho 4772) ((1 : F) + rho 4774 + rho 4775)
      (rho 4776) (rho 4777) (rho 4778) (rho 4779) (rho 4780) (rho 4781)
      (by simpa [shifted115] using hshift2On)
      (by simpa [digit115] using hdigitOn)
      (by linear_combination r5282)
      (by linear_combination r5283)
      (by linear_combination r5284)
      (by linear_combination r5285)
      (by linear_combination r5286)
      (by linear_combination r5287)
    simpa [shifted115, digit115, acc116] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc116 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted115 rho) (digit115 rho) (acc116 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted115 rho) (digit115 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1001) (rho 1000)
      (base rho) (twice rho) (triple rho) (acc115 rho)
      (acc116 rho) :=
    ⟨shiftOnce115 rho, shifted115 rho, digit115 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window116 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc116 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[16]! (scalarBits rho)[15]!
        (base rho) (twice rho) (triple rho) (acc116 rho)
        (acc117 rho) ∧
      EdwardsBridge.onCurve (acc117 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, r5288, r5289, r5290, r5291, r5292, r5293, r5294, r5295, r5296, r5297, r5298, r5299, r5300, r5301, r5302, r5303, r5304, r5305, r5306, r5307, r5308, r5309, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5288 at r5288
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5289 at r5289
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5290 at r5290
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5291 at r5291
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5292 at r5292
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5293 at r5293
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5294 at r5294
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5295 at r5295
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5296 at r5296
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5297 at r5297
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5298 at r5298
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5299 at r5299
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5300 at r5300
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5301 at r5301
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5302 at r5302
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5303 at r5303
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5304 at r5304
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5305 at r5305
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5306 at r5306
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5307 at r5307
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5308 at r5308
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5309 at r5309
  have hshift1 : EdwardsBridge.doubleSpec (acc116 rho) (shiftOnce116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4780) (rho 4781) (rho 4782) (rho 4783) (rho 4784) (rho 4785) (rho 4786)
      (by simpa [acc116] using hacc)
      (by linear_combination r5288)
      (by linear_combination r5289)
      (by linear_combination r5290)
      (by linear_combination r5291)
      (by linear_combination r5292)
    simpa [acc116, shiftOnce116] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc116 rho) (shiftOnce116 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc116 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce116 rho) (shifted116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4785) (rho 4786) (rho 4787) (rho 4788) (rho 4789) (rho 4790) (rho 4791)
      (by simpa [shiftOnce116] using hshift1On)
      (by linear_combination r5293)
      (by linear_combination r5294)
      (by linear_combination r5295)
      (by linear_combination r5296)
      (by linear_combination r5297)
    simpa [shiftOnce116, shifted116] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce116 rho) (shifted116 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce116 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 999) (rho 998)
      (base rho) (twice rho) (triple rho) (digit116 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 999) (rho 998)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4793 + rho 4794, (1 : F) + rho 4796 + rho 4797⟩ := by
      constructor
      · refine ⟨(rho 4792 + (rho 2216) - (0)), rho 4793, ?_, ?_, ?_⟩
        · linear_combination r5298
        · linear_combination r5299
        · linear_combination r5300
      · refine ⟨(rho 4795 + (rho 2217) - ((1 : F))), rho 4796, ?_, ?_, ?_⟩
        · linear_combination r5301
        · linear_combination r5302
        · linear_combination r5303
    simpa [base, twice, triple, digit116] using hraw
  have hhigh : rho 999 =
      Bool.toZMod bits[16]! := by
    simpa only using rho_bit_of_map rho bits hbits 16 (by decide +kernel)
  have hlow : rho 998 =
      Bool.toZMod bits[15]! := by
    simpa only using rho_bit_of_map rho bits hbits 15 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[16]! bits[15]! (base rho) (twice rho) (triple rho)
    (digit116 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit116 rho) := by
    rw [hdigit]
    cases bits[16]! <;> cases bits[15]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted116 rho) (digit116 rho) (acc117 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4790) (rho 4791) (rho 4793 + rho 4794) ((1 : F) + rho 4796 + rho 4797)
      (rho 4798) (rho 4799) (rho 4800) (rho 4801) (rho 4802) (rho 4803)
      (by simpa [shifted116] using hshift2On)
      (by simpa [digit116] using hdigitOn)
      (by linear_combination r5304)
      (by linear_combination r5305)
      (by linear_combination r5306)
      (by linear_combination r5307)
      (by linear_combination r5308)
      (by linear_combination r5309)
    simpa [shifted116, digit116, acc117] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc117 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted116 rho) (digit116 rho) (acc117 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted116 rho) (digit116 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 999) (rho 998)
      (base rho) (twice rho) (triple rho) (acc116 rho)
      (acc117 rho) :=
    ⟨shiftOnce116 rho, shifted116 rho, digit116 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window117 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc117 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[14]! (scalarBits rho)[13]!
        (base rho) (twice rho) (triple rho) (acc117 rho)
        (acc118 rho) ∧
      EdwardsBridge.onCurve (acc118 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5310, r5311, r5312, r5313, r5314, r5315, r5316, r5317, r5318, r5319, r5320, r5321, r5322, r5323, r5324, r5325, r5326, r5327, r5328, r5329, r5330, r5331, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5310 at r5310
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5311 at r5311
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5312 at r5312
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5313 at r5313
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5314 at r5314
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5315 at r5315
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5316 at r5316
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5317 at r5317
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5318 at r5318
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5319 at r5319
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5320 at r5320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5321 at r5321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5322 at r5322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5323 at r5323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5324 at r5324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5325 at r5325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5326 at r5326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5327 at r5327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5328 at r5328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5329 at r5329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5330 at r5330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5331 at r5331
  have hshift1 : EdwardsBridge.doubleSpec (acc117 rho) (shiftOnce117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4802) (rho 4803) (rho 4804) (rho 4805) (rho 4806) (rho 4807) (rho 4808)
      (by simpa [acc117] using hacc)
      (by linear_combination r5310)
      (by linear_combination r5311)
      (by linear_combination r5312)
      (by linear_combination r5313)
      (by linear_combination r5314)
    simpa [acc117, shiftOnce117] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc117 rho) (shiftOnce117 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc117 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce117 rho) (shifted117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4807) (rho 4808) (rho 4809) (rho 4810) (rho 4811) (rho 4812) (rho 4813)
      (by simpa [shiftOnce117] using hshift1On)
      (by linear_combination r5315)
      (by linear_combination r5316)
      (by linear_combination r5317)
      (by linear_combination r5318)
      (by linear_combination r5319)
    simpa [shiftOnce117, shifted117] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce117 rho) (shifted117 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce117 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 997) (rho 996)
      (base rho) (twice rho) (triple rho) (digit117 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 997) (rho 996)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4815 + rho 4816, (1 : F) + rho 4818 + rho 4819⟩ := by
      constructor
      · refine ⟨(rho 4814 + (rho 2216) - (0)), rho 4815, ?_, ?_, ?_⟩
        · linear_combination r5320
        · linear_combination r5321
        · linear_combination r5322
      · refine ⟨(rho 4817 + (rho 2217) - ((1 : F))), rho 4818, ?_, ?_, ?_⟩
        · linear_combination r5323
        · linear_combination r5324
        · linear_combination r5325
    simpa [base, twice, triple, digit117] using hraw
  have hhigh : rho 997 =
      Bool.toZMod bits[14]! := by
    simpa only using rho_bit_of_map rho bits hbits 14 (by decide +kernel)
  have hlow : rho 996 =
      Bool.toZMod bits[13]! := by
    simpa only using rho_bit_of_map rho bits hbits 13 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[14]! bits[13]! (base rho) (twice rho) (triple rho)
    (digit117 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit117 rho) := by
    rw [hdigit]
    cases bits[14]! <;> cases bits[13]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted117 rho) (digit117 rho) (acc118 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4812) (rho 4813) (rho 4815 + rho 4816) ((1 : F) + rho 4818 + rho 4819)
      (rho 4820) (rho 4821) (rho 4822) (rho 4823) (rho 4824) (rho 4825)
      (by simpa [shifted117] using hshift2On)
      (by simpa [digit117] using hdigitOn)
      (by linear_combination r5326)
      (by linear_combination r5327)
      (by linear_combination r5328)
      (by linear_combination r5329)
      (by linear_combination r5330)
      (by linear_combination r5331)
    simpa [shifted117, digit117, acc118] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc118 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted117 rho) (digit117 rho) (acc118 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted117 rho) (digit117 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 997) (rho 996)
      (base rho) (twice rho) (triple rho) (acc117 rho)
      (acc118 rho) :=
    ⟨shiftOnce117 rho, shifted117 rho, digit117 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window118 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc118 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[12]! (scalarBits rho)[11]!
        (base rho) (twice rho) (triple rho) (acc118 rho)
        (acc119 rho) ∧
      EdwardsBridge.onCurve (acc119 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5332, r5333, r5334, r5335, r5336, r5337, r5338, r5339, r5340, r5341, r5342, r5343, r5344, r5345, r5346, r5347, r5348, r5349, r5350, r5351, r5352, r5353, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5332 at r5332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5333 at r5333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5334 at r5334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5335 at r5335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5336 at r5336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5337 at r5337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5338 at r5338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5339 at r5339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5340 at r5340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5341 at r5341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5342 at r5342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5343 at r5343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5344 at r5344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5345 at r5345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5346 at r5346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5347 at r5347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5348 at r5348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5349 at r5349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5350 at r5350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5351 at r5351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5352 at r5352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5353 at r5353
  have hshift1 : EdwardsBridge.doubleSpec (acc118 rho) (shiftOnce118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4824) (rho 4825) (rho 4826) (rho 4827) (rho 4828) (rho 4829) (rho 4830)
      (by simpa [acc118] using hacc)
      (by linear_combination r5332)
      (by linear_combination r5333)
      (by linear_combination r5334)
      (by linear_combination r5335)
      (by linear_combination r5336)
    simpa [acc118, shiftOnce118] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc118 rho) (shiftOnce118 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc118 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce118 rho) (shifted118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4829) (rho 4830) (rho 4831) (rho 4832) (rho 4833) (rho 4834) (rho 4835)
      (by simpa [shiftOnce118] using hshift1On)
      (by linear_combination r5337)
      (by linear_combination r5338)
      (by linear_combination r5339)
      (by linear_combination r5340)
      (by linear_combination r5341)
    simpa [shiftOnce118, shifted118] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce118 rho) (shifted118 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce118 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 995) (rho 994)
      (base rho) (twice rho) (triple rho) (digit118 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 995) (rho 994)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4837 + rho 4838, (1 : F) + rho 4840 + rho 4841⟩ := by
      constructor
      · refine ⟨(rho 4836 + (rho 2216) - (0)), rho 4837, ?_, ?_, ?_⟩
        · linear_combination r5342
        · linear_combination r5343
        · linear_combination r5344
      · refine ⟨(rho 4839 + (rho 2217) - ((1 : F))), rho 4840, ?_, ?_, ?_⟩
        · linear_combination r5345
        · linear_combination r5346
        · linear_combination r5347
    simpa [base, twice, triple, digit118] using hraw
  have hhigh : rho 995 =
      Bool.toZMod bits[12]! := by
    simpa only using rho_bit_of_map rho bits hbits 12 (by decide +kernel)
  have hlow : rho 994 =
      Bool.toZMod bits[11]! := by
    simpa only using rho_bit_of_map rho bits hbits 11 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[12]! bits[11]! (base rho) (twice rho) (triple rho)
    (digit118 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit118 rho) := by
    rw [hdigit]
    cases bits[12]! <;> cases bits[11]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted118 rho) (digit118 rho) (acc119 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4834) (rho 4835) (rho 4837 + rho 4838) ((1 : F) + rho 4840 + rho 4841)
      (rho 4842) (rho 4843) (rho 4844) (rho 4845) (rho 4846) (rho 4847)
      (by simpa [shifted118] using hshift2On)
      (by simpa [digit118] using hdigitOn)
      (by linear_combination r5348)
      (by linear_combination r5349)
      (by linear_combination r5350)
      (by linear_combination r5351)
      (by linear_combination r5352)
      (by linear_combination r5353)
    simpa [shifted118, digit118, acc119] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc119 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted118 rho) (digit118 rho) (acc119 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted118 rho) (digit118 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 995) (rho 994)
      (base rho) (twice rho) (triple rho) (acc118 rho)
      (acc119 rho) :=
    ⟨shiftOnce118 rho, shifted118 rho, digit118 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window119 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc119 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[10]! (scalarBits rho)[9]!
        (base rho) (twice rho) (triple rho) (acc119 rho)
        (acc120 rho) ∧
      EdwardsBridge.onCurve (acc120 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p66, p67, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart66 at p66
  rcases p66 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5354, r5355, r5356, r5357, r5358, r5359⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart67 at p67
  rcases p67 with ⟨r5360, r5361, r5362, r5363, r5364, r5365, r5366, r5367, r5368, r5369, r5370, r5371, r5372, r5373, r5374, r5375, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5354 at r5354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5355 at r5355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5356 at r5356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5357 at r5357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5358 at r5358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5359 at r5359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5360 at r5360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5361 at r5361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5362 at r5362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5363 at r5363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5364 at r5364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5365 at r5365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5366 at r5366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5367 at r5367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5368 at r5368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5369 at r5369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5370 at r5370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5371 at r5371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5372 at r5372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5373 at r5373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5374 at r5374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow5375 at r5375
  have hshift1 : EdwardsBridge.doubleSpec (acc119 rho) (shiftOnce119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4846) (rho 4847) (rho 4848) (rho 4849) (rho 4850) (rho 4851) (rho 4852)
      (by simpa [acc119] using hacc)
      (by linear_combination r5354)
      (by linear_combination r5355)
      (by linear_combination r5356)
      (by linear_combination r5357)
      (by linear_combination r5358)
    simpa [acc119, shiftOnce119] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc119 rho) (shiftOnce119 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc119 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce119 rho) (shifted119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4851) (rho 4852) (rho 4853) (rho 4854) (rho 4855) (rho 4856) (rho 4857)
      (by simpa [shiftOnce119] using hshift1On)
      (by linear_combination r5359)
      (by linear_combination r5360)
      (by linear_combination r5361)
      (by linear_combination r5362)
      (by linear_combination r5363)
    simpa [shiftOnce119, shifted119] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce119 rho) (shifted119 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce119 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 993) (rho 992)
      (base rho) (twice rho) (triple rho) (digit119 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 993) (rho 992)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4859 + rho 4860, (1 : F) + rho 4862 + rho 4863⟩ := by
      constructor
      · refine ⟨(rho 4858 + (rho 2216) - (0)), rho 4859, ?_, ?_, ?_⟩
        · linear_combination r5364
        · linear_combination r5365
        · linear_combination r5366
      · refine ⟨(rho 4861 + (rho 2217) - ((1 : F))), rho 4862, ?_, ?_, ?_⟩
        · linear_combination r5367
        · linear_combination r5368
        · linear_combination r5369
    simpa [base, twice, triple, digit119] using hraw
  have hhigh : rho 993 =
      Bool.toZMod bits[10]! := by
    simpa only using rho_bit_of_map rho bits hbits 10 (by decide +kernel)
  have hlow : rho 992 =
      Bool.toZMod bits[9]! := by
    simpa only using rho_bit_of_map rho bits hbits 9 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[10]! bits[9]! (base rho) (twice rho) (triple rho)
    (digit119 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit119 rho) := by
    rw [hdigit]
    cases bits[10]! <;> cases bits[9]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted119 rho) (digit119 rho) (acc120 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4856) (rho 4857) (rho 4859 + rho 4860) ((1 : F) + rho 4862 + rho 4863)
      (rho 4864) (rho 4865) (rho 4866) (rho 4867) (rho 4868) (rho 4869)
      (by simpa [shifted119] using hshift2On)
      (by simpa [digit119] using hdigitOn)
      (by linear_combination r5370)
      (by linear_combination r5371)
      (by linear_combination r5372)
      (by linear_combination r5373)
      (by linear_combination r5374)
      (by linear_combination r5375)
    simpa [shifted119, digit119, acc120] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc120 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted119 rho) (digit119 rho) (acc120 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted119 rho) (digit119 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 993) (rho 992)
      (base rho) (twice rho) (triple rho) (acc119 rho)
      (acc120 rho) :=
    ⟨shiftOnce119 rho, shifted119 rho, digit119 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
