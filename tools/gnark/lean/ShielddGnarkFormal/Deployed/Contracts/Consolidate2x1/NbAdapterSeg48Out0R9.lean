import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5766 rho ∧ Seg48.relationRow5767 rho ∧ Seg48.relationRow5768 rho ∧ Seg48.relationRow5769 rho ∧ Seg48.relationRow5770 rho ∧ Seg48.relationRow5771 rho ∧ Seg48.relationRow5772 rho ∧ Seg48.relationRow5773 rho ∧ Seg48.relationRow5774 rho ∧ Seg48.relationRow5775 rho ∧ Seg48.relationRow5776 rho ∧ Seg48.relationRow5777 rho ∧ Seg48.relationRow5778 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778⟩

theorem seg48Out0_rung99 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37213 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX99 rho, seg48Out0AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38521, rho 38522⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX99 rho, seg48Out0AccY99 rho⟩ ⟨rho 38521, rho 38522⟩
        ⟨seg48Out0AccX100 rho, seg48Out0AccY100 rho⟩ ⟨rho 38534, rho 38535⟩ := by
  obtain ⟨r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778⟩ := seg48Out0_rows99 rho h
  unfold Seg48.relationRow5766 at r5766

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5766

  unfold Seg48.relationRow5767 at r5767

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5767

  unfold Seg48.relationRow5768 at r5768

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5768

  unfold Seg48.relationRow5769 at r5769

  unfold Seg48.relationRow5770 at r5770

  unfold Seg48.relationRow5771 at r5771

  unfold Seg48.relationRow5772 at r5772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5772

  unfold Seg48.relationRow5773 at r5773

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5773

  unfold Seg48.relationRow5774 at r5774

  unfold Seg48.relationRow5775 at r5775

  unfold Seg48.relationRow5776 at r5776

  unfold Seg48.relationRow5777 at r5777

  unfold Seg48.relationRow5778 at r5778

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX100 rho = seg48Out0AccX99 rho + rho 38529 := by
    unfold seg48Out0AccX100 seg48Out0AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 99]

    ring

  have hnexty : seg48Out0AccY100 rho = seg48Out0AccY99 rho + rho 38530 := by
    unfold seg48Out0AccY100 seg48Out0AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 99]

    ring

  have ha0 : (rho 38521 + rho 38522) * (seg48Out0AccX99 rho + seg48Out0AccY99 rho) = rho 38523 := by
    unfold seg48Out0AccX99 seg48Out0AccY99
    linear_combination r5766
  have ha1 : rho 38522 * seg48Out0AccX99 rho = rho 38524 := by
    unfold seg48Out0AccX99
    linear_combination r5767
  have ha2 : rho 38521 * seg48Out0AccY99 rho = rho 38525 := by
    unfold seg48Out0AccY99
    linear_combination r5768
  have ha3 : 3021 * rho 38524 * rho 38525 = rho 38526 := by
    linear_combination r5769
  have ha4 : rho 38527 * (1 + rho 38526) = rho 38524 + rho 38525 := by
    linear_combination r5770
  have ha5 : rho 38528 * (1 - rho 38526) = rho 38523 - rho 38524 - rho 38525 := by
    linear_combination r5771
  have haddx :
      rho 38527 * (1 + 3021 * (rho 38522 * seg48Out0AccX99 rho) * (rho 38521 * seg48Out0AccY99 rho)) =
        rho 38522 * seg48Out0AccX99 rho + rho 38521 * seg48Out0AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38528 * (1 - 3021 * (rho 38522 * seg48Out0AccX99 rho) * (rho 38521 * seg48Out0AccY99 rho)) =
        (-1) * (rho 38522 * seg48Out0AccX99 rho) - rho 38521 * seg48Out0AccY99 rho +
          (seg48Out0AccY99 rho - seg48Out0AccX99 rho * (-1)) * (rho 38521 + rho 38522) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38528 * (1 - rho 38526) = rho 38523 - rho 38524 - rho 38525 := ha5
      _ = (-1) * rho 38524 - rho 38525 + (seg48Out0AccY99 rho - seg48Out0AccX99 rho * (-1)) *
          (rho 38521 + rho 38522) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX100 rho = seg48Out0AccX99 rho - Bool.toZMod bit * (seg48Out0AccX99 rho - rho 38527) := by
    have hd : rho 38529 = Bool.toZMod bit * (rho 38527 - seg48Out0AccX99 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX99
      linear_combination -r5772
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY100 rho = seg48Out0AccY99 rho - Bool.toZMod bit * (seg48Out0AccY99 rho - rho 38528) := by
    have hd : rho 38530 = Bool.toZMod bit * (rho 38528 - seg48Out0AccY99 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY99
      linear_combination -r5773
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38521 * rho 38522 = rho 38531 := by linear_combination r5774
  have hd1 : rho 38521 * rho 38521 = rho 38532 := by linear_combination r5775
  have hd2 : rho 38522 * rho 38522 = rho 38533 := by linear_combination r5776
  have hd3 : rho 38534 * (rho 38522 * rho 38522 + rho 38521 * rho 38521 * (-1)) =
      2 * (rho 38521 * rho 38522) := by
    rw [hd0, hd1, hd2]
    linear_combination r5777
  have hd4 : rho 38535 * (2 - (rho 38522 * rho 38522 + rho 38521 * rho 38521 * (-1))) =
      rho 38522 * rho 38522 - rho 38521 * rho 38521 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5778
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX99 rho, seg48Out0AccY99 rho⟩ ⟨rho 38521, rho 38522⟩
    ⟨rho 38527, rho 38528⟩ ⟨seg48Out0AccX100 rho, seg48Out0AccY100 rho⟩ ⟨rho 38534, rho 38535⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5779 rho ∧ Seg48.relationRow5780 rho ∧ Seg48.relationRow5781 rho ∧ Seg48.relationRow5782 rho ∧ Seg48.relationRow5783 rho ∧ Seg48.relationRow5784 rho ∧ Seg48.relationRow5785 rho ∧ Seg48.relationRow5786 rho ∧ Seg48.relationRow5787 rho ∧ Seg48.relationRow5788 rho ∧ Seg48.relationRow5789 rho ∧ Seg48.relationRow5790 rho ∧ Seg48.relationRow5791 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791⟩

theorem seg48Out0_rung100 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37214 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX100 rho, seg48Out0AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38534, rho 38535⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX100 rho, seg48Out0AccY100 rho⟩ ⟨rho 38534, rho 38535⟩
        ⟨seg48Out0AccX101 rho, seg48Out0AccY101 rho⟩ ⟨rho 38547, rho 38548⟩ := by
  obtain ⟨r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791⟩ := seg48Out0_rows100 rho h
  unfold Seg48.relationRow5779 at r5779

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5779

  unfold Seg48.relationRow5780 at r5780

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5780

  unfold Seg48.relationRow5781 at r5781

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5781

  unfold Seg48.relationRow5782 at r5782

  unfold Seg48.relationRow5783 at r5783

  unfold Seg48.relationRow5784 at r5784

  unfold Seg48.relationRow5785 at r5785

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5785

  unfold Seg48.relationRow5786 at r5786

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5786

  unfold Seg48.relationRow5787 at r5787

  unfold Seg48.relationRow5788 at r5788

  unfold Seg48.relationRow5789 at r5789

  unfold Seg48.relationRow5790 at r5790

  unfold Seg48.relationRow5791 at r5791

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX101 rho = seg48Out0AccX100 rho + rho 38542 := by
    unfold seg48Out0AccX101 seg48Out0AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 100]

    ring

  have hnexty : seg48Out0AccY101 rho = seg48Out0AccY100 rho + rho 38543 := by
    unfold seg48Out0AccY101 seg48Out0AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 100]

    ring

  have ha0 : (rho 38534 + rho 38535) * (seg48Out0AccX100 rho + seg48Out0AccY100 rho) = rho 38536 := by
    unfold seg48Out0AccX100 seg48Out0AccY100
    linear_combination r5779
  have ha1 : rho 38535 * seg48Out0AccX100 rho = rho 38537 := by
    unfold seg48Out0AccX100
    linear_combination r5780
  have ha2 : rho 38534 * seg48Out0AccY100 rho = rho 38538 := by
    unfold seg48Out0AccY100
    linear_combination r5781
  have ha3 : 3021 * rho 38537 * rho 38538 = rho 38539 := by
    linear_combination r5782
  have ha4 : rho 38540 * (1 + rho 38539) = rho 38537 + rho 38538 := by
    linear_combination r5783
  have ha5 : rho 38541 * (1 - rho 38539) = rho 38536 - rho 38537 - rho 38538 := by
    linear_combination r5784
  have haddx :
      rho 38540 * (1 + 3021 * (rho 38535 * seg48Out0AccX100 rho) * (rho 38534 * seg48Out0AccY100 rho)) =
        rho 38535 * seg48Out0AccX100 rho + rho 38534 * seg48Out0AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38541 * (1 - 3021 * (rho 38535 * seg48Out0AccX100 rho) * (rho 38534 * seg48Out0AccY100 rho)) =
        (-1) * (rho 38535 * seg48Out0AccX100 rho) - rho 38534 * seg48Out0AccY100 rho +
          (seg48Out0AccY100 rho - seg48Out0AccX100 rho * (-1)) * (rho 38534 + rho 38535) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38541 * (1 - rho 38539) = rho 38536 - rho 38537 - rho 38538 := ha5
      _ = (-1) * rho 38537 - rho 38538 + (seg48Out0AccY100 rho - seg48Out0AccX100 rho * (-1)) *
          (rho 38534 + rho 38535) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX101 rho = seg48Out0AccX100 rho - Bool.toZMod bit * (seg48Out0AccX100 rho - rho 38540) := by
    have hd : rho 38542 = Bool.toZMod bit * (rho 38540 - seg48Out0AccX100 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX100
      linear_combination -r5785
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY101 rho = seg48Out0AccY100 rho - Bool.toZMod bit * (seg48Out0AccY100 rho - rho 38541) := by
    have hd : rho 38543 = Bool.toZMod bit * (rho 38541 - seg48Out0AccY100 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY100
      linear_combination -r5786
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38534 * rho 38535 = rho 38544 := by linear_combination r5787
  have hd1 : rho 38534 * rho 38534 = rho 38545 := by linear_combination r5788
  have hd2 : rho 38535 * rho 38535 = rho 38546 := by linear_combination r5789
  have hd3 : rho 38547 * (rho 38535 * rho 38535 + rho 38534 * rho 38534 * (-1)) =
      2 * (rho 38534 * rho 38535) := by
    rw [hd0, hd1, hd2]
    linear_combination r5790
  have hd4 : rho 38548 * (2 - (rho 38535 * rho 38535 + rho 38534 * rho 38534 * (-1))) =
      rho 38535 * rho 38535 - rho 38534 * rho 38534 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5791
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX100 rho, seg48Out0AccY100 rho⟩ ⟨rho 38534, rho 38535⟩
    ⟨rho 38540, rho 38541⟩ ⟨seg48Out0AccX101 rho, seg48Out0AccY101 rho⟩ ⟨rho 38547, rho 38548⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5792 rho ∧ Seg48.relationRow5793 rho ∧ Seg48.relationRow5794 rho ∧ Seg48.relationRow5795 rho ∧ Seg48.relationRow5796 rho ∧ Seg48.relationRow5797 rho ∧ Seg48.relationRow5798 rho ∧ Seg48.relationRow5799 rho ∧ Seg48.relationRow5800 rho ∧ Seg48.relationRow5801 rho ∧ Seg48.relationRow5802 rho ∧ Seg48.relationRow5803 rho ∧ Seg48.relationRow5804 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804⟩

theorem seg48Out0_rung101 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37215 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX101 rho, seg48Out0AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38547, rho 38548⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX101 rho, seg48Out0AccY101 rho⟩ ⟨rho 38547, rho 38548⟩
        ⟨seg48Out0AccX102 rho, seg48Out0AccY102 rho⟩ ⟨rho 38560, rho 38561⟩ := by
  obtain ⟨r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804⟩ := seg48Out0_rows101 rho h
  unfold Seg48.relationRow5792 at r5792

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5792

  unfold Seg48.relationRow5793 at r5793

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5793

  unfold Seg48.relationRow5794 at r5794

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5794

  unfold Seg48.relationRow5795 at r5795

  unfold Seg48.relationRow5796 at r5796

  unfold Seg48.relationRow5797 at r5797

  unfold Seg48.relationRow5798 at r5798

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5798

  unfold Seg48.relationRow5799 at r5799

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5799

  unfold Seg48.relationRow5800 at r5800

  unfold Seg48.relationRow5801 at r5801

  unfold Seg48.relationRow5802 at r5802

  unfold Seg48.relationRow5803 at r5803

  unfold Seg48.relationRow5804 at r5804

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX102 rho = seg48Out0AccX101 rho + rho 38555 := by
    unfold seg48Out0AccX102 seg48Out0AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 101]

    ring

  have hnexty : seg48Out0AccY102 rho = seg48Out0AccY101 rho + rho 38556 := by
    unfold seg48Out0AccY102 seg48Out0AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 101]

    ring

  have ha0 : (rho 38547 + rho 38548) * (seg48Out0AccX101 rho + seg48Out0AccY101 rho) = rho 38549 := by
    unfold seg48Out0AccX101 seg48Out0AccY101
    linear_combination r5792
  have ha1 : rho 38548 * seg48Out0AccX101 rho = rho 38550 := by
    unfold seg48Out0AccX101
    linear_combination r5793
  have ha2 : rho 38547 * seg48Out0AccY101 rho = rho 38551 := by
    unfold seg48Out0AccY101
    linear_combination r5794
  have ha3 : 3021 * rho 38550 * rho 38551 = rho 38552 := by
    linear_combination r5795
  have ha4 : rho 38553 * (1 + rho 38552) = rho 38550 + rho 38551 := by
    linear_combination r5796
  have ha5 : rho 38554 * (1 - rho 38552) = rho 38549 - rho 38550 - rho 38551 := by
    linear_combination r5797
  have haddx :
      rho 38553 * (1 + 3021 * (rho 38548 * seg48Out0AccX101 rho) * (rho 38547 * seg48Out0AccY101 rho)) =
        rho 38548 * seg48Out0AccX101 rho + rho 38547 * seg48Out0AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38554 * (1 - 3021 * (rho 38548 * seg48Out0AccX101 rho) * (rho 38547 * seg48Out0AccY101 rho)) =
        (-1) * (rho 38548 * seg48Out0AccX101 rho) - rho 38547 * seg48Out0AccY101 rho +
          (seg48Out0AccY101 rho - seg48Out0AccX101 rho * (-1)) * (rho 38547 + rho 38548) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38554 * (1 - rho 38552) = rho 38549 - rho 38550 - rho 38551 := ha5
      _ = (-1) * rho 38550 - rho 38551 + (seg48Out0AccY101 rho - seg48Out0AccX101 rho * (-1)) *
          (rho 38547 + rho 38548) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX102 rho = seg48Out0AccX101 rho - Bool.toZMod bit * (seg48Out0AccX101 rho - rho 38553) := by
    have hd : rho 38555 = Bool.toZMod bit * (rho 38553 - seg48Out0AccX101 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX101
      linear_combination -r5798
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY102 rho = seg48Out0AccY101 rho - Bool.toZMod bit * (seg48Out0AccY101 rho - rho 38554) := by
    have hd : rho 38556 = Bool.toZMod bit * (rho 38554 - seg48Out0AccY101 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY101
      linear_combination -r5799
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38547 * rho 38548 = rho 38557 := by linear_combination r5800
  have hd1 : rho 38547 * rho 38547 = rho 38558 := by linear_combination r5801
  have hd2 : rho 38548 * rho 38548 = rho 38559 := by linear_combination r5802
  have hd3 : rho 38560 * (rho 38548 * rho 38548 + rho 38547 * rho 38547 * (-1)) =
      2 * (rho 38547 * rho 38548) := by
    rw [hd0, hd1, hd2]
    linear_combination r5803
  have hd4 : rho 38561 * (2 - (rho 38548 * rho 38548 + rho 38547 * rho 38547 * (-1))) =
      rho 38548 * rho 38548 - rho 38547 * rho 38547 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5804
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX101 rho, seg48Out0AccY101 rho⟩ ⟨rho 38547, rho 38548⟩
    ⟨rho 38553, rho 38554⟩ ⟨seg48Out0AccX102 rho, seg48Out0AccY102 rho⟩ ⟨rho 38560, rho 38561⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5805 rho ∧ Seg48.relationRow5806 rho ∧ Seg48.relationRow5807 rho ∧ Seg48.relationRow5808 rho ∧ Seg48.relationRow5809 rho ∧ Seg48.relationRow5810 rho ∧ Seg48.relationRow5811 rho ∧ Seg48.relationRow5812 rho ∧ Seg48.relationRow5813 rho ∧ Seg48.relationRow5814 rho ∧ Seg48.relationRow5815 rho ∧ Seg48.relationRow5816 rho ∧ Seg48.relationRow5817 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817⟩

theorem seg48Out0_rung102 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37216 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX102 rho, seg48Out0AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38560, rho 38561⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX102 rho, seg48Out0AccY102 rho⟩ ⟨rho 38560, rho 38561⟩
        ⟨seg48Out0AccX103 rho, seg48Out0AccY103 rho⟩ ⟨rho 38573, rho 38574⟩ := by
  obtain ⟨r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817⟩ := seg48Out0_rows102 rho h
  unfold Seg48.relationRow5805 at r5805

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5805

  unfold Seg48.relationRow5806 at r5806

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5806

  unfold Seg48.relationRow5807 at r5807

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5807

  unfold Seg48.relationRow5808 at r5808

  unfold Seg48.relationRow5809 at r5809

  unfold Seg48.relationRow5810 at r5810

  unfold Seg48.relationRow5811 at r5811

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5811

  unfold Seg48.relationRow5812 at r5812

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5812

  unfold Seg48.relationRow5813 at r5813

  unfold Seg48.relationRow5814 at r5814

  unfold Seg48.relationRow5815 at r5815

  unfold Seg48.relationRow5816 at r5816

  unfold Seg48.relationRow5817 at r5817

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX103 rho = seg48Out0AccX102 rho + rho 38568 := by
    unfold seg48Out0AccX103 seg48Out0AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 102]

    ring

  have hnexty : seg48Out0AccY103 rho = seg48Out0AccY102 rho + rho 38569 := by
    unfold seg48Out0AccY103 seg48Out0AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 102]

    ring

  have ha0 : (rho 38560 + rho 38561) * (seg48Out0AccX102 rho + seg48Out0AccY102 rho) = rho 38562 := by
    unfold seg48Out0AccX102 seg48Out0AccY102
    linear_combination r5805
  have ha1 : rho 38561 * seg48Out0AccX102 rho = rho 38563 := by
    unfold seg48Out0AccX102
    linear_combination r5806
  have ha2 : rho 38560 * seg48Out0AccY102 rho = rho 38564 := by
    unfold seg48Out0AccY102
    linear_combination r5807
  have ha3 : 3021 * rho 38563 * rho 38564 = rho 38565 := by
    linear_combination r5808
  have ha4 : rho 38566 * (1 + rho 38565) = rho 38563 + rho 38564 := by
    linear_combination r5809
  have ha5 : rho 38567 * (1 - rho 38565) = rho 38562 - rho 38563 - rho 38564 := by
    linear_combination r5810
  have haddx :
      rho 38566 * (1 + 3021 * (rho 38561 * seg48Out0AccX102 rho) * (rho 38560 * seg48Out0AccY102 rho)) =
        rho 38561 * seg48Out0AccX102 rho + rho 38560 * seg48Out0AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38567 * (1 - 3021 * (rho 38561 * seg48Out0AccX102 rho) * (rho 38560 * seg48Out0AccY102 rho)) =
        (-1) * (rho 38561 * seg48Out0AccX102 rho) - rho 38560 * seg48Out0AccY102 rho +
          (seg48Out0AccY102 rho - seg48Out0AccX102 rho * (-1)) * (rho 38560 + rho 38561) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38567 * (1 - rho 38565) = rho 38562 - rho 38563 - rho 38564 := ha5
      _ = (-1) * rho 38563 - rho 38564 + (seg48Out0AccY102 rho - seg48Out0AccX102 rho * (-1)) *
          (rho 38560 + rho 38561) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX103 rho = seg48Out0AccX102 rho - Bool.toZMod bit * (seg48Out0AccX102 rho - rho 38566) := by
    have hd : rho 38568 = Bool.toZMod bit * (rho 38566 - seg48Out0AccX102 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX102
      linear_combination -r5811
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY103 rho = seg48Out0AccY102 rho - Bool.toZMod bit * (seg48Out0AccY102 rho - rho 38567) := by
    have hd : rho 38569 = Bool.toZMod bit * (rho 38567 - seg48Out0AccY102 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY102
      linear_combination -r5812
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38560 * rho 38561 = rho 38570 := by linear_combination r5813
  have hd1 : rho 38560 * rho 38560 = rho 38571 := by linear_combination r5814
  have hd2 : rho 38561 * rho 38561 = rho 38572 := by linear_combination r5815
  have hd3 : rho 38573 * (rho 38561 * rho 38561 + rho 38560 * rho 38560 * (-1)) =
      2 * (rho 38560 * rho 38561) := by
    rw [hd0, hd1, hd2]
    linear_combination r5816
  have hd4 : rho 38574 * (2 - (rho 38561 * rho 38561 + rho 38560 * rho 38560 * (-1))) =
      rho 38561 * rho 38561 - rho 38560 * rho 38560 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5817
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX102 rho, seg48Out0AccY102 rho⟩ ⟨rho 38560, rho 38561⟩
    ⟨rho 38566, rho 38567⟩ ⟨seg48Out0AccX103 rho, seg48Out0AccY103 rho⟩ ⟨rho 38573, rho 38574⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5818 rho ∧ Seg48.relationRow5819 rho ∧ Seg48.relationRow5820 rho ∧ Seg48.relationRow5821 rho ∧ Seg48.relationRow5822 rho ∧ Seg48.relationRow5823 rho ∧ Seg48.relationRow5824 rho ∧ Seg48.relationRow5825 rho ∧ Seg48.relationRow5826 rho ∧ Seg48.relationRow5827 rho ∧ Seg48.relationRow5828 rho ∧ Seg48.relationRow5829 rho ∧ Seg48.relationRow5830 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830⟩

theorem seg48Out0_rung103 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37217 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX103 rho, seg48Out0AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38573, rho 38574⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX103 rho, seg48Out0AccY103 rho⟩ ⟨rho 38573, rho 38574⟩
        ⟨seg48Out0AccX104 rho, seg48Out0AccY104 rho⟩ ⟨rho 38586, rho 38587⟩ := by
  obtain ⟨r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830⟩ := seg48Out0_rows103 rho h
  unfold Seg48.relationRow5818 at r5818

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5818

  unfold Seg48.relationRow5819 at r5819

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5819

  unfold Seg48.relationRow5820 at r5820

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5820

  unfold Seg48.relationRow5821 at r5821

  unfold Seg48.relationRow5822 at r5822

  unfold Seg48.relationRow5823 at r5823

  unfold Seg48.relationRow5824 at r5824

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5824

  unfold Seg48.relationRow5825 at r5825

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5825

  unfold Seg48.relationRow5826 at r5826

  unfold Seg48.relationRow5827 at r5827

  unfold Seg48.relationRow5828 at r5828

  unfold Seg48.relationRow5829 at r5829

  unfold Seg48.relationRow5830 at r5830

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX104 rho = seg48Out0AccX103 rho + rho 38581 := by
    unfold seg48Out0AccX104 seg48Out0AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 103]

    ring

  have hnexty : seg48Out0AccY104 rho = seg48Out0AccY103 rho + rho 38582 := by
    unfold seg48Out0AccY104 seg48Out0AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 103]

    ring

  have ha0 : (rho 38573 + rho 38574) * (seg48Out0AccX103 rho + seg48Out0AccY103 rho) = rho 38575 := by
    unfold seg48Out0AccX103 seg48Out0AccY103
    linear_combination r5818
  have ha1 : rho 38574 * seg48Out0AccX103 rho = rho 38576 := by
    unfold seg48Out0AccX103
    linear_combination r5819
  have ha2 : rho 38573 * seg48Out0AccY103 rho = rho 38577 := by
    unfold seg48Out0AccY103
    linear_combination r5820
  have ha3 : 3021 * rho 38576 * rho 38577 = rho 38578 := by
    linear_combination r5821
  have ha4 : rho 38579 * (1 + rho 38578) = rho 38576 + rho 38577 := by
    linear_combination r5822
  have ha5 : rho 38580 * (1 - rho 38578) = rho 38575 - rho 38576 - rho 38577 := by
    linear_combination r5823
  have haddx :
      rho 38579 * (1 + 3021 * (rho 38574 * seg48Out0AccX103 rho) * (rho 38573 * seg48Out0AccY103 rho)) =
        rho 38574 * seg48Out0AccX103 rho + rho 38573 * seg48Out0AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38580 * (1 - 3021 * (rho 38574 * seg48Out0AccX103 rho) * (rho 38573 * seg48Out0AccY103 rho)) =
        (-1) * (rho 38574 * seg48Out0AccX103 rho) - rho 38573 * seg48Out0AccY103 rho +
          (seg48Out0AccY103 rho - seg48Out0AccX103 rho * (-1)) * (rho 38573 + rho 38574) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38580 * (1 - rho 38578) = rho 38575 - rho 38576 - rho 38577 := ha5
      _ = (-1) * rho 38576 - rho 38577 + (seg48Out0AccY103 rho - seg48Out0AccX103 rho * (-1)) *
          (rho 38573 + rho 38574) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX104 rho = seg48Out0AccX103 rho - Bool.toZMod bit * (seg48Out0AccX103 rho - rho 38579) := by
    have hd : rho 38581 = Bool.toZMod bit * (rho 38579 - seg48Out0AccX103 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX103
      linear_combination -r5824
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY104 rho = seg48Out0AccY103 rho - Bool.toZMod bit * (seg48Out0AccY103 rho - rho 38580) := by
    have hd : rho 38582 = Bool.toZMod bit * (rho 38580 - seg48Out0AccY103 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY103
      linear_combination -r5825
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38573 * rho 38574 = rho 38583 := by linear_combination r5826
  have hd1 : rho 38573 * rho 38573 = rho 38584 := by linear_combination r5827
  have hd2 : rho 38574 * rho 38574 = rho 38585 := by linear_combination r5828
  have hd3 : rho 38586 * (rho 38574 * rho 38574 + rho 38573 * rho 38573 * (-1)) =
      2 * (rho 38573 * rho 38574) := by
    rw [hd0, hd1, hd2]
    linear_combination r5829
  have hd4 : rho 38587 * (2 - (rho 38574 * rho 38574 + rho 38573 * rho 38573 * (-1))) =
      rho 38574 * rho 38574 - rho 38573 * rho 38573 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5830
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX103 rho, seg48Out0AccY103 rho⟩ ⟨rho 38573, rho 38574⟩
    ⟨rho 38579, rho 38580⟩ ⟨seg48Out0AccX104 rho, seg48Out0AccY104 rho⟩ ⟨rho 38586, rho 38587⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5831 rho ∧ Seg48.relationRow5832 rho ∧ Seg48.relationRow5833 rho ∧ Seg48.relationRow5834 rho ∧ Seg48.relationRow5835 rho ∧ Seg48.relationRow5836 rho ∧ Seg48.relationRow5837 rho ∧ Seg48.relationRow5838 rho ∧ Seg48.relationRow5839 rho ∧ Seg48.relationRow5840 rho ∧ Seg48.relationRow5841 rho ∧ Seg48.relationRow5842 rho ∧ Seg48.relationRow5843 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839⟩

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨r5840, r5841, r5842, r5843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839, r5840, r5841, r5842, r5843⟩

theorem seg48Out0_rung104 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37218 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX104 rho, seg48Out0AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38586, rho 38587⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX104 rho, seg48Out0AccY104 rho⟩ ⟨rho 38586, rho 38587⟩
        ⟨seg48Out0AccX105 rho, seg48Out0AccY105 rho⟩ ⟨rho 38599, rho 38600⟩ := by
  obtain ⟨r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839, r5840, r5841, r5842, r5843⟩ := seg48Out0_rows104 rho h
  unfold Seg48.relationRow5831 at r5831

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5831

  unfold Seg48.relationRow5832 at r5832

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5832

  unfold Seg48.relationRow5833 at r5833

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5833

  unfold Seg48.relationRow5834 at r5834

  unfold Seg48.relationRow5835 at r5835

  unfold Seg48.relationRow5836 at r5836

  unfold Seg48.relationRow5837 at r5837

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5837

  unfold Seg48.relationRow5838 at r5838

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5838

  unfold Seg48.relationRow5839 at r5839

  unfold Seg48.relationRow5840 at r5840

  unfold Seg48.relationRow5841 at r5841

  unfold Seg48.relationRow5842 at r5842

  unfold Seg48.relationRow5843 at r5843

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX105 rho = seg48Out0AccX104 rho + rho 38594 := by
    unfold seg48Out0AccX105 seg48Out0AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 104]

    ring

  have hnexty : seg48Out0AccY105 rho = seg48Out0AccY104 rho + rho 38595 := by
    unfold seg48Out0AccY105 seg48Out0AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 104]

    ring

  have ha0 : (rho 38586 + rho 38587) * (seg48Out0AccX104 rho + seg48Out0AccY104 rho) = rho 38588 := by
    unfold seg48Out0AccX104 seg48Out0AccY104
    linear_combination r5831
  have ha1 : rho 38587 * seg48Out0AccX104 rho = rho 38589 := by
    unfold seg48Out0AccX104
    linear_combination r5832
  have ha2 : rho 38586 * seg48Out0AccY104 rho = rho 38590 := by
    unfold seg48Out0AccY104
    linear_combination r5833
  have ha3 : 3021 * rho 38589 * rho 38590 = rho 38591 := by
    linear_combination r5834
  have ha4 : rho 38592 * (1 + rho 38591) = rho 38589 + rho 38590 := by
    linear_combination r5835
  have ha5 : rho 38593 * (1 - rho 38591) = rho 38588 - rho 38589 - rho 38590 := by
    linear_combination r5836
  have haddx :
      rho 38592 * (1 + 3021 * (rho 38587 * seg48Out0AccX104 rho) * (rho 38586 * seg48Out0AccY104 rho)) =
        rho 38587 * seg48Out0AccX104 rho + rho 38586 * seg48Out0AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38593 * (1 - 3021 * (rho 38587 * seg48Out0AccX104 rho) * (rho 38586 * seg48Out0AccY104 rho)) =
        (-1) * (rho 38587 * seg48Out0AccX104 rho) - rho 38586 * seg48Out0AccY104 rho +
          (seg48Out0AccY104 rho - seg48Out0AccX104 rho * (-1)) * (rho 38586 + rho 38587) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38593 * (1 - rho 38591) = rho 38588 - rho 38589 - rho 38590 := ha5
      _ = (-1) * rho 38589 - rho 38590 + (seg48Out0AccY104 rho - seg48Out0AccX104 rho * (-1)) *
          (rho 38586 + rho 38587) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX105 rho = seg48Out0AccX104 rho - Bool.toZMod bit * (seg48Out0AccX104 rho - rho 38592) := by
    have hd : rho 38594 = Bool.toZMod bit * (rho 38592 - seg48Out0AccX104 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX104
      linear_combination -r5837
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY105 rho = seg48Out0AccY104 rho - Bool.toZMod bit * (seg48Out0AccY104 rho - rho 38593) := by
    have hd : rho 38595 = Bool.toZMod bit * (rho 38593 - seg48Out0AccY104 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY104
      linear_combination -r5838
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38586 * rho 38587 = rho 38596 := by linear_combination r5839
  have hd1 : rho 38586 * rho 38586 = rho 38597 := by linear_combination r5840
  have hd2 : rho 38587 * rho 38587 = rho 38598 := by linear_combination r5841
  have hd3 : rho 38599 * (rho 38587 * rho 38587 + rho 38586 * rho 38586 * (-1)) =
      2 * (rho 38586 * rho 38587) := by
    rw [hd0, hd1, hd2]
    linear_combination r5842
  have hd4 : rho 38600 * (2 - (rho 38587 * rho 38587 + rho 38586 * rho 38586 * (-1))) =
      rho 38587 * rho 38587 - rho 38586 * rho 38586 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5843
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX104 rho, seg48Out0AccY104 rho⟩ ⟨rho 38586, rho 38587⟩
    ⟨rho 38592, rho 38593⟩ ⟨seg48Out0AccX105 rho, seg48Out0AccY105 rho⟩ ⟨rho 38599, rho 38600⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5844 rho ∧ Seg48.relationRow5845 rho ∧ Seg48.relationRow5846 rho ∧ Seg48.relationRow5847 rho ∧ Seg48.relationRow5848 rho ∧ Seg48.relationRow5849 rho ∧ Seg48.relationRow5850 rho ∧ Seg48.relationRow5851 rho ∧ Seg48.relationRow5852 rho ∧ Seg48.relationRow5853 rho ∧ Seg48.relationRow5854 rho ∧ Seg48.relationRow5855 rho ∧ Seg48.relationRow5856 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856⟩

theorem seg48Out0_rung105 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37219 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX105 rho, seg48Out0AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38599, rho 38600⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX105 rho, seg48Out0AccY105 rho⟩ ⟨rho 38599, rho 38600⟩
        ⟨seg48Out0AccX106 rho, seg48Out0AccY106 rho⟩ ⟨rho 38612, rho 38613⟩ := by
  obtain ⟨r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856⟩ := seg48Out0_rows105 rho h
  unfold Seg48.relationRow5844 at r5844

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5844

  unfold Seg48.relationRow5845 at r5845

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5845

  unfold Seg48.relationRow5846 at r5846

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5846

  unfold Seg48.relationRow5847 at r5847

  unfold Seg48.relationRow5848 at r5848

  unfold Seg48.relationRow5849 at r5849

  unfold Seg48.relationRow5850 at r5850

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5850

  unfold Seg48.relationRow5851 at r5851

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5851

  unfold Seg48.relationRow5852 at r5852

  unfold Seg48.relationRow5853 at r5853

  unfold Seg48.relationRow5854 at r5854

  unfold Seg48.relationRow5855 at r5855

  unfold Seg48.relationRow5856 at r5856

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX106 rho = seg48Out0AccX105 rho + rho 38607 := by
    unfold seg48Out0AccX106 seg48Out0AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 105]

    ring

  have hnexty : seg48Out0AccY106 rho = seg48Out0AccY105 rho + rho 38608 := by
    unfold seg48Out0AccY106 seg48Out0AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 105]

    ring

  have ha0 : (rho 38599 + rho 38600) * (seg48Out0AccX105 rho + seg48Out0AccY105 rho) = rho 38601 := by
    unfold seg48Out0AccX105 seg48Out0AccY105
    linear_combination r5844
  have ha1 : rho 38600 * seg48Out0AccX105 rho = rho 38602 := by
    unfold seg48Out0AccX105
    linear_combination r5845
  have ha2 : rho 38599 * seg48Out0AccY105 rho = rho 38603 := by
    unfold seg48Out0AccY105
    linear_combination r5846
  have ha3 : 3021 * rho 38602 * rho 38603 = rho 38604 := by
    linear_combination r5847
  have ha4 : rho 38605 * (1 + rho 38604) = rho 38602 + rho 38603 := by
    linear_combination r5848
  have ha5 : rho 38606 * (1 - rho 38604) = rho 38601 - rho 38602 - rho 38603 := by
    linear_combination r5849
  have haddx :
      rho 38605 * (1 + 3021 * (rho 38600 * seg48Out0AccX105 rho) * (rho 38599 * seg48Out0AccY105 rho)) =
        rho 38600 * seg48Out0AccX105 rho + rho 38599 * seg48Out0AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38606 * (1 - 3021 * (rho 38600 * seg48Out0AccX105 rho) * (rho 38599 * seg48Out0AccY105 rho)) =
        (-1) * (rho 38600 * seg48Out0AccX105 rho) - rho 38599 * seg48Out0AccY105 rho +
          (seg48Out0AccY105 rho - seg48Out0AccX105 rho * (-1)) * (rho 38599 + rho 38600) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38606 * (1 - rho 38604) = rho 38601 - rho 38602 - rho 38603 := ha5
      _ = (-1) * rho 38602 - rho 38603 + (seg48Out0AccY105 rho - seg48Out0AccX105 rho * (-1)) *
          (rho 38599 + rho 38600) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX106 rho = seg48Out0AccX105 rho - Bool.toZMod bit * (seg48Out0AccX105 rho - rho 38605) := by
    have hd : rho 38607 = Bool.toZMod bit * (rho 38605 - seg48Out0AccX105 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX105
      linear_combination -r5850
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY106 rho = seg48Out0AccY105 rho - Bool.toZMod bit * (seg48Out0AccY105 rho - rho 38606) := by
    have hd : rho 38608 = Bool.toZMod bit * (rho 38606 - seg48Out0AccY105 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY105
      linear_combination -r5851
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38599 * rho 38600 = rho 38609 := by linear_combination r5852
  have hd1 : rho 38599 * rho 38599 = rho 38610 := by linear_combination r5853
  have hd2 : rho 38600 * rho 38600 = rho 38611 := by linear_combination r5854
  have hd3 : rho 38612 * (rho 38600 * rho 38600 + rho 38599 * rho 38599 * (-1)) =
      2 * (rho 38599 * rho 38600) := by
    rw [hd0, hd1, hd2]
    linear_combination r5855
  have hd4 : rho 38613 * (2 - (rho 38600 * rho 38600 + rho 38599 * rho 38599 * (-1))) =
      rho 38600 * rho 38600 - rho 38599 * rho 38599 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5856
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX105 rho, seg48Out0AccY105 rho⟩ ⟨rho 38599, rho 38600⟩
    ⟨rho 38605, rho 38606⟩ ⟨seg48Out0AccX106 rho, seg48Out0AccY106 rho⟩ ⟨rho 38612, rho 38613⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5857 rho ∧ Seg48.relationRow5858 rho ∧ Seg48.relationRow5859 rho ∧ Seg48.relationRow5860 rho ∧ Seg48.relationRow5861 rho ∧ Seg48.relationRow5862 rho ∧ Seg48.relationRow5863 rho ∧ Seg48.relationRow5864 rho ∧ Seg48.relationRow5865 rho ∧ Seg48.relationRow5866 rho ∧ Seg48.relationRow5867 rho ∧ Seg48.relationRow5868 rho ∧ Seg48.relationRow5869 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869⟩

theorem seg48Out0_rung106 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37220 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX106 rho, seg48Out0AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38612, rho 38613⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX106 rho, seg48Out0AccY106 rho⟩ ⟨rho 38612, rho 38613⟩
        ⟨seg48Out0AccX107 rho, seg48Out0AccY107 rho⟩ ⟨rho 38625, rho 38626⟩ := by
  obtain ⟨r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869⟩ := seg48Out0_rows106 rho h
  unfold Seg48.relationRow5857 at r5857

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5857

  unfold Seg48.relationRow5858 at r5858

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5858

  unfold Seg48.relationRow5859 at r5859

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5859

  unfold Seg48.relationRow5860 at r5860

  unfold Seg48.relationRow5861 at r5861

  unfold Seg48.relationRow5862 at r5862

  unfold Seg48.relationRow5863 at r5863

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5863

  unfold Seg48.relationRow5864 at r5864

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5864

  unfold Seg48.relationRow5865 at r5865

  unfold Seg48.relationRow5866 at r5866

  unfold Seg48.relationRow5867 at r5867

  unfold Seg48.relationRow5868 at r5868

  unfold Seg48.relationRow5869 at r5869

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX107 rho = seg48Out0AccX106 rho + rho 38620 := by
    unfold seg48Out0AccX107 seg48Out0AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 106]

    ring

  have hnexty : seg48Out0AccY107 rho = seg48Out0AccY106 rho + rho 38621 := by
    unfold seg48Out0AccY107 seg48Out0AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 106]

    ring

  have ha0 : (rho 38612 + rho 38613) * (seg48Out0AccX106 rho + seg48Out0AccY106 rho) = rho 38614 := by
    unfold seg48Out0AccX106 seg48Out0AccY106
    linear_combination r5857
  have ha1 : rho 38613 * seg48Out0AccX106 rho = rho 38615 := by
    unfold seg48Out0AccX106
    linear_combination r5858
  have ha2 : rho 38612 * seg48Out0AccY106 rho = rho 38616 := by
    unfold seg48Out0AccY106
    linear_combination r5859
  have ha3 : 3021 * rho 38615 * rho 38616 = rho 38617 := by
    linear_combination r5860
  have ha4 : rho 38618 * (1 + rho 38617) = rho 38615 + rho 38616 := by
    linear_combination r5861
  have ha5 : rho 38619 * (1 - rho 38617) = rho 38614 - rho 38615 - rho 38616 := by
    linear_combination r5862
  have haddx :
      rho 38618 * (1 + 3021 * (rho 38613 * seg48Out0AccX106 rho) * (rho 38612 * seg48Out0AccY106 rho)) =
        rho 38613 * seg48Out0AccX106 rho + rho 38612 * seg48Out0AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38619 * (1 - 3021 * (rho 38613 * seg48Out0AccX106 rho) * (rho 38612 * seg48Out0AccY106 rho)) =
        (-1) * (rho 38613 * seg48Out0AccX106 rho) - rho 38612 * seg48Out0AccY106 rho +
          (seg48Out0AccY106 rho - seg48Out0AccX106 rho * (-1)) * (rho 38612 + rho 38613) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38619 * (1 - rho 38617) = rho 38614 - rho 38615 - rho 38616 := ha5
      _ = (-1) * rho 38615 - rho 38616 + (seg48Out0AccY106 rho - seg48Out0AccX106 rho * (-1)) *
          (rho 38612 + rho 38613) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX107 rho = seg48Out0AccX106 rho - Bool.toZMod bit * (seg48Out0AccX106 rho - rho 38618) := by
    have hd : rho 38620 = Bool.toZMod bit * (rho 38618 - seg48Out0AccX106 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX106
      linear_combination -r5863
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY107 rho = seg48Out0AccY106 rho - Bool.toZMod bit * (seg48Out0AccY106 rho - rho 38619) := by
    have hd : rho 38621 = Bool.toZMod bit * (rho 38619 - seg48Out0AccY106 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY106
      linear_combination -r5864
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38612 * rho 38613 = rho 38622 := by linear_combination r5865
  have hd1 : rho 38612 * rho 38612 = rho 38623 := by linear_combination r5866
  have hd2 : rho 38613 * rho 38613 = rho 38624 := by linear_combination r5867
  have hd3 : rho 38625 * (rho 38613 * rho 38613 + rho 38612 * rho 38612 * (-1)) =
      2 * (rho 38612 * rho 38613) := by
    rw [hd0, hd1, hd2]
    linear_combination r5868
  have hd4 : rho 38626 * (2 - (rho 38613 * rho 38613 + rho 38612 * rho 38612 * (-1))) =
      rho 38613 * rho 38613 - rho 38612 * rho 38612 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5869
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX106 rho, seg48Out0AccY106 rho⟩ ⟨rho 38612, rho 38613⟩
    ⟨rho 38618, rho 38619⟩ ⟨seg48Out0AccX107 rho, seg48Out0AccY107 rho⟩ ⟨rho 38625, rho 38626⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5870 rho ∧ Seg48.relationRow5871 rho ∧ Seg48.relationRow5872 rho ∧ Seg48.relationRow5873 rho ∧ Seg48.relationRow5874 rho ∧ Seg48.relationRow5875 rho ∧ Seg48.relationRow5876 rho ∧ Seg48.relationRow5877 rho ∧ Seg48.relationRow5878 rho ∧ Seg48.relationRow5879 rho ∧ Seg48.relationRow5880 rho ∧ Seg48.relationRow5881 rho ∧ Seg48.relationRow5882 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882⟩

theorem seg48Out0_rung107 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37221 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX107 rho, seg48Out0AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38625, rho 38626⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX107 rho, seg48Out0AccY107 rho⟩ ⟨rho 38625, rho 38626⟩
        ⟨seg48Out0AccX108 rho, seg48Out0AccY108 rho⟩ ⟨rho 38638, rho 38639⟩ := by
  obtain ⟨r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882⟩ := seg48Out0_rows107 rho h
  unfold Seg48.relationRow5870 at r5870

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5870

  unfold Seg48.relationRow5871 at r5871

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5871

  unfold Seg48.relationRow5872 at r5872

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5872

  unfold Seg48.relationRow5873 at r5873

  unfold Seg48.relationRow5874 at r5874

  unfold Seg48.relationRow5875 at r5875

  unfold Seg48.relationRow5876 at r5876

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5876

  unfold Seg48.relationRow5877 at r5877

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5877

  unfold Seg48.relationRow5878 at r5878

  unfold Seg48.relationRow5879 at r5879

  unfold Seg48.relationRow5880 at r5880

  unfold Seg48.relationRow5881 at r5881

  unfold Seg48.relationRow5882 at r5882

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX108 rho = seg48Out0AccX107 rho + rho 38633 := by
    unfold seg48Out0AccX108 seg48Out0AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 107]

    ring

  have hnexty : seg48Out0AccY108 rho = seg48Out0AccY107 rho + rho 38634 := by
    unfold seg48Out0AccY108 seg48Out0AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 107]

    ring

  have ha0 : (rho 38625 + rho 38626) * (seg48Out0AccX107 rho + seg48Out0AccY107 rho) = rho 38627 := by
    unfold seg48Out0AccX107 seg48Out0AccY107
    linear_combination r5870
  have ha1 : rho 38626 * seg48Out0AccX107 rho = rho 38628 := by
    unfold seg48Out0AccX107
    linear_combination r5871
  have ha2 : rho 38625 * seg48Out0AccY107 rho = rho 38629 := by
    unfold seg48Out0AccY107
    linear_combination r5872
  have ha3 : 3021 * rho 38628 * rho 38629 = rho 38630 := by
    linear_combination r5873
  have ha4 : rho 38631 * (1 + rho 38630) = rho 38628 + rho 38629 := by
    linear_combination r5874
  have ha5 : rho 38632 * (1 - rho 38630) = rho 38627 - rho 38628 - rho 38629 := by
    linear_combination r5875
  have haddx :
      rho 38631 * (1 + 3021 * (rho 38626 * seg48Out0AccX107 rho) * (rho 38625 * seg48Out0AccY107 rho)) =
        rho 38626 * seg48Out0AccX107 rho + rho 38625 * seg48Out0AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38632 * (1 - 3021 * (rho 38626 * seg48Out0AccX107 rho) * (rho 38625 * seg48Out0AccY107 rho)) =
        (-1) * (rho 38626 * seg48Out0AccX107 rho) - rho 38625 * seg48Out0AccY107 rho +
          (seg48Out0AccY107 rho - seg48Out0AccX107 rho * (-1)) * (rho 38625 + rho 38626) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38632 * (1 - rho 38630) = rho 38627 - rho 38628 - rho 38629 := ha5
      _ = (-1) * rho 38628 - rho 38629 + (seg48Out0AccY107 rho - seg48Out0AccX107 rho * (-1)) *
          (rho 38625 + rho 38626) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX108 rho = seg48Out0AccX107 rho - Bool.toZMod bit * (seg48Out0AccX107 rho - rho 38631) := by
    have hd : rho 38633 = Bool.toZMod bit * (rho 38631 - seg48Out0AccX107 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX107
      linear_combination -r5876
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY108 rho = seg48Out0AccY107 rho - Bool.toZMod bit * (seg48Out0AccY107 rho - rho 38632) := by
    have hd : rho 38634 = Bool.toZMod bit * (rho 38632 - seg48Out0AccY107 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY107
      linear_combination -r5877
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38625 * rho 38626 = rho 38635 := by linear_combination r5878
  have hd1 : rho 38625 * rho 38625 = rho 38636 := by linear_combination r5879
  have hd2 : rho 38626 * rho 38626 = rho 38637 := by linear_combination r5880
  have hd3 : rho 38638 * (rho 38626 * rho 38626 + rho 38625 * rho 38625 * (-1)) =
      2 * (rho 38625 * rho 38626) := by
    rw [hd0, hd1, hd2]
    linear_combination r5881
  have hd4 : rho 38639 * (2 - (rho 38626 * rho 38626 + rho 38625 * rho 38625 * (-1))) =
      rho 38626 * rho 38626 - rho 38625 * rho 38625 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5882
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX107 rho, seg48Out0AccY107 rho⟩ ⟨rho 38625, rho 38626⟩
    ⟨rho 38631, rho 38632⟩ ⟨seg48Out0AccX108 rho, seg48Out0AccY108 rho⟩ ⟨rho 38638, rho 38639⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5883 rho ∧ Seg48.relationRow5884 rho ∧ Seg48.relationRow5885 rho ∧ Seg48.relationRow5886 rho ∧ Seg48.relationRow5887 rho ∧ Seg48.relationRow5888 rho ∧ Seg48.relationRow5889 rho ∧ Seg48.relationRow5890 rho ∧ Seg48.relationRow5891 rho ∧ Seg48.relationRow5892 rho ∧ Seg48.relationRow5893 rho ∧ Seg48.relationRow5894 rho ∧ Seg48.relationRow5895 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895⟩

theorem seg48Out0_rung108 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37222 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX108 rho, seg48Out0AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38638, rho 38639⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX108 rho, seg48Out0AccY108 rho⟩ ⟨rho 38638, rho 38639⟩
        ⟨seg48Out0AccX109 rho, seg48Out0AccY109 rho⟩ ⟨rho 38651, rho 38652⟩ := by
  obtain ⟨r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895⟩ := seg48Out0_rows108 rho h
  unfold Seg48.relationRow5883 at r5883

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5883

  unfold Seg48.relationRow5884 at r5884

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5884

  unfold Seg48.relationRow5885 at r5885

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5885

  unfold Seg48.relationRow5886 at r5886

  unfold Seg48.relationRow5887 at r5887

  unfold Seg48.relationRow5888 at r5888

  unfold Seg48.relationRow5889 at r5889

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5889

  unfold Seg48.relationRow5890 at r5890

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5890

  unfold Seg48.relationRow5891 at r5891

  unfold Seg48.relationRow5892 at r5892

  unfold Seg48.relationRow5893 at r5893

  unfold Seg48.relationRow5894 at r5894

  unfold Seg48.relationRow5895 at r5895

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX109 rho = seg48Out0AccX108 rho + rho 38646 := by
    unfold seg48Out0AccX109 seg48Out0AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 108]

    ring

  have hnexty : seg48Out0AccY109 rho = seg48Out0AccY108 rho + rho 38647 := by
    unfold seg48Out0AccY109 seg48Out0AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 108]

    ring

  have ha0 : (rho 38638 + rho 38639) * (seg48Out0AccX108 rho + seg48Out0AccY108 rho) = rho 38640 := by
    unfold seg48Out0AccX108 seg48Out0AccY108
    linear_combination r5883
  have ha1 : rho 38639 * seg48Out0AccX108 rho = rho 38641 := by
    unfold seg48Out0AccX108
    linear_combination r5884
  have ha2 : rho 38638 * seg48Out0AccY108 rho = rho 38642 := by
    unfold seg48Out0AccY108
    linear_combination r5885
  have ha3 : 3021 * rho 38641 * rho 38642 = rho 38643 := by
    linear_combination r5886
  have ha4 : rho 38644 * (1 + rho 38643) = rho 38641 + rho 38642 := by
    linear_combination r5887
  have ha5 : rho 38645 * (1 - rho 38643) = rho 38640 - rho 38641 - rho 38642 := by
    linear_combination r5888
  have haddx :
      rho 38644 * (1 + 3021 * (rho 38639 * seg48Out0AccX108 rho) * (rho 38638 * seg48Out0AccY108 rho)) =
        rho 38639 * seg48Out0AccX108 rho + rho 38638 * seg48Out0AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38645 * (1 - 3021 * (rho 38639 * seg48Out0AccX108 rho) * (rho 38638 * seg48Out0AccY108 rho)) =
        (-1) * (rho 38639 * seg48Out0AccX108 rho) - rho 38638 * seg48Out0AccY108 rho +
          (seg48Out0AccY108 rho - seg48Out0AccX108 rho * (-1)) * (rho 38638 + rho 38639) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38645 * (1 - rho 38643) = rho 38640 - rho 38641 - rho 38642 := ha5
      _ = (-1) * rho 38641 - rho 38642 + (seg48Out0AccY108 rho - seg48Out0AccX108 rho * (-1)) *
          (rho 38638 + rho 38639) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX109 rho = seg48Out0AccX108 rho - Bool.toZMod bit * (seg48Out0AccX108 rho - rho 38644) := by
    have hd : rho 38646 = Bool.toZMod bit * (rho 38644 - seg48Out0AccX108 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX108
      linear_combination -r5889
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY109 rho = seg48Out0AccY108 rho - Bool.toZMod bit * (seg48Out0AccY108 rho - rho 38645) := by
    have hd : rho 38647 = Bool.toZMod bit * (rho 38645 - seg48Out0AccY108 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY108
      linear_combination -r5890
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38638 * rho 38639 = rho 38648 := by linear_combination r5891
  have hd1 : rho 38638 * rho 38638 = rho 38649 := by linear_combination r5892
  have hd2 : rho 38639 * rho 38639 = rho 38650 := by linear_combination r5893
  have hd3 : rho 38651 * (rho 38639 * rho 38639 + rho 38638 * rho 38638 * (-1)) =
      2 * (rho 38638 * rho 38639) := by
    rw [hd0, hd1, hd2]
    linear_combination r5894
  have hd4 : rho 38652 * (2 - (rho 38639 * rho 38639 + rho 38638 * rho 38638 * (-1))) =
      rho 38639 * rho 38639 - rho 38638 * rho 38638 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5895
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX108 rho, seg48Out0AccY108 rho⟩ ⟨rho 38638, rho 38639⟩
    ⟨rho 38644, rho 38645⟩ ⟨seg48Out0AccX109 rho, seg48Out0AccY109 rho⟩ ⟨rho 38651, rho 38652⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5896 rho ∧ Seg48.relationRow5897 rho ∧ Seg48.relationRow5898 rho ∧ Seg48.relationRow5899 rho ∧ Seg48.relationRow5900 rho ∧ Seg48.relationRow5901 rho ∧ Seg48.relationRow5902 rho ∧ Seg48.relationRow5903 rho ∧ Seg48.relationRow5904 rho ∧ Seg48.relationRow5905 rho ∧ Seg48.relationRow5906 rho ∧ Seg48.relationRow5907 rho ∧ Seg48.relationRow5908 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩

theorem seg48Out0_rung109 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37223 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX109 rho, seg48Out0AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38651, rho 38652⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX109 rho, seg48Out0AccY109 rho⟩ ⟨rho 38651, rho 38652⟩
        ⟨seg48Out0AccX110 rho, seg48Out0AccY110 rho⟩ ⟨rho 38664, rho 38665⟩ := by
  obtain ⟨r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908⟩ := seg48Out0_rows109 rho h
  unfold Seg48.relationRow5896 at r5896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5896

  unfold Seg48.relationRow5897 at r5897

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5897

  unfold Seg48.relationRow5898 at r5898

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5898

  unfold Seg48.relationRow5899 at r5899

  unfold Seg48.relationRow5900 at r5900

  unfold Seg48.relationRow5901 at r5901

  unfold Seg48.relationRow5902 at r5902

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5902

  unfold Seg48.relationRow5903 at r5903

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5903

  unfold Seg48.relationRow5904 at r5904

  unfold Seg48.relationRow5905 at r5905

  unfold Seg48.relationRow5906 at r5906

  unfold Seg48.relationRow5907 at r5907

  unfold Seg48.relationRow5908 at r5908

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX110 rho = seg48Out0AccX109 rho + rho 38659 := by
    unfold seg48Out0AccX110 seg48Out0AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 109]

    ring

  have hnexty : seg48Out0AccY110 rho = seg48Out0AccY109 rho + rho 38660 := by
    unfold seg48Out0AccY110 seg48Out0AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 109]

    ring

  have ha0 : (rho 38651 + rho 38652) * (seg48Out0AccX109 rho + seg48Out0AccY109 rho) = rho 38653 := by
    unfold seg48Out0AccX109 seg48Out0AccY109
    linear_combination r5896
  have ha1 : rho 38652 * seg48Out0AccX109 rho = rho 38654 := by
    unfold seg48Out0AccX109
    linear_combination r5897
  have ha2 : rho 38651 * seg48Out0AccY109 rho = rho 38655 := by
    unfold seg48Out0AccY109
    linear_combination r5898
  have ha3 : 3021 * rho 38654 * rho 38655 = rho 38656 := by
    linear_combination r5899
  have ha4 : rho 38657 * (1 + rho 38656) = rho 38654 + rho 38655 := by
    linear_combination r5900
  have ha5 : rho 38658 * (1 - rho 38656) = rho 38653 - rho 38654 - rho 38655 := by
    linear_combination r5901
  have haddx :
      rho 38657 * (1 + 3021 * (rho 38652 * seg48Out0AccX109 rho) * (rho 38651 * seg48Out0AccY109 rho)) =
        rho 38652 * seg48Out0AccX109 rho + rho 38651 * seg48Out0AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38658 * (1 - 3021 * (rho 38652 * seg48Out0AccX109 rho) * (rho 38651 * seg48Out0AccY109 rho)) =
        (-1) * (rho 38652 * seg48Out0AccX109 rho) - rho 38651 * seg48Out0AccY109 rho +
          (seg48Out0AccY109 rho - seg48Out0AccX109 rho * (-1)) * (rho 38651 + rho 38652) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38658 * (1 - rho 38656) = rho 38653 - rho 38654 - rho 38655 := ha5
      _ = (-1) * rho 38654 - rho 38655 + (seg48Out0AccY109 rho - seg48Out0AccX109 rho * (-1)) *
          (rho 38651 + rho 38652) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX110 rho = seg48Out0AccX109 rho - Bool.toZMod bit * (seg48Out0AccX109 rho - rho 38657) := by
    have hd : rho 38659 = Bool.toZMod bit * (rho 38657 - seg48Out0AccX109 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX109
      linear_combination -r5902
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY110 rho = seg48Out0AccY109 rho - Bool.toZMod bit * (seg48Out0AccY109 rho - rho 38658) := by
    have hd : rho 38660 = Bool.toZMod bit * (rho 38658 - seg48Out0AccY109 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY109
      linear_combination -r5903
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38651 * rho 38652 = rho 38661 := by linear_combination r5904
  have hd1 : rho 38651 * rho 38651 = rho 38662 := by linear_combination r5905
  have hd2 : rho 38652 * rho 38652 = rho 38663 := by linear_combination r5906
  have hd3 : rho 38664 * (rho 38652 * rho 38652 + rho 38651 * rho 38651 * (-1)) =
      2 * (rho 38651 * rho 38652) := by
    rw [hd0, hd1, hd2]
    linear_combination r5907
  have hd4 : rho 38665 * (2 - (rho 38652 * rho 38652 + rho 38651 * rho 38651 * (-1))) =
      rho 38652 * rho 38652 - rho 38651 * rho 38651 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5908
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX109 rho, seg48Out0AccY109 rho⟩ ⟨rho 38651, rho 38652⟩
    ⟨rho 38657, rho 38658⟩ ⟨seg48Out0AccX110 rho, seg48Out0AccY110 rho⟩ ⟨rho 38664, rho 38665⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c9 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg48Out0_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg48Out0_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg48Out0_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg48Out0_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg48Out0_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg48Out0_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg48Out0_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg48Out0_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg48Out0_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg48Out0_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
