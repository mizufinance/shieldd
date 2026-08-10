import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window78 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc78 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[92]! (scalarBits rho)[91]!
        (base rho) (twice rho) (triple rho) (acc78 rho)
        (acc79 rho) ∧
      EdwardsBridge.onCurve (acc79 rho) := by
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
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, r4473, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4452 at r4452
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4453 at r4453
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4454 at r4454
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4455 at r4455
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4456 at r4456
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4457 at r4457
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4458 at r4458
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4459 at r4459
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4460 at r4460
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4461 at r4461
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4462 at r4462
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4463 at r4463
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4464 at r4464
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4465 at r4465
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4466 at r4466
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4467 at r4467
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4468 at r4468
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4469 at r4469
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4470 at r4470
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4471 at r4471
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4472 at r4472
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4473 at r4473
  have hshift1 : EdwardsBridge.doubleSpec (acc78 rho) (shiftOnce78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3944) (rho 3945) (rho 3946) (rho 3947) (rho 3948) (rho 3949) (rho 3950)
      (by simpa [acc78] using hacc)
      (by linear_combination r4452)
      (by linear_combination r4453)
      (by linear_combination r4454)
      (by linear_combination r4455)
      (by linear_combination r4456)
    simpa [acc78, shiftOnce78] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc78 rho) (shiftOnce78 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc78 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce78 rho) (shifted78 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3949) (rho 3950) (rho 3951) (rho 3952) (rho 3953) (rho 3954) (rho 3955)
      (by simpa [shiftOnce78] using hshift1On)
      (by linear_combination r4457)
      (by linear_combination r4458)
      (by linear_combination r4459)
      (by linear_combination r4460)
      (by linear_combination r4461)
    simpa [shiftOnce78, shifted78] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted78 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce78 rho) (shifted78 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce78 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1075) (rho 1074)
      (base rho) (twice rho) (triple rho) (digit78 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1075) (rho 1074)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3957 + rho 3958, (1 : F) + rho 3960 + rho 3961⟩ := by
      constructor
      · refine ⟨(rho 3956 + (rho 2216) - (0)), rho 3957, ?_, ?_, ?_⟩
        · linear_combination r4462
        · linear_combination r4463
        · linear_combination r4464
      · refine ⟨(rho 3959 + (rho 2217) - ((1 : F))), rho 3960, ?_, ?_, ?_⟩
        · linear_combination r4465
        · linear_combination r4466
        · linear_combination r4467
    simpa [base, twice, triple, digit78] using hraw
  have hhigh : rho 1075 =
      Bool.toZMod bits[92]! := by
    simpa only using rho_bit_of_map rho bits hbits 92 (by decide +kernel)
  have hlow : rho 1074 =
      Bool.toZMod bits[91]! := by
    simpa only using rho_bit_of_map rho bits hbits 91 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[92]! bits[91]! (base rho) (twice rho) (triple rho)
    (digit78 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit78 rho) := by
    rw [hdigit]
    cases bits[92]! <;> cases bits[91]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted78 rho) (digit78 rho) (acc79 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3954) (rho 3955) (rho 3957 + rho 3958) ((1 : F) + rho 3960 + rho 3961)
      (rho 3962) (rho 3963) (rho 3964) (rho 3965) (rho 3966) (rho 3967)
      (by simpa [shifted78] using hshift2On)
      (by simpa [digit78] using hdigitOn)
      (by linear_combination r4468)
      (by linear_combination r4469)
      (by linear_combination r4470)
      (by linear_combination r4471)
      (by linear_combination r4472)
      (by linear_combination r4473)
    simpa [shifted78, digit78, acc79] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc79 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted78 rho) (digit78 rho) (acc79 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted78 rho) (digit78 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1075) (rho 1074)
      (base rho) (twice rho) (triple rho) (acc78 rho)
      (acc79 rho) :=
    ⟨shiftOnce78 rho, shifted78 rho, digit78 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window79 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc79 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[90]! (scalarBits rho)[89]!
        (base rho) (twice rho) (triple rho) (acc79 rho)
        (acc80 rho) ∧
      EdwardsBridge.onCurve (acc80 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p55, p56, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4474 at r4474
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4475 at r4475
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4476 at r4476
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4477 at r4477
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4478 at r4478
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4479 at r4479
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4480 at r4480
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4481 at r4481
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4482 at r4482
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4483 at r4483
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4484 at r4484
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4485 at r4485
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4486 at r4486
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4487 at r4487
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4488 at r4488
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4489 at r4489
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4490 at r4490
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4491 at r4491
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4492 at r4492
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4493 at r4493
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4494 at r4494
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4495 at r4495
  have hshift1 : EdwardsBridge.doubleSpec (acc79 rho) (shiftOnce79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3966) (rho 3967) (rho 3968) (rho 3969) (rho 3970) (rho 3971) (rho 3972)
      (by simpa [acc79] using hacc)
      (by linear_combination r4474)
      (by linear_combination r4475)
      (by linear_combination r4476)
      (by linear_combination r4477)
      (by linear_combination r4478)
    simpa [acc79, shiftOnce79] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc79 rho) (shiftOnce79 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc79 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce79 rho) (shifted79 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3971) (rho 3972) (rho 3973) (rho 3974) (rho 3975) (rho 3976) (rho 3977)
      (by simpa [shiftOnce79] using hshift1On)
      (by linear_combination r4479)
      (by linear_combination r4480)
      (by linear_combination r4481)
      (by linear_combination r4482)
      (by linear_combination r4483)
    simpa [shiftOnce79, shifted79] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted79 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce79 rho) (shifted79 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce79 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1073) (rho 1072)
      (base rho) (twice rho) (triple rho) (digit79 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1073) (rho 1072)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3979 + rho 3980, (1 : F) + rho 3982 + rho 3983⟩ := by
      constructor
      · refine ⟨(rho 3978 + (rho 2216) - (0)), rho 3979, ?_, ?_, ?_⟩
        · linear_combination r4484
        · linear_combination r4485
        · linear_combination r4486
      · refine ⟨(rho 3981 + (rho 2217) - ((1 : F))), rho 3982, ?_, ?_, ?_⟩
        · linear_combination r4487
        · linear_combination r4488
        · linear_combination r4489
    simpa [base, twice, triple, digit79] using hraw
  have hhigh : rho 1073 =
      Bool.toZMod bits[90]! := by
    simpa only using rho_bit_of_map rho bits hbits 90 (by decide +kernel)
  have hlow : rho 1072 =
      Bool.toZMod bits[89]! := by
    simpa only using rho_bit_of_map rho bits hbits 89 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[90]! bits[89]! (base rho) (twice rho) (triple rho)
    (digit79 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit79 rho) := by
    rw [hdigit]
    cases bits[90]! <;> cases bits[89]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted79 rho) (digit79 rho) (acc80 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3976) (rho 3977) (rho 3979 + rho 3980) ((1 : F) + rho 3982 + rho 3983)
      (rho 3984) (rho 3985) (rho 3986) (rho 3987) (rho 3988) (rho 3989)
      (by simpa [shifted79] using hshift2On)
      (by simpa [digit79] using hdigitOn)
      (by linear_combination r4490)
      (by linear_combination r4491)
      (by linear_combination r4492)
      (by linear_combination r4493)
      (by linear_combination r4494)
      (by linear_combination r4495)
    simpa [shifted79, digit79, acc80] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc80 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted79 rho) (digit79 rho) (acc80 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted79 rho) (digit79 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1073) (rho 1072)
      (base rho) (twice rho) (triple rho) (acc79 rho)
      (acc80 rho) :=
    ⟨shiftOnce79 rho, shifted79 rho, digit79 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window80 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc80 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[88]! (scalarBits rho)[87]!
        (base rho) (twice rho) (triple rho) (acc80 rho)
        (acc81 rho) ∧
      EdwardsBridge.onCurve (acc81 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4496 at r4496
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4497 at r4497
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4498 at r4498
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4499 at r4499
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4500 at r4500
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4501 at r4501
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4502 at r4502
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4503 at r4503
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4504 at r4504
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4505 at r4505
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4506 at r4506
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4507 at r4507
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4508 at r4508
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4509 at r4509
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4510 at r4510
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4511 at r4511
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4512 at r4512
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4513 at r4513
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4514 at r4514
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4515 at r4515
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4516 at r4516
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4517 at r4517
  have hshift1 : EdwardsBridge.doubleSpec (acc80 rho) (shiftOnce80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3988) (rho 3989) (rho 3990) (rho 3991) (rho 3992) (rho 3993) (rho 3994)
      (by simpa [acc80] using hacc)
      (by linear_combination r4496)
      (by linear_combination r4497)
      (by linear_combination r4498)
      (by linear_combination r4499)
      (by linear_combination r4500)
    simpa [acc80, shiftOnce80] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc80 rho) (shiftOnce80 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc80 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce80 rho) (shifted80 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3993) (rho 3994) (rho 3995) (rho 3996) (rho 3997) (rho 3998) (rho 3999)
      (by simpa [shiftOnce80] using hshift1On)
      (by linear_combination r4501)
      (by linear_combination r4502)
      (by linear_combination r4503)
      (by linear_combination r4504)
      (by linear_combination r4505)
    simpa [shiftOnce80, shifted80] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted80 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce80 rho) (shifted80 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce80 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1071) (rho 1070)
      (base rho) (twice rho) (triple rho) (digit80 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1071) (rho 1070)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4001 + rho 4002, (1 : F) + rho 4004 + rho 4005⟩ := by
      constructor
      · refine ⟨(rho 4000 + (rho 2216) - (0)), rho 4001, ?_, ?_, ?_⟩
        · linear_combination r4506
        · linear_combination r4507
        · linear_combination r4508
      · refine ⟨(rho 4003 + (rho 2217) - ((1 : F))), rho 4004, ?_, ?_, ?_⟩
        · linear_combination r4509
        · linear_combination r4510
        · linear_combination r4511
    simpa [base, twice, triple, digit80] using hraw
  have hhigh : rho 1071 =
      Bool.toZMod bits[88]! := by
    simpa only using rho_bit_of_map rho bits hbits 88 (by decide +kernel)
  have hlow : rho 1070 =
      Bool.toZMod bits[87]! := by
    simpa only using rho_bit_of_map rho bits hbits 87 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[88]! bits[87]! (base rho) (twice rho) (triple rho)
    (digit80 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit80 rho) := by
    rw [hdigit]
    cases bits[88]! <;> cases bits[87]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted80 rho) (digit80 rho) (acc81 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3998) (rho 3999) (rho 4001 + rho 4002) ((1 : F) + rho 4004 + rho 4005)
      (rho 4006) (rho 4007) (rho 4008) (rho 4009) (rho 4010) (rho 4011)
      (by simpa [shifted80] using hshift2On)
      (by simpa [digit80] using hdigitOn)
      (by linear_combination r4512)
      (by linear_combination r4513)
      (by linear_combination r4514)
      (by linear_combination r4515)
      (by linear_combination r4516)
      (by linear_combination r4517)
    simpa [shifted80, digit80, acc81] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc81 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted80 rho) (digit80 rho) (acc81 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted80 rho) (digit80 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1071) (rho 1070)
      (base rho) (twice rho) (triple rho) (acc80 rho)
      (acc81 rho) :=
    ⟨shiftOnce80 rho, shifted80 rho, digit80 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window81 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc81 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[86]! (scalarBits rho)[85]!
        (base rho) (twice rho) (triple rho) (acc81 rho)
        (acc82 rho) ∧
      EdwardsBridge.onCurve (acc82 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4518 at r4518
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4519 at r4519
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4520 at r4520
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4521 at r4521
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4522 at r4522
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4523 at r4523
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4524 at r4524
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4525 at r4525
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4526 at r4526
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4527 at r4527
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4528 at r4528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4529 at r4529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4530 at r4530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4531 at r4531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4532 at r4532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4533 at r4533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4534 at r4534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4535 at r4535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4536 at r4536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4537 at r4537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4538 at r4538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4539 at r4539
  have hshift1 : EdwardsBridge.doubleSpec (acc81 rho) (shiftOnce81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4010) (rho 4011) (rho 4012) (rho 4013) (rho 4014) (rho 4015) (rho 4016)
      (by simpa [acc81] using hacc)
      (by linear_combination r4518)
      (by linear_combination r4519)
      (by linear_combination r4520)
      (by linear_combination r4521)
      (by linear_combination r4522)
    simpa [acc81, shiftOnce81] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc81 rho) (shiftOnce81 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc81 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce81 rho) (shifted81 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4015) (rho 4016) (rho 4017) (rho 4018) (rho 4019) (rho 4020) (rho 4021)
      (by simpa [shiftOnce81] using hshift1On)
      (by linear_combination r4523)
      (by linear_combination r4524)
      (by linear_combination r4525)
      (by linear_combination r4526)
      (by linear_combination r4527)
    simpa [shiftOnce81, shifted81] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted81 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce81 rho) (shifted81 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce81 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1069) (rho 1068)
      (base rho) (twice rho) (triple rho) (digit81 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1069) (rho 1068)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4023 + rho 4024, (1 : F) + rho 4026 + rho 4027⟩ := by
      constructor
      · refine ⟨(rho 4022 + (rho 2216) - (0)), rho 4023, ?_, ?_, ?_⟩
        · linear_combination r4528
        · linear_combination r4529
        · linear_combination r4530
      · refine ⟨(rho 4025 + (rho 2217) - ((1 : F))), rho 4026, ?_, ?_, ?_⟩
        · linear_combination r4531
        · linear_combination r4532
        · linear_combination r4533
    simpa [base, twice, triple, digit81] using hraw
  have hhigh : rho 1069 =
      Bool.toZMod bits[86]! := by
    simpa only using rho_bit_of_map rho bits hbits 86 (by decide +kernel)
  have hlow : rho 1068 =
      Bool.toZMod bits[85]! := by
    simpa only using rho_bit_of_map rho bits hbits 85 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[86]! bits[85]! (base rho) (twice rho) (triple rho)
    (digit81 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit81 rho) := by
    rw [hdigit]
    cases bits[86]! <;> cases bits[85]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted81 rho) (digit81 rho) (acc82 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4020) (rho 4021) (rho 4023 + rho 4024) ((1 : F) + rho 4026 + rho 4027)
      (rho 4028) (rho 4029) (rho 4030) (rho 4031) (rho 4032) (rho 4033)
      (by simpa [shifted81] using hshift2On)
      (by simpa [digit81] using hdigitOn)
      (by linear_combination r4534)
      (by linear_combination r4535)
      (by linear_combination r4536)
      (by linear_combination r4537)
      (by linear_combination r4538)
      (by linear_combination r4539)
    simpa [shifted81, digit81, acc82] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc82 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted81 rho) (digit81 rho) (acc82 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted81 rho) (digit81 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1069) (rho 1068)
      (base rho) (twice rho) (triple rho) (acc81 rho)
      (acc82 rho) :=
    ⟨shiftOnce81 rho, shifted81 rho, digit81 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window82 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc82 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[84]! (scalarBits rho)[83]!
        (base rho) (twice rho) (triple rho) (acc82 rho)
        (acc83 rho) ∧
      EdwardsBridge.onCurve (acc83 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p56, p57, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart56 at p56
  rcases p56 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4540 at r4540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4541 at r4541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4542 at r4542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4543 at r4543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4544 at r4544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4545 at r4545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4546 at r4546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4547 at r4547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4548 at r4548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4549 at r4549
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4550 at r4550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4551 at r4551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4552 at r4552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4553 at r4553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4554 at r4554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4555 at r4555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4556 at r4556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4557 at r4557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4558 at r4558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4559 at r4559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4560 at r4560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4561 at r4561
  have hshift1 : EdwardsBridge.doubleSpec (acc82 rho) (shiftOnce82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4032) (rho 4033) (rho 4034) (rho 4035) (rho 4036) (rho 4037) (rho 4038)
      (by simpa [acc82] using hacc)
      (by linear_combination r4540)
      (by linear_combination r4541)
      (by linear_combination r4542)
      (by linear_combination r4543)
      (by linear_combination r4544)
    simpa [acc82, shiftOnce82] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc82 rho) (shiftOnce82 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc82 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce82 rho) (shifted82 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4037) (rho 4038) (rho 4039) (rho 4040) (rho 4041) (rho 4042) (rho 4043)
      (by simpa [shiftOnce82] using hshift1On)
      (by linear_combination r4545)
      (by linear_combination r4546)
      (by linear_combination r4547)
      (by linear_combination r4548)
      (by linear_combination r4549)
    simpa [shiftOnce82, shifted82] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted82 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce82 rho) (shifted82 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce82 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1067) (rho 1066)
      (base rho) (twice rho) (triple rho) (digit82 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1067) (rho 1066)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4045 + rho 4046, (1 : F) + rho 4048 + rho 4049⟩ := by
      constructor
      · refine ⟨(rho 4044 + (rho 2216) - (0)), rho 4045, ?_, ?_, ?_⟩
        · linear_combination r4550
        · linear_combination r4551
        · linear_combination r4552
      · refine ⟨(rho 4047 + (rho 2217) - ((1 : F))), rho 4048, ?_, ?_, ?_⟩
        · linear_combination r4553
        · linear_combination r4554
        · linear_combination r4555
    simpa [base, twice, triple, digit82] using hraw
  have hhigh : rho 1067 =
      Bool.toZMod bits[84]! := by
    simpa only using rho_bit_of_map rho bits hbits 84 (by decide +kernel)
  have hlow : rho 1066 =
      Bool.toZMod bits[83]! := by
    simpa only using rho_bit_of_map rho bits hbits 83 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[84]! bits[83]! (base rho) (twice rho) (triple rho)
    (digit82 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit82 rho) := by
    rw [hdigit]
    cases bits[84]! <;> cases bits[83]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted82 rho) (digit82 rho) (acc83 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4042) (rho 4043) (rho 4045 + rho 4046) ((1 : F) + rho 4048 + rho 4049)
      (rho 4050) (rho 4051) (rho 4052) (rho 4053) (rho 4054) (rho 4055)
      (by simpa [shifted82] using hshift2On)
      (by simpa [digit82] using hdigitOn)
      (by linear_combination r4556)
      (by linear_combination r4557)
      (by linear_combination r4558)
      (by linear_combination r4559)
      (by linear_combination r4560)
      (by linear_combination r4561)
    simpa [shifted82, digit82, acc83] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc83 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted82 rho) (digit82 rho) (acc83 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted82 rho) (digit82 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1067) (rho 1066)
      (base rho) (twice rho) (triple rho) (acc82 rho)
      (acc83 rho) :=
    ⟨shiftOnce82 rho, shifted82 rho, digit82 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window83 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc83 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[82]! (scalarBits rho)[81]!
        (base rho) (twice rho) (triple rho) (acc83 rho)
        (acc84 rho) ∧
      EdwardsBridge.onCurve (acc84 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p57, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart57 at p57
  rcases p57 with ⟨_, _, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4562 at r4562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4563 at r4563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4564 at r4564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4565 at r4565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4566 at r4566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4567 at r4567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4568 at r4568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4569 at r4569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4570 at r4570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4571 at r4571
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4572 at r4572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4573 at r4573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4574 at r4574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4575 at r4575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4576 at r4576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4577 at r4577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4578 at r4578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4579 at r4579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4580 at r4580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4581 at r4581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4582 at r4582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4583 at r4583
  have hshift1 : EdwardsBridge.doubleSpec (acc83 rho) (shiftOnce83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4054) (rho 4055) (rho 4056) (rho 4057) (rho 4058) (rho 4059) (rho 4060)
      (by simpa [acc83] using hacc)
      (by linear_combination r4562)
      (by linear_combination r4563)
      (by linear_combination r4564)
      (by linear_combination r4565)
      (by linear_combination r4566)
    simpa [acc83, shiftOnce83] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc83 rho) (shiftOnce83 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc83 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce83 rho) (shifted83 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4059) (rho 4060) (rho 4061) (rho 4062) (rho 4063) (rho 4064) (rho 4065)
      (by simpa [shiftOnce83] using hshift1On)
      (by linear_combination r4567)
      (by linear_combination r4568)
      (by linear_combination r4569)
      (by linear_combination r4570)
      (by linear_combination r4571)
    simpa [shiftOnce83, shifted83] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted83 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce83 rho) (shifted83 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce83 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1065) (rho 1064)
      (base rho) (twice rho) (triple rho) (digit83 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1065) (rho 1064)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4067 + rho 4068, (1 : F) + rho 4070 + rho 4071⟩ := by
      constructor
      · refine ⟨(rho 4066 + (rho 2216) - (0)), rho 4067, ?_, ?_, ?_⟩
        · linear_combination r4572
        · linear_combination r4573
        · linear_combination r4574
      · refine ⟨(rho 4069 + (rho 2217) - ((1 : F))), rho 4070, ?_, ?_, ?_⟩
        · linear_combination r4575
        · linear_combination r4576
        · linear_combination r4577
    simpa [base, twice, triple, digit83] using hraw
  have hhigh : rho 1065 =
      Bool.toZMod bits[82]! := by
    simpa only using rho_bit_of_map rho bits hbits 82 (by decide +kernel)
  have hlow : rho 1064 =
      Bool.toZMod bits[81]! := by
    simpa only using rho_bit_of_map rho bits hbits 81 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[82]! bits[81]! (base rho) (twice rho) (triple rho)
    (digit83 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit83 rho) := by
    rw [hdigit]
    cases bits[82]! <;> cases bits[81]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted83 rho) (digit83 rho) (acc84 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4064) (rho 4065) (rho 4067 + rho 4068) ((1 : F) + rho 4070 + rho 4071)
      (rho 4072) (rho 4073) (rho 4074) (rho 4075) (rho 4076) (rho 4077)
      (by simpa [shifted83] using hshift2On)
      (by simpa [digit83] using hdigitOn)
      (by linear_combination r4578)
      (by linear_combination r4579)
      (by linear_combination r4580)
      (by linear_combination r4581)
      (by linear_combination r4582)
      (by linear_combination r4583)
    simpa [shifted83, digit83, acc84] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc84 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted83 rho) (digit83 rho) (acc84 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted83 rho) (digit83 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1065) (rho 1064)
      (base rho) (twice rho) (triple rho) (acc83 rho)
      (acc84 rho) :=
    ⟨shiftOnce83 rho, shifted83 rho, digit83 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
