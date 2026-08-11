import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042cDtkWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window90 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc90 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[68]! (scalarBits rho)[67]!
        (base rho) (twice rho) (triple rho) (acc90 rho)
        (acc91 rho) ∧
      EdwardsBridge.onCurve (acc91 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, p59,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4716, r4717, r4718, r4719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4716 at r4716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4717 at r4717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4718 at r4718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4719 at r4719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4720 at r4720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4721 at r4721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4722 at r4722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4723 at r4723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4724 at r4724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4725 at r4725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4726 at r4726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4727 at r4727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4728 at r4728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4729 at r4729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4730 at r4730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4731 at r4731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4732 at r4732
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4733 at r4733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4734 at r4734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4735 at r4735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4736 at r4736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4737 at r4737
  have hshift1 : EdwardsBridge.doubleSpec (acc90 rho) (shiftOnce90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4208) (rho 4209) (rho 4210) (rho 4211) (rho 4212) (rho 4213) (rho 4214)
      (by simpa [acc90] using hacc)
      (by linear_combination r4716)
      (by linear_combination r4717)
      (by linear_combination r4718)
      (by linear_combination r4719)
      (by linear_combination r4720)
    simpa [acc90, shiftOnce90] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc90 rho) (shiftOnce90 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc90 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce90 rho) (shifted90 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4213) (rho 4214) (rho 4215) (rho 4216) (rho 4217) (rho 4218) (rho 4219)
      (by simpa [shiftOnce90] using hshift1On)
      (by linear_combination r4721)
      (by linear_combination r4722)
      (by linear_combination r4723)
      (by linear_combination r4724)
      (by linear_combination r4725)
    simpa [shiftOnce90, shifted90] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted90 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce90 rho) (shifted90 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce90 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1051) (rho 1050)
      (base rho) (twice rho) (triple rho) (digit90 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1051) (rho 1050)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4221 + rho 4222, (1 : F) + rho 4224 + rho 4225⟩ := by
      constructor
      · refine ⟨(rho 4220 + (rho 2216) - (0)), rho 4221, ?_, ?_, ?_⟩
        · linear_combination r4726
        · linear_combination r4727
        · linear_combination r4728
      · refine ⟨(rho 4223 + (rho 2217) - ((1 : F))), rho 4224, ?_, ?_, ?_⟩
        · linear_combination r4729
        · linear_combination r4730
        · linear_combination r4731
    simpa [base, twice, triple, digit90] using hraw
  have hhigh : rho 1051 =
      Bool.toZMod bits[68]! := by
    simpa only using rho_bit_of_map rho bits hbits 68 (by decide +kernel)
  have hlow : rho 1050 =
      Bool.toZMod bits[67]! := by
    simpa only using rho_bit_of_map rho bits hbits 67 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[68]! bits[67]! (base rho) (twice rho) (triple rho)
    (digit90 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit90 rho) := by
    rw [hdigit]
    cases bits[68]! <;> cases bits[67]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted90 rho) (digit90 rho) (acc91 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4218) (rho 4219) (rho 4221 + rho 4222) ((1 : F) + rho 4224 + rho 4225)
      (rho 4226) (rho 4227) (rho 4228) (rho 4229) (rho 4230) (rho 4231)
      (by simpa [shifted90] using hshift2On)
      (by simpa [digit90] using hdigitOn)
      (by linear_combination r4732)
      (by linear_combination r4733)
      (by linear_combination r4734)
      (by linear_combination r4735)
      (by linear_combination r4736)
      (by linear_combination r4737)
    simpa [shifted90, digit90, acc91] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc91 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted90 rho) (digit90 rho) (acc91 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted90 rho) (digit90 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1051) (rho 1050)
      (base rho) (twice rho) (triple rho) (acc90 rho)
      (acc91 rho) :=
    ⟨shiftOnce90 rho, shifted90 rho, digit90 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window91 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc91 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[66]! (scalarBits rho)[65]!
        (base rho) (twice rho) (triple rho) (acc91 rho)
        (acc92 rho) ∧
      EdwardsBridge.onCurve (acc92 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4738 at r4738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4739 at r4739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4740 at r4740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4741 at r4741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4742 at r4742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4743 at r4743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4744 at r4744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4745 at r4745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4746 at r4746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4747 at r4747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4748 at r4748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4749 at r4749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4750 at r4750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4751 at r4751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4752 at r4752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4753 at r4753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4754 at r4754
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4755 at r4755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4756 at r4756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4757 at r4757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4758 at r4758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4759 at r4759
  have hshift1 : EdwardsBridge.doubleSpec (acc91 rho) (shiftOnce91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4230) (rho 4231) (rho 4232) (rho 4233) (rho 4234) (rho 4235) (rho 4236)
      (by simpa [acc91] using hacc)
      (by linear_combination r4738)
      (by linear_combination r4739)
      (by linear_combination r4740)
      (by linear_combination r4741)
      (by linear_combination r4742)
    simpa [acc91, shiftOnce91] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc91 rho) (shiftOnce91 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc91 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce91 rho) (shifted91 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4235) (rho 4236) (rho 4237) (rho 4238) (rho 4239) (rho 4240) (rho 4241)
      (by simpa [shiftOnce91] using hshift1On)
      (by linear_combination r4743)
      (by linear_combination r4744)
      (by linear_combination r4745)
      (by linear_combination r4746)
      (by linear_combination r4747)
    simpa [shiftOnce91, shifted91] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted91 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce91 rho) (shifted91 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce91 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1049) (rho 1048)
      (base rho) (twice rho) (triple rho) (digit91 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1049) (rho 1048)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4243 + rho 4244, (1 : F) + rho 4246 + rho 4247⟩ := by
      constructor
      · refine ⟨(rho 4242 + (rho 2216) - (0)), rho 4243, ?_, ?_, ?_⟩
        · linear_combination r4748
        · linear_combination r4749
        · linear_combination r4750
      · refine ⟨(rho 4245 + (rho 2217) - ((1 : F))), rho 4246, ?_, ?_, ?_⟩
        · linear_combination r4751
        · linear_combination r4752
        · linear_combination r4753
    simpa [base, twice, triple, digit91] using hraw
  have hhigh : rho 1049 =
      Bool.toZMod bits[66]! := by
    simpa only using rho_bit_of_map rho bits hbits 66 (by decide +kernel)
  have hlow : rho 1048 =
      Bool.toZMod bits[65]! := by
    simpa only using rho_bit_of_map rho bits hbits 65 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[66]! bits[65]! (base rho) (twice rho) (triple rho)
    (digit91 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit91 rho) := by
    rw [hdigit]
    cases bits[66]! <;> cases bits[65]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted91 rho) (digit91 rho) (acc92 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4240) (rho 4241) (rho 4243 + rho 4244) ((1 : F) + rho 4246 + rho 4247)
      (rho 4248) (rho 4249) (rho 4250) (rho 4251) (rho 4252) (rho 4253)
      (by simpa [shifted91] using hshift2On)
      (by simpa [digit91] using hdigitOn)
      (by linear_combination r4754)
      (by linear_combination r4755)
      (by linear_combination r4756)
      (by linear_combination r4757)
      (by linear_combination r4758)
      (by linear_combination r4759)
    simpa [shifted91, digit91, acc92] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc92 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted91 rho) (digit91 rho) (acc92 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted91 rho) (digit91 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1049) (rho 1048)
      (base rho) (twice rho) (triple rho) (acc91 rho)
      (acc92 rho) :=
    ⟨shiftOnce91 rho, shifted91 rho, digit91 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window92 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc92 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[64]! (scalarBits rho)[63]!
        (base rho) (twice rho) (triple rho) (acc92 rho)
        (acc93 rho) ∧
      EdwardsBridge.onCurve (acc93 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    _, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4760 at r4760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4761 at r4761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4762 at r4762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4763 at r4763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4764 at r4764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4765 at r4765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4766 at r4766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4767 at r4767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4768 at r4768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4769 at r4769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4770 at r4770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4771 at r4771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4772 at r4772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4773 at r4773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4774 at r4774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4775 at r4775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4776 at r4776
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4777 at r4777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4778 at r4778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4779 at r4779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4780 at r4780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4781 at r4781
  have hshift1 : EdwardsBridge.doubleSpec (acc92 rho) (shiftOnce92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4252) (rho 4253) (rho 4254) (rho 4255) (rho 4256) (rho 4257) (rho 4258)
      (by simpa [acc92] using hacc)
      (by linear_combination r4760)
      (by linear_combination r4761)
      (by linear_combination r4762)
      (by linear_combination r4763)
      (by linear_combination r4764)
    simpa [acc92, shiftOnce92] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc92 rho) (shiftOnce92 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc92 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce92 rho) (shifted92 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4257) (rho 4258) (rho 4259) (rho 4260) (rho 4261) (rho 4262) (rho 4263)
      (by simpa [shiftOnce92] using hshift1On)
      (by linear_combination r4765)
      (by linear_combination r4766)
      (by linear_combination r4767)
      (by linear_combination r4768)
      (by linear_combination r4769)
    simpa [shiftOnce92, shifted92] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted92 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce92 rho) (shifted92 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce92 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1047) (rho 1046)
      (base rho) (twice rho) (triple rho) (digit92 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1047) (rho 1046)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4265 + rho 4266, (1 : F) + rho 4268 + rho 4269⟩ := by
      constructor
      · refine ⟨(rho 4264 + (rho 2216) - (0)), rho 4265, ?_, ?_, ?_⟩
        · linear_combination r4770
        · linear_combination r4771
        · linear_combination r4772
      · refine ⟨(rho 4267 + (rho 2217) - ((1 : F))), rho 4268, ?_, ?_, ?_⟩
        · linear_combination r4773
        · linear_combination r4774
        · linear_combination r4775
    simpa [base, twice, triple, digit92] using hraw
  have hhigh : rho 1047 =
      Bool.toZMod bits[64]! := by
    simpa only using rho_bit_of_map rho bits hbits 64 (by decide +kernel)
  have hlow : rho 1046 =
      Bool.toZMod bits[63]! := by
    simpa only using rho_bit_of_map rho bits hbits 63 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[64]! bits[63]! (base rho) (twice rho) (triple rho)
    (digit92 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit92 rho) := by
    rw [hdigit]
    cases bits[64]! <;> cases bits[63]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted92 rho) (digit92 rho) (acc93 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4262) (rho 4263) (rho 4265 + rho 4266) ((1 : F) + rho 4268 + rho 4269)
      (rho 4270) (rho 4271) (rho 4272) (rho 4273) (rho 4274) (rho 4275)
      (by simpa [shifted92] using hshift2On)
      (by simpa [digit92] using hdigitOn)
      (by linear_combination r4776)
      (by linear_combination r4777)
      (by linear_combination r4778)
      (by linear_combination r4779)
      (by linear_combination r4780)
      (by linear_combination r4781)
    simpa [shifted92, digit92, acc93] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc93 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted92 rho) (digit92 rho) (acc93 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted92 rho) (digit92 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1047) (rho 1046)
      (base rho) (twice rho) (triple rho) (acc92 rho)
      (acc93 rho) :=
    ⟨shiftOnce92 rho, shifted92 rho, digit92 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window93 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc93 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[62]! (scalarBits rho)[61]!
        (base rho) (twice rho) (triple rho) (acc93 rho)
        (acc94 rho) ∧
      EdwardsBridge.onCurve (acc94 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p59,
    p60, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4782 at r4782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4783 at r4783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4784 at r4784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4785 at r4785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4786 at r4786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4787 at r4787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4788 at r4788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4789 at r4789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4790 at r4790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4791 at r4791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4792 at r4792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4793 at r4793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4794 at r4794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4795 at r4795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4796 at r4796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4797 at r4797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4798 at r4798
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4799 at r4799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4800 at r4800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4801 at r4801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4802 at r4802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4803 at r4803
  have hshift1 : EdwardsBridge.doubleSpec (acc93 rho) (shiftOnce93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4274) (rho 4275) (rho 4276) (rho 4277) (rho 4278) (rho 4279) (rho 4280)
      (by simpa [acc93] using hacc)
      (by linear_combination r4782)
      (by linear_combination r4783)
      (by linear_combination r4784)
      (by linear_combination r4785)
      (by linear_combination r4786)
    simpa [acc93, shiftOnce93] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc93 rho) (shiftOnce93 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc93 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce93 rho) (shifted93 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4279) (rho 4280) (rho 4281) (rho 4282) (rho 4283) (rho 4284) (rho 4285)
      (by simpa [shiftOnce93] using hshift1On)
      (by linear_combination r4787)
      (by linear_combination r4788)
      (by linear_combination r4789)
      (by linear_combination r4790)
      (by linear_combination r4791)
    simpa [shiftOnce93, shifted93] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted93 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce93 rho) (shifted93 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce93 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1045) (rho 1044)
      (base rho) (twice rho) (triple rho) (digit93 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1045) (rho 1044)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4287 + rho 4288, (1 : F) + rho 4290 + rho 4291⟩ := by
      constructor
      · refine ⟨(rho 4286 + (rho 2216) - (0)), rho 4287, ?_, ?_, ?_⟩
        · linear_combination r4792
        · linear_combination r4793
        · linear_combination r4794
      · refine ⟨(rho 4289 + (rho 2217) - ((1 : F))), rho 4290, ?_, ?_, ?_⟩
        · linear_combination r4795
        · linear_combination r4796
        · linear_combination r4797
    simpa [base, twice, triple, digit93] using hraw
  have hhigh : rho 1045 =
      Bool.toZMod bits[62]! := by
    simpa only using rho_bit_of_map rho bits hbits 62 (by decide +kernel)
  have hlow : rho 1044 =
      Bool.toZMod bits[61]! := by
    simpa only using rho_bit_of_map rho bits hbits 61 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[62]! bits[61]! (base rho) (twice rho) (triple rho)
    (digit93 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit93 rho) := by
    rw [hdigit]
    cases bits[62]! <;> cases bits[61]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted93 rho) (digit93 rho) (acc94 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4284) (rho 4285) (rho 4287 + rho 4288) ((1 : F) + rho 4290 + rho 4291)
      (rho 4292) (rho 4293) (rho 4294) (rho 4295) (rho 4296) (rho 4297)
      (by simpa [shifted93] using hshift2On)
      (by simpa [digit93] using hdigitOn)
      (by linear_combination r4798)
      (by linear_combination r4799)
      (by linear_combination r4800)
      (by linear_combination r4801)
      (by linear_combination r4802)
      (by linear_combination r4803)
    simpa [shifted93, digit93, acc94] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc94 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted93 rho) (digit93 rho) (acc94 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted93 rho) (digit93 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1045) (rho 1044)
      (base rho) (twice rho) (triple rho) (acc93 rho)
      (acc94 rho) :=
    ⟨shiftOnce93 rho, shifted93 rho, digit93 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window94 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc94 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[60]! (scalarBits rho)[59]!
        (base rho) (twice rho) (triple rho) (acc94 rho)
        (acc95 rho) ∧
      EdwardsBridge.onCurve (acc95 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4804 at r4804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4805 at r4805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4806 at r4806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4807 at r4807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4808 at r4808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4809 at r4809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4810 at r4810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4811 at r4811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4812 at r4812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4813 at r4813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4814 at r4814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4815 at r4815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4816 at r4816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4817 at r4817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4818 at r4818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4819 at r4819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4820 at r4820
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4821 at r4821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4822 at r4822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4823 at r4823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4824 at r4824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4825 at r4825
  have hshift1 : EdwardsBridge.doubleSpec (acc94 rho) (shiftOnce94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4296) (rho 4297) (rho 4298) (rho 4299) (rho 4300) (rho 4301) (rho 4302)
      (by simpa [acc94] using hacc)
      (by linear_combination r4804)
      (by linear_combination r4805)
      (by linear_combination r4806)
      (by linear_combination r4807)
      (by linear_combination r4808)
    simpa [acc94, shiftOnce94] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc94 rho) (shiftOnce94 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc94 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce94 rho) (shifted94 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4301) (rho 4302) (rho 4303) (rho 4304) (rho 4305) (rho 4306) (rho 4307)
      (by simpa [shiftOnce94] using hshift1On)
      (by linear_combination r4809)
      (by linear_combination r4810)
      (by linear_combination r4811)
      (by linear_combination r4812)
      (by linear_combination r4813)
    simpa [shiftOnce94, shifted94] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted94 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce94 rho) (shifted94 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce94 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1043) (rho 1042)
      (base rho) (twice rho) (triple rho) (digit94 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1043) (rho 1042)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4309 + rho 4310, (1 : F) + rho 4312 + rho 4313⟩ := by
      constructor
      · refine ⟨(rho 4308 + (rho 2216) - (0)), rho 4309, ?_, ?_, ?_⟩
        · linear_combination r4814
        · linear_combination r4815
        · linear_combination r4816
      · refine ⟨(rho 4311 + (rho 2217) - ((1 : F))), rho 4312, ?_, ?_, ?_⟩
        · linear_combination r4817
        · linear_combination r4818
        · linear_combination r4819
    simpa [base, twice, triple, digit94] using hraw
  have hhigh : rho 1043 =
      Bool.toZMod bits[60]! := by
    simpa only using rho_bit_of_map rho bits hbits 60 (by decide +kernel)
  have hlow : rho 1042 =
      Bool.toZMod bits[59]! := by
    simpa only using rho_bit_of_map rho bits hbits 59 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[60]! bits[59]! (base rho) (twice rho) (triple rho)
    (digit94 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit94 rho) := by
    rw [hdigit]
    cases bits[60]! <;> cases bits[59]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted94 rho) (digit94 rho) (acc95 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4306) (rho 4307) (rho 4309 + rho 4310) ((1 : F) + rho 4312 + rho 4313)
      (rho 4314) (rho 4315) (rho 4316) (rho 4317) (rho 4318) (rho 4319)
      (by simpa [shifted94] using hshift2On)
      (by simpa [digit94] using hdigitOn)
      (by linear_combination r4820)
      (by linear_combination r4821)
      (by linear_combination r4822)
      (by linear_combination r4823)
      (by linear_combination r4824)
      (by linear_combination r4825)
    simpa [shifted94, digit94, acc95] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc95 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted94 rho) (digit94 rho) (acc95 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted94 rho) (digit94 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1043) (rho 1042)
      (base rho) (twice rho) (triple rho) (acc94 rho)
      (acc95 rho) :=
    ⟨shiftOnce94 rho, shifted94 rho, digit94 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window95 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc95 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[58]! (scalarBits rho)[57]!
        (base rho) (twice rho) (triple rho) (acc95 rho)
        (acc96 rho) ∧
      EdwardsBridge.onCurve (acc96 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p60, _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationPart60 at p60
  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4826 at r4826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4827 at r4827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4828 at r4828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4829 at r4829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4830 at r4830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4831 at r4831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4832 at r4832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4833 at r4833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4834 at r4834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4835 at r4835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4836 at r4836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4837 at r4837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4838 at r4838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4839 at r4839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4840 at r4840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4841 at r4841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4842 at r4842
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4843 at r4843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4844 at r4844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4845 at r4845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4846 at r4846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.relationRow4847 at r4847
  have hshift1 : EdwardsBridge.doubleSpec (acc95 rho) (shiftOnce95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4318) (rho 4319) (rho 4320) (rho 4321) (rho 4322) (rho 4323) (rho 4324)
      (by simpa [acc95] using hacc)
      (by linear_combination r4826)
      (by linear_combination r4827)
      (by linear_combination r4828)
      (by linear_combination r4829)
      (by linear_combination r4830)
    simpa [acc95, shiftOnce95] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc95 rho) (shiftOnce95 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc95 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce95 rho) (shifted95 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 4323) (rho 4324) (rho 4325) (rho 4326) (rho 4327) (rho 4328) (rho 4329)
      (by simpa [shiftOnce95] using hshift1On)
      (by linear_combination r4831)
      (by linear_combination r4832)
      (by linear_combination r4833)
      (by linear_combination r4834)
      (by linear_combination r4835)
    simpa [shiftOnce95, shifted95] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted95 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce95 rho) (shifted95 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce95 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 1041) (rho 1040)
      (base rho) (twice rho) (triple rho) (digit95 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 1041) (rho 1040)
        ⟨rho 2211, rho 2212⟩ ⟨rho 2216, rho 2217⟩
        ⟨rho 2222, rho 2223⟩ ⟨rho 4331 + rho 4332, (1 : F) + rho 4334 + rho 4335⟩ := by
      constructor
      · refine ⟨(rho 4330 + (rho 2216) - (0)), rho 4331, ?_, ?_, ?_⟩
        · linear_combination r4836
        · linear_combination r4837
        · linear_combination r4838
      · refine ⟨(rho 4333 + (rho 2217) - ((1 : F))), rho 4334, ?_, ?_, ?_⟩
        · linear_combination r4839
        · linear_combination r4840
        · linear_combination r4841
    simpa [base, twice, triple, digit95] using hraw
  have hhigh : rho 1041 =
      Bool.toZMod bits[58]! := by
    simpa only using rho_bit_of_map rho bits hbits 58 (by decide +kernel)
  have hlow : rho 1040 =
      Bool.toZMod bits[57]! := by
    simpa only using rho_bit_of_map rho bits hbits 57 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[58]! bits[57]! (base rho) (twice rho) (triple rho)
    (digit95 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit95 rho) := by
    rw [hdigit]
    cases bits[58]! <;> cases bits[57]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted95 rho) (digit95 rho) (acc96 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 4328) (rho 4329) (rho 4331 + rho 4332) ((1 : F) + rho 4334 + rho 4335)
      (rho 4336) (rho 4337) (rho 4338) (rho 4339) (rho 4340) (rho 4341)
      (by simpa [shifted95] using hshift2On)
      (by simpa [digit95] using hdigitOn)
      (by linear_combination r4842)
      (by linear_combination r4843)
      (by linear_combination r4844)
      (by linear_combination r4845)
      (by linear_combination r4846)
      (by linear_combination r4847)
    simpa [shifted95, digit95, acc96] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc96 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted95 rho) (digit95 rho) (acc96 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted95 rho) (digit95 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 1041) (rho 1040)
      (base rho) (twice rho) (triple rho) (acc95 rho)
      (acc96 rho) :=
    ⟨shiftOnce95 rho, shifted95 rho, digit95 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.DtkWindowSupport
