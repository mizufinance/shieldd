import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window42 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc42 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[164]! (scalarBits rho)[163]!
        (base rho) (twice rho) (triple rho) (acc42 rho)
        (acc43 rho) ∧
      EdwardsBridge.onCurve (acc43 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3660, r3661, r3662, r3663, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3660 at r3660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3661 at r3661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3662 at r3662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3663 at r3663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3664 at r3664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3665 at r3665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3666 at r3666
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3667 at r3667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3668 at r3668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3669 at r3669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3670 at r3670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3671 at r3671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3672 at r3672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3673 at r3673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3674 at r3674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3675 at r3675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3676 at r3676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3677 at r3677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3678 at r3678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3679 at r3679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3680 at r3680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3681 at r3681
  have hshift1 : EdwardsBridge.doubleSpec (acc42 rho) (shiftOnce42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3152) (rho 3153) (rho 3154) (rho 3155) (rho 3156) (rho 3157) (rho 3158)
      (by simpa [acc42] using hacc)
      (by linear_combination r3660)
      (by linear_combination r3661)
      (by linear_combination r3662)
      (by linear_combination r3663)
      (by linear_combination r3664)
    simpa [acc42, shiftOnce42] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc42 rho) (shiftOnce42 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc42 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce42 rho) (shifted42 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3157) (rho 3158) (rho 3159) (rho 3160) (rho 3161) (rho 3162) (rho 3163)
      (by simpa [shiftOnce42] using hshift1On)
      (by linear_combination r3665)
      (by linear_combination r3666)
      (by linear_combination r3667)
      (by linear_combination r3668)
      (by linear_combination r3669)
    simpa [shiftOnce42, shifted42] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted42 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce42 rho) (shifted42 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce42 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1147) (rho 1146)
      (base rho) (twice rho) (triple rho) (digit42 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1147) (rho 1146)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3165 + rho 3166, (1 : F) + rho 3168 + rho 3169⟩ := by
      constructor
      · refine ⟨(rho 3164 + (rho 2216) - (0)), rho 3165, ?_, ?_, ?_⟩
        · linear_combination r3670
        · linear_combination r3671
        · linear_combination r3672
      · refine ⟨(rho 3167 + (rho 2217) - ((1 : F))), rho 3168, ?_, ?_, ?_⟩
        · linear_combination r3673
        · linear_combination r3674
        · linear_combination r3675
    simpa [base, twice, triple, digit42] using hraw
  have hhigh : rho 1147 =
      Bool.toZMod bits[164]! := by
    simpa only using rho_bit_of_map rho bits hbits 164 (by decide +kernel)
  have hlow : rho 1146 =
      Bool.toZMod bits[163]! := by
    simpa only using rho_bit_of_map rho bits hbits 163 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[164]! bits[163]! (base rho) (twice rho) (triple rho)
    (digit42 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit42 rho) := by
    rw [hdigit]
    cases bits[164]! <;> cases bits[163]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted42 rho) (digit42 rho) (acc43 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3162) (rho 3163) (rho 3165 + rho 3166) ((1 : F) + rho 3168 + rho 3169)
      (rho 3170) (rho 3171) (rho 3172) (rho 3173) (rho 3174) (rho 3175)
      (by simpa [shifted42] using hshift2On)
      (by simpa [digit42] using hdigitOn)
      (by linear_combination r3676)
      (by linear_combination r3677)
      (by linear_combination r3678)
      (by linear_combination r3679)
      (by linear_combination r3680)
      (by linear_combination r3681)
    simpa [shifted42, digit42, acc43] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc43 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted42 rho) (digit42 rho) (acc43 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted42 rho) (digit42 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1147) (rho 1146)
      (base rho) (twice rho) (triple rho) (acc42 rho)
      (acc43 rho) :=
    ⟨shiftOnce42 rho, shifted42 rho, digit42 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window43 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc43 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[162]! (scalarBits rho)[161]!
        (base rho) (twice rho) (triple rho) (acc43 rho)
        (acc44 rho) ∧
      EdwardsBridge.onCurve (acc44 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart46 at p46
  rcases p46 with ⟨_, _, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3682 at r3682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3683 at r3683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3684 at r3684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3685 at r3685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3686 at r3686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3687 at r3687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3688 at r3688
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3689 at r3689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3690 at r3690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3691 at r3691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3692 at r3692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3693 at r3693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3694 at r3694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3695 at r3695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3696 at r3696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3697 at r3697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3698 at r3698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3699 at r3699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3700 at r3700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3701 at r3701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3702 at r3702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3703 at r3703
  have hshift1 : EdwardsBridge.doubleSpec (acc43 rho) (shiftOnce43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3174) (rho 3175) (rho 3176) (rho 3177) (rho 3178) (rho 3179) (rho 3180)
      (by simpa [acc43] using hacc)
      (by linear_combination r3682)
      (by linear_combination r3683)
      (by linear_combination r3684)
      (by linear_combination r3685)
      (by linear_combination r3686)
    simpa [acc43, shiftOnce43] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc43 rho) (shiftOnce43 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc43 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce43 rho) (shifted43 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3179) (rho 3180) (rho 3181) (rho 3182) (rho 3183) (rho 3184) (rho 3185)
      (by simpa [shiftOnce43] using hshift1On)
      (by linear_combination r3687)
      (by linear_combination r3688)
      (by linear_combination r3689)
      (by linear_combination r3690)
      (by linear_combination r3691)
    simpa [shiftOnce43, shifted43] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted43 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce43 rho) (shifted43 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce43 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1145) (rho 1144)
      (base rho) (twice rho) (triple rho) (digit43 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1145) (rho 1144)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3187 + rho 3188, (1 : F) + rho 3190 + rho 3191⟩ := by
      constructor
      · refine ⟨(rho 3186 + (rho 2216) - (0)), rho 3187, ?_, ?_, ?_⟩
        · linear_combination r3692
        · linear_combination r3693
        · linear_combination r3694
      · refine ⟨(rho 3189 + (rho 2217) - ((1 : F))), rho 3190, ?_, ?_, ?_⟩
        · linear_combination r3695
        · linear_combination r3696
        · linear_combination r3697
    simpa [base, twice, triple, digit43] using hraw
  have hhigh : rho 1145 =
      Bool.toZMod bits[162]! := by
    simpa only using rho_bit_of_map rho bits hbits 162 (by decide +kernel)
  have hlow : rho 1144 =
      Bool.toZMod bits[161]! := by
    simpa only using rho_bit_of_map rho bits hbits 161 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[162]! bits[161]! (base rho) (twice rho) (triple rho)
    (digit43 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit43 rho) := by
    rw [hdigit]
    cases bits[162]! <;> cases bits[161]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted43 rho) (digit43 rho) (acc44 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3184) (rho 3185) (rho 3187 + rho 3188) ((1 : F) + rho 3190 + rho 3191)
      (rho 3192) (rho 3193) (rho 3194) (rho 3195) (rho 3196) (rho 3197)
      (by simpa [shifted43] using hshift2On)
      (by simpa [digit43] using hdigitOn)
      (by linear_combination r3698)
      (by linear_combination r3699)
      (by linear_combination r3700)
      (by linear_combination r3701)
      (by linear_combination r3702)
      (by linear_combination r3703)
    simpa [shifted43, digit43, acc44] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc44 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted43 rho) (digit43 rho) (acc44 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted43 rho) (digit43 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1145) (rho 1144)
      (base rho) (twice rho) (triple rho) (acc43 rho)
      (acc44 rho) :=
    ⟨shiftOnce43 rho, shifted43 rho, digit43 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window44 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc44 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[160]! (scalarBits rho)[159]!
        (base rho) (twice rho) (triple rho) (acc44 rho)
        (acc45 rho) ∧
      EdwardsBridge.onCurve (acc45 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3704 at r3704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3705 at r3705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3706 at r3706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3707 at r3707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3708 at r3708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3709 at r3709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3710 at r3710
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3711 at r3711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3712 at r3712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3713 at r3713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3714 at r3714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3715 at r3715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3716 at r3716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3717 at r3717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3718 at r3718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3719 at r3719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3720 at r3720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3721 at r3721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3722 at r3722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3723 at r3723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3724 at r3724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3725 at r3725
  have hshift1 : EdwardsBridge.doubleSpec (acc44 rho) (shiftOnce44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3196) (rho 3197) (rho 3198) (rho 3199) (rho 3200) (rho 3201) (rho 3202)
      (by simpa [acc44] using hacc)
      (by linear_combination r3704)
      (by linear_combination r3705)
      (by linear_combination r3706)
      (by linear_combination r3707)
      (by linear_combination r3708)
    simpa [acc44, shiftOnce44] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc44 rho) (shiftOnce44 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc44 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce44 rho) (shifted44 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3201) (rho 3202) (rho 3203) (rho 3204) (rho 3205) (rho 3206) (rho 3207)
      (by simpa [shiftOnce44] using hshift1On)
      (by linear_combination r3709)
      (by linear_combination r3710)
      (by linear_combination r3711)
      (by linear_combination r3712)
      (by linear_combination r3713)
    simpa [shiftOnce44, shifted44] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted44 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce44 rho) (shifted44 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce44 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1143) (rho 1142)
      (base rho) (twice rho) (triple rho) (digit44 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1143) (rho 1142)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3209 + rho 3210, (1 : F) + rho 3212 + rho 3213⟩ := by
      constructor
      · refine ⟨(rho 3208 + (rho 2216) - (0)), rho 3209, ?_, ?_, ?_⟩
        · linear_combination r3714
        · linear_combination r3715
        · linear_combination r3716
      · refine ⟨(rho 3211 + (rho 2217) - ((1 : F))), rho 3212, ?_, ?_, ?_⟩
        · linear_combination r3717
        · linear_combination r3718
        · linear_combination r3719
    simpa [base, twice, triple, digit44] using hraw
  have hhigh : rho 1143 =
      Bool.toZMod bits[160]! := by
    simpa only using rho_bit_of_map rho bits hbits 160 (by decide +kernel)
  have hlow : rho 1142 =
      Bool.toZMod bits[159]! := by
    simpa only using rho_bit_of_map rho bits hbits 159 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[160]! bits[159]! (base rho) (twice rho) (triple rho)
    (digit44 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit44 rho) := by
    rw [hdigit]
    cases bits[160]! <;> cases bits[159]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted44 rho) (digit44 rho) (acc45 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3206) (rho 3207) (rho 3209 + rho 3210) ((1 : F) + rho 3212 + rho 3213)
      (rho 3214) (rho 3215) (rho 3216) (rho 3217) (rho 3218) (rho 3219)
      (by simpa [shifted44] using hshift2On)
      (by simpa [digit44] using hdigitOn)
      (by linear_combination r3720)
      (by linear_combination r3721)
      (by linear_combination r3722)
      (by linear_combination r3723)
      (by linear_combination r3724)
      (by linear_combination r3725)
    simpa [shifted44, digit44, acc45] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc45 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted44 rho) (digit44 rho) (acc45 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted44 rho) (digit44 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1143) (rho 1142)
      (base rho) (twice rho) (triple rho) (acc44 rho)
      (acc45 rho) :=
    ⟨shiftOnce44 rho, shifted44 rho, digit44 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window45 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc45 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[158]! (scalarBits rho)[157]!
        (base rho) (twice rho) (triple rho) (acc45 rho)
        (acc46 rho) ∧
      EdwardsBridge.onCurve (acc46 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3726, r3727, r3728, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3726 at r3726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3727 at r3727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3728 at r3728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3729 at r3729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3730 at r3730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3731 at r3731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3732 at r3732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3733 at r3733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3734 at r3734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3735 at r3735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3736 at r3736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3737 at r3737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3738 at r3738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3739 at r3739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3740 at r3740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3741 at r3741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3742 at r3742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3743 at r3743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3744 at r3744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3745 at r3745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3746 at r3746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3747 at r3747
  have hshift1 : EdwardsBridge.doubleSpec (acc45 rho) (shiftOnce45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3218) (rho 3219) (rho 3220) (rho 3221) (rho 3222) (rho 3223) (rho 3224)
      (by simpa [acc45] using hacc)
      (by linear_combination r3726)
      (by linear_combination r3727)
      (by linear_combination r3728)
      (by linear_combination r3729)
      (by linear_combination r3730)
    simpa [acc45, shiftOnce45] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc45 rho) (shiftOnce45 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc45 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce45 rho) (shifted45 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3223) (rho 3224) (rho 3225) (rho 3226) (rho 3227) (rho 3228) (rho 3229)
      (by simpa [shiftOnce45] using hshift1On)
      (by linear_combination r3731)
      (by linear_combination r3732)
      (by linear_combination r3733)
      (by linear_combination r3734)
      (by linear_combination r3735)
    simpa [shiftOnce45, shifted45] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted45 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce45 rho) (shifted45 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce45 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1141) (rho 1140)
      (base rho) (twice rho) (triple rho) (digit45 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1141) (rho 1140)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3231 + rho 3232, (1 : F) + rho 3234 + rho 3235⟩ := by
      constructor
      · refine ⟨(rho 3230 + (rho 2216) - (0)), rho 3231, ?_, ?_, ?_⟩
        · linear_combination r3736
        · linear_combination r3737
        · linear_combination r3738
      · refine ⟨(rho 3233 + (rho 2217) - ((1 : F))), rho 3234, ?_, ?_, ?_⟩
        · linear_combination r3739
        · linear_combination r3740
        · linear_combination r3741
    simpa [base, twice, triple, digit45] using hraw
  have hhigh : rho 1141 =
      Bool.toZMod bits[158]! := by
    simpa only using rho_bit_of_map rho bits hbits 158 (by decide +kernel)
  have hlow : rho 1140 =
      Bool.toZMod bits[157]! := by
    simpa only using rho_bit_of_map rho bits hbits 157 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[158]! bits[157]! (base rho) (twice rho) (triple rho)
    (digit45 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit45 rho) := by
    rw [hdigit]
    cases bits[158]! <;> cases bits[157]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted45 rho) (digit45 rho) (acc46 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3228) (rho 3229) (rho 3231 + rho 3232) ((1 : F) + rho 3234 + rho 3235)
      (rho 3236) (rho 3237) (rho 3238) (rho 3239) (rho 3240) (rho 3241)
      (by simpa [shifted45] using hshift2On)
      (by simpa [digit45] using hdigitOn)
      (by linear_combination r3742)
      (by linear_combination r3743)
      (by linear_combination r3744)
      (by linear_combination r3745)
      (by linear_combination r3746)
      (by linear_combination r3747)
    simpa [shifted45, digit45, acc46] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc46 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted45 rho) (digit45 rho) (acc46 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted45 rho) (digit45 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1141) (rho 1140)
      (base rho) (twice rho) (triple rho) (acc45 rho)
      (acc46 rho) :=
    ⟨shiftOnce45 rho, shifted45 rho, digit45 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window46 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc46 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[156]! (scalarBits rho)[155]!
        (base rho) (twice rho) (triple rho) (acc46 rho)
        (acc47 rho) ∧
      EdwardsBridge.onCurve (acc47 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3748, r3749, r3750, r3751, r3752, r3753, r3754, r3755, r3756, r3757, r3758, r3759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3748 at r3748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3749 at r3749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3750 at r3750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3751 at r3751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3752 at r3752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3753 at r3753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3754 at r3754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3755 at r3755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3756 at r3756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3757 at r3757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3758 at r3758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3759 at r3759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3760 at r3760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3761 at r3761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3762 at r3762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3763 at r3763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3764 at r3764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3765 at r3765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3766 at r3766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3767 at r3767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3768 at r3768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3769 at r3769
  have hshift1 : EdwardsBridge.doubleSpec (acc46 rho) (shiftOnce46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3240) (rho 3241) (rho 3242) (rho 3243) (rho 3244) (rho 3245) (rho 3246)
      (by simpa [acc46] using hacc)
      (by linear_combination r3748)
      (by linear_combination r3749)
      (by linear_combination r3750)
      (by linear_combination r3751)
      (by linear_combination r3752)
    simpa [acc46, shiftOnce46] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc46 rho) (shiftOnce46 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc46 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce46 rho) (shifted46 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3245) (rho 3246) (rho 3247) (rho 3248) (rho 3249) (rho 3250) (rho 3251)
      (by simpa [shiftOnce46] using hshift1On)
      (by linear_combination r3753)
      (by linear_combination r3754)
      (by linear_combination r3755)
      (by linear_combination r3756)
      (by linear_combination r3757)
    simpa [shiftOnce46, shifted46] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted46 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce46 rho) (shifted46 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce46 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1139) (rho 1138)
      (base rho) (twice rho) (triple rho) (digit46 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1139) (rho 1138)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3253 + rho 3254, (1 : F) + rho 3256 + rho 3257⟩ := by
      constructor
      · refine ⟨(rho 3252 + (rho 2216) - (0)), rho 3253, ?_, ?_, ?_⟩
        · linear_combination r3758
        · linear_combination r3759
        · linear_combination r3760
      · refine ⟨(rho 3255 + (rho 2217) - ((1 : F))), rho 3256, ?_, ?_, ?_⟩
        · linear_combination r3761
        · linear_combination r3762
        · linear_combination r3763
    simpa [base, twice, triple, digit46] using hraw
  have hhigh : rho 1139 =
      Bool.toZMod bits[156]! := by
    simpa only using rho_bit_of_map rho bits hbits 156 (by decide +kernel)
  have hlow : rho 1138 =
      Bool.toZMod bits[155]! := by
    simpa only using rho_bit_of_map rho bits hbits 155 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[156]! bits[155]! (base rho) (twice rho) (triple rho)
    (digit46 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit46 rho) := by
    rw [hdigit]
    cases bits[156]! <;> cases bits[155]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted46 rho) (digit46 rho) (acc47 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3250) (rho 3251) (rho 3253 + rho 3254) ((1 : F) + rho 3256 + rho 3257)
      (rho 3258) (rho 3259) (rho 3260) (rho 3261) (rho 3262) (rho 3263)
      (by simpa [shifted46] using hshift2On)
      (by simpa [digit46] using hdigitOn)
      (by linear_combination r3764)
      (by linear_combination r3765)
      (by linear_combination r3766)
      (by linear_combination r3767)
      (by linear_combination r3768)
      (by linear_combination r3769)
    simpa [shifted46, digit46, acc47] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc47 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted46 rho) (digit46 rho) (acc47 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted46 rho) (digit46 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1139) (rho 1138)
      (base rho) (twice rho) (triple rho) (acc46 rho)
      (acc47 rho) :=
    ⟨shiftOnce46 rho, shifted46 rho, digit46 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window47 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc47 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[154]! (scalarBits rho)[153]!
        (base rho) (twice rho) (triple rho) (acc47 rho)
        (acc48 rho) ∧
      EdwardsBridge.onCurve (acc48 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, r3770, r3771, r3772, r3773, r3774, r3775, r3776, r3777, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3770 at r3770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3771 at r3771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3772 at r3772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3773 at r3773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3774 at r3774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3775 at r3775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3776 at r3776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3777 at r3777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3778 at r3778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3779 at r3779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3780 at r3780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3781 at r3781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3782 at r3782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3783 at r3783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3784 at r3784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3785 at r3785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3786 at r3786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3787 at r3787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3788 at r3788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3789 at r3789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3790 at r3790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow3791 at r3791
  have hshift1 : EdwardsBridge.doubleSpec (acc47 rho) (shiftOnce47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3262) (rho 3263) (rho 3264) (rho 3265) (rho 3266) (rho 3267) (rho 3268)
      (by simpa [acc47] using hacc)
      (by linear_combination r3770)
      (by linear_combination r3771)
      (by linear_combination r3772)
      (by linear_combination r3773)
      (by linear_combination r3774)
    simpa [acc47, shiftOnce47] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc47 rho) (shiftOnce47 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc47 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce47 rho) (shifted47 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3267) (rho 3268) (rho 3269) (rho 3270) (rho 3271) (rho 3272) (rho 3273)
      (by simpa [shiftOnce47] using hshift1On)
      (by linear_combination r3775)
      (by linear_combination r3776)
      (by linear_combination r3777)
      (by linear_combination r3778)
      (by linear_combination r3779)
    simpa [shiftOnce47, shifted47] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted47 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce47 rho) (shifted47 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce47 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1137) (rho 1136)
      (base rho) (twice rho) (triple rho) (digit47 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1137) (rho 1136)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 3275 + rho 3276, (1 : F) + rho 3278 + rho 3279⟩ := by
      constructor
      · refine ⟨(rho 3274 + (rho 2216) - (0)), rho 3275, ?_, ?_, ?_⟩
        · linear_combination r3780
        · linear_combination r3781
        · linear_combination r3782
      · refine ⟨(rho 3277 + (rho 2217) - ((1 : F))), rho 3278, ?_, ?_, ?_⟩
        · linear_combination r3783
        · linear_combination r3784
        · linear_combination r3785
    simpa [base, twice, triple, digit47] using hraw
  have hhigh : rho 1137 =
      Bool.toZMod bits[154]! := by
    simpa only using rho_bit_of_map rho bits hbits 154 (by decide +kernel)
  have hlow : rho 1136 =
      Bool.toZMod bits[153]! := by
    simpa only using rho_bit_of_map rho bits hbits 153 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[154]! bits[153]! (base rho) (twice rho) (triple rho)
    (digit47 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit47 rho) := by
    rw [hdigit]
    cases bits[154]! <;> cases bits[153]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted47 rho) (digit47 rho) (acc48 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3272) (rho 3273) (rho 3275 + rho 3276) ((1 : F) + rho 3278 + rho 3279)
      (rho 3280) (rho 3281) (rho 3282) (rho 3283) (rho 3284) (rho 3285)
      (by simpa [shifted47] using hshift2On)
      (by simpa [digit47] using hdigitOn)
      (by linear_combination r3786)
      (by linear_combination r3787)
      (by linear_combination r3788)
      (by linear_combination r3789)
      (by linear_combination r3790)
      (by linear_combination r3791)
    simpa [shifted47, digit47, acc48] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc48 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted47 rho) (digit47 rho) (acc48 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted47 rho) (digit47 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1137) (rho 1136)
      (base rho) (twice rho) (triple rho) (acc47 rho)
      (acc48 rho) :=
    ⟨shiftOnce47 rho, shifted47 rho, digit47 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
