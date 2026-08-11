import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window72 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4320 at r4320
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4321 at r4321
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4322 at r4322
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4323 at r4323
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4324 at r4324
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4325 at r4325
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4326 at r4326
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4327 at r4327
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4328 at r4328
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4329 at r4329
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4330 at r4330
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4331 at r4331
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4332 at r4332
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4333 at r4333
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4334 at r4334
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4335 at r4335
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4336 at r4336
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4337 at r4337
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4338 at r4338
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4339 at r4339
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4340 at r4340
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4341 at r4341
  have hshift1 : EdwardsBridge.doubleSpec (acc72 rho) (shiftOnce72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3812) (rho 3813) (rho 3814) (rho 3815) (rho 3816) (rho 3817) (rho 3818)
      (by simpa [acc72] using hacc)
      (by linear_combination r4320)
      (by linear_combination r4321)
      (by linear_combination r4322)
      (by linear_combination r4323)
      (by linear_combination r4324)
    simpa [acc72, shiftOnce72] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc72 rho) (shiftOnce72 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc72 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce72 rho) (shifted72 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3817) (rho 3818) (rho 3819) (rho 3820) (rho 3821) (rho 3822) (rho 3823)
      (by simpa [shiftOnce72] using hshift1On)
      (by linear_combination r4325)
      (by linear_combination r4326)
      (by linear_combination r4327)
      (by linear_combination r4328)
      (by linear_combination r4329)
    simpa [shiftOnce72, shifted72] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted72 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce72 rho) (shifted72 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce72 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1087) (rho 1086)
      (base rho) (twice rho) (triple rho) (digit72 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1087) (rho 1086)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3825 + rho 3826, (1 : F) + rho 3828 + rho 3829⟩ := by
      constructor
      · refine ⟨(rho 3824 + (rho 2216) - (0)), rho 3825, ?_, ?_, ?_⟩
        · linear_combination r4330
        · linear_combination r4331
        · linear_combination r4332
      · refine ⟨(rho 3827 + (rho 2217) - ((1 : F))), rho 3828, ?_, ?_, ?_⟩
        · linear_combination r4333
        · linear_combination r4334
        · linear_combination r4335
    simpa [base, twice, triple, digit72] using hraw
  have hhigh : rho 1087 =
      Bool.toZMod bits[104]! := by
    simpa only using rho_bit_of_map rho bits hbits 104 (by decide +kernel)
  have hlow : rho 1086 =
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
      (rho 3822) (rho 3823) (rho 3825 + rho 3826) ((1 : F) + rho 3828 + rho 3829)
      (rho 3830) (rho 3831) (rho 3832) (rho 3833) (rho 3834) (rho 3835)
      (by simpa [shifted72] using hshift2On)
      (by simpa [digit72] using hdigitOn)
      (by linear_combination r4336)
      (by linear_combination r4337)
      (by linear_combination r4338)
      (by linear_combination r4339)
      (by linear_combination r4340)
      (by linear_combination r4341)
    simpa [shifted72, digit72, acc73] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc73 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted72 rho) (digit72 rho) (acc73 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted72 rho) (digit72 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1087) (rho 1086)
      (base rho) (twice rho) (triple rho) (acc72 rho)
      (acc73 rho) :=
    ⟨shiftOnce72 rho, shifted72 rho, digit72 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window73 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4342 at r4342
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4343 at r4343
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4344 at r4344
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4345 at r4345
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4346 at r4346
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4347 at r4347
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4348 at r4348
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4349 at r4349
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4350 at r4350
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4351 at r4351
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4352 at r4352
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4353 at r4353
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4354 at r4354
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4355 at r4355
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4356 at r4356
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4357 at r4357
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4358 at r4358
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4359 at r4359
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4360 at r4360
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4361 at r4361
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4362 at r4362
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4363 at r4363
  have hshift1 : EdwardsBridge.doubleSpec (acc73 rho) (shiftOnce73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3834) (rho 3835) (rho 3836) (rho 3837) (rho 3838) (rho 3839) (rho 3840)
      (by simpa [acc73] using hacc)
      (by linear_combination r4342)
      (by linear_combination r4343)
      (by linear_combination r4344)
      (by linear_combination r4345)
      (by linear_combination r4346)
    simpa [acc73, shiftOnce73] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc73 rho) (shiftOnce73 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc73 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce73 rho) (shifted73 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3839) (rho 3840) (rho 3841) (rho 3842) (rho 3843) (rho 3844) (rho 3845)
      (by simpa [shiftOnce73] using hshift1On)
      (by linear_combination r4347)
      (by linear_combination r4348)
      (by linear_combination r4349)
      (by linear_combination r4350)
      (by linear_combination r4351)
    simpa [shiftOnce73, shifted73] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted73 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce73 rho) (shifted73 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce73 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1085) (rho 1084)
      (base rho) (twice rho) (triple rho) (digit73 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1085) (rho 1084)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3847 + rho 3848, (1 : F) + rho 3850 + rho 3851⟩ := by
      constructor
      · refine ⟨(rho 3846 + (rho 2216) - (0)), rho 3847, ?_, ?_, ?_⟩
        · linear_combination r4352
        · linear_combination r4353
        · linear_combination r4354
      · refine ⟨(rho 3849 + (rho 2217) - ((1 : F))), rho 3850, ?_, ?_, ?_⟩
        · linear_combination r4355
        · linear_combination r4356
        · linear_combination r4357
    simpa [base, twice, triple, digit73] using hraw
  have hhigh : rho 1085 =
      Bool.toZMod bits[102]! := by
    simpa only using rho_bit_of_map rho bits hbits 102 (by decide +kernel)
  have hlow : rho 1084 =
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
      (rho 3844) (rho 3845) (rho 3847 + rho 3848) ((1 : F) + rho 3850 + rho 3851)
      (rho 3852) (rho 3853) (rho 3854) (rho 3855) (rho 3856) (rho 3857)
      (by simpa [shifted73] using hshift2On)
      (by simpa [digit73] using hdigitOn)
      (by linear_combination r4358)
      (by linear_combination r4359)
      (by linear_combination r4360)
      (by linear_combination r4361)
      (by linear_combination r4362)
      (by linear_combination r4363)
    simpa [shifted73, digit73, acc74] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc74 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted73 rho) (digit73 rho) (acc74 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted73 rho) (digit73 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1085) (rho 1084)
      (base rho) (twice rho) (triple rho) (acc73 rho)
      (acc74 rho) :=
    ⟨shiftOnce73 rho, shifted73 rho, digit73 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window74 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4364 at r4364
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4365 at r4365
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4366 at r4366
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4367 at r4367
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4368 at r4368
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4369 at r4369
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4370 at r4370
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4371 at r4371
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4372 at r4372
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4373 at r4373
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4374 at r4374
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4375 at r4375
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4376 at r4376
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4377 at r4377
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4378 at r4378
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4379 at r4379
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4380 at r4380
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4381 at r4381
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4382 at r4382
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4383 at r4383
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4384 at r4384
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4385 at r4385
  have hshift1 : EdwardsBridge.doubleSpec (acc74 rho) (shiftOnce74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3856) (rho 3857) (rho 3858) (rho 3859) (rho 3860) (rho 3861) (rho 3862)
      (by simpa [acc74] using hacc)
      (by linear_combination r4364)
      (by linear_combination r4365)
      (by linear_combination r4366)
      (by linear_combination r4367)
      (by linear_combination r4368)
    simpa [acc74, shiftOnce74] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc74 rho) (shiftOnce74 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc74 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce74 rho) (shifted74 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3861) (rho 3862) (rho 3863) (rho 3864) (rho 3865) (rho 3866) (rho 3867)
      (by simpa [shiftOnce74] using hshift1On)
      (by linear_combination r4369)
      (by linear_combination r4370)
      (by linear_combination r4371)
      (by linear_combination r4372)
      (by linear_combination r4373)
    simpa [shiftOnce74, shifted74] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted74 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce74 rho) (shifted74 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce74 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1083) (rho 1082)
      (base rho) (twice rho) (triple rho) (digit74 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1083) (rho 1082)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3869 + rho 3870, (1 : F) + rho 3872 + rho 3873⟩ := by
      constructor
      · refine ⟨(rho 3868 + (rho 2216) - (0)), rho 3869, ?_, ?_, ?_⟩
        · linear_combination r4374
        · linear_combination r4375
        · linear_combination r4376
      · refine ⟨(rho 3871 + (rho 2217) - ((1 : F))), rho 3872, ?_, ?_, ?_⟩
        · linear_combination r4377
        · linear_combination r4378
        · linear_combination r4379
    simpa [base, twice, triple, digit74] using hraw
  have hhigh : rho 1083 =
      Bool.toZMod bits[100]! := by
    simpa only using rho_bit_of_map rho bits hbits 100 (by decide +kernel)
  have hlow : rho 1082 =
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
      (rho 3866) (rho 3867) (rho 3869 + rho 3870) ((1 : F) + rho 3872 + rho 3873)
      (rho 3874) (rho 3875) (rho 3876) (rho 3877) (rho 3878) (rho 3879)
      (by simpa [shifted74] using hshift2On)
      (by simpa [digit74] using hdigitOn)
      (by linear_combination r4380)
      (by linear_combination r4381)
      (by linear_combination r4382)
      (by linear_combination r4383)
      (by linear_combination r4384)
      (by linear_combination r4385)
    simpa [shifted74, digit74, acc75] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc75 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted74 rho) (digit74 rho) (acc75 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted74 rho) (digit74 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1083) (rho 1082)
      (base rho) (twice rho) (triple rho) (acc74 rho)
      (acc75 rho) :=
    ⟨shiftOnce74 rho, shifted74 rho, digit74 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window75 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p54, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart54 at p54
  rcases p54 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4386 at r4386
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4387 at r4387
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4388 at r4388
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4389 at r4389
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4390 at r4390
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4391 at r4391
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4392 at r4392
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4393 at r4393
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4394 at r4394
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4395 at r4395
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4396 at r4396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4397 at r4397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4398 at r4398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4399 at r4399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4400 at r4400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4401 at r4401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4402 at r4402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4403 at r4403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4404 at r4404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4405 at r4405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4406 at r4406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4407 at r4407
  have hshift1 : EdwardsBridge.doubleSpec (acc75 rho) (shiftOnce75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3878) (rho 3879) (rho 3880) (rho 3881) (rho 3882) (rho 3883) (rho 3884)
      (by simpa [acc75] using hacc)
      (by linear_combination r4386)
      (by linear_combination r4387)
      (by linear_combination r4388)
      (by linear_combination r4389)
      (by linear_combination r4390)
    simpa [acc75, shiftOnce75] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc75 rho) (shiftOnce75 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc75 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce75 rho) (shifted75 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3883) (rho 3884) (rho 3885) (rho 3886) (rho 3887) (rho 3888) (rho 3889)
      (by simpa [shiftOnce75] using hshift1On)
      (by linear_combination r4391)
      (by linear_combination r4392)
      (by linear_combination r4393)
      (by linear_combination r4394)
      (by linear_combination r4395)
    simpa [shiftOnce75, shifted75] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted75 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce75 rho) (shifted75 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce75 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1081) (rho 1080)
      (base rho) (twice rho) (triple rho) (digit75 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1081) (rho 1080)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3891 + rho 3892, (1 : F) + rho 3894 + rho 3895⟩ := by
      constructor
      · refine ⟨(rho 3890 + (rho 2216) - (0)), rho 3891, ?_, ?_, ?_⟩
        · linear_combination r4396
        · linear_combination r4397
        · linear_combination r4398
      · refine ⟨(rho 3893 + (rho 2217) - ((1 : F))), rho 3894, ?_, ?_, ?_⟩
        · linear_combination r4399
        · linear_combination r4400
        · linear_combination r4401
    simpa [base, twice, triple, digit75] using hraw
  have hhigh : rho 1081 =
      Bool.toZMod bits[98]! := by
    simpa only using rho_bit_of_map rho bits hbits 98 (by decide +kernel)
  have hlow : rho 1080 =
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
      (rho 3888) (rho 3889) (rho 3891 + rho 3892) ((1 : F) + rho 3894 + rho 3895)
      (rho 3896) (rho 3897) (rho 3898) (rho 3899) (rho 3900) (rho 3901)
      (by simpa [shifted75] using hshift2On)
      (by simpa [digit75] using hdigitOn)
      (by linear_combination r4402)
      (by linear_combination r4403)
      (by linear_combination r4404)
      (by linear_combination r4405)
      (by linear_combination r4406)
      (by linear_combination r4407)
    simpa [shifted75, digit75, acc76] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc76 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted75 rho) (digit75 rho) (acc76 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted75 rho) (digit75 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1081) (rho 1080)
      (base rho) (twice rho) (triple rho) (acc75 rho)
      (acc76 rho) :=
    ⟨shiftOnce75 rho, shifted75 rho, digit75 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window76 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4408 at r4408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4409 at r4409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4410 at r4410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4411 at r4411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4412 at r4412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4413 at r4413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4414 at r4414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4415 at r4415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4416 at r4416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4417 at r4417
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4418 at r4418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4419 at r4419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4420 at r4420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4421 at r4421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4422 at r4422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4423 at r4423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4424 at r4424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4425 at r4425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4426 at r4426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4427 at r4427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4428 at r4428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4429 at r4429
  have hshift1 : EdwardsBridge.doubleSpec (acc76 rho) (shiftOnce76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3900) (rho 3901) (rho 3902) (rho 3903) (rho 3904) (rho 3905) (rho 3906)
      (by simpa [acc76] using hacc)
      (by linear_combination r4408)
      (by linear_combination r4409)
      (by linear_combination r4410)
      (by linear_combination r4411)
      (by linear_combination r4412)
    simpa [acc76, shiftOnce76] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc76 rho) (shiftOnce76 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc76 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce76 rho) (shifted76 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3905) (rho 3906) (rho 3907) (rho 3908) (rho 3909) (rho 3910) (rho 3911)
      (by simpa [shiftOnce76] using hshift1On)
      (by linear_combination r4413)
      (by linear_combination r4414)
      (by linear_combination r4415)
      (by linear_combination r4416)
      (by linear_combination r4417)
    simpa [shiftOnce76, shifted76] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted76 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce76 rho) (shifted76 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce76 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1079) (rho 1078)
      (base rho) (twice rho) (triple rho) (digit76 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1079) (rho 1078)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3913 + rho 3914, (1 : F) + rho 3916 + rho 3917⟩ := by
      constructor
      · refine ⟨(rho 3912 + (rho 2216) - (0)), rho 3913, ?_, ?_, ?_⟩
        · linear_combination r4418
        · linear_combination r4419
        · linear_combination r4420
      · refine ⟨(rho 3915 + (rho 2217) - ((1 : F))), rho 3916, ?_, ?_, ?_⟩
        · linear_combination r4421
        · linear_combination r4422
        · linear_combination r4423
    simpa [base, twice, triple, digit76] using hraw
  have hhigh : rho 1079 =
      Bool.toZMod bits[96]! := by
    simpa only using rho_bit_of_map rho bits hbits 96 (by decide +kernel)
  have hlow : rho 1078 =
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
      (rho 3910) (rho 3911) (rho 3913 + rho 3914) ((1 : F) + rho 3916 + rho 3917)
      (rho 3918) (rho 3919) (rho 3920) (rho 3921) (rho 3922) (rho 3923)
      (by simpa [shifted76] using hshift2On)
      (by simpa [digit76] using hdigitOn)
      (by linear_combination r4424)
      (by linear_combination r4425)
      (by linear_combination r4426)
      (by linear_combination r4427)
      (by linear_combination r4428)
      (by linear_combination r4429)
    simpa [shifted76, digit76, acc77] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc77 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted76 rho) (digit76 rho) (acc77 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted76 rho) (digit76 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1079) (rho 1078)
      (base rho) (twice rho) (triple rho) (acc76 rho)
      (acc77 rho) :=
    ⟨shiftOnce76 rho, shifted76 rho, digit76 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window77 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4430 at r4430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4431 at r4431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4432 at r4432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4433 at r4433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4434 at r4434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4435 at r4435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4436 at r4436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4437 at r4437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4438 at r4438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4439 at r4439
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4440 at r4440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4441 at r4441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4442 at r4442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4443 at r4443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4444 at r4444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4445 at r4445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4446 at r4446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4447 at r4447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4448 at r4448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4449 at r4449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4450 at r4450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4451 at r4451
  have hshift1 : EdwardsBridge.doubleSpec (acc77 rho) (shiftOnce77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3922) (rho 3923) (rho 3924) (rho 3925) (rho 3926) (rho 3927) (rho 3928)
      (by simpa [acc77] using hacc)
      (by linear_combination r4430)
      (by linear_combination r4431)
      (by linear_combination r4432)
      (by linear_combination r4433)
      (by linear_combination r4434)
    simpa [acc77, shiftOnce77] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc77 rho) (shiftOnce77 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc77 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce77 rho) (shifted77 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3927) (rho 3928) (rho 3929) (rho 3930) (rho 3931) (rho 3932) (rho 3933)
      (by simpa [shiftOnce77] using hshift1On)
      (by linear_combination r4435)
      (by linear_combination r4436)
      (by linear_combination r4437)
      (by linear_combination r4438)
      (by linear_combination r4439)
    simpa [shiftOnce77, shifted77] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted77 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce77 rho) (shifted77 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce77 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1077) (rho 1076)
      (base rho) (twice rho) (triple rho) (digit77 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1077) (rho 1076)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3935 + rho 3936, (1 : F) + rho 3938 + rho 3939⟩ := by
      constructor
      · refine ⟨(rho 3934 + (rho 2216) - (0)), rho 3935, ?_, ?_, ?_⟩
        · linear_combination r4440
        · linear_combination r4441
        · linear_combination r4442
      · refine ⟨(rho 3937 + (rho 2217) - ((1 : F))), rho 3938, ?_, ?_, ?_⟩
        · linear_combination r4443
        · linear_combination r4444
        · linear_combination r4445
    simpa [base, twice, triple, digit77] using hraw
  have hhigh : rho 1077 =
      Bool.toZMod bits[94]! := by
    simpa only using rho_bit_of_map rho bits hbits 94 (by decide +kernel)
  have hlow : rho 1076 =
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
      (rho 3932) (rho 3933) (rho 3935 + rho 3936) ((1 : F) + rho 3938 + rho 3939)
      (rho 3940) (rho 3941) (rho 3942) (rho 3943) (rho 3944) (rho 3945)
      (by simpa [shifted77] using hshift2On)
      (by simpa [digit77] using hdigitOn)
      (by linear_combination r4446)
      (by linear_combination r4447)
      (by linear_combination r4448)
      (by linear_combination r4449)
      (by linear_combination r4450)
      (by linear_combination r4451)
    simpa [shifted77, digit77, acc78] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc78 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted77 rho) (digit77 rho) (acc78 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted77 rho) (digit77 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1077) (rho 1076)
      (base rho) (twice rho) (triple rho) (acc77 rho)
      (acc78 rho) :=
    ⟨shiftOnce77 rho, shifted77 rho, digit77 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
