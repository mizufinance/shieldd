import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41UserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window114 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4333 at r4333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4334 at r4334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4335 at r4335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4336 at r4336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4337 at r4337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4338 at r4338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4339 at r4339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4340 at r4340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4341 at r4341
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4342 at r4342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4343 at r4343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4344 at r4344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4345 at r4345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4346 at r4346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4347 at r4347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4348 at r4348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4349 at r4349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4350 at r4350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4351 at r4351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4352 at r4352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4353 at r4353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4354 at r4354
  have hshift1 : EdwardsBridge.doubleSpec (acc114 rho) (shiftOnce114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4337) (rho 4338) (rho 4339) (rho 4340) (rho 4341) (rho 4342) (rho 4343)
      (by simpa [acc114] using hacc)
      (by linear_combination r4333)
      (by linear_combination r4334)
      (by linear_combination r4335)
      (by linear_combination r4336)
      (by linear_combination r4337)
    simpa [acc114, shiftOnce114] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc114 rho) (shiftOnce114 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc114 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce114 rho) (shifted114 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4342) (rho 4343) (rho 4344) (rho 4345) (rho 4346) (rho 4347) (rho 4348)
      (by simpa [shiftOnce114] using hshift1On)
      (by linear_combination r4338)
      (by linear_combination r4339)
      (by linear_combination r4340)
      (by linear_combination r4341)
      (by linear_combination r4342)
    simpa [shiftOnce114, shifted114] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted114 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce114 rho) (shifted114 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce114 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 21) (rho 20)
      (base rho) (twice rho) (triple rho) (digit114 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 21) (rho 20)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4350 + rho 4351, (1 : F) + rho 4353 + rho 4354⟩ := by
      constructor
      · refine ⟨(rho 4349 + (rho 1817) - (0)), rho 4350, ?_, ?_, ?_⟩
        · linear_combination r4343
        · linear_combination r4344
        · linear_combination r4345
      · refine ⟨(rho 4352 + (rho 1818) - ((1 : F))), rho 4353, ?_, ?_, ?_⟩
        · linear_combination r4346
        · linear_combination r4347
        · linear_combination r4348
    simpa [base, twice, triple, digit114] using hraw
  have hhigh : rho 21 =
      Bool.toZMod bits[20]! := by
    simpa only using rho_bit_of_map rho bits hbits 20 (by decide +kernel)
  have hlow : rho 20 =
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
      (rho 4347) (rho 4348) (rho 4350 + rho 4351) ((1 : F) + rho 4353 + rho 4354)
      (rho 4355) (rho 4356) (rho 4357) (rho 4358) (rho 4359) (rho 4360)
      (by simpa [shifted114] using hshift2On)
      (by simpa [digit114] using hdigitOn)
      (by linear_combination r4349)
      (by linear_combination r4350)
      (by linear_combination r4351)
      (by linear_combination r4352)
      (by linear_combination r4353)
      (by linear_combination r4354)
    simpa [shifted114, digit114, acc115] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc115 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted114 rho) (digit114 rho) (acc115 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted114 rho) (digit114 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 21) (rho 20)
      (base rho) (twice rho) (triple rho) (acc114 rho)
      (acc115 rho) :=
    ⟨shiftOnce114 rho, shifted114 rho, digit114 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window115 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4355 at r4355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4356 at r4356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4357 at r4357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4358 at r4358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4359 at r4359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4360 at r4360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4361 at r4361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4362 at r4362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4363 at r4363
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4364 at r4364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4365 at r4365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4366 at r4366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4367 at r4367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4368 at r4368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4369 at r4369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4370 at r4370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4371 at r4371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4372 at r4372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4373 at r4373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4374 at r4374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4375 at r4375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4376 at r4376
  have hshift1 : EdwardsBridge.doubleSpec (acc115 rho) (shiftOnce115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4359) (rho 4360) (rho 4361) (rho 4362) (rho 4363) (rho 4364) (rho 4365)
      (by simpa [acc115] using hacc)
      (by linear_combination r4355)
      (by linear_combination r4356)
      (by linear_combination r4357)
      (by linear_combination r4358)
      (by linear_combination r4359)
    simpa [acc115, shiftOnce115] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc115 rho) (shiftOnce115 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc115 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce115 rho) (shifted115 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4364) (rho 4365) (rho 4366) (rho 4367) (rho 4368) (rho 4369) (rho 4370)
      (by simpa [shiftOnce115] using hshift1On)
      (by linear_combination r4360)
      (by linear_combination r4361)
      (by linear_combination r4362)
      (by linear_combination r4363)
      (by linear_combination r4364)
    simpa [shiftOnce115, shifted115] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted115 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce115 rho) (shifted115 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce115 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 19) (rho 18)
      (base rho) (twice rho) (triple rho) (digit115 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 19) (rho 18)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4372 + rho 4373, (1 : F) + rho 4375 + rho 4376⟩ := by
      constructor
      · refine ⟨(rho 4371 + (rho 1817) - (0)), rho 4372, ?_, ?_, ?_⟩
        · linear_combination r4365
        · linear_combination r4366
        · linear_combination r4367
      · refine ⟨(rho 4374 + (rho 1818) - ((1 : F))), rho 4375, ?_, ?_, ?_⟩
        · linear_combination r4368
        · linear_combination r4369
        · linear_combination r4370
    simpa [base, twice, triple, digit115] using hraw
  have hhigh : rho 19 =
      Bool.toZMod bits[18]! := by
    simpa only using rho_bit_of_map rho bits hbits 18 (by decide +kernel)
  have hlow : rho 18 =
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
      (rho 4369) (rho 4370) (rho 4372 + rho 4373) ((1 : F) + rho 4375 + rho 4376)
      (rho 4377) (rho 4378) (rho 4379) (rho 4380) (rho 4381) (rho 4382)
      (by simpa [shifted115] using hshift2On)
      (by simpa [digit115] using hdigitOn)
      (by linear_combination r4371)
      (by linear_combination r4372)
      (by linear_combination r4373)
      (by linear_combination r4374)
      (by linear_combination r4375)
      (by linear_combination r4376)
    simpa [shifted115, digit115, acc116] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc116 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted115 rho) (digit115 rho) (acc116 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted115 rho) (digit115 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 19) (rho 18)
      (base rho) (twice rho) (triple rho) (acc115 rho)
      (acc116 rho) :=
    ⟨shiftOnce115 rho, shifted115 rho, digit115 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window116 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4377 at r4377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4378 at r4378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4379 at r4379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4380 at r4380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4381 at r4381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4382 at r4382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4383 at r4383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4384 at r4384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4385 at r4385
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4386 at r4386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4387 at r4387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4388 at r4388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4389 at r4389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4390 at r4390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4391 at r4391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4392 at r4392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4393 at r4393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4394 at r4394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4395 at r4395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4396 at r4396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4397 at r4397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4398 at r4398
  have hshift1 : EdwardsBridge.doubleSpec (acc116 rho) (shiftOnce116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4381) (rho 4382) (rho 4383) (rho 4384) (rho 4385) (rho 4386) (rho 4387)
      (by simpa [acc116] using hacc)
      (by linear_combination r4377)
      (by linear_combination r4378)
      (by linear_combination r4379)
      (by linear_combination r4380)
      (by linear_combination r4381)
    simpa [acc116, shiftOnce116] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc116 rho) (shiftOnce116 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc116 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce116 rho) (shifted116 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4386) (rho 4387) (rho 4388) (rho 4389) (rho 4390) (rho 4391) (rho 4392)
      (by simpa [shiftOnce116] using hshift1On)
      (by linear_combination r4382)
      (by linear_combination r4383)
      (by linear_combination r4384)
      (by linear_combination r4385)
      (by linear_combination r4386)
    simpa [shiftOnce116, shifted116] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted116 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce116 rho) (shifted116 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce116 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 17) (rho 16)
      (base rho) (twice rho) (triple rho) (digit116 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 17) (rho 16)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4394 + rho 4395, (1 : F) + rho 4397 + rho 4398⟩ := by
      constructor
      · refine ⟨(rho 4393 + (rho 1817) - (0)), rho 4394, ?_, ?_, ?_⟩
        · linear_combination r4387
        · linear_combination r4388
        · linear_combination r4389
      · refine ⟨(rho 4396 + (rho 1818) - ((1 : F))), rho 4397, ?_, ?_, ?_⟩
        · linear_combination r4390
        · linear_combination r4391
        · linear_combination r4392
    simpa [base, twice, triple, digit116] using hraw
  have hhigh : rho 17 =
      Bool.toZMod bits[16]! := by
    simpa only using rho_bit_of_map rho bits hbits 16 (by decide +kernel)
  have hlow : rho 16 =
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
      (rho 4391) (rho 4392) (rho 4394 + rho 4395) ((1 : F) + rho 4397 + rho 4398)
      (rho 4399) (rho 4400) (rho 4401) (rho 4402) (rho 4403) (rho 4404)
      (by simpa [shifted116] using hshift2On)
      (by simpa [digit116] using hdigitOn)
      (by linear_combination r4393)
      (by linear_combination r4394)
      (by linear_combination r4395)
      (by linear_combination r4396)
      (by linear_combination r4397)
      (by linear_combination r4398)
    simpa [shifted116, digit116, acc117] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc117 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted116 rho) (digit116 rho) (acc117 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted116 rho) (digit116 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 17) (rho 16)
      (base rho) (twice rho) (triple rho) (acc116 rho)
      (acc117 rho) :=
    ⟨shiftOnce116 rho, shifted116 rho, digit116 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window117 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4399 at r4399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4400 at r4400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4401 at r4401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4402 at r4402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4403 at r4403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4404 at r4404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4405 at r4405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4406 at r4406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4407 at r4407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4408 at r4408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4409 at r4409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4410 at r4410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4411 at r4411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4412 at r4412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4413 at r4413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4414 at r4414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4415 at r4415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4416 at r4416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4417 at r4417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4418 at r4418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4419 at r4419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4420 at r4420
  have hshift1 : EdwardsBridge.doubleSpec (acc117 rho) (shiftOnce117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4403) (rho 4404) (rho 4405) (rho 4406) (rho 4407) (rho 4408) (rho 4409)
      (by simpa [acc117] using hacc)
      (by linear_combination r4399)
      (by linear_combination r4400)
      (by linear_combination r4401)
      (by linear_combination r4402)
      (by linear_combination r4403)
    simpa [acc117, shiftOnce117] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc117 rho) (shiftOnce117 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc117 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce117 rho) (shifted117 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4408) (rho 4409) (rho 4410) (rho 4411) (rho 4412) (rho 4413) (rho 4414)
      (by simpa [shiftOnce117] using hshift1On)
      (by linear_combination r4404)
      (by linear_combination r4405)
      (by linear_combination r4406)
      (by linear_combination r4407)
      (by linear_combination r4408)
    simpa [shiftOnce117, shifted117] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted117 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce117 rho) (shifted117 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce117 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 15) (rho 14)
      (base rho) (twice rho) (triple rho) (digit117 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 15) (rho 14)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4416 + rho 4417, (1 : F) + rho 4419 + rho 4420⟩ := by
      constructor
      · refine ⟨(rho 4415 + (rho 1817) - (0)), rho 4416, ?_, ?_, ?_⟩
        · linear_combination r4409
        · linear_combination r4410
        · linear_combination r4411
      · refine ⟨(rho 4418 + (rho 1818) - ((1 : F))), rho 4419, ?_, ?_, ?_⟩
        · linear_combination r4412
        · linear_combination r4413
        · linear_combination r4414
    simpa [base, twice, triple, digit117] using hraw
  have hhigh : rho 15 =
      Bool.toZMod bits[14]! := by
    simpa only using rho_bit_of_map rho bits hbits 14 (by decide +kernel)
  have hlow : rho 14 =
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
      (rho 4413) (rho 4414) (rho 4416 + rho 4417) ((1 : F) + rho 4419 + rho 4420)
      (rho 4421) (rho 4422) (rho 4423) (rho 4424) (rho 4425) (rho 4426)
      (by simpa [shifted117] using hshift2On)
      (by simpa [digit117] using hdigitOn)
      (by linear_combination r4415)
      (by linear_combination r4416)
      (by linear_combination r4417)
      (by linear_combination r4418)
      (by linear_combination r4419)
      (by linear_combination r4420)
    simpa [shifted117, digit117, acc118] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc118 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted117 rho) (digit117 rho) (acc118 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted117 rho) (digit117 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 15) (rho 14)
      (base rho) (twice rho) (triple rho) (acc117 rho)
      (acc118 rho) :=
    ⟨shiftOnce117 rho, shifted117 rho, digit117 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window118 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4421 at r4421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4422 at r4422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4423 at r4423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4424 at r4424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4425 at r4425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4426 at r4426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4427 at r4427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4428 at r4428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4429 at r4429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4430 at r4430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4431 at r4431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4432 at r4432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4433 at r4433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4434 at r4434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4435 at r4435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4436 at r4436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4437 at r4437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4438 at r4438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4439 at r4439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4440 at r4440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4441 at r4441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4442 at r4442
  have hshift1 : EdwardsBridge.doubleSpec (acc118 rho) (shiftOnce118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4425) (rho 4426) (rho 4427) (rho 4428) (rho 4429) (rho 4430) (rho 4431)
      (by simpa [acc118] using hacc)
      (by linear_combination r4421)
      (by linear_combination r4422)
      (by linear_combination r4423)
      (by linear_combination r4424)
      (by linear_combination r4425)
    simpa [acc118, shiftOnce118] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc118 rho) (shiftOnce118 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc118 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce118 rho) (shifted118 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4430) (rho 4431) (rho 4432) (rho 4433) (rho 4434) (rho 4435) (rho 4436)
      (by simpa [shiftOnce118] using hshift1On)
      (by linear_combination r4426)
      (by linear_combination r4427)
      (by linear_combination r4428)
      (by linear_combination r4429)
      (by linear_combination r4430)
    simpa [shiftOnce118, shifted118] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted118 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce118 rho) (shifted118 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce118 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 13) (rho 12)
      (base rho) (twice rho) (triple rho) (digit118 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 13) (rho 12)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4438 + rho 4439, (1 : F) + rho 4441 + rho 4442⟩ := by
      constructor
      · refine ⟨(rho 4437 + (rho 1817) - (0)), rho 4438, ?_, ?_, ?_⟩
        · linear_combination r4431
        · linear_combination r4432
        · linear_combination r4433
      · refine ⟨(rho 4440 + (rho 1818) - ((1 : F))), rho 4441, ?_, ?_, ?_⟩
        · linear_combination r4434
        · linear_combination r4435
        · linear_combination r4436
    simpa [base, twice, triple, digit118] using hraw
  have hhigh : rho 13 =
      Bool.toZMod bits[12]! := by
    simpa only using rho_bit_of_map rho bits hbits 12 (by decide +kernel)
  have hlow : rho 12 =
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
      (rho 4435) (rho 4436) (rho 4438 + rho 4439) ((1 : F) + rho 4441 + rho 4442)
      (rho 4443) (rho 4444) (rho 4445) (rho 4446) (rho 4447) (rho 4448)
      (by simpa [shifted118] using hshift2On)
      (by simpa [digit118] using hdigitOn)
      (by linear_combination r4437)
      (by linear_combination r4438)
      (by linear_combination r4439)
      (by linear_combination r4440)
      (by linear_combination r4441)
      (by linear_combination r4442)
    simpa [shifted118, digit118, acc119] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc119 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted118 rho) (digit118 rho) (acc119 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted118 rho) (digit118 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 13) (rho 12)
      (base rho) (twice rho) (triple rho) (acc118 rho)
      (acc119 rho) :=
    ⟨shiftOnce118 rho, shifted118 rho, digit118 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window119 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4443 at r4443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4444 at r4444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4445 at r4445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4446 at r4446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4447 at r4447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4448 at r4448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4449 at r4449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4450 at r4450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4451 at r4451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4452 at r4452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4453 at r4453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4454 at r4454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4455 at r4455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4456 at r4456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4457 at r4457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4458 at r4458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4459 at r4459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4460 at r4460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4461 at r4461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4462 at r4462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4463 at r4463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.relationRow4464 at r4464
  have hshift1 : EdwardsBridge.doubleSpec (acc119 rho) (shiftOnce119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4447) (rho 4448) (rho 4449) (rho 4450) (rho 4451) (rho 4452) (rho 4453)
      (by simpa [acc119] using hacc)
      (by linear_combination r4443)
      (by linear_combination r4444)
      (by linear_combination r4445)
      (by linear_combination r4446)
      (by linear_combination r4447)
    simpa [acc119, shiftOnce119] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc119 rho) (shiftOnce119 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc119 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce119 rho) (shifted119 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4452) (rho 4453) (rho 4454) (rho 4455) (rho 4456) (rho 4457) (rho 4458)
      (by simpa [shiftOnce119] using hshift1On)
      (by linear_combination r4448)
      (by linear_combination r4449)
      (by linear_combination r4450)
      (by linear_combination r4451)
      (by linear_combination r4452)
    simpa [shiftOnce119, shifted119] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted119 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce119 rho) (shifted119 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce119 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 11) (rho 10)
      (base rho) (twice rho) (triple rho) (digit119 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 11) (rho 10)
        ⟨rho 1810 + rho 1811, rho 1812 + rho 1813⟩ ⟨rho 1817, rho 1818⟩
        ⟨rho 1823, rho 1824⟩ ⟨rho 4460 + rho 4461, (1 : F) + rho 4463 + rho 4464⟩ := by
      constructor
      · refine ⟨(rho 4459 + (rho 1817) - (0)), rho 4460, ?_, ?_, ?_⟩
        · linear_combination r4453
        · linear_combination r4454
        · linear_combination r4455
      · refine ⟨(rho 4462 + (rho 1818) - ((1 : F))), rho 4463, ?_, ?_, ?_⟩
        · linear_combination r4456
        · linear_combination r4457
        · linear_combination r4458
    simpa [base, twice, triple, digit119] using hraw
  have hhigh : rho 11 =
      Bool.toZMod bits[10]! := by
    simpa only using rho_bit_of_map rho bits hbits 10 (by decide +kernel)
  have hlow : rho 10 =
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
      (rho 4457) (rho 4458) (rho 4460 + rho 4461) ((1 : F) + rho 4463 + rho 4464)
      (rho 4465) (rho 4466) (rho 4467) (rho 4468) (rho 4469) (rho 4470)
      (by simpa [shifted119] using hshift2On)
      (by simpa [digit119] using hdigitOn)
      (by linear_combination r4459)
      (by linear_combination r4460)
      (by linear_combination r4461)
      (by linear_combination r4462)
      (by linear_combination r4463)
      (by linear_combination r4464)
    simpa [shifted119, digit119, acc120] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc120 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted119 rho) (digit119 rho) (acc120 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted119 rho) (digit119 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 11) (rho 10)
      (base rho) (twice rho) (triple rho) (acc119 rho)
      (acc120 rho) :=
    ⟨shiftOnce119 rho, shifted119 rho, digit119 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.UserWindowSupport
