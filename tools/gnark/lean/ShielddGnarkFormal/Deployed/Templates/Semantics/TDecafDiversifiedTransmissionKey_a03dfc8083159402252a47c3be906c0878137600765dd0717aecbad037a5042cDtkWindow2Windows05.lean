import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window30 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3396, r3397, r3398, r3399, r3400, r3401, r3402, r3403, r3404, r3405, r3406, r3407, r3408, r3409, r3410, r3411, r3412, r3413, r3414, r3415, r3416, r3417, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3396 at r3396
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3397 at r3397
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3398 at r3398
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3399 at r3399
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3400 at r3400
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3401 at r3401
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3402 at r3402
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3403 at r3403
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3404 at r3404
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3405 at r3405
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3406 at r3406
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3407 at r3407
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3408 at r3408
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3409 at r3409
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3410 at r3410
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3411 at r3411
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3412 at r3412
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3413 at r3413
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3414 at r3414
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3415 at r3415
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3416 at r3416
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3417 at r3417
  have hshift1 : EdwardsBridge.doubleSpec (acc30 rho) (shiftOnce30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2888) (rho 2889) (rho 2890) (rho 2891) (rho 2892) (rho 2893) (rho 2894)
      (by simpa [acc30] using hacc)
      (by linear_combination r3396)
      (by linear_combination r3397)
      (by linear_combination r3398)
      (by linear_combination r3399)
      (by linear_combination r3400)
    simpa [acc30, shiftOnce30] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc30 rho) (shiftOnce30 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc30 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce30 rho) (shifted30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2893) (rho 2894) (rho 2895) (rho 2896) (rho 2897) (rho 2898) (rho 2899)
      (by simpa [shiftOnce30] using hshift1On)
      (by linear_combination r3401)
      (by linear_combination r3402)
      (by linear_combination r3403)
      (by linear_combination r3404)
      (by linear_combination r3405)
    simpa [shiftOnce30, shifted30] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce30 rho) (shifted30 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce30 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1171) (rho 1170)
      (base rho) (twice rho) (triple rho) (digit30 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1171) (rho 1170)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2901 + rho 2902, (1 : F) + rho 2904 + rho 2905⟩ := by
      constructor
      · refine ⟨(rho 2900 + (rho 2216) - (0)), rho 2901, ?_, ?_, ?_⟩
        · linear_combination r3406
        · linear_combination r3407
        · linear_combination r3408
      · refine ⟨(rho 2903 + (rho 2217) - ((1 : F))), rho 2904, ?_, ?_, ?_⟩
        · linear_combination r3409
        · linear_combination r3410
        · linear_combination r3411
    simpa [base, twice, triple, digit30] using hraw
  have hhigh : rho 1171 =
      Bool.toZMod bits[188]! := by
    simpa only using rho_bit_of_map rho bits hbits 188 (by decide +kernel)
  have hlow : rho 1170 =
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
      (rho 2898) (rho 2899) (rho 2901 + rho 2902) ((1 : F) + rho 2904 + rho 2905)
      (rho 2906) (rho 2907) (rho 2908) (rho 2909) (rho 2910) (rho 2911)
      (by simpa [shifted30] using hshift2On)
      (by simpa [digit30] using hdigitOn)
      (by linear_combination r3412)
      (by linear_combination r3413)
      (by linear_combination r3414)
      (by linear_combination r3415)
      (by linear_combination r3416)
      (by linear_combination r3417)
    simpa [shifted30, digit30, acc31] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc31 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted30 rho) (digit30 rho) (acc31 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted30 rho) (digit30 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1171) (rho 1170)
      (base rho) (twice rho) (triple rho) (acc30 rho)
      (acc31 rho) :=
    ⟨shiftOnce30 rho, shifted30 rho, digit30 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window31 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p42, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart42 at p42
  rcases p42 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3418, r3419, r3420, r3421, r3422, r3423, r3424, r3425, r3426, r3427, r3428, r3429, r3430, r3431, r3432, r3433, r3434, r3435, r3436, r3437, r3438, r3439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3418 at r3418
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3419 at r3419
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3420 at r3420
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3421 at r3421
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3422 at r3422
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3423 at r3423
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3424 at r3424
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3425 at r3425
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3426 at r3426
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3427 at r3427
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3428 at r3428
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3429 at r3429
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3430 at r3430
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3431 at r3431
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3432 at r3432
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3433 at r3433
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3434 at r3434
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3435 at r3435
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3436 at r3436
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3437 at r3437
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3438 at r3438
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3439 at r3439
  have hshift1 : EdwardsBridge.doubleSpec (acc31 rho) (shiftOnce31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2910) (rho 2911) (rho 2912) (rho 2913) (rho 2914) (rho 2915) (rho 2916)
      (by simpa [acc31] using hacc)
      (by linear_combination r3418)
      (by linear_combination r3419)
      (by linear_combination r3420)
      (by linear_combination r3421)
      (by linear_combination r3422)
    simpa [acc31, shiftOnce31] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc31 rho) (shiftOnce31 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc31 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce31 rho) (shifted31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2915) (rho 2916) (rho 2917) (rho 2918) (rho 2919) (rho 2920) (rho 2921)
      (by simpa [shiftOnce31] using hshift1On)
      (by linear_combination r3423)
      (by linear_combination r3424)
      (by linear_combination r3425)
      (by linear_combination r3426)
      (by linear_combination r3427)
    simpa [shiftOnce31, shifted31] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce31 rho) (shifted31 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce31 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1169) (rho 1168)
      (base rho) (twice rho) (triple rho) (digit31 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1169) (rho 1168)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2923 + rho 2924, (1 : F) + rho 2926 + rho 2927⟩ := by
      constructor
      · refine ⟨(rho 2922 + (rho 2216) - (0)), rho 2923, ?_, ?_, ?_⟩
        · linear_combination r3428
        · linear_combination r3429
        · linear_combination r3430
      · refine ⟨(rho 2925 + (rho 2217) - ((1 : F))), rho 2926, ?_, ?_, ?_⟩
        · linear_combination r3431
        · linear_combination r3432
        · linear_combination r3433
    simpa [base, twice, triple, digit31] using hraw
  have hhigh : rho 1169 =
      Bool.toZMod bits[186]! := by
    simpa only using rho_bit_of_map rho bits hbits 186 (by decide +kernel)
  have hlow : rho 1168 =
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
      (rho 2920) (rho 2921) (rho 2923 + rho 2924) ((1 : F) + rho 2926 + rho 2927)
      (rho 2928) (rho 2929) (rho 2930) (rho 2931) (rho 2932) (rho 2933)
      (by simpa [shifted31] using hshift2On)
      (by simpa [digit31] using hdigitOn)
      (by linear_combination r3434)
      (by linear_combination r3435)
      (by linear_combination r3436)
      (by linear_combination r3437)
      (by linear_combination r3438)
      (by linear_combination r3439)
    simpa [shifted31, digit31, acc32] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc32 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted31 rho) (digit31 rho) (acc32 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted31 rho) (digit31 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1169) (rho 1168)
      (base rho) (twice rho) (triple rho) (acc31 rho)
      (acc32 rho) :=
    ⟨shiftOnce31 rho, shifted31 rho, digit31 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window32 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart43 at p43
  rcases p43 with ⟨r3440, r3441, r3442, r3443, r3444, r3445, r3446, r3447, r3448, r3449, r3450, r3451, r3452, r3453, r3454, r3455, r3456, r3457, r3458, r3459, r3460, r3461, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3440 at r3440
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3441 at r3441
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3442 at r3442
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3443 at r3443
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3444 at r3444
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3445 at r3445
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3446 at r3446
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3447 at r3447
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3448 at r3448
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3449 at r3449
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3450 at r3450
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3451 at r3451
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3452 at r3452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3453 at r3453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3454 at r3454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3455 at r3455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3456 at r3456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3457 at r3457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3458 at r3458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3459 at r3459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3460 at r3460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3461 at r3461
  have hshift1 : EdwardsBridge.doubleSpec (acc32 rho) (shiftOnce32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2932) (rho 2933) (rho 2934) (rho 2935) (rho 2936) (rho 2937) (rho 2938)
      (by simpa [acc32] using hacc)
      (by linear_combination r3440)
      (by linear_combination r3441)
      (by linear_combination r3442)
      (by linear_combination r3443)
      (by linear_combination r3444)
    simpa [acc32, shiftOnce32] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc32 rho) (shiftOnce32 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc32 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce32 rho) (shifted32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2937) (rho 2938) (rho 2939) (rho 2940) (rho 2941) (rho 2942) (rho 2943)
      (by simpa [shiftOnce32] using hshift1On)
      (by linear_combination r3445)
      (by linear_combination r3446)
      (by linear_combination r3447)
      (by linear_combination r3448)
      (by linear_combination r3449)
    simpa [shiftOnce32, shifted32] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce32 rho) (shifted32 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce32 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1167) (rho 1166)
      (base rho) (twice rho) (triple rho) (digit32 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1167) (rho 1166)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2945 + rho 2946, (1 : F) + rho 2948 + rho 2949⟩ := by
      constructor
      · refine ⟨(rho 2944 + (rho 2216) - (0)), rho 2945, ?_, ?_, ?_⟩
        · linear_combination r3450
        · linear_combination r3451
        · linear_combination r3452
      · refine ⟨(rho 2947 + (rho 2217) - ((1 : F))), rho 2948, ?_, ?_, ?_⟩
        · linear_combination r3453
        · linear_combination r3454
        · linear_combination r3455
    simpa [base, twice, triple, digit32] using hraw
  have hhigh : rho 1167 =
      Bool.toZMod bits[184]! := by
    simpa only using rho_bit_of_map rho bits hbits 184 (by decide +kernel)
  have hlow : rho 1166 =
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
      (rho 2942) (rho 2943) (rho 2945 + rho 2946) ((1 : F) + rho 2948 + rho 2949)
      (rho 2950) (rho 2951) (rho 2952) (rho 2953) (rho 2954) (rho 2955)
      (by simpa [shifted32] using hshift2On)
      (by simpa [digit32] using hdigitOn)
      (by linear_combination r3456)
      (by linear_combination r3457)
      (by linear_combination r3458)
      (by linear_combination r3459)
      (by linear_combination r3460)
      (by linear_combination r3461)
    simpa [shifted32, digit32, acc33] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc33 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted32 rho) (digit32 rho) (acc33 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted32 rho) (digit32 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1167) (rho 1166)
      (base rho) (twice rho) (triple rho) (acc32 rho)
      (acc33 rho) :=
    ⟨shiftOnce32 rho, shifted32 rho, digit32 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window33 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3462, r3463, r3464, r3465, r3466, r3467, r3468, r3469, r3470, r3471, r3472, r3473, r3474, r3475, r3476, r3477, r3478, r3479, r3480, r3481, r3482, r3483, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3462 at r3462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3463 at r3463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3464 at r3464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3465 at r3465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3466 at r3466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3467 at r3467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3468 at r3468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3469 at r3469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3470 at r3470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3471 at r3471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3472 at r3472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3473 at r3473
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3474 at r3474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3475 at r3475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3476 at r3476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3477 at r3477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3478 at r3478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3479 at r3479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3480 at r3480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3481 at r3481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3482 at r3482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3483 at r3483
  have hshift1 : EdwardsBridge.doubleSpec (acc33 rho) (shiftOnce33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2954) (rho 2955) (rho 2956) (rho 2957) (rho 2958) (rho 2959) (rho 2960)
      (by simpa [acc33] using hacc)
      (by linear_combination r3462)
      (by linear_combination r3463)
      (by linear_combination r3464)
      (by linear_combination r3465)
      (by linear_combination r3466)
    simpa [acc33, shiftOnce33] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc33 rho) (shiftOnce33 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc33 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce33 rho) (shifted33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2959) (rho 2960) (rho 2961) (rho 2962) (rho 2963) (rho 2964) (rho 2965)
      (by simpa [shiftOnce33] using hshift1On)
      (by linear_combination r3467)
      (by linear_combination r3468)
      (by linear_combination r3469)
      (by linear_combination r3470)
      (by linear_combination r3471)
    simpa [shiftOnce33, shifted33] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce33 rho) (shifted33 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce33 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1165) (rho 1164)
      (base rho) (twice rho) (triple rho) (digit33 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1165) (rho 1164)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2967 + rho 2968, (1 : F) + rho 2970 + rho 2971⟩ := by
      constructor
      · refine ⟨(rho 2966 + (rho 2216) - (0)), rho 2967, ?_, ?_, ?_⟩
        · linear_combination r3472
        · linear_combination r3473
        · linear_combination r3474
      · refine ⟨(rho 2969 + (rho 2217) - ((1 : F))), rho 2970, ?_, ?_, ?_⟩
        · linear_combination r3475
        · linear_combination r3476
        · linear_combination r3477
    simpa [base, twice, triple, digit33] using hraw
  have hhigh : rho 1165 =
      Bool.toZMod bits[182]! := by
    simpa only using rho_bit_of_map rho bits hbits 182 (by decide +kernel)
  have hlow : rho 1164 =
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
      (rho 2964) (rho 2965) (rho 2967 + rho 2968) ((1 : F) + rho 2970 + rho 2971)
      (rho 2972) (rho 2973) (rho 2974) (rho 2975) (rho 2976) (rho 2977)
      (by simpa [shifted33] using hshift2On)
      (by simpa [digit33] using hdigitOn)
      (by linear_combination r3478)
      (by linear_combination r3479)
      (by linear_combination r3480)
      (by linear_combination r3481)
      (by linear_combination r3482)
      (by linear_combination r3483)
    simpa [shifted33, digit33, acc34] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc34 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted33 rho) (digit33 rho) (acc34 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted33 rho) (digit33 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1165) (rho 1164)
      (base rho) (twice rho) (triple rho) (acc33 rho)
      (acc34 rho) :=
    ⟨shiftOnce33 rho, shifted33 rho, digit33 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window34 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3484, r3485, r3486, r3487, r3488, r3489, r3490, r3491, r3492, r3493, r3494, r3495, r3496, r3497, r3498, r3499, r3500, r3501, r3502, r3503, r3504, r3505, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3484 at r3484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3485 at r3485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3486 at r3486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3487 at r3487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3488 at r3488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3489 at r3489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3490 at r3490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3491 at r3491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3492 at r3492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3493 at r3493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3494 at r3494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3495 at r3495
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3496 at r3496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3497 at r3497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3498 at r3498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3499 at r3499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3500 at r3500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3501 at r3501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3502 at r3502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3503 at r3503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3504 at r3504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3505 at r3505
  have hshift1 : EdwardsBridge.doubleSpec (acc34 rho) (shiftOnce34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2976) (rho 2977) (rho 2978) (rho 2979) (rho 2980) (rho 2981) (rho 2982)
      (by simpa [acc34] using hacc)
      (by linear_combination r3484)
      (by linear_combination r3485)
      (by linear_combination r3486)
      (by linear_combination r3487)
      (by linear_combination r3488)
    simpa [acc34, shiftOnce34] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc34 rho) (shiftOnce34 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc34 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce34 rho) (shifted34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2981) (rho 2982) (rho 2983) (rho 2984) (rho 2985) (rho 2986) (rho 2987)
      (by simpa [shiftOnce34] using hshift1On)
      (by linear_combination r3489)
      (by linear_combination r3490)
      (by linear_combination r3491)
      (by linear_combination r3492)
      (by linear_combination r3493)
    simpa [shiftOnce34, shifted34] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce34 rho) (shifted34 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce34 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1163) (rho 1162)
      (base rho) (twice rho) (triple rho) (digit34 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1163) (rho 1162)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 2989 + rho 2990, (1 : F) + rho 2992 + rho 2993⟩ := by
      constructor
      · refine ⟨(rho 2988 + (rho 2216) - (0)), rho 2989, ?_, ?_, ?_⟩
        · linear_combination r3494
        · linear_combination r3495
        · linear_combination r3496
      · refine ⟨(rho 2991 + (rho 2217) - ((1 : F))), rho 2992, ?_, ?_, ?_⟩
        · linear_combination r3497
        · linear_combination r3498
        · linear_combination r3499
    simpa [base, twice, triple, digit34] using hraw
  have hhigh : rho 1163 =
      Bool.toZMod bits[180]! := by
    simpa only using rho_bit_of_map rho bits hbits 180 (by decide +kernel)
  have hlow : rho 1162 =
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
      (rho 2986) (rho 2987) (rho 2989 + rho 2990) ((1 : F) + rho 2992 + rho 2993)
      (rho 2994) (rho 2995) (rho 2996) (rho 2997) (rho 2998) (rho 2999)
      (by simpa [shifted34] using hshift2On)
      (by simpa [digit34] using hdigitOn)
      (by linear_combination r3500)
      (by linear_combination r3501)
      (by linear_combination r3502)
      (by linear_combination r3503)
      (by linear_combination r3504)
      (by linear_combination r3505)
    simpa [shifted34, digit34, acc35] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc35 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted34 rho) (digit34 rho) (acc35 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted34 rho) (digit34 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1163) (rho 1162)
      (base rho) (twice rho) (triple rho) (acc34 rho)
      (acc35 rho) :=
    ⟨shiftOnce34 rho, shifted34 rho, digit34 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window35 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
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
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p43, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart43 at p43
  rcases p43 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3506, r3507, r3508, r3509, r3510, r3511, r3512, r3513, r3514, r3515, r3516, r3517, r3518, r3519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart44 at p44
  rcases p44 with ⟨r3520, r3521, r3522, r3523, r3524, r3525, r3526, r3527, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3506 at r3506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3507 at r3507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3508 at r3508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3509 at r3509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3510 at r3510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3511 at r3511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3512 at r3512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3513 at r3513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3514 at r3514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3515 at r3515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3516 at r3516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3517 at r3517
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3518 at r3518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3519 at r3519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3520 at r3520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3521 at r3521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3522 at r3522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3523 at r3523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3524 at r3524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3525 at r3525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3526 at r3526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3527 at r3527
  have hshift1 : EdwardsBridge.doubleSpec (acc35 rho) (shiftOnce35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2998) (rho 2999) (rho 3000) (rho 3001) (rho 3002) (rho 3003) (rho 3004)
      (by simpa [acc35] using hacc)
      (by linear_combination r3506)
      (by linear_combination r3507)
      (by linear_combination r3508)
      (by linear_combination r3509)
      (by linear_combination r3510)
    simpa [acc35, shiftOnce35] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc35 rho) (shiftOnce35 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc35 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce35 rho) (shifted35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3003) (rho 3004) (rho 3005) (rho 3006) (rho 3007) (rho 3008) (rho 3009)
      (by simpa [shiftOnce35] using hshift1On)
      (by linear_combination r3511)
      (by linear_combination r3512)
      (by linear_combination r3513)
      (by linear_combination r3514)
      (by linear_combination r3515)
    simpa [shiftOnce35, shifted35] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce35 rho) (shifted35 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce35 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1161) (rho 1160)
      (base rho) (twice rho) (triple rho) (digit35 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1161) (rho 1160)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3011 + rho 3012, (1 : F) + rho 3014 + rho 3015⟩ := by
      constructor
      · refine ⟨(rho 3010 + (rho 2216) - (0)), rho 3011, ?_, ?_, ?_⟩
        · linear_combination r3516
        · linear_combination r3517
        · linear_combination r3518
      · refine ⟨(rho 3013 + (rho 2217) - ((1 : F))), rho 3014, ?_, ?_, ?_⟩
        · linear_combination r3519
        · linear_combination r3520
        · linear_combination r3521
    simpa [base, twice, triple, digit35] using hraw
  have hhigh : rho 1161 =
      Bool.toZMod bits[178]! := by
    simpa only using rho_bit_of_map rho bits hbits 178 (by decide +kernel)
  have hlow : rho 1160 =
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
      (rho 3008) (rho 3009) (rho 3011 + rho 3012) ((1 : F) + rho 3014 + rho 3015)
      (rho 3016) (rho 3017) (rho 3018) (rho 3019) (rho 3020) (rho 3021)
      (by simpa [shifted35] using hshift2On)
      (by simpa [digit35] using hdigitOn)
      (by linear_combination r3522)
      (by linear_combination r3523)
      (by linear_combination r3524)
      (by linear_combination r3525)
      (by linear_combination r3526)
      (by linear_combination r3527)
    simpa [shifted35, digit35, acc36] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc36 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted35 rho) (digit35 rho) (acc36 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted35 rho) (digit35 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1161) (rho 1160)
      (base rho) (twice rho) (triple rho) (acc35 rho)
      (acc36 rho) :=
    ⟨shiftOnce35 rho, shifted35 rho, digit35 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
