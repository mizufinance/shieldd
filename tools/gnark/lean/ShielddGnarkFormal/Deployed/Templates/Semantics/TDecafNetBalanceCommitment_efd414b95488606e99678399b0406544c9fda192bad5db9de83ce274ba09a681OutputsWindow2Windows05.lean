import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window30 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc30 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[66]! (scalarBits rho)[65]!
        (base rho) (twice rho) (triple rho) (acc30 rho)
        (acc31 rho) ∧
      EdwardsBridge.onCurve (acc31 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3645, r3646, r3647, r3648, r3649, r3650, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, r3664, r3665, r3666, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3645 at r3645
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3646 at r3646
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3647 at r3647
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3648 at r3648
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3649 at r3649
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3650 at r3650
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3651 at r3651
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3652 at r3652
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3653 at r3653
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3654 at r3654
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3655 at r3655
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3656 at r3656
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3657 at r3657
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3658 at r3658
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3659 at r3659
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3660 at r3660
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3661 at r3661
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3662 at r3662
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3663 at r3663
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3664 at r3664
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3665 at r3665
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3666 at r3666
  have hshift1 : EdwardsBridge.doubleSpec (acc30 rho) (shiftOnce30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3469) (rho 3470) (rho 3471) (rho 3472) (rho 3473) (rho 3474) (rho 3475)
      (by simpa [acc30] using hacc)
      (by linear_combination r3645)
      (by linear_combination r3646)
      (by linear_combination r3647)
      (by linear_combination r3648)
      (by linear_combination r3649)
    simpa [acc30, shiftOnce30] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc30 rho) (shiftOnce30 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc30 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce30 rho) (shifted30 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3474) (rho 3475) (rho 3476) (rho 3477) (rho 3478) (rho 3479) (rho 3480)
      (by simpa [shiftOnce30] using hshift1On)
      (by linear_combination r3650)
      (by linear_combination r3651)
      (by linear_combination r3652)
      (by linear_combination r3653)
      (by linear_combination r3654)
    simpa [shiftOnce30, shifted30] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted30 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce30 rho) (shifted30 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce30 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2731) (rho 2730)
      (base rho) (twice rho) (triple rho) (digit30 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2731) (rho 2730)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3482 + rho 3483, (1 : F) + rho 3485 + rho 3486⟩ := by
      constructor
      · refine ⟨(rho 3481 + (rho 2797) - (0)), rho 3482, ?_, ?_, ?_⟩
        · linear_combination r3655
        · linear_combination r3656
        · linear_combination r3657
      · refine ⟨(rho 3484 + (rho 2798) - ((1 : F))), rho 3485, ?_, ?_, ?_⟩
        · linear_combination r3658
        · linear_combination r3659
        · linear_combination r3660
    simpa [base, twice, triple, digit30] using hraw
  have hhigh : rho 2731 =
      Bool.toZMod bits[66]! := by
    simpa only using rho_bit_of_map rho bits hbits 66 (by decide +kernel)
  have hlow : rho 2730 =
      Bool.toZMod bits[65]! := by
    simpa only using rho_bit_of_map rho bits hbits 65 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[66]! bits[65]! (base rho) (twice rho) (triple rho)
    (digit30 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit30 rho) := by
    rw [hdigit]
    cases bits[66]! <;> cases bits[65]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted30 rho) (digit30 rho) (acc31 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3479) (rho 3480) (rho 3482 + rho 3483) ((1 : F) + rho 3485 + rho 3486)
      (rho 3487) (rho 3488) (rho 3489) (rho 3490) (rho 3491) (rho 3492)
      (by simpa [shifted30] using hshift2On)
      (by simpa [digit30] using hdigitOn)
      (by linear_combination r3661)
      (by linear_combination r3662)
      (by linear_combination r3663)
      (by linear_combination r3664)
      (by linear_combination r3665)
      (by linear_combination r3666)
    simpa [shifted30, digit30, acc31] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc31 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted30 rho) (digit30 rho) (acc31 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted30 rho) (digit30 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2731) (rho 2730)
      (base rho) (twice rho) (triple rho) (acc30 rho)
      (acc31 rho) :=
    ⟨shiftOnce30 rho, shifted30 rho, digit30 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window31 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc31 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[64]! (scalarBits rho)[63]!
        (base rho) (twice rho) (triple rho) (acc31 rho)
        (acc32 rho) ∧
      EdwardsBridge.onCurve (acc32 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p45, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart45 at p45
  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, r3677, r3678, r3679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart46 at p46
  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3667 at r3667
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3668 at r3668
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3669 at r3669
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3670 at r3670
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3671 at r3671
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3672 at r3672
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3673 at r3673
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3674 at r3674
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3675 at r3675
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3676 at r3676
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3677 at r3677
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3678 at r3678
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3679 at r3679
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3680 at r3680
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3681 at r3681
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3682 at r3682
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3683 at r3683
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3684 at r3684
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3685 at r3685
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3686 at r3686
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3687 at r3687
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3688 at r3688
  have hshift1 : EdwardsBridge.doubleSpec (acc31 rho) (shiftOnce31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3491) (rho 3492) (rho 3493) (rho 3494) (rho 3495) (rho 3496) (rho 3497)
      (by simpa [acc31] using hacc)
      (by linear_combination r3667)
      (by linear_combination r3668)
      (by linear_combination r3669)
      (by linear_combination r3670)
      (by linear_combination r3671)
    simpa [acc31, shiftOnce31] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc31 rho) (shiftOnce31 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc31 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce31 rho) (shifted31 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3496) (rho 3497) (rho 3498) (rho 3499) (rho 3500) (rho 3501) (rho 3502)
      (by simpa [shiftOnce31] using hshift1On)
      (by linear_combination r3672)
      (by linear_combination r3673)
      (by linear_combination r3674)
      (by linear_combination r3675)
      (by linear_combination r3676)
    simpa [shiftOnce31, shifted31] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted31 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce31 rho) (shifted31 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce31 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2729) (rho 2728)
      (base rho) (twice rho) (triple rho) (digit31 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2729) (rho 2728)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3504 + rho 3505, (1 : F) + rho 3507 + rho 3508⟩ := by
      constructor
      · refine ⟨(rho 3503 + (rho 2797) - (0)), rho 3504, ?_, ?_, ?_⟩
        · linear_combination r3677
        · linear_combination r3678
        · linear_combination r3679
      · refine ⟨(rho 3506 + (rho 2798) - ((1 : F))), rho 3507, ?_, ?_, ?_⟩
        · linear_combination r3680
        · linear_combination r3681
        · linear_combination r3682
    simpa [base, twice, triple, digit31] using hraw
  have hhigh : rho 2729 =
      Bool.toZMod bits[64]! := by
    simpa only using rho_bit_of_map rho bits hbits 64 (by decide +kernel)
  have hlow : rho 2728 =
      Bool.toZMod bits[63]! := by
    simpa only using rho_bit_of_map rho bits hbits 63 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[64]! bits[63]! (base rho) (twice rho) (triple rho)
    (digit31 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit31 rho) := by
    rw [hdigit]
    cases bits[64]! <;> cases bits[63]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted31 rho) (digit31 rho) (acc32 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3501) (rho 3502) (rho 3504 + rho 3505) ((1 : F) + rho 3507 + rho 3508)
      (rho 3509) (rho 3510) (rho 3511) (rho 3512) (rho 3513) (rho 3514)
      (by simpa [shifted31] using hshift2On)
      (by simpa [digit31] using hdigitOn)
      (by linear_combination r3683)
      (by linear_combination r3684)
      (by linear_combination r3685)
      (by linear_combination r3686)
      (by linear_combination r3687)
      (by linear_combination r3688)
    simpa [shifted31, digit31, acc32] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc32 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted31 rho) (digit31 rho) (acc32 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted31 rho) (digit31 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2729) (rho 2728)
      (base rho) (twice rho) (triple rho) (acc31 rho)
      (acc32 rho) :=
    ⟨shiftOnce31 rho, shifted31 rho, digit31 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window32 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc32 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[62]! (scalarBits rho)[61]!
        (base rho) (twice rho) (triple rho) (acc32 rho)
        (acc33 rho) ∧
      EdwardsBridge.onCurve (acc33 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, r3689, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3689 at r3689
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3690 at r3690
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3691 at r3691
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3692 at r3692
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3693 at r3693
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3694 at r3694
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3695 at r3695
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3696 at r3696
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3697 at r3697
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3698 at r3698
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3699 at r3699
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3700 at r3700
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3701 at r3701
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3702 at r3702
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3703 at r3703
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3704 at r3704
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3705 at r3705
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3706 at r3706
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3707 at r3707
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3708 at r3708
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3709 at r3709
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3710 at r3710
  have hshift1 : EdwardsBridge.doubleSpec (acc32 rho) (shiftOnce32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3513) (rho 3514) (rho 3515) (rho 3516) (rho 3517) (rho 3518) (rho 3519)
      (by simpa [acc32] using hacc)
      (by linear_combination r3689)
      (by linear_combination r3690)
      (by linear_combination r3691)
      (by linear_combination r3692)
      (by linear_combination r3693)
    simpa [acc32, shiftOnce32] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc32 rho) (shiftOnce32 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc32 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce32 rho) (shifted32 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3518) (rho 3519) (rho 3520) (rho 3521) (rho 3522) (rho 3523) (rho 3524)
      (by simpa [shiftOnce32] using hshift1On)
      (by linear_combination r3694)
      (by linear_combination r3695)
      (by linear_combination r3696)
      (by linear_combination r3697)
      (by linear_combination r3698)
    simpa [shiftOnce32, shifted32] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted32 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce32 rho) (shifted32 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce32 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2727) (rho 2726)
      (base rho) (twice rho) (triple rho) (digit32 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2727) (rho 2726)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3526 + rho 3527, (1 : F) + rho 3529 + rho 3530⟩ := by
      constructor
      · refine ⟨(rho 3525 + (rho 2797) - (0)), rho 3526, ?_, ?_, ?_⟩
        · linear_combination r3699
        · linear_combination r3700
        · linear_combination r3701
      · refine ⟨(rho 3528 + (rho 2798) - ((1 : F))), rho 3529, ?_, ?_, ?_⟩
        · linear_combination r3702
        · linear_combination r3703
        · linear_combination r3704
    simpa [base, twice, triple, digit32] using hraw
  have hhigh : rho 2727 =
      Bool.toZMod bits[62]! := by
    simpa only using rho_bit_of_map rho bits hbits 62 (by decide +kernel)
  have hlow : rho 2726 =
      Bool.toZMod bits[61]! := by
    simpa only using rho_bit_of_map rho bits hbits 61 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[62]! bits[61]! (base rho) (twice rho) (triple rho)
    (digit32 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit32 rho) := by
    rw [hdigit]
    cases bits[62]! <;> cases bits[61]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted32 rho) (digit32 rho) (acc33 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3523) (rho 3524) (rho 3526 + rho 3527) ((1 : F) + rho 3529 + rho 3530)
      (rho 3531) (rho 3532) (rho 3533) (rho 3534) (rho 3535) (rho 3536)
      (by simpa [shifted32] using hshift2On)
      (by simpa [digit32] using hdigitOn)
      (by linear_combination r3705)
      (by linear_combination r3706)
      (by linear_combination r3707)
      (by linear_combination r3708)
      (by linear_combination r3709)
      (by linear_combination r3710)
    simpa [shifted32, digit32, acc33] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc33 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted32 rho) (digit32 rho) (acc33 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted32 rho) (digit32 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2727) (rho 2726)
      (base rho) (twice rho) (triple rho) (acc32 rho)
      (acc33 rho) :=
    ⟨shiftOnce32 rho, shifted32 rho, digit32 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window33 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc33 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[60]! (scalarBits rho)[59]!
        (base rho) (twice rho) (triple rho) (acc33 rho)
        (acc34 rho) ∧
      EdwardsBridge.onCurve (acc34 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3711, r3712, r3713, r3714, r3715, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, r3729, r3730, r3731, r3732, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3711 at r3711
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3712 at r3712
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3713 at r3713
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3714 at r3714
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3715 at r3715
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3716 at r3716
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3717 at r3717
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3718 at r3718
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3719 at r3719
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3720 at r3720
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3721 at r3721
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3722 at r3722
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3723 at r3723
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3724 at r3724
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3725 at r3725
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3726 at r3726
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3727 at r3727
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3728 at r3728
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3729 at r3729
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3730 at r3730
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3731 at r3731
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3732 at r3732
  have hshift1 : EdwardsBridge.doubleSpec (acc33 rho) (shiftOnce33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3535) (rho 3536) (rho 3537) (rho 3538) (rho 3539) (rho 3540) (rho 3541)
      (by simpa [acc33] using hacc)
      (by linear_combination r3711)
      (by linear_combination r3712)
      (by linear_combination r3713)
      (by linear_combination r3714)
      (by linear_combination r3715)
    simpa [acc33, shiftOnce33] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc33 rho) (shiftOnce33 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc33 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce33 rho) (shifted33 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3540) (rho 3541) (rho 3542) (rho 3543) (rho 3544) (rho 3545) (rho 3546)
      (by simpa [shiftOnce33] using hshift1On)
      (by linear_combination r3716)
      (by linear_combination r3717)
      (by linear_combination r3718)
      (by linear_combination r3719)
      (by linear_combination r3720)
    simpa [shiftOnce33, shifted33] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted33 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce33 rho) (shifted33 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce33 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2725) (rho 2724)
      (base rho) (twice rho) (triple rho) (digit33 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2725) (rho 2724)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3548 + rho 3549, (1 : F) + rho 3551 + rho 3552⟩ := by
      constructor
      · refine ⟨(rho 3547 + (rho 2797) - (0)), rho 3548, ?_, ?_, ?_⟩
        · linear_combination r3721
        · linear_combination r3722
        · linear_combination r3723
      · refine ⟨(rho 3550 + (rho 2798) - ((1 : F))), rho 3551, ?_, ?_, ?_⟩
        · linear_combination r3724
        · linear_combination r3725
        · linear_combination r3726
    simpa [base, twice, triple, digit33] using hraw
  have hhigh : rho 2725 =
      Bool.toZMod bits[60]! := by
    simpa only using rho_bit_of_map rho bits hbits 60 (by decide +kernel)
  have hlow : rho 2724 =
      Bool.toZMod bits[59]! := by
    simpa only using rho_bit_of_map rho bits hbits 59 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[60]! bits[59]! (base rho) (twice rho) (triple rho)
    (digit33 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit33 rho) := by
    rw [hdigit]
    cases bits[60]! <;> cases bits[59]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted33 rho) (digit33 rho) (acc34 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3545) (rho 3546) (rho 3548 + rho 3549) ((1 : F) + rho 3551 + rho 3552)
      (rho 3553) (rho 3554) (rho 3555) (rho 3556) (rho 3557) (rho 3558)
      (by simpa [shifted33] using hshift2On)
      (by simpa [digit33] using hdigitOn)
      (by linear_combination r3727)
      (by linear_combination r3728)
      (by linear_combination r3729)
      (by linear_combination r3730)
      (by linear_combination r3731)
      (by linear_combination r3732)
    simpa [shifted33, digit33, acc34] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc34 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted33 rho) (digit33 rho) (acc34 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted33 rho) (digit33 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2725) (rho 2724)
      (base rho) (twice rho) (triple rho) (acc33 rho)
      (acc34 rho) :=
    ⟨shiftOnce33 rho, shifted33 rho, digit33 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window34 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc34 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[58]! (scalarBits rho)[57]!
        (base rho) (twice rho) (triple rho) (acc34 rho)
        (acc35 rho) ∧
      EdwardsBridge.onCurve (acc35 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3733 at r3733
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3734 at r3734
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3735 at r3735
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3736 at r3736
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3737 at r3737
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3738 at r3738
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3739 at r3739
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3740 at r3740
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3741 at r3741
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3742 at r3742
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3743 at r3743
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3744 at r3744
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3745 at r3745
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3746 at r3746
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3747 at r3747
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3748 at r3748
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3749 at r3749
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3750 at r3750
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3751 at r3751
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3752 at r3752
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3753 at r3753
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3754 at r3754
  have hshift1 : EdwardsBridge.doubleSpec (acc34 rho) (shiftOnce34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3557) (rho 3558) (rho 3559) (rho 3560) (rho 3561) (rho 3562) (rho 3563)
      (by simpa [acc34] using hacc)
      (by linear_combination r3733)
      (by linear_combination r3734)
      (by linear_combination r3735)
      (by linear_combination r3736)
      (by linear_combination r3737)
    simpa [acc34, shiftOnce34] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc34 rho) (shiftOnce34 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc34 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce34 rho) (shifted34 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3562) (rho 3563) (rho 3564) (rho 3565) (rho 3566) (rho 3567) (rho 3568)
      (by simpa [shiftOnce34] using hshift1On)
      (by linear_combination r3738)
      (by linear_combination r3739)
      (by linear_combination r3740)
      (by linear_combination r3741)
      (by linear_combination r3742)
    simpa [shiftOnce34, shifted34] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted34 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce34 rho) (shifted34 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce34 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2723) (rho 2722)
      (base rho) (twice rho) (triple rho) (digit34 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2723) (rho 2722)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3570 + rho 3571, (1 : F) + rho 3573 + rho 3574⟩ := by
      constructor
      · refine ⟨(rho 3569 + (rho 2797) - (0)), rho 3570, ?_, ?_, ?_⟩
        · linear_combination r3743
        · linear_combination r3744
        · linear_combination r3745
      · refine ⟨(rho 3572 + (rho 2798) - ((1 : F))), rho 3573, ?_, ?_, ?_⟩
        · linear_combination r3746
        · linear_combination r3747
        · linear_combination r3748
    simpa [base, twice, triple, digit34] using hraw
  have hhigh : rho 2723 =
      Bool.toZMod bits[58]! := by
    simpa only using rho_bit_of_map rho bits hbits 58 (by decide +kernel)
  have hlow : rho 2722 =
      Bool.toZMod bits[57]! := by
    simpa only using rho_bit_of_map rho bits hbits 57 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[58]! bits[57]! (base rho) (twice rho) (triple rho)
    (digit34 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit34 rho) := by
    rw [hdigit]
    cases bits[58]! <;> cases bits[57]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted34 rho) (digit34 rho) (acc35 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3567) (rho 3568) (rho 3570 + rho 3571) ((1 : F) + rho 3573 + rho 3574)
      (rho 3575) (rho 3576) (rho 3577) (rho 3578) (rho 3579) (rho 3580)
      (by simpa [shifted34] using hshift2On)
      (by simpa [digit34] using hdigitOn)
      (by linear_combination r3749)
      (by linear_combination r3750)
      (by linear_combination r3751)
      (by linear_combination r3752)
      (by linear_combination r3753)
      (by linear_combination r3754)
    simpa [shifted34, digit34, acc35] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc35 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted34 rho) (digit34 rho) (acc35 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted34 rho) (digit34 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2723) (rho 2722)
      (base rho) (twice rho) (triple rho) (acc34 rho)
      (acc35 rho) :=
    ⟨shiftOnce34 rho, shifted34 rho, digit34 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window35 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (bits : List.Vector Bool 129)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc35 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[56]! (scalarBits rho)[55]!
        (base rho) (twice rho) (triple rho) (acc35 rho)
        (acc36 rho) ∧
      EdwardsBridge.onCurve (acc36 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p46, p47, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart46 at p46
  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3755, r3756, r3757, r3758, r3759⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart47 at p47
  rcases p47 with ⟨r3760, r3761, r3762, r3763, r3764, r3765, r3766, r3767, r3768, r3769, r3770, r3771, r3772, r3773, r3774, r3775, r3776, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3755 at r3755
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3756 at r3756
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3757 at r3757
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3758 at r3758
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3759 at r3759
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3760 at r3760
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3761 at r3761
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3762 at r3762
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3763 at r3763
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3764 at r3764
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3765 at r3765
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3766 at r3766
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3767 at r3767
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3768 at r3768
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3769 at r3769
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3770 at r3770
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3771 at r3771
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3772 at r3772
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3773 at r3773
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3774 at r3774
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3775 at r3775
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow3776 at r3776
  have hshift1 : EdwardsBridge.doubleSpec (acc35 rho) (shiftOnce35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3579) (rho 3580) (rho 3581) (rho 3582) (rho 3583) (rho 3584) (rho 3585)
      (by simpa [acc35] using hacc)
      (by linear_combination r3755)
      (by linear_combination r3756)
      (by linear_combination r3757)
      (by linear_combination r3758)
      (by linear_combination r3759)
    simpa [acc35, shiftOnce35] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc35 rho) (shiftOnce35 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc35 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce35 rho) (shifted35 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3584) (rho 3585) (rho 3586) (rho 3587) (rho 3588) (rho 3589) (rho 3590)
      (by simpa [shiftOnce35] using hshift1On)
      (by linear_combination r3760)
      (by linear_combination r3761)
      (by linear_combination r3762)
      (by linear_combination r3763)
      (by linear_combination r3764)
    simpa [shiftOnce35, shifted35] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted35 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce35 rho) (shifted35 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce35 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2721) (rho 2720)
      (base rho) (twice rho) (triple rho) (digit35 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2721) (rho 2720)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 3592 + rho 3593, (1 : F) + rho 3595 + rho 3596⟩ := by
      constructor
      · refine ⟨(rho 3591 + (rho 2797) - (0)), rho 3592, ?_, ?_, ?_⟩
        · linear_combination r3765
        · linear_combination r3766
        · linear_combination r3767
      · refine ⟨(rho 3594 + (rho 2798) - ((1 : F))), rho 3595, ?_, ?_, ?_⟩
        · linear_combination r3768
        · linear_combination r3769
        · linear_combination r3770
    simpa [base, twice, triple, digit35] using hraw
  have hhigh : rho 2721 =
      Bool.toZMod bits[56]! := by
    simpa only using rho_bit_of_map rho bits hbits 56 (by decide +kernel)
  have hlow : rho 2720 =
      Bool.toZMod bits[55]! := by
    simpa only using rho_bit_of_map rho bits hbits 55 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[56]! bits[55]! (base rho) (twice rho) (triple rho)
    (digit35 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit35 rho) := by
    rw [hdigit]
    cases bits[56]! <;> cases bits[55]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted35 rho) (digit35 rho) (acc36 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3589) (rho 3590) (rho 3592 + rho 3593) ((1 : F) + rho 3595 + rho 3596)
      (rho 3597) (rho 3598) (rho 3599) (rho 3600) (rho 3601) (rho 3602)
      (by simpa [shifted35] using hshift2On)
      (by simpa [digit35] using hdigitOn)
      (by linear_combination r3771)
      (by linear_combination r3772)
      (by linear_combination r3773)
      (by linear_combination r3774)
      (by linear_combination r3775)
      (by linear_combination r3776)
    simpa [shifted35, digit35, acc36] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc36 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted35 rho) (digit35 rho) (acc36 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted35 rho) (digit35 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 2721) (rho 2720)
      (base rho) (twice rho) (triple rho) (acc35 rho)
      (acc36 rho) :=
    ⟨shiftOnce35 rho, shifted35 rho, digit35 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
