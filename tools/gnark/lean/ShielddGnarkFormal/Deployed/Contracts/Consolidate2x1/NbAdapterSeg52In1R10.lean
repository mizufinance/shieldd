import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4756 rho ∧ Seg52.relationRow4757 rho ∧ Seg52.relationRow4758 rho ∧ Seg52.relationRow4759 rho ∧ Seg52.relationRow4760 rho ∧ Seg52.relationRow4761 rho ∧ Seg52.relationRow4762 rho ∧ Seg52.relationRow4763 rho ∧ Seg52.relationRow4764 rho ∧ Seg52.relationRow4765 rho ∧ Seg52.relationRow4766 rho ∧ Seg52.relationRow4767 rho ∧ Seg52.relationRow4768 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768⟩

theorem seg52In1_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47704 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49144, rho 49145⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 49144, rho 49145⟩
        ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 49157, rho 49158⟩ := by
  obtain ⟨r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768⟩ := seg52In1_rows110 rho h
  unfold Seg52.relationRow4756 at r4756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4756

  unfold Seg52.relationRow4757 at r4757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4757

  unfold Seg52.relationRow4758 at r4758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4758

  unfold Seg52.relationRow4759 at r4759

  unfold Seg52.relationRow4760 at r4760

  unfold Seg52.relationRow4761 at r4761

  unfold Seg52.relationRow4762 at r4762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4762

  unfold Seg52.relationRow4763 at r4763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4763

  unfold Seg52.relationRow4764 at r4764

  unfold Seg52.relationRow4765 at r4765

  unfold Seg52.relationRow4766 at r4766

  unfold Seg52.relationRow4767 at r4767

  unfold Seg52.relationRow4768 at r4768

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX111 rho = seg52In1AccX110 rho + rho 49152 := by
    unfold seg52In1AccX111 seg52In1AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 110]

    ring

  have hnexty : seg52In1AccY111 rho = seg52In1AccY110 rho + rho 49153 := by
    unfold seg52In1AccY111 seg52In1AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 110]

    ring

  have ha0 : (rho 49144 + rho 49145) * (seg52In1AccX110 rho + seg52In1AccY110 rho) = rho 49146 := by
    unfold seg52In1AccX110 seg52In1AccY110
    linear_combination r4756
  have ha1 : rho 49145 * seg52In1AccX110 rho = rho 49147 := by
    unfold seg52In1AccX110
    linear_combination r4757
  have ha2 : rho 49144 * seg52In1AccY110 rho = rho 49148 := by
    unfold seg52In1AccY110
    linear_combination r4758
  have ha3 : 3021 * rho 49147 * rho 49148 = rho 49149 := by
    linear_combination r4759
  have ha4 : rho 49150 * (1 + rho 49149) = rho 49147 + rho 49148 := by
    linear_combination r4760
  have ha5 : rho 49151 * (1 - rho 49149) = rho 49146 - rho 49147 - rho 49148 := by
    linear_combination r4761
  have haddx :
      rho 49150 * (1 + 3021 * (rho 49145 * seg52In1AccX110 rho) * (rho 49144 * seg52In1AccY110 rho)) =
        rho 49145 * seg52In1AccX110 rho + rho 49144 * seg52In1AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49151 * (1 - 3021 * (rho 49145 * seg52In1AccX110 rho) * (rho 49144 * seg52In1AccY110 rho)) =
        (-1) * (rho 49145 * seg52In1AccX110 rho) - rho 49144 * seg52In1AccY110 rho +
          (seg52In1AccY110 rho - seg52In1AccX110 rho * (-1)) * (rho 49144 + rho 49145) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49151 * (1 - rho 49149) = rho 49146 - rho 49147 - rho 49148 := ha5
      _ = (-1) * rho 49147 - rho 49148 + (seg52In1AccY110 rho - seg52In1AccX110 rho * (-1)) *
          (rho 49144 + rho 49145) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX111 rho = seg52In1AccX110 rho - Bool.toZMod bit * (seg52In1AccX110 rho - rho 49150) := by
    have hd : rho 49152 = Bool.toZMod bit * (rho 49150 - seg52In1AccX110 rho) := by
      rw [← hbit]
      unfold seg52In1AccX110
      linear_combination -r4762
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY111 rho = seg52In1AccY110 rho - Bool.toZMod bit * (seg52In1AccY110 rho - rho 49151) := by
    have hd : rho 49153 = Bool.toZMod bit * (rho 49151 - seg52In1AccY110 rho) := by
      rw [← hbit]
      unfold seg52In1AccY110
      linear_combination -r4763
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49144 * rho 49145 = rho 49154 := by linear_combination r4764
  have hd1 : rho 49144 * rho 49144 = rho 49155 := by linear_combination r4765
  have hd2 : rho 49145 * rho 49145 = rho 49156 := by linear_combination r4766
  have hd3 : rho 49157 * (rho 49145 * rho 49145 + rho 49144 * rho 49144 * (-1)) =
      2 * (rho 49144 * rho 49145) := by
    rw [hd0, hd1, hd2]
    linear_combination r4767
  have hd4 : rho 49158 * (2 - (rho 49145 * rho 49145 + rho 49144 * rho 49144 * (-1))) =
      rho 49145 * rho 49145 - rho 49144 * rho 49144 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4768
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 49144, rho 49145⟩
    ⟨rho 49150, rho 49151⟩ ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 49157, rho 49158⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4769 rho ∧ Seg52.relationRow4770 rho ∧ Seg52.relationRow4771 rho ∧ Seg52.relationRow4772 rho ∧ Seg52.relationRow4773 rho ∧ Seg52.relationRow4774 rho ∧ Seg52.relationRow4775 rho ∧ Seg52.relationRow4776 rho ∧ Seg52.relationRow4777 rho ∧ Seg52.relationRow4778 rho ∧ Seg52.relationRow4779 rho ∧ Seg52.relationRow4780 rho ∧ Seg52.relationRow4781 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781⟩

theorem seg52In1_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47705 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49157, rho 49158⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 49157, rho 49158⟩
        ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 49170, rho 49171⟩ := by
  obtain ⟨r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781⟩ := seg52In1_rows111 rho h
  unfold Seg52.relationRow4769 at r4769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4769

  unfold Seg52.relationRow4770 at r4770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4770

  unfold Seg52.relationRow4771 at r4771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4771

  unfold Seg52.relationRow4772 at r4772

  unfold Seg52.relationRow4773 at r4773

  unfold Seg52.relationRow4774 at r4774

  unfold Seg52.relationRow4775 at r4775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4775

  unfold Seg52.relationRow4776 at r4776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4776

  unfold Seg52.relationRow4777 at r4777

  unfold Seg52.relationRow4778 at r4778

  unfold Seg52.relationRow4779 at r4779

  unfold Seg52.relationRow4780 at r4780

  unfold Seg52.relationRow4781 at r4781

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX112 rho = seg52In1AccX111 rho + rho 49165 := by
    unfold seg52In1AccX112 seg52In1AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 111]

    ring

  have hnexty : seg52In1AccY112 rho = seg52In1AccY111 rho + rho 49166 := by
    unfold seg52In1AccY112 seg52In1AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 111]

    ring

  have ha0 : (rho 49157 + rho 49158) * (seg52In1AccX111 rho + seg52In1AccY111 rho) = rho 49159 := by
    unfold seg52In1AccX111 seg52In1AccY111
    linear_combination r4769
  have ha1 : rho 49158 * seg52In1AccX111 rho = rho 49160 := by
    unfold seg52In1AccX111
    linear_combination r4770
  have ha2 : rho 49157 * seg52In1AccY111 rho = rho 49161 := by
    unfold seg52In1AccY111
    linear_combination r4771
  have ha3 : 3021 * rho 49160 * rho 49161 = rho 49162 := by
    linear_combination r4772
  have ha4 : rho 49163 * (1 + rho 49162) = rho 49160 + rho 49161 := by
    linear_combination r4773
  have ha5 : rho 49164 * (1 - rho 49162) = rho 49159 - rho 49160 - rho 49161 := by
    linear_combination r4774
  have haddx :
      rho 49163 * (1 + 3021 * (rho 49158 * seg52In1AccX111 rho) * (rho 49157 * seg52In1AccY111 rho)) =
        rho 49158 * seg52In1AccX111 rho + rho 49157 * seg52In1AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49164 * (1 - 3021 * (rho 49158 * seg52In1AccX111 rho) * (rho 49157 * seg52In1AccY111 rho)) =
        (-1) * (rho 49158 * seg52In1AccX111 rho) - rho 49157 * seg52In1AccY111 rho +
          (seg52In1AccY111 rho - seg52In1AccX111 rho * (-1)) * (rho 49157 + rho 49158) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49164 * (1 - rho 49162) = rho 49159 - rho 49160 - rho 49161 := ha5
      _ = (-1) * rho 49160 - rho 49161 + (seg52In1AccY111 rho - seg52In1AccX111 rho * (-1)) *
          (rho 49157 + rho 49158) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX112 rho = seg52In1AccX111 rho - Bool.toZMod bit * (seg52In1AccX111 rho - rho 49163) := by
    have hd : rho 49165 = Bool.toZMod bit * (rho 49163 - seg52In1AccX111 rho) := by
      rw [← hbit]
      unfold seg52In1AccX111
      linear_combination -r4775
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY112 rho = seg52In1AccY111 rho - Bool.toZMod bit * (seg52In1AccY111 rho - rho 49164) := by
    have hd : rho 49166 = Bool.toZMod bit * (rho 49164 - seg52In1AccY111 rho) := by
      rw [← hbit]
      unfold seg52In1AccY111
      linear_combination -r4776
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49157 * rho 49158 = rho 49167 := by linear_combination r4777
  have hd1 : rho 49157 * rho 49157 = rho 49168 := by linear_combination r4778
  have hd2 : rho 49158 * rho 49158 = rho 49169 := by linear_combination r4779
  have hd3 : rho 49170 * (rho 49158 * rho 49158 + rho 49157 * rho 49157 * (-1)) =
      2 * (rho 49157 * rho 49158) := by
    rw [hd0, hd1, hd2]
    linear_combination r4780
  have hd4 : rho 49171 * (2 - (rho 49158 * rho 49158 + rho 49157 * rho 49157 * (-1))) =
      rho 49158 * rho 49158 - rho 49157 * rho 49157 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4781
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX111 rho, seg52In1AccY111 rho⟩ ⟨rho 49157, rho 49158⟩
    ⟨rho 49163, rho 49164⟩ ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 49170, rho 49171⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4782 rho ∧ Seg52.relationRow4783 rho ∧ Seg52.relationRow4784 rho ∧ Seg52.relationRow4785 rho ∧ Seg52.relationRow4786 rho ∧ Seg52.relationRow4787 rho ∧ Seg52.relationRow4788 rho ∧ Seg52.relationRow4789 rho ∧ Seg52.relationRow4790 rho ∧ Seg52.relationRow4791 rho ∧ Seg52.relationRow4792 rho ∧ Seg52.relationRow4793 rho ∧ Seg52.relationRow4794 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, _, _, _, _, _⟩

  exact ⟨r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794⟩

theorem seg52In1_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47706 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49170, rho 49171⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 49170, rho 49171⟩
        ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 49183, rho 49184⟩ := by
  obtain ⟨r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794⟩ := seg52In1_rows112 rho h
  unfold Seg52.relationRow4782 at r4782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4782

  unfold Seg52.relationRow4783 at r4783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4783

  unfold Seg52.relationRow4784 at r4784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4784

  unfold Seg52.relationRow4785 at r4785

  unfold Seg52.relationRow4786 at r4786

  unfold Seg52.relationRow4787 at r4787

  unfold Seg52.relationRow4788 at r4788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4788

  unfold Seg52.relationRow4789 at r4789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4789

  unfold Seg52.relationRow4790 at r4790

  unfold Seg52.relationRow4791 at r4791

  unfold Seg52.relationRow4792 at r4792

  unfold Seg52.relationRow4793 at r4793

  unfold Seg52.relationRow4794 at r4794

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX113 rho = seg52In1AccX112 rho + rho 49178 := by
    unfold seg52In1AccX113 seg52In1AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 112]

    ring

  have hnexty : seg52In1AccY113 rho = seg52In1AccY112 rho + rho 49179 := by
    unfold seg52In1AccY113 seg52In1AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 112]

    ring

  have ha0 : (rho 49170 + rho 49171) * (seg52In1AccX112 rho + seg52In1AccY112 rho) = rho 49172 := by
    unfold seg52In1AccX112 seg52In1AccY112
    linear_combination r4782
  have ha1 : rho 49171 * seg52In1AccX112 rho = rho 49173 := by
    unfold seg52In1AccX112
    linear_combination r4783
  have ha2 : rho 49170 * seg52In1AccY112 rho = rho 49174 := by
    unfold seg52In1AccY112
    linear_combination r4784
  have ha3 : 3021 * rho 49173 * rho 49174 = rho 49175 := by
    linear_combination r4785
  have ha4 : rho 49176 * (1 + rho 49175) = rho 49173 + rho 49174 := by
    linear_combination r4786
  have ha5 : rho 49177 * (1 - rho 49175) = rho 49172 - rho 49173 - rho 49174 := by
    linear_combination r4787
  have haddx :
      rho 49176 * (1 + 3021 * (rho 49171 * seg52In1AccX112 rho) * (rho 49170 * seg52In1AccY112 rho)) =
        rho 49171 * seg52In1AccX112 rho + rho 49170 * seg52In1AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49177 * (1 - 3021 * (rho 49171 * seg52In1AccX112 rho) * (rho 49170 * seg52In1AccY112 rho)) =
        (-1) * (rho 49171 * seg52In1AccX112 rho) - rho 49170 * seg52In1AccY112 rho +
          (seg52In1AccY112 rho - seg52In1AccX112 rho * (-1)) * (rho 49170 + rho 49171) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49177 * (1 - rho 49175) = rho 49172 - rho 49173 - rho 49174 := ha5
      _ = (-1) * rho 49173 - rho 49174 + (seg52In1AccY112 rho - seg52In1AccX112 rho * (-1)) *
          (rho 49170 + rho 49171) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX113 rho = seg52In1AccX112 rho - Bool.toZMod bit * (seg52In1AccX112 rho - rho 49176) := by
    have hd : rho 49178 = Bool.toZMod bit * (rho 49176 - seg52In1AccX112 rho) := by
      rw [← hbit]
      unfold seg52In1AccX112
      linear_combination -r4788
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY113 rho = seg52In1AccY112 rho - Bool.toZMod bit * (seg52In1AccY112 rho - rho 49177) := by
    have hd : rho 49179 = Bool.toZMod bit * (rho 49177 - seg52In1AccY112 rho) := by
      rw [← hbit]
      unfold seg52In1AccY112
      linear_combination -r4789
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49170 * rho 49171 = rho 49180 := by linear_combination r4790
  have hd1 : rho 49170 * rho 49170 = rho 49181 := by linear_combination r4791
  have hd2 : rho 49171 * rho 49171 = rho 49182 := by linear_combination r4792
  have hd3 : rho 49183 * (rho 49171 * rho 49171 + rho 49170 * rho 49170 * (-1)) =
      2 * (rho 49170 * rho 49171) := by
    rw [hd0, hd1, hd2]
    linear_combination r4793
  have hd4 : rho 49184 * (2 - (rho 49171 * rho 49171 + rho 49170 * rho 49170 * (-1))) =
      rho 49171 * rho 49171 - rho 49170 * rho 49170 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4794
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX112 rho, seg52In1AccY112 rho⟩ ⟨rho 49170, rho 49171⟩
    ⟨rho 49176, rho 49177⟩ ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 49183, rho 49184⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4795 rho ∧ Seg52.relationRow4796 rho ∧ Seg52.relationRow4797 rho ∧ Seg52.relationRow4798 rho ∧ Seg52.relationRow4799 rho ∧ Seg52.relationRow4800 rho ∧ Seg52.relationRow4801 rho ∧ Seg52.relationRow4802 rho ∧ Seg52.relationRow4803 rho ∧ Seg52.relationRow4804 rho ∧ Seg52.relationRow4805 rho ∧ Seg52.relationRow4806 rho ∧ Seg52.relationRow4807 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p59,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4795, r4796, r4797, r4798, r4799⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807⟩

theorem seg52In1_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47707 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49183, rho 49184⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 49183, rho 49184⟩
        ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 49196, rho 49197⟩ := by
  obtain ⟨r4795, r4796, r4797, r4798, r4799, r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807⟩ := seg52In1_rows113 rho h
  unfold Seg52.relationRow4795 at r4795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4795

  unfold Seg52.relationRow4796 at r4796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4796

  unfold Seg52.relationRow4797 at r4797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4797

  unfold Seg52.relationRow4798 at r4798

  unfold Seg52.relationRow4799 at r4799

  unfold Seg52.relationRow4800 at r4800

  unfold Seg52.relationRow4801 at r4801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4801

  unfold Seg52.relationRow4802 at r4802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4802

  unfold Seg52.relationRow4803 at r4803

  unfold Seg52.relationRow4804 at r4804

  unfold Seg52.relationRow4805 at r4805

  unfold Seg52.relationRow4806 at r4806

  unfold Seg52.relationRow4807 at r4807

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX114 rho = seg52In1AccX113 rho + rho 49191 := by
    unfold seg52In1AccX114 seg52In1AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 113]

    ring

  have hnexty : seg52In1AccY114 rho = seg52In1AccY113 rho + rho 49192 := by
    unfold seg52In1AccY114 seg52In1AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 113]

    ring

  have ha0 : (rho 49183 + rho 49184) * (seg52In1AccX113 rho + seg52In1AccY113 rho) = rho 49185 := by
    unfold seg52In1AccX113 seg52In1AccY113
    linear_combination r4795
  have ha1 : rho 49184 * seg52In1AccX113 rho = rho 49186 := by
    unfold seg52In1AccX113
    linear_combination r4796
  have ha2 : rho 49183 * seg52In1AccY113 rho = rho 49187 := by
    unfold seg52In1AccY113
    linear_combination r4797
  have ha3 : 3021 * rho 49186 * rho 49187 = rho 49188 := by
    linear_combination r4798
  have ha4 : rho 49189 * (1 + rho 49188) = rho 49186 + rho 49187 := by
    linear_combination r4799
  have ha5 : rho 49190 * (1 - rho 49188) = rho 49185 - rho 49186 - rho 49187 := by
    linear_combination r4800
  have haddx :
      rho 49189 * (1 + 3021 * (rho 49184 * seg52In1AccX113 rho) * (rho 49183 * seg52In1AccY113 rho)) =
        rho 49184 * seg52In1AccX113 rho + rho 49183 * seg52In1AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49190 * (1 - 3021 * (rho 49184 * seg52In1AccX113 rho) * (rho 49183 * seg52In1AccY113 rho)) =
        (-1) * (rho 49184 * seg52In1AccX113 rho) - rho 49183 * seg52In1AccY113 rho +
          (seg52In1AccY113 rho - seg52In1AccX113 rho * (-1)) * (rho 49183 + rho 49184) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49190 * (1 - rho 49188) = rho 49185 - rho 49186 - rho 49187 := ha5
      _ = (-1) * rho 49186 - rho 49187 + (seg52In1AccY113 rho - seg52In1AccX113 rho * (-1)) *
          (rho 49183 + rho 49184) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX114 rho = seg52In1AccX113 rho - Bool.toZMod bit * (seg52In1AccX113 rho - rho 49189) := by
    have hd : rho 49191 = Bool.toZMod bit * (rho 49189 - seg52In1AccX113 rho) := by
      rw [← hbit]
      unfold seg52In1AccX113
      linear_combination -r4801
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY114 rho = seg52In1AccY113 rho - Bool.toZMod bit * (seg52In1AccY113 rho - rho 49190) := by
    have hd : rho 49192 = Bool.toZMod bit * (rho 49190 - seg52In1AccY113 rho) := by
      rw [← hbit]
      unfold seg52In1AccY113
      linear_combination -r4802
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49183 * rho 49184 = rho 49193 := by linear_combination r4803
  have hd1 : rho 49183 * rho 49183 = rho 49194 := by linear_combination r4804
  have hd2 : rho 49184 * rho 49184 = rho 49195 := by linear_combination r4805
  have hd3 : rho 49196 * (rho 49184 * rho 49184 + rho 49183 * rho 49183 * (-1)) =
      2 * (rho 49183 * rho 49184) := by
    rw [hd0, hd1, hd2]
    linear_combination r4806
  have hd4 : rho 49197 * (2 - (rho 49184 * rho 49184 + rho 49183 * rho 49183 * (-1))) =
      rho 49184 * rho 49184 - rho 49183 * rho 49183 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4807
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX113 rho, seg52In1AccY113 rho⟩ ⟨rho 49183, rho 49184⟩
    ⟨rho 49189, rho 49190⟩ ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 49196, rho 49197⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4808 rho ∧ Seg52.relationRow4809 rho ∧ Seg52.relationRow4810 rho ∧ Seg52.relationRow4811 rho ∧ Seg52.relationRow4812 rho ∧ Seg52.relationRow4813 rho ∧ Seg52.relationRow4814 rho ∧ Seg52.relationRow4815 rho ∧ Seg52.relationRow4816 rho ∧ Seg52.relationRow4817 rho ∧ Seg52.relationRow4818 rho ∧ Seg52.relationRow4819 rho ∧ Seg52.relationRow4820 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820⟩

theorem seg52In1_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47708 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49196, rho 49197⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 49196, rho 49197⟩
        ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 49209, rho 49210⟩ := by
  obtain ⟨r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820⟩ := seg52In1_rows114 rho h
  unfold Seg52.relationRow4808 at r4808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4808

  unfold Seg52.relationRow4809 at r4809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4809

  unfold Seg52.relationRow4810 at r4810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4810

  unfold Seg52.relationRow4811 at r4811

  unfold Seg52.relationRow4812 at r4812

  unfold Seg52.relationRow4813 at r4813

  unfold Seg52.relationRow4814 at r4814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4814

  unfold Seg52.relationRow4815 at r4815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4815

  unfold Seg52.relationRow4816 at r4816

  unfold Seg52.relationRow4817 at r4817

  unfold Seg52.relationRow4818 at r4818

  unfold Seg52.relationRow4819 at r4819

  unfold Seg52.relationRow4820 at r4820

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX115 rho = seg52In1AccX114 rho + rho 49204 := by
    unfold seg52In1AccX115 seg52In1AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 114]

    ring

  have hnexty : seg52In1AccY115 rho = seg52In1AccY114 rho + rho 49205 := by
    unfold seg52In1AccY115 seg52In1AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 114]

    ring

  have ha0 : (rho 49196 + rho 49197) * (seg52In1AccX114 rho + seg52In1AccY114 rho) = rho 49198 := by
    unfold seg52In1AccX114 seg52In1AccY114
    linear_combination r4808
  have ha1 : rho 49197 * seg52In1AccX114 rho = rho 49199 := by
    unfold seg52In1AccX114
    linear_combination r4809
  have ha2 : rho 49196 * seg52In1AccY114 rho = rho 49200 := by
    unfold seg52In1AccY114
    linear_combination r4810
  have ha3 : 3021 * rho 49199 * rho 49200 = rho 49201 := by
    linear_combination r4811
  have ha4 : rho 49202 * (1 + rho 49201) = rho 49199 + rho 49200 := by
    linear_combination r4812
  have ha5 : rho 49203 * (1 - rho 49201) = rho 49198 - rho 49199 - rho 49200 := by
    linear_combination r4813
  have haddx :
      rho 49202 * (1 + 3021 * (rho 49197 * seg52In1AccX114 rho) * (rho 49196 * seg52In1AccY114 rho)) =
        rho 49197 * seg52In1AccX114 rho + rho 49196 * seg52In1AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49203 * (1 - 3021 * (rho 49197 * seg52In1AccX114 rho) * (rho 49196 * seg52In1AccY114 rho)) =
        (-1) * (rho 49197 * seg52In1AccX114 rho) - rho 49196 * seg52In1AccY114 rho +
          (seg52In1AccY114 rho - seg52In1AccX114 rho * (-1)) * (rho 49196 + rho 49197) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49203 * (1 - rho 49201) = rho 49198 - rho 49199 - rho 49200 := ha5
      _ = (-1) * rho 49199 - rho 49200 + (seg52In1AccY114 rho - seg52In1AccX114 rho * (-1)) *
          (rho 49196 + rho 49197) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX115 rho = seg52In1AccX114 rho - Bool.toZMod bit * (seg52In1AccX114 rho - rho 49202) := by
    have hd : rho 49204 = Bool.toZMod bit * (rho 49202 - seg52In1AccX114 rho) := by
      rw [← hbit]
      unfold seg52In1AccX114
      linear_combination -r4814
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY115 rho = seg52In1AccY114 rho - Bool.toZMod bit * (seg52In1AccY114 rho - rho 49203) := by
    have hd : rho 49205 = Bool.toZMod bit * (rho 49203 - seg52In1AccY114 rho) := by
      rw [← hbit]
      unfold seg52In1AccY114
      linear_combination -r4815
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49196 * rho 49197 = rho 49206 := by linear_combination r4816
  have hd1 : rho 49196 * rho 49196 = rho 49207 := by linear_combination r4817
  have hd2 : rho 49197 * rho 49197 = rho 49208 := by linear_combination r4818
  have hd3 : rho 49209 * (rho 49197 * rho 49197 + rho 49196 * rho 49196 * (-1)) =
      2 * (rho 49196 * rho 49197) := by
    rw [hd0, hd1, hd2]
    linear_combination r4819
  have hd4 : rho 49210 * (2 - (rho 49197 * rho 49197 + rho 49196 * rho 49196 * (-1))) =
      rho 49197 * rho 49197 - rho 49196 * rho 49196 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4820
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX114 rho, seg52In1AccY114 rho⟩ ⟨rho 49196, rho 49197⟩
    ⟨rho 49202, rho 49203⟩ ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 49209, rho 49210⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4821 rho ∧ Seg52.relationRow4822 rho ∧ Seg52.relationRow4823 rho ∧ Seg52.relationRow4824 rho ∧ Seg52.relationRow4825 rho ∧ Seg52.relationRow4826 rho ∧ Seg52.relationRow4827 rho ∧ Seg52.relationRow4828 rho ∧ Seg52.relationRow4829 rho ∧ Seg52.relationRow4830 rho ∧ Seg52.relationRow4831 rho ∧ Seg52.relationRow4832 rho ∧ Seg52.relationRow4833 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833⟩

theorem seg52In1_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47709 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49209, rho 49210⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 49209, rho 49210⟩
        ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 49222, rho 49223⟩ := by
  obtain ⟨r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833⟩ := seg52In1_rows115 rho h
  unfold Seg52.relationRow4821 at r4821

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4821

  unfold Seg52.relationRow4822 at r4822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4822

  unfold Seg52.relationRow4823 at r4823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4823

  unfold Seg52.relationRow4824 at r4824

  unfold Seg52.relationRow4825 at r4825

  unfold Seg52.relationRow4826 at r4826

  unfold Seg52.relationRow4827 at r4827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4827

  unfold Seg52.relationRow4828 at r4828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4828

  unfold Seg52.relationRow4829 at r4829

  unfold Seg52.relationRow4830 at r4830

  unfold Seg52.relationRow4831 at r4831

  unfold Seg52.relationRow4832 at r4832

  unfold Seg52.relationRow4833 at r4833

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX116 rho = seg52In1AccX115 rho + rho 49217 := by
    unfold seg52In1AccX116 seg52In1AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 115]

    ring

  have hnexty : seg52In1AccY116 rho = seg52In1AccY115 rho + rho 49218 := by
    unfold seg52In1AccY116 seg52In1AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 115]

    ring

  have ha0 : (rho 49209 + rho 49210) * (seg52In1AccX115 rho + seg52In1AccY115 rho) = rho 49211 := by
    unfold seg52In1AccX115 seg52In1AccY115
    linear_combination r4821
  have ha1 : rho 49210 * seg52In1AccX115 rho = rho 49212 := by
    unfold seg52In1AccX115
    linear_combination r4822
  have ha2 : rho 49209 * seg52In1AccY115 rho = rho 49213 := by
    unfold seg52In1AccY115
    linear_combination r4823
  have ha3 : 3021 * rho 49212 * rho 49213 = rho 49214 := by
    linear_combination r4824
  have ha4 : rho 49215 * (1 + rho 49214) = rho 49212 + rho 49213 := by
    linear_combination r4825
  have ha5 : rho 49216 * (1 - rho 49214) = rho 49211 - rho 49212 - rho 49213 := by
    linear_combination r4826
  have haddx :
      rho 49215 * (1 + 3021 * (rho 49210 * seg52In1AccX115 rho) * (rho 49209 * seg52In1AccY115 rho)) =
        rho 49210 * seg52In1AccX115 rho + rho 49209 * seg52In1AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49216 * (1 - 3021 * (rho 49210 * seg52In1AccX115 rho) * (rho 49209 * seg52In1AccY115 rho)) =
        (-1) * (rho 49210 * seg52In1AccX115 rho) - rho 49209 * seg52In1AccY115 rho +
          (seg52In1AccY115 rho - seg52In1AccX115 rho * (-1)) * (rho 49209 + rho 49210) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49216 * (1 - rho 49214) = rho 49211 - rho 49212 - rho 49213 := ha5
      _ = (-1) * rho 49212 - rho 49213 + (seg52In1AccY115 rho - seg52In1AccX115 rho * (-1)) *
          (rho 49209 + rho 49210) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX116 rho = seg52In1AccX115 rho - Bool.toZMod bit * (seg52In1AccX115 rho - rho 49215) := by
    have hd : rho 49217 = Bool.toZMod bit * (rho 49215 - seg52In1AccX115 rho) := by
      rw [← hbit]
      unfold seg52In1AccX115
      linear_combination -r4827
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY116 rho = seg52In1AccY115 rho - Bool.toZMod bit * (seg52In1AccY115 rho - rho 49216) := by
    have hd : rho 49218 = Bool.toZMod bit * (rho 49216 - seg52In1AccY115 rho) := by
      rw [← hbit]
      unfold seg52In1AccY115
      linear_combination -r4828
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49209 * rho 49210 = rho 49219 := by linear_combination r4829
  have hd1 : rho 49209 * rho 49209 = rho 49220 := by linear_combination r4830
  have hd2 : rho 49210 * rho 49210 = rho 49221 := by linear_combination r4831
  have hd3 : rho 49222 * (rho 49210 * rho 49210 + rho 49209 * rho 49209 * (-1)) =
      2 * (rho 49209 * rho 49210) := by
    rw [hd0, hd1, hd2]
    linear_combination r4832
  have hd4 : rho 49223 * (2 - (rho 49210 * rho 49210 + rho 49209 * rho 49209 * (-1))) =
      rho 49210 * rho 49210 - rho 49209 * rho 49209 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4833
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX115 rho, seg52In1AccY115 rho⟩ ⟨rho 49209, rho 49210⟩
    ⟨rho 49215, rho 49216⟩ ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 49222, rho 49223⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4834 rho ∧ Seg52.relationRow4835 rho ∧ Seg52.relationRow4836 rho ∧ Seg52.relationRow4837 rho ∧ Seg52.relationRow4838 rho ∧ Seg52.relationRow4839 rho ∧ Seg52.relationRow4840 rho ∧ Seg52.relationRow4841 rho ∧ Seg52.relationRow4842 rho ∧ Seg52.relationRow4843 rho ∧ Seg52.relationRow4844 rho ∧ Seg52.relationRow4845 rho ∧ Seg52.relationRow4846 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846⟩

theorem seg52In1_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47710 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49222, rho 49223⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 49222, rho 49223⟩
        ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 49235, rho 49236⟩ := by
  obtain ⟨r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846⟩ := seg52In1_rows116 rho h
  unfold Seg52.relationRow4834 at r4834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4834

  unfold Seg52.relationRow4835 at r4835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4835

  unfold Seg52.relationRow4836 at r4836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4836

  unfold Seg52.relationRow4837 at r4837

  unfold Seg52.relationRow4838 at r4838

  unfold Seg52.relationRow4839 at r4839

  unfold Seg52.relationRow4840 at r4840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4840

  unfold Seg52.relationRow4841 at r4841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4841

  unfold Seg52.relationRow4842 at r4842

  unfold Seg52.relationRow4843 at r4843

  unfold Seg52.relationRow4844 at r4844

  unfold Seg52.relationRow4845 at r4845

  unfold Seg52.relationRow4846 at r4846

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX117 rho = seg52In1AccX116 rho + rho 49230 := by
    unfold seg52In1AccX117 seg52In1AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 116]

    ring

  have hnexty : seg52In1AccY117 rho = seg52In1AccY116 rho + rho 49231 := by
    unfold seg52In1AccY117 seg52In1AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 116]

    ring

  have ha0 : (rho 49222 + rho 49223) * (seg52In1AccX116 rho + seg52In1AccY116 rho) = rho 49224 := by
    unfold seg52In1AccX116 seg52In1AccY116
    linear_combination r4834
  have ha1 : rho 49223 * seg52In1AccX116 rho = rho 49225 := by
    unfold seg52In1AccX116
    linear_combination r4835
  have ha2 : rho 49222 * seg52In1AccY116 rho = rho 49226 := by
    unfold seg52In1AccY116
    linear_combination r4836
  have ha3 : 3021 * rho 49225 * rho 49226 = rho 49227 := by
    linear_combination r4837
  have ha4 : rho 49228 * (1 + rho 49227) = rho 49225 + rho 49226 := by
    linear_combination r4838
  have ha5 : rho 49229 * (1 - rho 49227) = rho 49224 - rho 49225 - rho 49226 := by
    linear_combination r4839
  have haddx :
      rho 49228 * (1 + 3021 * (rho 49223 * seg52In1AccX116 rho) * (rho 49222 * seg52In1AccY116 rho)) =
        rho 49223 * seg52In1AccX116 rho + rho 49222 * seg52In1AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49229 * (1 - 3021 * (rho 49223 * seg52In1AccX116 rho) * (rho 49222 * seg52In1AccY116 rho)) =
        (-1) * (rho 49223 * seg52In1AccX116 rho) - rho 49222 * seg52In1AccY116 rho +
          (seg52In1AccY116 rho - seg52In1AccX116 rho * (-1)) * (rho 49222 + rho 49223) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49229 * (1 - rho 49227) = rho 49224 - rho 49225 - rho 49226 := ha5
      _ = (-1) * rho 49225 - rho 49226 + (seg52In1AccY116 rho - seg52In1AccX116 rho * (-1)) *
          (rho 49222 + rho 49223) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX117 rho = seg52In1AccX116 rho - Bool.toZMod bit * (seg52In1AccX116 rho - rho 49228) := by
    have hd : rho 49230 = Bool.toZMod bit * (rho 49228 - seg52In1AccX116 rho) := by
      rw [← hbit]
      unfold seg52In1AccX116
      linear_combination -r4840
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY117 rho = seg52In1AccY116 rho - Bool.toZMod bit * (seg52In1AccY116 rho - rho 49229) := by
    have hd : rho 49231 = Bool.toZMod bit * (rho 49229 - seg52In1AccY116 rho) := by
      rw [← hbit]
      unfold seg52In1AccY116
      linear_combination -r4841
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49222 * rho 49223 = rho 49232 := by linear_combination r4842
  have hd1 : rho 49222 * rho 49222 = rho 49233 := by linear_combination r4843
  have hd2 : rho 49223 * rho 49223 = rho 49234 := by linear_combination r4844
  have hd3 : rho 49235 * (rho 49223 * rho 49223 + rho 49222 * rho 49222 * (-1)) =
      2 * (rho 49222 * rho 49223) := by
    rw [hd0, hd1, hd2]
    linear_combination r4845
  have hd4 : rho 49236 * (2 - (rho 49223 * rho 49223 + rho 49222 * rho 49222 * (-1))) =
      rho 49223 * rho 49223 - rho 49222 * rho 49222 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4846
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX116 rho, seg52In1AccY116 rho⟩ ⟨rho 49222, rho 49223⟩
    ⟨rho 49228, rho 49229⟩ ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 49235, rho 49236⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4847 rho ∧ Seg52.relationRow4848 rho ∧ Seg52.relationRow4849 rho ∧ Seg52.relationRow4850 rho ∧ Seg52.relationRow4851 rho ∧ Seg52.relationRow4852 rho ∧ Seg52.relationRow4853 rho ∧ Seg52.relationRow4854 rho ∧ Seg52.relationRow4855 rho ∧ Seg52.relationRow4856 rho ∧ Seg52.relationRow4857 rho ∧ Seg52.relationRow4858 rho ∧ Seg52.relationRow4859 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859⟩

theorem seg52In1_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47711 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49235, rho 49236⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 49235, rho 49236⟩
        ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 49248, rho 49249⟩ := by
  obtain ⟨r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859⟩ := seg52In1_rows117 rho h
  unfold Seg52.relationRow4847 at r4847

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4847

  unfold Seg52.relationRow4848 at r4848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4848

  unfold Seg52.relationRow4849 at r4849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4849

  unfold Seg52.relationRow4850 at r4850

  unfold Seg52.relationRow4851 at r4851

  unfold Seg52.relationRow4852 at r4852

  unfold Seg52.relationRow4853 at r4853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4853

  unfold Seg52.relationRow4854 at r4854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4854

  unfold Seg52.relationRow4855 at r4855

  unfold Seg52.relationRow4856 at r4856

  unfold Seg52.relationRow4857 at r4857

  unfold Seg52.relationRow4858 at r4858

  unfold Seg52.relationRow4859 at r4859

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX118 rho = seg52In1AccX117 rho + rho 49243 := by
    unfold seg52In1AccX118 seg52In1AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 117]

    ring

  have hnexty : seg52In1AccY118 rho = seg52In1AccY117 rho + rho 49244 := by
    unfold seg52In1AccY118 seg52In1AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 117]

    ring

  have ha0 : (rho 49235 + rho 49236) * (seg52In1AccX117 rho + seg52In1AccY117 rho) = rho 49237 := by
    unfold seg52In1AccX117 seg52In1AccY117
    linear_combination r4847
  have ha1 : rho 49236 * seg52In1AccX117 rho = rho 49238 := by
    unfold seg52In1AccX117
    linear_combination r4848
  have ha2 : rho 49235 * seg52In1AccY117 rho = rho 49239 := by
    unfold seg52In1AccY117
    linear_combination r4849
  have ha3 : 3021 * rho 49238 * rho 49239 = rho 49240 := by
    linear_combination r4850
  have ha4 : rho 49241 * (1 + rho 49240) = rho 49238 + rho 49239 := by
    linear_combination r4851
  have ha5 : rho 49242 * (1 - rho 49240) = rho 49237 - rho 49238 - rho 49239 := by
    linear_combination r4852
  have haddx :
      rho 49241 * (1 + 3021 * (rho 49236 * seg52In1AccX117 rho) * (rho 49235 * seg52In1AccY117 rho)) =
        rho 49236 * seg52In1AccX117 rho + rho 49235 * seg52In1AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49242 * (1 - 3021 * (rho 49236 * seg52In1AccX117 rho) * (rho 49235 * seg52In1AccY117 rho)) =
        (-1) * (rho 49236 * seg52In1AccX117 rho) - rho 49235 * seg52In1AccY117 rho +
          (seg52In1AccY117 rho - seg52In1AccX117 rho * (-1)) * (rho 49235 + rho 49236) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49242 * (1 - rho 49240) = rho 49237 - rho 49238 - rho 49239 := ha5
      _ = (-1) * rho 49238 - rho 49239 + (seg52In1AccY117 rho - seg52In1AccX117 rho * (-1)) *
          (rho 49235 + rho 49236) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX118 rho = seg52In1AccX117 rho - Bool.toZMod bit * (seg52In1AccX117 rho - rho 49241) := by
    have hd : rho 49243 = Bool.toZMod bit * (rho 49241 - seg52In1AccX117 rho) := by
      rw [← hbit]
      unfold seg52In1AccX117
      linear_combination -r4853
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY118 rho = seg52In1AccY117 rho - Bool.toZMod bit * (seg52In1AccY117 rho - rho 49242) := by
    have hd : rho 49244 = Bool.toZMod bit * (rho 49242 - seg52In1AccY117 rho) := by
      rw [← hbit]
      unfold seg52In1AccY117
      linear_combination -r4854
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49235 * rho 49236 = rho 49245 := by linear_combination r4855
  have hd1 : rho 49235 * rho 49235 = rho 49246 := by linear_combination r4856
  have hd2 : rho 49236 * rho 49236 = rho 49247 := by linear_combination r4857
  have hd3 : rho 49248 * (rho 49236 * rho 49236 + rho 49235 * rho 49235 * (-1)) =
      2 * (rho 49235 * rho 49236) := by
    rw [hd0, hd1, hd2]
    linear_combination r4858
  have hd4 : rho 49249 * (2 - (rho 49236 * rho 49236 + rho 49235 * rho 49235 * (-1))) =
      rho 49236 * rho 49236 - rho 49235 * rho 49235 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4859
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX117 rho, seg52In1AccY117 rho⟩ ⟨rho 49235, rho 49236⟩
    ⟨rho 49241, rho 49242⟩ ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 49248, rho 49249⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4860 rho ∧ Seg52.relationRow4861 rho ∧ Seg52.relationRow4862 rho ∧ Seg52.relationRow4863 rho ∧ Seg52.relationRow4864 rho ∧ Seg52.relationRow4865 rho ∧ Seg52.relationRow4866 rho ∧ Seg52.relationRow4867 rho ∧ Seg52.relationRow4868 rho ∧ Seg52.relationRow4869 rho ∧ Seg52.relationRow4870 rho ∧ Seg52.relationRow4871 rho ∧ Seg52.relationRow4872 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, _, _, _, _, _, _, _⟩

  exact ⟨r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872⟩

theorem seg52In1_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47712 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49248, rho 49249⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 49248, rho 49249⟩
        ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 49261, rho 49262⟩ := by
  obtain ⟨r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872⟩ := seg52In1_rows118 rho h
  unfold Seg52.relationRow4860 at r4860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4860

  unfold Seg52.relationRow4861 at r4861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4861

  unfold Seg52.relationRow4862 at r4862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4862

  unfold Seg52.relationRow4863 at r4863

  unfold Seg52.relationRow4864 at r4864

  unfold Seg52.relationRow4865 at r4865

  unfold Seg52.relationRow4866 at r4866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4866

  unfold Seg52.relationRow4867 at r4867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4867

  unfold Seg52.relationRow4868 at r4868

  unfold Seg52.relationRow4869 at r4869

  unfold Seg52.relationRow4870 at r4870

  unfold Seg52.relationRow4871 at r4871

  unfold Seg52.relationRow4872 at r4872

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX119 rho = seg52In1AccX118 rho + rho 49256 := by
    unfold seg52In1AccX119 seg52In1AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 118]

    ring

  have hnexty : seg52In1AccY119 rho = seg52In1AccY118 rho + rho 49257 := by
    unfold seg52In1AccY119 seg52In1AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 118]

    ring

  have ha0 : (rho 49248 + rho 49249) * (seg52In1AccX118 rho + seg52In1AccY118 rho) = rho 49250 := by
    unfold seg52In1AccX118 seg52In1AccY118
    linear_combination r4860
  have ha1 : rho 49249 * seg52In1AccX118 rho = rho 49251 := by
    unfold seg52In1AccX118
    linear_combination r4861
  have ha2 : rho 49248 * seg52In1AccY118 rho = rho 49252 := by
    unfold seg52In1AccY118
    linear_combination r4862
  have ha3 : 3021 * rho 49251 * rho 49252 = rho 49253 := by
    linear_combination r4863
  have ha4 : rho 49254 * (1 + rho 49253) = rho 49251 + rho 49252 := by
    linear_combination r4864
  have ha5 : rho 49255 * (1 - rho 49253) = rho 49250 - rho 49251 - rho 49252 := by
    linear_combination r4865
  have haddx :
      rho 49254 * (1 + 3021 * (rho 49249 * seg52In1AccX118 rho) * (rho 49248 * seg52In1AccY118 rho)) =
        rho 49249 * seg52In1AccX118 rho + rho 49248 * seg52In1AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49255 * (1 - 3021 * (rho 49249 * seg52In1AccX118 rho) * (rho 49248 * seg52In1AccY118 rho)) =
        (-1) * (rho 49249 * seg52In1AccX118 rho) - rho 49248 * seg52In1AccY118 rho +
          (seg52In1AccY118 rho - seg52In1AccX118 rho * (-1)) * (rho 49248 + rho 49249) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49255 * (1 - rho 49253) = rho 49250 - rho 49251 - rho 49252 := ha5
      _ = (-1) * rho 49251 - rho 49252 + (seg52In1AccY118 rho - seg52In1AccX118 rho * (-1)) *
          (rho 49248 + rho 49249) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX119 rho = seg52In1AccX118 rho - Bool.toZMod bit * (seg52In1AccX118 rho - rho 49254) := by
    have hd : rho 49256 = Bool.toZMod bit * (rho 49254 - seg52In1AccX118 rho) := by
      rw [← hbit]
      unfold seg52In1AccX118
      linear_combination -r4866
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY119 rho = seg52In1AccY118 rho - Bool.toZMod bit * (seg52In1AccY118 rho - rho 49255) := by
    have hd : rho 49257 = Bool.toZMod bit * (rho 49255 - seg52In1AccY118 rho) := by
      rw [← hbit]
      unfold seg52In1AccY118
      linear_combination -r4867
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49248 * rho 49249 = rho 49258 := by linear_combination r4868
  have hd1 : rho 49248 * rho 49248 = rho 49259 := by linear_combination r4869
  have hd2 : rho 49249 * rho 49249 = rho 49260 := by linear_combination r4870
  have hd3 : rho 49261 * (rho 49249 * rho 49249 + rho 49248 * rho 49248 * (-1)) =
      2 * (rho 49248 * rho 49249) := by
    rw [hd0, hd1, hd2]
    linear_combination r4871
  have hd4 : rho 49262 * (2 - (rho 49249 * rho 49249 + rho 49248 * rho 49248 * (-1))) =
      rho 49249 * rho 49249 - rho 49248 * rho 49248 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4872
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX118 rho, seg52In1AccY118 rho⟩ ⟨rho 49248, rho 49249⟩
    ⟨rho 49254, rho 49255⟩ ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 49261, rho 49262⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4873 rho ∧ Seg52.relationRow4874 rho ∧ Seg52.relationRow4875 rho ∧ Seg52.relationRow4876 rho ∧ Seg52.relationRow4877 rho ∧ Seg52.relationRow4878 rho ∧ Seg52.relationRow4879 rho ∧ Seg52.relationRow4880 rho ∧ Seg52.relationRow4881 rho ∧ Seg52.relationRow4882 rho ∧ Seg52.relationRow4883 rho ∧ Seg52.relationRow4884 rho ∧ Seg52.relationRow4885 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p60, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart60 at p60

  rcases p60 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885⟩

theorem seg52In1_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47713 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49261, rho 49262⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 49261, rho 49262⟩
        ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 49274, rho 49275⟩ := by
  obtain ⟨r4873, r4874, r4875, r4876, r4877, r4878, r4879, r4880, r4881, r4882, r4883, r4884, r4885⟩ := seg52In1_rows119 rho h
  unfold Seg52.relationRow4873 at r4873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4873

  unfold Seg52.relationRow4874 at r4874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4874

  unfold Seg52.relationRow4875 at r4875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4875

  unfold Seg52.relationRow4876 at r4876

  unfold Seg52.relationRow4877 at r4877

  unfold Seg52.relationRow4878 at r4878

  unfold Seg52.relationRow4879 at r4879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4879

  unfold Seg52.relationRow4880 at r4880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4880

  unfold Seg52.relationRow4881 at r4881

  unfold Seg52.relationRow4882 at r4882

  unfold Seg52.relationRow4883 at r4883

  unfold Seg52.relationRow4884 at r4884

  unfold Seg52.relationRow4885 at r4885

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX120 rho = seg52In1AccX119 rho + rho 49269 := by
    unfold seg52In1AccX120 seg52In1AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 119]

    ring

  have hnexty : seg52In1AccY120 rho = seg52In1AccY119 rho + rho 49270 := by
    unfold seg52In1AccY120 seg52In1AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 119]

    ring

  have ha0 : (rho 49261 + rho 49262) * (seg52In1AccX119 rho + seg52In1AccY119 rho) = rho 49263 := by
    unfold seg52In1AccX119 seg52In1AccY119
    linear_combination r4873
  have ha1 : rho 49262 * seg52In1AccX119 rho = rho 49264 := by
    unfold seg52In1AccX119
    linear_combination r4874
  have ha2 : rho 49261 * seg52In1AccY119 rho = rho 49265 := by
    unfold seg52In1AccY119
    linear_combination r4875
  have ha3 : 3021 * rho 49264 * rho 49265 = rho 49266 := by
    linear_combination r4876
  have ha4 : rho 49267 * (1 + rho 49266) = rho 49264 + rho 49265 := by
    linear_combination r4877
  have ha5 : rho 49268 * (1 - rho 49266) = rho 49263 - rho 49264 - rho 49265 := by
    linear_combination r4878
  have haddx :
      rho 49267 * (1 + 3021 * (rho 49262 * seg52In1AccX119 rho) * (rho 49261 * seg52In1AccY119 rho)) =
        rho 49262 * seg52In1AccX119 rho + rho 49261 * seg52In1AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49268 * (1 - 3021 * (rho 49262 * seg52In1AccX119 rho) * (rho 49261 * seg52In1AccY119 rho)) =
        (-1) * (rho 49262 * seg52In1AccX119 rho) - rho 49261 * seg52In1AccY119 rho +
          (seg52In1AccY119 rho - seg52In1AccX119 rho * (-1)) * (rho 49261 + rho 49262) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49268 * (1 - rho 49266) = rho 49263 - rho 49264 - rho 49265 := ha5
      _ = (-1) * rho 49264 - rho 49265 + (seg52In1AccY119 rho - seg52In1AccX119 rho * (-1)) *
          (rho 49261 + rho 49262) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX120 rho = seg52In1AccX119 rho - Bool.toZMod bit * (seg52In1AccX119 rho - rho 49267) := by
    have hd : rho 49269 = Bool.toZMod bit * (rho 49267 - seg52In1AccX119 rho) := by
      rw [← hbit]
      unfold seg52In1AccX119
      linear_combination -r4879
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY120 rho = seg52In1AccY119 rho - Bool.toZMod bit * (seg52In1AccY119 rho - rho 49268) := by
    have hd : rho 49270 = Bool.toZMod bit * (rho 49268 - seg52In1AccY119 rho) := by
      rw [← hbit]
      unfold seg52In1AccY119
      linear_combination -r4880
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49261 * rho 49262 = rho 49271 := by linear_combination r4881
  have hd1 : rho 49261 * rho 49261 = rho 49272 := by linear_combination r4882
  have hd2 : rho 49262 * rho 49262 = rho 49273 := by linear_combination r4883
  have hd3 : rho 49274 * (rho 49262 * rho 49262 + rho 49261 * rho 49261 * (-1)) =
      2 * (rho 49261 * rho 49262) := by
    rw [hd0, hd1, hd2]
    linear_combination r4884
  have hd4 : rho 49275 * (2 - (rho 49262 * rho 49262 + rho 49261 * rho 49261 * (-1))) =
      rho 49262 * rho 49262 - rho 49261 * rho 49261 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4885
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX119 rho, seg52In1AccY119 rho⟩ ⟨rho 49261, rho 49262⟩
    ⟨rho 49267, rho 49268⟩ ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 49274, rho 49275⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4886 rho ∧ Seg52.relationRow4887 rho ∧ Seg52.relationRow4888 rho ∧ Seg52.relationRow4889 rho ∧ Seg52.relationRow4890 rho ∧ Seg52.relationRow4891 rho ∧ Seg52.relationRow4892 rho ∧ Seg52.relationRow4893 rho ∧ Seg52.relationRow4894 rho ∧ Seg52.relationRow4895 rho ∧ Seg52.relationRow4896 rho ∧ Seg52.relationRow4897 rho ∧ Seg52.relationRow4898 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p61, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart61 at p61

  rcases p61 with ⟨_, _, _, _, _, _, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898⟩

theorem seg52In1_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47714 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49274, rho 49275⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 49274, rho 49275⟩
        ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 49287, rho 49288⟩ := by
  obtain ⟨r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898⟩ := seg52In1_rows120 rho h
  unfold Seg52.relationRow4886 at r4886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4886

  unfold Seg52.relationRow4887 at r4887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4887

  unfold Seg52.relationRow4888 at r4888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4888

  unfold Seg52.relationRow4889 at r4889

  unfold Seg52.relationRow4890 at r4890

  unfold Seg52.relationRow4891 at r4891

  unfold Seg52.relationRow4892 at r4892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4892

  unfold Seg52.relationRow4893 at r4893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4893

  unfold Seg52.relationRow4894 at r4894

  unfold Seg52.relationRow4895 at r4895

  unfold Seg52.relationRow4896 at r4896

  unfold Seg52.relationRow4897 at r4897

  unfold Seg52.relationRow4898 at r4898

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX121 rho = seg52In1AccX120 rho + rho 49282 := by
    unfold seg52In1AccX121 seg52In1AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 120]

    ring

  have hnexty : seg52In1AccY121 rho = seg52In1AccY120 rho + rho 49283 := by
    unfold seg52In1AccY121 seg52In1AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 120]

    ring

  have ha0 : (rho 49274 + rho 49275) * (seg52In1AccX120 rho + seg52In1AccY120 rho) = rho 49276 := by
    unfold seg52In1AccX120 seg52In1AccY120
    linear_combination r4886
  have ha1 : rho 49275 * seg52In1AccX120 rho = rho 49277 := by
    unfold seg52In1AccX120
    linear_combination r4887
  have ha2 : rho 49274 * seg52In1AccY120 rho = rho 49278 := by
    unfold seg52In1AccY120
    linear_combination r4888
  have ha3 : 3021 * rho 49277 * rho 49278 = rho 49279 := by
    linear_combination r4889
  have ha4 : rho 49280 * (1 + rho 49279) = rho 49277 + rho 49278 := by
    linear_combination r4890
  have ha5 : rho 49281 * (1 - rho 49279) = rho 49276 - rho 49277 - rho 49278 := by
    linear_combination r4891
  have haddx :
      rho 49280 * (1 + 3021 * (rho 49275 * seg52In1AccX120 rho) * (rho 49274 * seg52In1AccY120 rho)) =
        rho 49275 * seg52In1AccX120 rho + rho 49274 * seg52In1AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49281 * (1 - 3021 * (rho 49275 * seg52In1AccX120 rho) * (rho 49274 * seg52In1AccY120 rho)) =
        (-1) * (rho 49275 * seg52In1AccX120 rho) - rho 49274 * seg52In1AccY120 rho +
          (seg52In1AccY120 rho - seg52In1AccX120 rho * (-1)) * (rho 49274 + rho 49275) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49281 * (1 - rho 49279) = rho 49276 - rho 49277 - rho 49278 := ha5
      _ = (-1) * rho 49277 - rho 49278 + (seg52In1AccY120 rho - seg52In1AccX120 rho * (-1)) *
          (rho 49274 + rho 49275) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX121 rho = seg52In1AccX120 rho - Bool.toZMod bit * (seg52In1AccX120 rho - rho 49280) := by
    have hd : rho 49282 = Bool.toZMod bit * (rho 49280 - seg52In1AccX120 rho) := by
      rw [← hbit]
      unfold seg52In1AccX120
      linear_combination -r4892
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY121 rho = seg52In1AccY120 rho - Bool.toZMod bit * (seg52In1AccY120 rho - rho 49281) := by
    have hd : rho 49283 = Bool.toZMod bit * (rho 49281 - seg52In1AccY120 rho) := by
      rw [← hbit]
      unfold seg52In1AccY120
      linear_combination -r4893
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49274 * rho 49275 = rho 49284 := by linear_combination r4894
  have hd1 : rho 49274 * rho 49274 = rho 49285 := by linear_combination r4895
  have hd2 : rho 49275 * rho 49275 = rho 49286 := by linear_combination r4896
  have hd3 : rho 49287 * (rho 49275 * rho 49275 + rho 49274 * rho 49274 * (-1)) =
      2 * (rho 49274 * rho 49275) := by
    rw [hd0, hd1, hd2]
    linear_combination r4897
  have hd4 : rho 49288 * (2 - (rho 49275 * rho 49275 + rho 49274 * rho 49274 * (-1))) =
      rho 49275 * rho 49275 - rho 49274 * rho 49274 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4898
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX120 rho, seg52In1AccY120 rho⟩ ⟨rho 49274, rho 49275⟩
    ⟨rho 49280, rho 49281⟩ ⟨seg52In1AccX121 rho, seg52In1AccY121 rho⟩ ⟨rho 49287, rho 49288⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg52In1_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg52In1_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg52In1_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg52In1_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg52In1_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg52In1_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg52In1_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg52In1_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg52In1_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg52In1_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
