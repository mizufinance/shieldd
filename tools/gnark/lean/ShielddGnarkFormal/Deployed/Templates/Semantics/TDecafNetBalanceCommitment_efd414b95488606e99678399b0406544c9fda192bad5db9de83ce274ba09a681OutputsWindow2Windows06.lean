import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window36 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc36 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[54]! (scalarBits rho)[53]!
        (base rho) (twice rho) (triple rho) (acc36 rho)
        (acc37 rho) ∧
      EdwardsBridge.onCurve (acc37 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3777, r3778, r3779, r3780, r3781, r3782, r3783, r3784, r3785, r3786, r3787, r3788, r3789, r3790, r3791, r3792, r3793, r3794, r3795, r3796, r3797, r3798, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3777 at r3777
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3778 at r3778
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3779 at r3779
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3780 at r3780
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3781 at r3781
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3782 at r3782
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3783 at r3783
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3784 at r3784
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3785 at r3785
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3786 at r3786
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3787 at r3787
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3788 at r3788
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3789 at r3789
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3790 at r3790
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3791 at r3791
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3792 at r3792
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3793 at r3793
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3794 at r3794
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3795 at r3795
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3796 at r3796
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3797 at r3797
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3798 at r3798
  have hshift1 : EdwardsBridge.doubleSpec (acc36 rho) (shiftOnce36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3601) (rho 3602) (rho 3603) (rho 3604) (rho 3605) (rho 3606) (rho 3607)
      (by simpa [acc36] using hacc)
      (by linear_combination r3777)
      (by linear_combination r3778)
      (by linear_combination r3779)
      (by linear_combination r3780)
      (by linear_combination r3781)
    simpa [acc36, shiftOnce36] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc36 rho) (shiftOnce36 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc36 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce36 rho) (shifted36 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3606) (rho 3607) (rho 3608) (rho 3609) (rho 3610) (rho 3611) (rho 3612)
      (by simpa [shiftOnce36] using hshift1On)
      (by linear_combination r3782)
      (by linear_combination r3783)
      (by linear_combination r3784)
      (by linear_combination r3785)
      (by linear_combination r3786)
    simpa [shiftOnce36, shifted36] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted36 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce36 rho) (shifted36 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce36 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2719) (rho 2718)
      (base rho) (twice rho) (triple rho) (digit36 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2719) (rho 2718)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3614 + rho 3615, (1 : F) + rho 3617 + rho 3618⟩ := by
      constructor
      · refine ⟨(rho 3613 + (rho 2797) - (0)), rho 3614, ?_, ?_, ?_⟩
        · linear_combination r3787
        · linear_combination r3788
        · linear_combination r3789
      · refine ⟨(rho 3616 + (rho 2798) - ((1 : F))), rho 3617, ?_, ?_, ?_⟩
        · linear_combination r3790
        · linear_combination r3791
        · linear_combination r3792
    simpa [base, twice, triple, digit36] using hraw
  have hhigh : rho 2719 =
      Bool.toZMod bits[54]! := by
    simpa only using rho_bit_of_map rho bits hbits 54 (by decide +kernel)
  have hlow : rho 2718 =
      Bool.toZMod bits[53]! := by
    simpa only using rho_bit_of_map rho bits hbits 53 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[54]! bits[53]! (base rho) (twice rho) (triple rho)
    (digit36 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit36 rho) := by
    rw [hdigit]
    cases bits[54]! <;> cases bits[53]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted36 rho) (digit36 rho) (acc37 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3611) (rho 3612) (rho 3614 + rho 3615) ((1 : F) + rho 3617 + rho 3618)
      (rho 3619) (rho 3620) (rho 3621) (rho 3622) (rho 3623) (rho 3624)
      (by simpa [shifted36] using hshift2On)
      (by simpa [digit36] using hdigitOn)
      (by linear_combination r3793)
      (by linear_combination r3794)
      (by linear_combination r3795)
      (by linear_combination r3796)
      (by linear_combination r3797)
      (by linear_combination r3798)
    simpa [shifted36, digit36, acc37] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc37 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted36 rho) (digit36 rho) (acc37 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted36 rho) (digit36 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2719) (rho 2718)
      (base rho) (twice rho) (triple rho) (acc36 rho)
      (acc37 rho) :=
    ⟨shiftOnce36 rho, shifted36 rho, digit36 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window37 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc37 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[52]! (scalarBits rho)[51]!
        (base rho) (twice rho) (triple rho) (acc37 rho)
        (acc38 rho) ∧
      EdwardsBridge.onCurve (acc38 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3799, r3800, r3801, r3802, r3803, r3804, r3805, r3806, r3807, r3808, r3809, r3810, r3811, r3812, r3813, r3814, r3815, r3816, r3817, r3818, r3819, r3820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3799 at r3799
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3800 at r3800
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3801 at r3801
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3802 at r3802
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3803 at r3803
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3804 at r3804
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3805 at r3805
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3806 at r3806
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3807 at r3807
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3808 at r3808
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3809 at r3809
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3810 at r3810
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3811 at r3811
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3812 at r3812
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3813 at r3813
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3814 at r3814
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3815 at r3815
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3816 at r3816
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3817 at r3817
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3818 at r3818
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3819 at r3819
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3820 at r3820
  have hshift1 : EdwardsBridge.doubleSpec (acc37 rho) (shiftOnce37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3623) (rho 3624) (rho 3625) (rho 3626) (rho 3627) (rho 3628) (rho 3629)
      (by simpa [acc37] using hacc)
      (by linear_combination r3799)
      (by linear_combination r3800)
      (by linear_combination r3801)
      (by linear_combination r3802)
      (by linear_combination r3803)
    simpa [acc37, shiftOnce37] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc37 rho) (shiftOnce37 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc37 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce37 rho) (shifted37 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3628) (rho 3629) (rho 3630) (rho 3631) (rho 3632) (rho 3633) (rho 3634)
      (by simpa [shiftOnce37] using hshift1On)
      (by linear_combination r3804)
      (by linear_combination r3805)
      (by linear_combination r3806)
      (by linear_combination r3807)
      (by linear_combination r3808)
    simpa [shiftOnce37, shifted37] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted37 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce37 rho) (shifted37 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce37 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2717) (rho 2716)
      (base rho) (twice rho) (triple rho) (digit37 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2717) (rho 2716)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3636 + rho 3637, (1 : F) + rho 3639 + rho 3640⟩ := by
      constructor
      · refine ⟨(rho 3635 + (rho 2797) - (0)), rho 3636, ?_, ?_, ?_⟩
        · linear_combination r3809
        · linear_combination r3810
        · linear_combination r3811
      · refine ⟨(rho 3638 + (rho 2798) - ((1 : F))), rho 3639, ?_, ?_, ?_⟩
        · linear_combination r3812
        · linear_combination r3813
        · linear_combination r3814
    simpa [base, twice, triple, digit37] using hraw
  have hhigh : rho 2717 =
      Bool.toZMod bits[52]! := by
    simpa only using rho_bit_of_map rho bits hbits 52 (by decide +kernel)
  have hlow : rho 2716 =
      Bool.toZMod bits[51]! := by
    simpa only using rho_bit_of_map rho bits hbits 51 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[52]! bits[51]! (base rho) (twice rho) (triple rho)
    (digit37 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit37 rho) := by
    rw [hdigit]
    cases bits[52]! <;> cases bits[51]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted37 rho) (digit37 rho) (acc38 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3633) (rho 3634) (rho 3636 + rho 3637) ((1 : F) + rho 3639 + rho 3640)
      (rho 3641) (rho 3642) (rho 3643) (rho 3644) (rho 3645) (rho 3646)
      (by simpa [shifted37] using hshift2On)
      (by simpa [digit37] using hdigitOn)
      (by linear_combination r3815)
      (by linear_combination r3816)
      (by linear_combination r3817)
      (by linear_combination r3818)
      (by linear_combination r3819)
      (by linear_combination r3820)
    simpa [shifted37, digit37, acc38] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc38 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted37 rho) (digit37 rho) (acc38 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted37 rho) (digit37 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2717) (rho 2716)
      (base rho) (twice rho) (triple rho) (acc37 rho)
      (acc38 rho) :=
    ⟨shiftOnce37 rho, shifted37 rho, digit37 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window38 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc38 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[50]! (scalarBits rho)[49]!
        (base rho) (twice rho) (triple rho) (acc38 rho)
        (acc39 rho) ∧
      EdwardsBridge.onCurve (acc39 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p47, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart47 at p47
  rcases p47 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3821, r3822, r3823, r3824, r3825, r3826, r3827, r3828, r3829, r3830, r3831, r3832, r3833, r3834, r3835, r3836, r3837, r3838, r3839⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart48 at p48
  rcases p48 with ⟨r3840, r3841, r3842, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3821 at r3821
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3822 at r3822
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3823 at r3823
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3824 at r3824
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3825 at r3825
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3826 at r3826
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3827 at r3827
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3828 at r3828
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3829 at r3829
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3830 at r3830
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3831 at r3831
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3832 at r3832
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3833 at r3833
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3834 at r3834
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3835 at r3835
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3836 at r3836
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3837 at r3837
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3838 at r3838
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3839 at r3839
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3840 at r3840
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3841 at r3841
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3842 at r3842
  have hshift1 : EdwardsBridge.doubleSpec (acc38 rho) (shiftOnce38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3645) (rho 3646) (rho 3647) (rho 3648) (rho 3649) (rho 3650) (rho 3651)
      (by simpa [acc38] using hacc)
      (by linear_combination r3821)
      (by linear_combination r3822)
      (by linear_combination r3823)
      (by linear_combination r3824)
      (by linear_combination r3825)
    simpa [acc38, shiftOnce38] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc38 rho) (shiftOnce38 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc38 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce38 rho) (shifted38 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3650) (rho 3651) (rho 3652) (rho 3653) (rho 3654) (rho 3655) (rho 3656)
      (by simpa [shiftOnce38] using hshift1On)
      (by linear_combination r3826)
      (by linear_combination r3827)
      (by linear_combination r3828)
      (by linear_combination r3829)
      (by linear_combination r3830)
    simpa [shiftOnce38, shifted38] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted38 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce38 rho) (shifted38 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce38 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2715) (rho 2714)
      (base rho) (twice rho) (triple rho) (digit38 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2715) (rho 2714)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3658 + rho 3659, (1 : F) + rho 3661 + rho 3662⟩ := by
      constructor
      · refine ⟨(rho 3657 + (rho 2797) - (0)), rho 3658, ?_, ?_, ?_⟩
        · linear_combination r3831
        · linear_combination r3832
        · linear_combination r3833
      · refine ⟨(rho 3660 + (rho 2798) - ((1 : F))), rho 3661, ?_, ?_, ?_⟩
        · linear_combination r3834
        · linear_combination r3835
        · linear_combination r3836
    simpa [base, twice, triple, digit38] using hraw
  have hhigh : rho 2715 =
      Bool.toZMod bits[50]! := by
    simpa only using rho_bit_of_map rho bits hbits 50 (by decide +kernel)
  have hlow : rho 2714 =
      Bool.toZMod bits[49]! := by
    simpa only using rho_bit_of_map rho bits hbits 49 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[50]! bits[49]! (base rho) (twice rho) (triple rho)
    (digit38 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit38 rho) := by
    rw [hdigit]
    cases bits[50]! <;> cases bits[49]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted38 rho) (digit38 rho) (acc39 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3655) (rho 3656) (rho 3658 + rho 3659) ((1 : F) + rho 3661 + rho 3662)
      (rho 3663) (rho 3664) (rho 3665) (rho 3666) (rho 3667) (rho 3668)
      (by simpa [shifted38] using hshift2On)
      (by simpa [digit38] using hdigitOn)
      (by linear_combination r3837)
      (by linear_combination r3838)
      (by linear_combination r3839)
      (by linear_combination r3840)
      (by linear_combination r3841)
      (by linear_combination r3842)
    simpa [shifted38, digit38, acc39] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc39 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted38 rho) (digit38 rho) (acc39 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted38 rho) (digit38 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2715) (rho 2714)
      (base rho) (twice rho) (triple rho) (acc38 rho)
      (acc39 rho) :=
    ⟨shiftOnce38 rho, shifted38 rho, digit38 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window39 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc39 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[48]! (scalarBits rho)[47]!
        (base rho) (twice rho) (triple rho) (acc39 rho)
        (acc40 rho) ∧
      EdwardsBridge.onCurve (acc40 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart48 at p48
  rcases p48 with ⟨_, _, _, r3843, r3844, r3845, r3846, r3847, r3848, r3849, r3850, r3851, r3852, r3853, r3854, r3855, r3856, r3857, r3858, r3859, r3860, r3861, r3862, r3863, r3864, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3843 at r3843
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3844 at r3844
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3845 at r3845
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3846 at r3846
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3847 at r3847
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3848 at r3848
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3849 at r3849
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3850 at r3850
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3851 at r3851
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3852 at r3852
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3853 at r3853
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3854 at r3854
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3855 at r3855
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3856 at r3856
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3857 at r3857
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3858 at r3858
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3859 at r3859
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3860 at r3860
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3861 at r3861
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3862 at r3862
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3863 at r3863
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3864 at r3864
  have hshift1 : EdwardsBridge.doubleSpec (acc39 rho) (shiftOnce39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3667) (rho 3668) (rho 3669) (rho 3670) (rho 3671) (rho 3672) (rho 3673)
      (by simpa [acc39] using hacc)
      (by linear_combination r3843)
      (by linear_combination r3844)
      (by linear_combination r3845)
      (by linear_combination r3846)
      (by linear_combination r3847)
    simpa [acc39, shiftOnce39] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc39 rho) (shiftOnce39 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc39 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce39 rho) (shifted39 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3672) (rho 3673) (rho 3674) (rho 3675) (rho 3676) (rho 3677) (rho 3678)
      (by simpa [shiftOnce39] using hshift1On)
      (by linear_combination r3848)
      (by linear_combination r3849)
      (by linear_combination r3850)
      (by linear_combination r3851)
      (by linear_combination r3852)
    simpa [shiftOnce39, shifted39] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted39 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce39 rho) (shifted39 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce39 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2713) (rho 2712)
      (base rho) (twice rho) (triple rho) (digit39 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2713) (rho 2712)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3680 + rho 3681, (1 : F) + rho 3683 + rho 3684⟩ := by
      constructor
      · refine ⟨(rho 3679 + (rho 2797) - (0)), rho 3680, ?_, ?_, ?_⟩
        · linear_combination r3853
        · linear_combination r3854
        · linear_combination r3855
      · refine ⟨(rho 3682 + (rho 2798) - ((1 : F))), rho 3683, ?_, ?_, ?_⟩
        · linear_combination r3856
        · linear_combination r3857
        · linear_combination r3858
    simpa [base, twice, triple, digit39] using hraw
  have hhigh : rho 2713 =
      Bool.toZMod bits[48]! := by
    simpa only using rho_bit_of_map rho bits hbits 48 (by decide +kernel)
  have hlow : rho 2712 =
      Bool.toZMod bits[47]! := by
    simpa only using rho_bit_of_map rho bits hbits 47 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[48]! bits[47]! (base rho) (twice rho) (triple rho)
    (digit39 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit39 rho) := by
    rw [hdigit]
    cases bits[48]! <;> cases bits[47]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted39 rho) (digit39 rho) (acc40 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3677) (rho 3678) (rho 3680 + rho 3681) ((1 : F) + rho 3683 + rho 3684)
      (rho 3685) (rho 3686) (rho 3687) (rho 3688) (rho 3689) (rho 3690)
      (by simpa [shifted39] using hshift2On)
      (by simpa [digit39] using hdigitOn)
      (by linear_combination r3859)
      (by linear_combination r3860)
      (by linear_combination r3861)
      (by linear_combination r3862)
      (by linear_combination r3863)
      (by linear_combination r3864)
    simpa [shifted39, digit39, acc40] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc40 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted39 rho) (digit39 rho) (acc40 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted39 rho) (digit39 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2713) (rho 2712)
      (base rho) (twice rho) (triple rho) (acc39 rho)
      (acc40 rho) :=
    ⟨shiftOnce39 rho, shifted39 rho, digit39 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window40 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc40 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[46]! (scalarBits rho)[45]!
        (base rho) (twice rho) (triple rho) (acc40 rho)
        (acc41 rho) ∧
      EdwardsBridge.onCurve (acc41 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3865, r3866, r3867, r3868, r3869, r3870, r3871, r3872, r3873, r3874, r3875, r3876, r3877, r3878, r3879, r3880, r3881, r3882, r3883, r3884, r3885, r3886, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3865 at r3865
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3866 at r3866
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3867 at r3867
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3868 at r3868
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3869 at r3869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3870 at r3870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3871 at r3871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3872 at r3872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3873 at r3873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3874 at r3874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3875 at r3875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3876 at r3876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3877 at r3877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3878 at r3878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3879 at r3879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3880 at r3880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3881 at r3881
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3882 at r3882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3883 at r3883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3884 at r3884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3885 at r3885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3886 at r3886
  have hshift1 : EdwardsBridge.doubleSpec (acc40 rho) (shiftOnce40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3689) (rho 3690) (rho 3691) (rho 3692) (rho 3693) (rho 3694) (rho 3695)
      (by simpa [acc40] using hacc)
      (by linear_combination r3865)
      (by linear_combination r3866)
      (by linear_combination r3867)
      (by linear_combination r3868)
      (by linear_combination r3869)
    simpa [acc40, shiftOnce40] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc40 rho) (shiftOnce40 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc40 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce40 rho) (shifted40 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3694) (rho 3695) (rho 3696) (rho 3697) (rho 3698) (rho 3699) (rho 3700)
      (by simpa [shiftOnce40] using hshift1On)
      (by linear_combination r3870)
      (by linear_combination r3871)
      (by linear_combination r3872)
      (by linear_combination r3873)
      (by linear_combination r3874)
    simpa [shiftOnce40, shifted40] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted40 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce40 rho) (shifted40 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce40 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2711) (rho 2710)
      (base rho) (twice rho) (triple rho) (digit40 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2711) (rho 2710)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3702 + rho 3703, (1 : F) + rho 3705 + rho 3706⟩ := by
      constructor
      · refine ⟨(rho 3701 + (rho 2797) - (0)), rho 3702, ?_, ?_, ?_⟩
        · linear_combination r3875
        · linear_combination r3876
        · linear_combination r3877
      · refine ⟨(rho 3704 + (rho 2798) - ((1 : F))), rho 3705, ?_, ?_, ?_⟩
        · linear_combination r3878
        · linear_combination r3879
        · linear_combination r3880
    simpa [base, twice, triple, digit40] using hraw
  have hhigh : rho 2711 =
      Bool.toZMod bits[46]! := by
    simpa only using rho_bit_of_map rho bits hbits 46 (by decide +kernel)
  have hlow : rho 2710 =
      Bool.toZMod bits[45]! := by
    simpa only using rho_bit_of_map rho bits hbits 45 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[46]! bits[45]! (base rho) (twice rho) (triple rho)
    (digit40 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit40 rho) := by
    rw [hdigit]
    cases bits[46]! <;> cases bits[45]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted40 rho) (digit40 rho) (acc41 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3699) (rho 3700) (rho 3702 + rho 3703) ((1 : F) + rho 3705 + rho 3706)
      (rho 3707) (rho 3708) (rho 3709) (rho 3710) (rho 3711) (rho 3712)
      (by simpa [shifted40] using hshift2On)
      (by simpa [digit40] using hdigitOn)
      (by linear_combination r3881)
      (by linear_combination r3882)
      (by linear_combination r3883)
      (by linear_combination r3884)
      (by linear_combination r3885)
      (by linear_combination r3886)
    simpa [shifted40, digit40, acc41] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc41 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted40 rho) (digit40 rho) (acc41 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted40 rho) (digit40 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2711) (rho 2710)
      (base rho) (twice rho) (triple rho) (acc40 rho)
      (acc41 rho) :=
    ⟨shiftOnce40 rho, shifted40 rho, digit40 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window41 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc41 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[44]! (scalarBits rho)[43]!
        (base rho) (twice rho) (triple rho) (acc41 rho)
        (acc42 rho) ∧
      EdwardsBridge.onCurve (acc42 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p48, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart48 at p48
  rcases p48 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3887, r3888, r3889, r3890, r3891, r3892, r3893, r3894, r3895, r3896, r3897, r3898, r3899, r3900, r3901, r3902, r3903, r3904, r3905, r3906, r3907, r3908, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3887 at r3887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3888 at r3888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3889 at r3889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3890 at r3890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3891 at r3891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3892 at r3892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3893 at r3893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3894 at r3894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3895 at r3895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3896 at r3896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3897 at r3897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3898 at r3898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3899 at r3899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3900 at r3900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3901 at r3901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3902 at r3902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3903 at r3903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3904 at r3904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3905 at r3905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3906 at r3906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3907 at r3907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3908 at r3908
  have hshift1 : EdwardsBridge.doubleSpec (acc41 rho) (shiftOnce41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3711) (rho 3712) (rho 3713) (rho 3714) (rho 3715) (rho 3716) (rho 3717)
      (by simpa [acc41] using hacc)
      (by linear_combination r3887)
      (by linear_combination r3888)
      (by linear_combination r3889)
      (by linear_combination r3890)
      (by linear_combination r3891)
    simpa [acc41, shiftOnce41] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc41 rho) (shiftOnce41 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc41 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce41 rho) (shifted41 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3716) (rho 3717) (rho 3718) (rho 3719) (rho 3720) (rho 3721) (rho 3722)
      (by simpa [shiftOnce41] using hshift1On)
      (by linear_combination r3892)
      (by linear_combination r3893)
      (by linear_combination r3894)
      (by linear_combination r3895)
      (by linear_combination r3896)
    simpa [shiftOnce41, shifted41] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted41 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce41 rho) (shifted41 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce41 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2709) (rho 2708)
      (base rho) (twice rho) (triple rho) (digit41 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2709) (rho 2708)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3724 + rho 3725, (1 : F) + rho 3727 + rho 3728⟩ := by
      constructor
      · refine ⟨(rho 3723 + (rho 2797) - (0)), rho 3724, ?_, ?_, ?_⟩
        · linear_combination r3897
        · linear_combination r3898
        · linear_combination r3899
      · refine ⟨(rho 3726 + (rho 2798) - ((1 : F))), rho 3727, ?_, ?_, ?_⟩
        · linear_combination r3900
        · linear_combination r3901
        · linear_combination r3902
    simpa [base, twice, triple, digit41] using hraw
  have hhigh : rho 2709 =
      Bool.toZMod bits[44]! := by
    simpa only using rho_bit_of_map rho bits hbits 44 (by decide +kernel)
  have hlow : rho 2708 =
      Bool.toZMod bits[43]! := by
    simpa only using rho_bit_of_map rho bits hbits 43 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[44]! bits[43]! (base rho) (twice rho) (triple rho)
    (digit41 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit41 rho) := by
    rw [hdigit]
    cases bits[44]! <;> cases bits[43]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted41 rho) (digit41 rho) (acc42 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3721) (rho 3722) (rho 3724 + rho 3725) ((1 : F) + rho 3727 + rho 3728)
      (rho 3729) (rho 3730) (rho 3731) (rho 3732) (rho 3733) (rho 3734)
      (by simpa [shifted41] using hshift2On)
      (by simpa [digit41] using hdigitOn)
      (by linear_combination r3903)
      (by linear_combination r3904)
      (by linear_combination r3905)
      (by linear_combination r3906)
      (by linear_combination r3907)
      (by linear_combination r3908)
    simpa [shifted41, digit41, acc42] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc42 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted41 rho) (digit41 rho) (acc42 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted41 rho) (digit41 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2709) (rho 2708)
      (base rho) (twice rho) (triple rho) (acc41 rho)
      (acc42 rho) :=
    ⟨shiftOnce41 rho, shifted41 rho, digit41 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
