import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window36 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc36 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[176]! (scalarBits rho)[175]!
        (base rho) (twice rho) (triple rho) (acc36 rho)
        (acc37 rho) ∧
      EdwardsBridge.onCurve (acc37 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, r3528, r3529, r3530, r3531, r3532, r3533, r3534, r3535, r3536, r3537, r3538, r3539, r3540, r3541, r3542, r3543, r3544, r3545, r3546, r3547, r3548, r3549, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3528 at r3528
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3529 at r3529
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3530 at r3530
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3531 at r3531
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3532 at r3532
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3533 at r3533
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3534 at r3534
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3535 at r3535
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3536 at r3536
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3537 at r3537
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3538 at r3538
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3539 at r3539
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3540 at r3540
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3541 at r3541
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3542 at r3542
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3543 at r3543
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3544 at r3544
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3545 at r3545
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3546 at r3546
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3547 at r3547
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3548 at r3548
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3549 at r3549
  have hshift1 : EdwardsBridge.doubleSpec (acc36 rho) (shiftOnce36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3020) (rho 3021) (rho 3022) (rho 3023) (rho 3024) (rho 3025) (rho 3026)
      (by simpa [acc36] using hacc)
      (by linear_combination r3528)
      (by linear_combination r3529)
      (by linear_combination r3530)
      (by linear_combination r3531)
      (by linear_combination r3532)
    simpa [acc36, shiftOnce36] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc36 rho) (shiftOnce36 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc36 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce36 rho) (shifted36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3025) (rho 3026) (rho 3027) (rho 3028) (rho 3029) (rho 3030) (rho 3031)
      (by simpa [shiftOnce36] using hshift1On)
      (by linear_combination r3533)
      (by linear_combination r3534)
      (by linear_combination r3535)
      (by linear_combination r3536)
      (by linear_combination r3537)
    simpa [shiftOnce36, shifted36] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce36 rho) (shifted36 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce36 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1159) (rho 1158)
      (base rho) (twice rho) (triple rho) (digit36 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1159) (rho 1158)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3033 + rho 3034, (1 : F) + rho 3036 + rho 3037⟩ := by
      constructor
      · refine ⟨(rho 3032 + (rho 2216) - (0)), rho 3033, ?_, ?_, ?_⟩
        · linear_combination r3538
        · linear_combination r3539
        · linear_combination r3540
      · refine ⟨(rho 3035 + (rho 2217) - ((1 : F))), rho 3036, ?_, ?_, ?_⟩
        · linear_combination r3541
        · linear_combination r3542
        · linear_combination r3543
    simpa [base, twice, triple, digit36] using hraw
  have hhigh : rho 1159 =
      Bool.toZMod bits[176]! := by
    simpa only using rho_bit_of_map rho bits hbits 176 (by decide +kernel)
  have hlow : rho 1158 =
      Bool.toZMod bits[175]! := by
    simpa only using rho_bit_of_map rho bits hbits 175 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[176]! bits[175]! (base rho) (twice rho) (triple rho)
    (digit36 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit36 rho) := by
    rw [hdigit]
    cases bits[176]! <;> cases bits[175]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted36 rho) (digit36 rho) (acc37 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3030) (rho 3031) (rho 3033 + rho 3034) ((1 : F) + rho 3036 + rho 3037)
      (rho 3038) (rho 3039) (rho 3040) (rho 3041) (rho 3042) (rho 3043)
      (by simpa [shifted36] using hshift2On)
      (by simpa [digit36] using hdigitOn)
      (by linear_combination r3544)
      (by linear_combination r3545)
      (by linear_combination r3546)
      (by linear_combination r3547)
      (by linear_combination r3548)
      (by linear_combination r3549)
    simpa [shifted36, digit36, acc37] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc37 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted36 rho) (digit36 rho) (acc37 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted36 rho) (digit36 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1159) (rho 1158)
      (base rho) (twice rho) (triple rho) (acc36 rho)
      (acc37 rho) :=
    ⟨shiftOnce36 rho, shifted36 rho, digit36 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window37 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc37 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[174]! (scalarBits rho)[173]!
        (base rho) (twice rho) (triple rho) (acc37 rho)
        (acc38 rho) ∧
      EdwardsBridge.onCurve (acc38 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3550, r3551, r3552, r3553, r3554, r3555, r3556, r3557, r3558, r3559, r3560, r3561, r3562, r3563, r3564, r3565, r3566, r3567, r3568, r3569, r3570, r3571, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3550 at r3550
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3551 at r3551
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3552 at r3552
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3553 at r3553
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3554 at r3554
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3555 at r3555
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3556 at r3556
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3557 at r3557
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3558 at r3558
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3559 at r3559
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3560 at r3560
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3561 at r3561
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3562 at r3562
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3563 at r3563
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3564 at r3564
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3565 at r3565
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3566 at r3566
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3567 at r3567
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3568 at r3568
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3569 at r3569
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3570 at r3570
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3571 at r3571
  have hshift1 : EdwardsBridge.doubleSpec (acc37 rho) (shiftOnce37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3042) (rho 3043) (rho 3044) (rho 3045) (rho 3046) (rho 3047) (rho 3048)
      (by simpa [acc37] using hacc)
      (by linear_combination r3550)
      (by linear_combination r3551)
      (by linear_combination r3552)
      (by linear_combination r3553)
      (by linear_combination r3554)
    simpa [acc37, shiftOnce37] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc37 rho) (shiftOnce37 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc37 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce37 rho) (shifted37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3047) (rho 3048) (rho 3049) (rho 3050) (rho 3051) (rho 3052) (rho 3053)
      (by simpa [shiftOnce37] using hshift1On)
      (by linear_combination r3555)
      (by linear_combination r3556)
      (by linear_combination r3557)
      (by linear_combination r3558)
      (by linear_combination r3559)
    simpa [shiftOnce37, shifted37] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce37 rho) (shifted37 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce37 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1157) (rho 1156)
      (base rho) (twice rho) (triple rho) (digit37 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1157) (rho 1156)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3055 + rho 3056, (1 : F) + rho 3058 + rho 3059⟩ := by
      constructor
      · refine ⟨(rho 3054 + (rho 2216) - (0)), rho 3055, ?_, ?_, ?_⟩
        · linear_combination r3560
        · linear_combination r3561
        · linear_combination r3562
      · refine ⟨(rho 3057 + (rho 2217) - ((1 : F))), rho 3058, ?_, ?_, ?_⟩
        · linear_combination r3563
        · linear_combination r3564
        · linear_combination r3565
    simpa [base, twice, triple, digit37] using hraw
  have hhigh : rho 1157 =
      Bool.toZMod bits[174]! := by
    simpa only using rho_bit_of_map rho bits hbits 174 (by decide +kernel)
  have hlow : rho 1156 =
      Bool.toZMod bits[173]! := by
    simpa only using rho_bit_of_map rho bits hbits 173 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[174]! bits[173]! (base rho) (twice rho) (triple rho)
    (digit37 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit37 rho) := by
    rw [hdigit]
    cases bits[174]! <;> cases bits[173]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted37 rho) (digit37 rho) (acc38 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3052) (rho 3053) (rho 3055 + rho 3056) ((1 : F) + rho 3058 + rho 3059)
      (rho 3060) (rho 3061) (rho 3062) (rho 3063) (rho 3064) (rho 3065)
      (by simpa [shifted37] using hshift2On)
      (by simpa [digit37] using hdigitOn)
      (by linear_combination r3566)
      (by linear_combination r3567)
      (by linear_combination r3568)
      (by linear_combination r3569)
      (by linear_combination r3570)
      (by linear_combination r3571)
    simpa [shifted37, digit37, acc38] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc38 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted37 rho) (digit37 rho) (acc38 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted37 rho) (digit37 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1157) (rho 1156)
      (base rho) (twice rho) (triple rho) (acc37 rho)
      (acc38 rho) :=
    ⟨shiftOnce37 rho, shifted37 rho, digit37 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window38 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc38 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[172]! (scalarBits rho)[171]!
        (base rho) (twice rho) (triple rho) (acc38 rho)
        (acc39 rho) ∧
      EdwardsBridge.onCurve (acc39 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3572, r3573, r3574, r3575, r3576, r3577, r3578, r3579, r3580, r3581, r3582, r3583, r3584, r3585, r3586, r3587, r3588, r3589, r3590, r3591, r3592, r3593, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3572 at r3572
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3573 at r3573
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3574 at r3574
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3575 at r3575
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3576 at r3576
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3577 at r3577
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3578 at r3578
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3579 at r3579
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3580 at r3580
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3581 at r3581
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3582 at r3582
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3583 at r3583
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3584 at r3584
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3585 at r3585
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3586 at r3586
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3587 at r3587
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3588 at r3588
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3589 at r3589
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3590 at r3590
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3591 at r3591
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3592 at r3592
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3593 at r3593
  have hshift1 : EdwardsBridge.doubleSpec (acc38 rho) (shiftOnce38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3064) (rho 3065) (rho 3066) (rho 3067) (rho 3068) (rho 3069) (rho 3070)
      (by simpa [acc38] using hacc)
      (by linear_combination r3572)
      (by linear_combination r3573)
      (by linear_combination r3574)
      (by linear_combination r3575)
      (by linear_combination r3576)
    simpa [acc38, shiftOnce38] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc38 rho) (shiftOnce38 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc38 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce38 rho) (shifted38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3069) (rho 3070) (rho 3071) (rho 3072) (rho 3073) (rho 3074) (rho 3075)
      (by simpa [shiftOnce38] using hshift1On)
      (by linear_combination r3577)
      (by linear_combination r3578)
      (by linear_combination r3579)
      (by linear_combination r3580)
      (by linear_combination r3581)
    simpa [shiftOnce38, shifted38] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce38 rho) (shifted38 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce38 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1155) (rho 1154)
      (base rho) (twice rho) (triple rho) (digit38 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1155) (rho 1154)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3077 + rho 3078, (1 : F) + rho 3080 + rho 3081⟩ := by
      constructor
      · refine ⟨(rho 3076 + (rho 2216) - (0)), rho 3077, ?_, ?_, ?_⟩
        · linear_combination r3582
        · linear_combination r3583
        · linear_combination r3584
      · refine ⟨(rho 3079 + (rho 2217) - ((1 : F))), rho 3080, ?_, ?_, ?_⟩
        · linear_combination r3585
        · linear_combination r3586
        · linear_combination r3587
    simpa [base, twice, triple, digit38] using hraw
  have hhigh : rho 1155 =
      Bool.toZMod bits[172]! := by
    simpa only using rho_bit_of_map rho bits hbits 172 (by decide +kernel)
  have hlow : rho 1154 =
      Bool.toZMod bits[171]! := by
    simpa only using rho_bit_of_map rho bits hbits 171 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[172]! bits[171]! (base rho) (twice rho) (triple rho)
    (digit38 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit38 rho) := by
    rw [hdigit]
    cases bits[172]! <;> cases bits[171]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted38 rho) (digit38 rho) (acc39 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3074) (rho 3075) (rho 3077 + rho 3078) ((1 : F) + rho 3080 + rho 3081)
      (rho 3082) (rho 3083) (rho 3084) (rho 3085) (rho 3086) (rho 3087)
      (by simpa [shifted38] using hshift2On)
      (by simpa [digit38] using hdigitOn)
      (by linear_combination r3588)
      (by linear_combination r3589)
      (by linear_combination r3590)
      (by linear_combination r3591)
      (by linear_combination r3592)
      (by linear_combination r3593)
    simpa [shifted38, digit38, acc39] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc39 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted38 rho) (digit38 rho) (acc39 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted38 rho) (digit38 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1155) (rho 1154)
      (base rho) (twice rho) (triple rho) (acc38 rho)
      (acc39 rho) :=
    ⟨shiftOnce38 rho, shifted38 rho, digit38 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window39 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc39 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[170]! (scalarBits rho)[169]!
        (base rho) (twice rho) (triple rho) (acc39 rho)
        (acc40 rho) ∧
      EdwardsBridge.onCurve (acc40 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p44, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart44 at p44
  rcases p44 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3594, r3595, r3596, r3597, r3598, r3599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart45 at p45
  rcases p45 with ⟨r3600, r3601, r3602, r3603, r3604, r3605, r3606, r3607, r3608, r3609, r3610, r3611, r3612, r3613, r3614, r3615, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3594 at r3594
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3595 at r3595
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3596 at r3596
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3597 at r3597
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3598 at r3598
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3599 at r3599
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3600 at r3600
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3601 at r3601
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3602 at r3602
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3603 at r3603
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3604 at r3604
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3605 at r3605
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3606 at r3606
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3607 at r3607
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3608 at r3608
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3609 at r3609
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3610 at r3610
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3611 at r3611
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3612 at r3612
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3613 at r3613
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3614 at r3614
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3615 at r3615
  have hshift1 : EdwardsBridge.doubleSpec (acc39 rho) (shiftOnce39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3086) (rho 3087) (rho 3088) (rho 3089) (rho 3090) (rho 3091) (rho 3092)
      (by simpa [acc39] using hacc)
      (by linear_combination r3594)
      (by linear_combination r3595)
      (by linear_combination r3596)
      (by linear_combination r3597)
      (by linear_combination r3598)
    simpa [acc39, shiftOnce39] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc39 rho) (shiftOnce39 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc39 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce39 rho) (shifted39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3091) (rho 3092) (rho 3093) (rho 3094) (rho 3095) (rho 3096) (rho 3097)
      (by simpa [shiftOnce39] using hshift1On)
      (by linear_combination r3599)
      (by linear_combination r3600)
      (by linear_combination r3601)
      (by linear_combination r3602)
      (by linear_combination r3603)
    simpa [shiftOnce39, shifted39] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce39 rho) (shifted39 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce39 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1153) (rho 1152)
      (base rho) (twice rho) (triple rho) (digit39 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1153) (rho 1152)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3099 + rho 3100, (1 : F) + rho 3102 + rho 3103⟩ := by
      constructor
      · refine ⟨(rho 3098 + (rho 2216) - (0)), rho 3099, ?_, ?_, ?_⟩
        · linear_combination r3604
        · linear_combination r3605
        · linear_combination r3606
      · refine ⟨(rho 3101 + (rho 2217) - ((1 : F))), rho 3102, ?_, ?_, ?_⟩
        · linear_combination r3607
        · linear_combination r3608
        · linear_combination r3609
    simpa [base, twice, triple, digit39] using hraw
  have hhigh : rho 1153 =
      Bool.toZMod bits[170]! := by
    simpa only using rho_bit_of_map rho bits hbits 170 (by decide +kernel)
  have hlow : rho 1152 =
      Bool.toZMod bits[169]! := by
    simpa only using rho_bit_of_map rho bits hbits 169 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[170]! bits[169]! (base rho) (twice rho) (triple rho)
    (digit39 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit39 rho) := by
    rw [hdigit]
    cases bits[170]! <;> cases bits[169]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted39 rho) (digit39 rho) (acc40 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3096) (rho 3097) (rho 3099 + rho 3100) ((1 : F) + rho 3102 + rho 3103)
      (rho 3104) (rho 3105) (rho 3106) (rho 3107) (rho 3108) (rho 3109)
      (by simpa [shifted39] using hshift2On)
      (by simpa [digit39] using hdigitOn)
      (by linear_combination r3610)
      (by linear_combination r3611)
      (by linear_combination r3612)
      (by linear_combination r3613)
      (by linear_combination r3614)
      (by linear_combination r3615)
    simpa [shifted39, digit39, acc40] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc40 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted39 rho) (digit39 rho) (acc40 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted39 rho) (digit39 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1153) (rho 1152)
      (base rho) (twice rho) (triple rho) (acc39 rho)
      (acc40 rho) :=
    ⟨shiftOnce39 rho, shifted39 rho, digit39 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window40 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc40 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[168]! (scalarBits rho)[167]!
        (base rho) (twice rho) (triple rho) (acc40 rho)
        (acc41 rho) ∧
      EdwardsBridge.onCurve (acc41 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3616 at r3616
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3617 at r3617
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3618 at r3618
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3619 at r3619
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3620 at r3620
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3621 at r3621
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3622 at r3622
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3623 at r3623
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3624 at r3624
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3625 at r3625
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3626 at r3626
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3627 at r3627
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3628 at r3628
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3629 at r3629
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3630 at r3630
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3631 at r3631
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3632 at r3632
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3633 at r3633
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3634 at r3634
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3635 at r3635
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3636 at r3636
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3637 at r3637
  have hshift1 : EdwardsBridge.doubleSpec (acc40 rho) (shiftOnce40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3108) (rho 3109) (rho 3110) (rho 3111) (rho 3112) (rho 3113) (rho 3114)
      (by simpa [acc40] using hacc)
      (by linear_combination r3616)
      (by linear_combination r3617)
      (by linear_combination r3618)
      (by linear_combination r3619)
      (by linear_combination r3620)
    simpa [acc40, shiftOnce40] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc40 rho) (shiftOnce40 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc40 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce40 rho) (shifted40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3113) (rho 3114) (rho 3115) (rho 3116) (rho 3117) (rho 3118) (rho 3119)
      (by simpa [shiftOnce40] using hshift1On)
      (by linear_combination r3621)
      (by linear_combination r3622)
      (by linear_combination r3623)
      (by linear_combination r3624)
      (by linear_combination r3625)
    simpa [shiftOnce40, shifted40] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce40 rho) (shifted40 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce40 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1151) (rho 1150)
      (base rho) (twice rho) (triple rho) (digit40 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1151) (rho 1150)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3121 + rho 3122, (1 : F) + rho 3124 + rho 3125⟩ := by
      constructor
      · refine ⟨(rho 3120 + (rho 2216) - (0)), rho 3121, ?_, ?_, ?_⟩
        · linear_combination r3626
        · linear_combination r3627
        · linear_combination r3628
      · refine ⟨(rho 3123 + (rho 2217) - ((1 : F))), rho 3124, ?_, ?_, ?_⟩
        · linear_combination r3629
        · linear_combination r3630
        · linear_combination r3631
    simpa [base, twice, triple, digit40] using hraw
  have hhigh : rho 1151 =
      Bool.toZMod bits[168]! := by
    simpa only using rho_bit_of_map rho bits hbits 168 (by decide +kernel)
  have hlow : rho 1150 =
      Bool.toZMod bits[167]! := by
    simpa only using rho_bit_of_map rho bits hbits 167 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[168]! bits[167]! (base rho) (twice rho) (triple rho)
    (digit40 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit40 rho) := by
    rw [hdigit]
    cases bits[168]! <;> cases bits[167]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted40 rho) (digit40 rho) (acc41 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3118) (rho 3119) (rho 3121 + rho 3122) ((1 : F) + rho 3124 + rho 3125)
      (rho 3126) (rho 3127) (rho 3128) (rho 3129) (rho 3130) (rho 3131)
      (by simpa [shifted40] using hshift2On)
      (by simpa [digit40] using hdigitOn)
      (by linear_combination r3632)
      (by linear_combination r3633)
      (by linear_combination r3634)
      (by linear_combination r3635)
      (by linear_combination r3636)
      (by linear_combination r3637)
    simpa [shifted40, digit40, acc41] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc41 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted40 rho) (digit40 rho) (acc41 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted40 rho) (digit40 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1151) (rho 1150)
      (base rho) (twice rho) (triple rho) (acc40 rho)
      (acc41 rho) :=
    ⟨shiftOnce40 rho, shifted40 rho, digit40 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window41 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc41 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[166]! (scalarBits rho)[165]!
        (base rho) (twice rho) (triple rho) (acc41 rho)
        (acc42 rho) ∧
      EdwardsBridge.onCurve (acc42 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3638 at r3638
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3639 at r3639
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3640 at r3640
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3641 at r3641
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3642 at r3642
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3643 at r3643
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3644 at r3644
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3645 at r3645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3646 at r3646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3647 at r3647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3648 at r3648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3649 at r3649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3650 at r3650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3651 at r3651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3652 at r3652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3653 at r3653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3654 at r3654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3655 at r3655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3656 at r3656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3657 at r3657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3658 at r3658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3659 at r3659
  have hshift1 : EdwardsBridge.doubleSpec (acc41 rho) (shiftOnce41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3130) (rho 3131) (rho 3132) (rho 3133) (rho 3134) (rho 3135) (rho 3136)
      (by simpa [acc41] using hacc)
      (by linear_combination r3638)
      (by linear_combination r3639)
      (by linear_combination r3640)
      (by linear_combination r3641)
      (by linear_combination r3642)
    simpa [acc41, shiftOnce41] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc41 rho) (shiftOnce41 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc41 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce41 rho) (shifted41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3135) (rho 3136) (rho 3137) (rho 3138) (rho 3139) (rho 3140) (rho 3141)
      (by simpa [shiftOnce41] using hshift1On)
      (by linear_combination r3643)
      (by linear_combination r3644)
      (by linear_combination r3645)
      (by linear_combination r3646)
      (by linear_combination r3647)
    simpa [shiftOnce41, shifted41] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce41 rho) (shifted41 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce41 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1149) (rho 1148)
      (base rho) (twice rho) (triple rho) (digit41 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1149) (rho 1148)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3143 + rho 3144, (1 : F) + rho 3146 + rho 3147⟩ := by
      constructor
      · refine ⟨(rho 3142 + (rho 2216) - (0)), rho 3143, ?_, ?_, ?_⟩
        · linear_combination r3648
        · linear_combination r3649
        · linear_combination r3650
      · refine ⟨(rho 3145 + (rho 2217) - ((1 : F))), rho 3146, ?_, ?_, ?_⟩
        · linear_combination r3651
        · linear_combination r3652
        · linear_combination r3653
    simpa [base, twice, triple, digit41] using hraw
  have hhigh : rho 1149 =
      Bool.toZMod bits[166]! := by
    simpa only using rho_bit_of_map rho bits hbits 166 (by decide +kernel)
  have hlow : rho 1148 =
      Bool.toZMod bits[165]! := by
    simpa only using rho_bit_of_map rho bits hbits 165 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[166]! bits[165]! (base rho) (twice rho) (triple rho)
    (digit41 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit41 rho) := by
    rw [hdigit]
    cases bits[166]! <;> cases bits[165]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted41 rho) (digit41 rho) (acc42 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3140) (rho 3141) (rho 3143 + rho 3144) ((1 : F) + rho 3146 + rho 3147)
      (rho 3148) (rho 3149) (rho 3150) (rho 3151) (rho 3152) (rho 3153)
      (by simpa [shifted41] using hshift2On)
      (by simpa [digit41] using hdigitOn)
      (by linear_combination r3654)
      (by linear_combination r3655)
      (by linear_combination r3656)
      (by linear_combination r3657)
      (by linear_combination r3658)
      (by linear_combination r3659)
    simpa [shifted41, digit41, acc42] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc42 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted41 rho) (digit41 rho) (acc42 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted41 rho) (digit41 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1149) (rho 1148)
      (base rho) (twice rho) (triple rho) (acc41 rho)
      (acc42 rho) :=
    ⟨shiftOnce41 rho, shifted41 rho, digit41 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
