import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4613 rho ∧ Seg52.relationRow4614 rho ∧ Seg52.relationRow4615 rho ∧ Seg52.relationRow4616 rho ∧ Seg52.relationRow4617 rho ∧ Seg52.relationRow4618 rho ∧ Seg52.relationRow4619 rho ∧ Seg52.relationRow4620 rho ∧ Seg52.relationRow4621 rho ∧ Seg52.relationRow4622 rho ∧ Seg52.relationRow4623 rho ∧ Seg52.relationRow4624 rho ∧ Seg52.relationRow4625 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625⟩

theorem seg52In1_rung99 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47693 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49001, rho 49002⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 49001, rho 49002⟩
        ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 49014, rho 49015⟩ := by
  obtain ⟨r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625⟩ := seg52In1_rows99 rho h
  unfold Seg52.relationRow4613 at r4613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4613

  unfold Seg52.relationRow4614 at r4614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4614

  unfold Seg52.relationRow4615 at r4615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4615

  unfold Seg52.relationRow4616 at r4616

  unfold Seg52.relationRow4617 at r4617

  unfold Seg52.relationRow4618 at r4618

  unfold Seg52.relationRow4619 at r4619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4619

  unfold Seg52.relationRow4620 at r4620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4620

  unfold Seg52.relationRow4621 at r4621

  unfold Seg52.relationRow4622 at r4622

  unfold Seg52.relationRow4623 at r4623

  unfold Seg52.relationRow4624 at r4624

  unfold Seg52.relationRow4625 at r4625

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX100 rho = seg52In1AccX99 rho + rho 49009 := by
    unfold seg52In1AccX100 seg52In1AccX99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 99]

    ring

  have hnexty : seg52In1AccY100 rho = seg52In1AccY99 rho + rho 49010 := by
    unfold seg52In1AccY100 seg52In1AccY99
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 99]

    ring

  have ha0 : (rho 49001 + rho 49002) * (seg52In1AccX99 rho + seg52In1AccY99 rho) = rho 49003 := by
    unfold seg52In1AccX99 seg52In1AccY99
    linear_combination r4613
  have ha1 : rho 49002 * seg52In1AccX99 rho = rho 49004 := by
    unfold seg52In1AccX99
    linear_combination r4614
  have ha2 : rho 49001 * seg52In1AccY99 rho = rho 49005 := by
    unfold seg52In1AccY99
    linear_combination r4615
  have ha3 : 3021 * rho 49004 * rho 49005 = rho 49006 := by
    linear_combination r4616
  have ha4 : rho 49007 * (1 + rho 49006) = rho 49004 + rho 49005 := by
    linear_combination r4617
  have ha5 : rho 49008 * (1 - rho 49006) = rho 49003 - rho 49004 - rho 49005 := by
    linear_combination r4618
  have haddx :
      rho 49007 * (1 + 3021 * (rho 49002 * seg52In1AccX99 rho) * (rho 49001 * seg52In1AccY99 rho)) =
        rho 49002 * seg52In1AccX99 rho + rho 49001 * seg52In1AccY99 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49008 * (1 - 3021 * (rho 49002 * seg52In1AccX99 rho) * (rho 49001 * seg52In1AccY99 rho)) =
        (-1) * (rho 49002 * seg52In1AccX99 rho) - rho 49001 * seg52In1AccY99 rho +
          (seg52In1AccY99 rho - seg52In1AccX99 rho * (-1)) * (rho 49001 + rho 49002) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49008 * (1 - rho 49006) = rho 49003 - rho 49004 - rho 49005 := ha5
      _ = (-1) * rho 49004 - rho 49005 + (seg52In1AccY99 rho - seg52In1AccX99 rho * (-1)) *
          (rho 49001 + rho 49002) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX100 rho = seg52In1AccX99 rho - Bool.toZMod bit * (seg52In1AccX99 rho - rho 49007) := by
    have hd : rho 49009 = Bool.toZMod bit * (rho 49007 - seg52In1AccX99 rho) := by
      rw [← hbit]
      unfold seg52In1AccX99
      linear_combination -r4619
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY100 rho = seg52In1AccY99 rho - Bool.toZMod bit * (seg52In1AccY99 rho - rho 49008) := by
    have hd : rho 49010 = Bool.toZMod bit * (rho 49008 - seg52In1AccY99 rho) := by
      rw [← hbit]
      unfold seg52In1AccY99
      linear_combination -r4620
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49001 * rho 49002 = rho 49011 := by linear_combination r4621
  have hd1 : rho 49001 * rho 49001 = rho 49012 := by linear_combination r4622
  have hd2 : rho 49002 * rho 49002 = rho 49013 := by linear_combination r4623
  have hd3 : rho 49014 * (rho 49002 * rho 49002 + rho 49001 * rho 49001 * (-1)) =
      2 * (rho 49001 * rho 49002) := by
    rw [hd0, hd1, hd2]
    linear_combination r4624
  have hd4 : rho 49015 * (2 - (rho 49002 * rho 49002 + rho 49001 * rho 49001 * (-1))) =
      rho 49002 * rho 49002 - rho 49001 * rho 49001 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4625
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX99 rho, seg52In1AccY99 rho⟩ ⟨rho 49001, rho 49002⟩
    ⟨rho 49007, rho 49008⟩ ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 49014, rho 49015⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4626 rho ∧ Seg52.relationRow4627 rho ∧ Seg52.relationRow4628 rho ∧ Seg52.relationRow4629 rho ∧ Seg52.relationRow4630 rho ∧ Seg52.relationRow4631 rho ∧ Seg52.relationRow4632 rho ∧ Seg52.relationRow4633 rho ∧ Seg52.relationRow4634 rho ∧ Seg52.relationRow4635 rho ∧ Seg52.relationRow4636 rho ∧ Seg52.relationRow4637 rho ∧ Seg52.relationRow4638 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, _⟩

  exact ⟨r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638⟩

theorem seg52In1_rung100 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47694 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49014, rho 49015⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 49014, rho 49015⟩
        ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 49027, rho 49028⟩ := by
  obtain ⟨r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638⟩ := seg52In1_rows100 rho h
  unfold Seg52.relationRow4626 at r4626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4626

  unfold Seg52.relationRow4627 at r4627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4627

  unfold Seg52.relationRow4628 at r4628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4628

  unfold Seg52.relationRow4629 at r4629

  unfold Seg52.relationRow4630 at r4630

  unfold Seg52.relationRow4631 at r4631

  unfold Seg52.relationRow4632 at r4632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4632

  unfold Seg52.relationRow4633 at r4633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4633

  unfold Seg52.relationRow4634 at r4634

  unfold Seg52.relationRow4635 at r4635

  unfold Seg52.relationRow4636 at r4636

  unfold Seg52.relationRow4637 at r4637

  unfold Seg52.relationRow4638 at r4638

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX101 rho = seg52In1AccX100 rho + rho 49022 := by
    unfold seg52In1AccX101 seg52In1AccX100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 100]

    ring

  have hnexty : seg52In1AccY101 rho = seg52In1AccY100 rho + rho 49023 := by
    unfold seg52In1AccY101 seg52In1AccY100
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 100]

    ring

  have ha0 : (rho 49014 + rho 49015) * (seg52In1AccX100 rho + seg52In1AccY100 rho) = rho 49016 := by
    unfold seg52In1AccX100 seg52In1AccY100
    linear_combination r4626
  have ha1 : rho 49015 * seg52In1AccX100 rho = rho 49017 := by
    unfold seg52In1AccX100
    linear_combination r4627
  have ha2 : rho 49014 * seg52In1AccY100 rho = rho 49018 := by
    unfold seg52In1AccY100
    linear_combination r4628
  have ha3 : 3021 * rho 49017 * rho 49018 = rho 49019 := by
    linear_combination r4629
  have ha4 : rho 49020 * (1 + rho 49019) = rho 49017 + rho 49018 := by
    linear_combination r4630
  have ha5 : rho 49021 * (1 - rho 49019) = rho 49016 - rho 49017 - rho 49018 := by
    linear_combination r4631
  have haddx :
      rho 49020 * (1 + 3021 * (rho 49015 * seg52In1AccX100 rho) * (rho 49014 * seg52In1AccY100 rho)) =
        rho 49015 * seg52In1AccX100 rho + rho 49014 * seg52In1AccY100 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49021 * (1 - 3021 * (rho 49015 * seg52In1AccX100 rho) * (rho 49014 * seg52In1AccY100 rho)) =
        (-1) * (rho 49015 * seg52In1AccX100 rho) - rho 49014 * seg52In1AccY100 rho +
          (seg52In1AccY100 rho - seg52In1AccX100 rho * (-1)) * (rho 49014 + rho 49015) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49021 * (1 - rho 49019) = rho 49016 - rho 49017 - rho 49018 := ha5
      _ = (-1) * rho 49017 - rho 49018 + (seg52In1AccY100 rho - seg52In1AccX100 rho * (-1)) *
          (rho 49014 + rho 49015) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX101 rho = seg52In1AccX100 rho - Bool.toZMod bit * (seg52In1AccX100 rho - rho 49020) := by
    have hd : rho 49022 = Bool.toZMod bit * (rho 49020 - seg52In1AccX100 rho) := by
      rw [← hbit]
      unfold seg52In1AccX100
      linear_combination -r4632
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY101 rho = seg52In1AccY100 rho - Bool.toZMod bit * (seg52In1AccY100 rho - rho 49021) := by
    have hd : rho 49023 = Bool.toZMod bit * (rho 49021 - seg52In1AccY100 rho) := by
      rw [← hbit]
      unfold seg52In1AccY100
      linear_combination -r4633
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49014 * rho 49015 = rho 49024 := by linear_combination r4634
  have hd1 : rho 49014 * rho 49014 = rho 49025 := by linear_combination r4635
  have hd2 : rho 49015 * rho 49015 = rho 49026 := by linear_combination r4636
  have hd3 : rho 49027 * (rho 49015 * rho 49015 + rho 49014 * rho 49014 * (-1)) =
      2 * (rho 49014 * rho 49015) := by
    rw [hd0, hd1, hd2]
    linear_combination r4637
  have hd4 : rho 49028 * (2 - (rho 49015 * rho 49015 + rho 49014 * rho 49014 * (-1))) =
      rho 49015 * rho 49015 - rho 49014 * rho 49014 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4638
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX100 rho, seg52In1AccY100 rho⟩ ⟨rho 49014, rho 49015⟩
    ⟨rho 49020, rho 49021⟩ ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 49027, rho 49028⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4639 rho ∧ Seg52.relationRow4640 rho ∧ Seg52.relationRow4641 rho ∧ Seg52.relationRow4642 rho ∧ Seg52.relationRow4643 rho ∧ Seg52.relationRow4644 rho ∧ Seg52.relationRow4645 rho ∧ Seg52.relationRow4646 rho ∧ Seg52.relationRow4647 rho ∧ Seg52.relationRow4648 rho ∧ Seg52.relationRow4649 rho ∧ Seg52.relationRow4650 rho ∧ Seg52.relationRow4651 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p57, p58, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4639⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651⟩

theorem seg52In1_rung101 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47695 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49027, rho 49028⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 49027, rho 49028⟩
        ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 49040, rho 49041⟩ := by
  obtain ⟨r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651⟩ := seg52In1_rows101 rho h
  unfold Seg52.relationRow4639 at r4639

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4639

  unfold Seg52.relationRow4640 at r4640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4640

  unfold Seg52.relationRow4641 at r4641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4641

  unfold Seg52.relationRow4642 at r4642

  unfold Seg52.relationRow4643 at r4643

  unfold Seg52.relationRow4644 at r4644

  unfold Seg52.relationRow4645 at r4645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4645

  unfold Seg52.relationRow4646 at r4646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4646

  unfold Seg52.relationRow4647 at r4647

  unfold Seg52.relationRow4648 at r4648

  unfold Seg52.relationRow4649 at r4649

  unfold Seg52.relationRow4650 at r4650

  unfold Seg52.relationRow4651 at r4651

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX102 rho = seg52In1AccX101 rho + rho 49035 := by
    unfold seg52In1AccX102 seg52In1AccX101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 101]

    ring

  have hnexty : seg52In1AccY102 rho = seg52In1AccY101 rho + rho 49036 := by
    unfold seg52In1AccY102 seg52In1AccY101
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 101]

    ring

  have ha0 : (rho 49027 + rho 49028) * (seg52In1AccX101 rho + seg52In1AccY101 rho) = rho 49029 := by
    unfold seg52In1AccX101 seg52In1AccY101
    linear_combination r4639
  have ha1 : rho 49028 * seg52In1AccX101 rho = rho 49030 := by
    unfold seg52In1AccX101
    linear_combination r4640
  have ha2 : rho 49027 * seg52In1AccY101 rho = rho 49031 := by
    unfold seg52In1AccY101
    linear_combination r4641
  have ha3 : 3021 * rho 49030 * rho 49031 = rho 49032 := by
    linear_combination r4642
  have ha4 : rho 49033 * (1 + rho 49032) = rho 49030 + rho 49031 := by
    linear_combination r4643
  have ha5 : rho 49034 * (1 - rho 49032) = rho 49029 - rho 49030 - rho 49031 := by
    linear_combination r4644
  have haddx :
      rho 49033 * (1 + 3021 * (rho 49028 * seg52In1AccX101 rho) * (rho 49027 * seg52In1AccY101 rho)) =
        rho 49028 * seg52In1AccX101 rho + rho 49027 * seg52In1AccY101 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49034 * (1 - 3021 * (rho 49028 * seg52In1AccX101 rho) * (rho 49027 * seg52In1AccY101 rho)) =
        (-1) * (rho 49028 * seg52In1AccX101 rho) - rho 49027 * seg52In1AccY101 rho +
          (seg52In1AccY101 rho - seg52In1AccX101 rho * (-1)) * (rho 49027 + rho 49028) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49034 * (1 - rho 49032) = rho 49029 - rho 49030 - rho 49031 := ha5
      _ = (-1) * rho 49030 - rho 49031 + (seg52In1AccY101 rho - seg52In1AccX101 rho * (-1)) *
          (rho 49027 + rho 49028) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX102 rho = seg52In1AccX101 rho - Bool.toZMod bit * (seg52In1AccX101 rho - rho 49033) := by
    have hd : rho 49035 = Bool.toZMod bit * (rho 49033 - seg52In1AccX101 rho) := by
      rw [← hbit]
      unfold seg52In1AccX101
      linear_combination -r4645
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY102 rho = seg52In1AccY101 rho - Bool.toZMod bit * (seg52In1AccY101 rho - rho 49034) := by
    have hd : rho 49036 = Bool.toZMod bit * (rho 49034 - seg52In1AccY101 rho) := by
      rw [← hbit]
      unfold seg52In1AccY101
      linear_combination -r4646
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49027 * rho 49028 = rho 49037 := by linear_combination r4647
  have hd1 : rho 49027 * rho 49027 = rho 49038 := by linear_combination r4648
  have hd2 : rho 49028 * rho 49028 = rho 49039 := by linear_combination r4649
  have hd3 : rho 49040 * (rho 49028 * rho 49028 + rho 49027 * rho 49027 * (-1)) =
      2 * (rho 49027 * rho 49028) := by
    rw [hd0, hd1, hd2]
    linear_combination r4650
  have hd4 : rho 49041 * (2 - (rho 49028 * rho 49028 + rho 49027 * rho 49027 * (-1))) =
      rho 49028 * rho 49028 - rho 49027 * rho 49027 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4651
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX101 rho, seg52In1AccY101 rho⟩ ⟨rho 49027, rho 49028⟩
    ⟨rho 49033, rho 49034⟩ ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 49040, rho 49041⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4652 rho ∧ Seg52.relationRow4653 rho ∧ Seg52.relationRow4654 rho ∧ Seg52.relationRow4655 rho ∧ Seg52.relationRow4656 rho ∧ Seg52.relationRow4657 rho ∧ Seg52.relationRow4658 rho ∧ Seg52.relationRow4659 rho ∧ Seg52.relationRow4660 rho ∧ Seg52.relationRow4661 rho ∧ Seg52.relationRow4662 rho ∧ Seg52.relationRow4663 rho ∧ Seg52.relationRow4664 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p58, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664⟩

theorem seg52In1_rung102 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47696 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49040, rho 49041⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 49040, rho 49041⟩
        ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 49053, rho 49054⟩ := by
  obtain ⟨r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664⟩ := seg52In1_rows102 rho h
  unfold Seg52.relationRow4652 at r4652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4652

  unfold Seg52.relationRow4653 at r4653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4653

  unfold Seg52.relationRow4654 at r4654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4654

  unfold Seg52.relationRow4655 at r4655

  unfold Seg52.relationRow4656 at r4656

  unfold Seg52.relationRow4657 at r4657

  unfold Seg52.relationRow4658 at r4658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4658

  unfold Seg52.relationRow4659 at r4659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4659

  unfold Seg52.relationRow4660 at r4660

  unfold Seg52.relationRow4661 at r4661

  unfold Seg52.relationRow4662 at r4662

  unfold Seg52.relationRow4663 at r4663

  unfold Seg52.relationRow4664 at r4664

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX103 rho = seg52In1AccX102 rho + rho 49048 := by
    unfold seg52In1AccX103 seg52In1AccX102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 102]

    ring

  have hnexty : seg52In1AccY103 rho = seg52In1AccY102 rho + rho 49049 := by
    unfold seg52In1AccY103 seg52In1AccY102
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 102]

    ring

  have ha0 : (rho 49040 + rho 49041) * (seg52In1AccX102 rho + seg52In1AccY102 rho) = rho 49042 := by
    unfold seg52In1AccX102 seg52In1AccY102
    linear_combination r4652
  have ha1 : rho 49041 * seg52In1AccX102 rho = rho 49043 := by
    unfold seg52In1AccX102
    linear_combination r4653
  have ha2 : rho 49040 * seg52In1AccY102 rho = rho 49044 := by
    unfold seg52In1AccY102
    linear_combination r4654
  have ha3 : 3021 * rho 49043 * rho 49044 = rho 49045 := by
    linear_combination r4655
  have ha4 : rho 49046 * (1 + rho 49045) = rho 49043 + rho 49044 := by
    linear_combination r4656
  have ha5 : rho 49047 * (1 - rho 49045) = rho 49042 - rho 49043 - rho 49044 := by
    linear_combination r4657
  have haddx :
      rho 49046 * (1 + 3021 * (rho 49041 * seg52In1AccX102 rho) * (rho 49040 * seg52In1AccY102 rho)) =
        rho 49041 * seg52In1AccX102 rho + rho 49040 * seg52In1AccY102 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49047 * (1 - 3021 * (rho 49041 * seg52In1AccX102 rho) * (rho 49040 * seg52In1AccY102 rho)) =
        (-1) * (rho 49041 * seg52In1AccX102 rho) - rho 49040 * seg52In1AccY102 rho +
          (seg52In1AccY102 rho - seg52In1AccX102 rho * (-1)) * (rho 49040 + rho 49041) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49047 * (1 - rho 49045) = rho 49042 - rho 49043 - rho 49044 := ha5
      _ = (-1) * rho 49043 - rho 49044 + (seg52In1AccY102 rho - seg52In1AccX102 rho * (-1)) *
          (rho 49040 + rho 49041) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX103 rho = seg52In1AccX102 rho - Bool.toZMod bit * (seg52In1AccX102 rho - rho 49046) := by
    have hd : rho 49048 = Bool.toZMod bit * (rho 49046 - seg52In1AccX102 rho) := by
      rw [← hbit]
      unfold seg52In1AccX102
      linear_combination -r4658
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY103 rho = seg52In1AccY102 rho - Bool.toZMod bit * (seg52In1AccY102 rho - rho 49047) := by
    have hd : rho 49049 = Bool.toZMod bit * (rho 49047 - seg52In1AccY102 rho) := by
      rw [← hbit]
      unfold seg52In1AccY102
      linear_combination -r4659
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49040 * rho 49041 = rho 49050 := by linear_combination r4660
  have hd1 : rho 49040 * rho 49040 = rho 49051 := by linear_combination r4661
  have hd2 : rho 49041 * rho 49041 = rho 49052 := by linear_combination r4662
  have hd3 : rho 49053 * (rho 49041 * rho 49041 + rho 49040 * rho 49040 * (-1)) =
      2 * (rho 49040 * rho 49041) := by
    rw [hd0, hd1, hd2]
    linear_combination r4663
  have hd4 : rho 49054 * (2 - (rho 49041 * rho 49041 + rho 49040 * rho 49040 * (-1))) =
      rho 49041 * rho 49041 - rho 49040 * rho 49040 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4664
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX102 rho, seg52In1AccY102 rho⟩ ⟨rho 49040, rho 49041⟩
    ⟨rho 49046, rho 49047⟩ ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 49053, rho 49054⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4665 rho ∧ Seg52.relationRow4666 rho ∧ Seg52.relationRow4667 rho ∧ Seg52.relationRow4668 rho ∧ Seg52.relationRow4669 rho ∧ Seg52.relationRow4670 rho ∧ Seg52.relationRow4671 rho ∧ Seg52.relationRow4672 rho ∧ Seg52.relationRow4673 rho ∧ Seg52.relationRow4674 rho ∧ Seg52.relationRow4675 rho ∧ Seg52.relationRow4676 rho ∧ Seg52.relationRow4677 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p58, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677⟩

theorem seg52In1_rung103 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47697 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49053, rho 49054⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 49053, rho 49054⟩
        ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 49066, rho 49067⟩ := by
  obtain ⟨r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677⟩ := seg52In1_rows103 rho h
  unfold Seg52.relationRow4665 at r4665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4665

  unfold Seg52.relationRow4666 at r4666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4666

  unfold Seg52.relationRow4667 at r4667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4667

  unfold Seg52.relationRow4668 at r4668

  unfold Seg52.relationRow4669 at r4669

  unfold Seg52.relationRow4670 at r4670

  unfold Seg52.relationRow4671 at r4671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4671

  unfold Seg52.relationRow4672 at r4672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4672

  unfold Seg52.relationRow4673 at r4673

  unfold Seg52.relationRow4674 at r4674

  unfold Seg52.relationRow4675 at r4675

  unfold Seg52.relationRow4676 at r4676

  unfold Seg52.relationRow4677 at r4677

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX104 rho = seg52In1AccX103 rho + rho 49061 := by
    unfold seg52In1AccX104 seg52In1AccX103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 103]

    ring

  have hnexty : seg52In1AccY104 rho = seg52In1AccY103 rho + rho 49062 := by
    unfold seg52In1AccY104 seg52In1AccY103
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 103]

    ring

  have ha0 : (rho 49053 + rho 49054) * (seg52In1AccX103 rho + seg52In1AccY103 rho) = rho 49055 := by
    unfold seg52In1AccX103 seg52In1AccY103
    linear_combination r4665
  have ha1 : rho 49054 * seg52In1AccX103 rho = rho 49056 := by
    unfold seg52In1AccX103
    linear_combination r4666
  have ha2 : rho 49053 * seg52In1AccY103 rho = rho 49057 := by
    unfold seg52In1AccY103
    linear_combination r4667
  have ha3 : 3021 * rho 49056 * rho 49057 = rho 49058 := by
    linear_combination r4668
  have ha4 : rho 49059 * (1 + rho 49058) = rho 49056 + rho 49057 := by
    linear_combination r4669
  have ha5 : rho 49060 * (1 - rho 49058) = rho 49055 - rho 49056 - rho 49057 := by
    linear_combination r4670
  have haddx :
      rho 49059 * (1 + 3021 * (rho 49054 * seg52In1AccX103 rho) * (rho 49053 * seg52In1AccY103 rho)) =
        rho 49054 * seg52In1AccX103 rho + rho 49053 * seg52In1AccY103 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49060 * (1 - 3021 * (rho 49054 * seg52In1AccX103 rho) * (rho 49053 * seg52In1AccY103 rho)) =
        (-1) * (rho 49054 * seg52In1AccX103 rho) - rho 49053 * seg52In1AccY103 rho +
          (seg52In1AccY103 rho - seg52In1AccX103 rho * (-1)) * (rho 49053 + rho 49054) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49060 * (1 - rho 49058) = rho 49055 - rho 49056 - rho 49057 := ha5
      _ = (-1) * rho 49056 - rho 49057 + (seg52In1AccY103 rho - seg52In1AccX103 rho * (-1)) *
          (rho 49053 + rho 49054) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX104 rho = seg52In1AccX103 rho - Bool.toZMod bit * (seg52In1AccX103 rho - rho 49059) := by
    have hd : rho 49061 = Bool.toZMod bit * (rho 49059 - seg52In1AccX103 rho) := by
      rw [← hbit]
      unfold seg52In1AccX103
      linear_combination -r4671
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY104 rho = seg52In1AccY103 rho - Bool.toZMod bit * (seg52In1AccY103 rho - rho 49060) := by
    have hd : rho 49062 = Bool.toZMod bit * (rho 49060 - seg52In1AccY103 rho) := by
      rw [← hbit]
      unfold seg52In1AccY103
      linear_combination -r4672
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49053 * rho 49054 = rho 49063 := by linear_combination r4673
  have hd1 : rho 49053 * rho 49053 = rho 49064 := by linear_combination r4674
  have hd2 : rho 49054 * rho 49054 = rho 49065 := by linear_combination r4675
  have hd3 : rho 49066 * (rho 49054 * rho 49054 + rho 49053 * rho 49053 * (-1)) =
      2 * (rho 49053 * rho 49054) := by
    rw [hd0, hd1, hd2]
    linear_combination r4676
  have hd4 : rho 49067 * (2 - (rho 49054 * rho 49054 + rho 49053 * rho 49053 * (-1))) =
      rho 49054 * rho 49054 - rho 49053 * rho 49053 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4677
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX103 rho, seg52In1AccY103 rho⟩ ⟨rho 49053, rho 49054⟩
    ⟨rho 49059, rho 49060⟩ ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 49066, rho 49067⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4678 rho ∧ Seg52.relationRow4679 rho ∧ Seg52.relationRow4680 rho ∧ Seg52.relationRow4681 rho ∧ Seg52.relationRow4682 rho ∧ Seg52.relationRow4683 rho ∧ Seg52.relationRow4684 rho ∧ Seg52.relationRow4685 rho ∧ Seg52.relationRow4686 rho ∧ Seg52.relationRow4687 rho ∧ Seg52.relationRow4688 rho ∧ Seg52.relationRow4689 rho ∧ Seg52.relationRow4690 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p58, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690⟩

theorem seg52In1_rung104 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47698 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49066, rho 49067⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 49066, rho 49067⟩
        ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 49079, rho 49080⟩ := by
  obtain ⟨r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690⟩ := seg52In1_rows104 rho h
  unfold Seg52.relationRow4678 at r4678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4678

  unfold Seg52.relationRow4679 at r4679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4679

  unfold Seg52.relationRow4680 at r4680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4680

  unfold Seg52.relationRow4681 at r4681

  unfold Seg52.relationRow4682 at r4682

  unfold Seg52.relationRow4683 at r4683

  unfold Seg52.relationRow4684 at r4684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4684

  unfold Seg52.relationRow4685 at r4685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4685

  unfold Seg52.relationRow4686 at r4686

  unfold Seg52.relationRow4687 at r4687

  unfold Seg52.relationRow4688 at r4688

  unfold Seg52.relationRow4689 at r4689

  unfold Seg52.relationRow4690 at r4690

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX105 rho = seg52In1AccX104 rho + rho 49074 := by
    unfold seg52In1AccX105 seg52In1AccX104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 104]

    ring

  have hnexty : seg52In1AccY105 rho = seg52In1AccY104 rho + rho 49075 := by
    unfold seg52In1AccY105 seg52In1AccY104
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 104]

    ring

  have ha0 : (rho 49066 + rho 49067) * (seg52In1AccX104 rho + seg52In1AccY104 rho) = rho 49068 := by
    unfold seg52In1AccX104 seg52In1AccY104
    linear_combination r4678
  have ha1 : rho 49067 * seg52In1AccX104 rho = rho 49069 := by
    unfold seg52In1AccX104
    linear_combination r4679
  have ha2 : rho 49066 * seg52In1AccY104 rho = rho 49070 := by
    unfold seg52In1AccY104
    linear_combination r4680
  have ha3 : 3021 * rho 49069 * rho 49070 = rho 49071 := by
    linear_combination r4681
  have ha4 : rho 49072 * (1 + rho 49071) = rho 49069 + rho 49070 := by
    linear_combination r4682
  have ha5 : rho 49073 * (1 - rho 49071) = rho 49068 - rho 49069 - rho 49070 := by
    linear_combination r4683
  have haddx :
      rho 49072 * (1 + 3021 * (rho 49067 * seg52In1AccX104 rho) * (rho 49066 * seg52In1AccY104 rho)) =
        rho 49067 * seg52In1AccX104 rho + rho 49066 * seg52In1AccY104 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49073 * (1 - 3021 * (rho 49067 * seg52In1AccX104 rho) * (rho 49066 * seg52In1AccY104 rho)) =
        (-1) * (rho 49067 * seg52In1AccX104 rho) - rho 49066 * seg52In1AccY104 rho +
          (seg52In1AccY104 rho - seg52In1AccX104 rho * (-1)) * (rho 49066 + rho 49067) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49073 * (1 - rho 49071) = rho 49068 - rho 49069 - rho 49070 := ha5
      _ = (-1) * rho 49069 - rho 49070 + (seg52In1AccY104 rho - seg52In1AccX104 rho * (-1)) *
          (rho 49066 + rho 49067) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX105 rho = seg52In1AccX104 rho - Bool.toZMod bit * (seg52In1AccX104 rho - rho 49072) := by
    have hd : rho 49074 = Bool.toZMod bit * (rho 49072 - seg52In1AccX104 rho) := by
      rw [← hbit]
      unfold seg52In1AccX104
      linear_combination -r4684
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY105 rho = seg52In1AccY104 rho - Bool.toZMod bit * (seg52In1AccY104 rho - rho 49073) := by
    have hd : rho 49075 = Bool.toZMod bit * (rho 49073 - seg52In1AccY104 rho) := by
      rw [← hbit]
      unfold seg52In1AccY104
      linear_combination -r4685
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49066 * rho 49067 = rho 49076 := by linear_combination r4686
  have hd1 : rho 49066 * rho 49066 = rho 49077 := by linear_combination r4687
  have hd2 : rho 49067 * rho 49067 = rho 49078 := by linear_combination r4688
  have hd3 : rho 49079 * (rho 49067 * rho 49067 + rho 49066 * rho 49066 * (-1)) =
      2 * (rho 49066 * rho 49067) := by
    rw [hd0, hd1, hd2]
    linear_combination r4689
  have hd4 : rho 49080 * (2 - (rho 49067 * rho 49067 + rho 49066 * rho 49066 * (-1))) =
      rho 49067 * rho 49067 - rho 49066 * rho 49066 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4690
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX104 rho, seg52In1AccY104 rho⟩ ⟨rho 49066, rho 49067⟩
    ⟨rho 49072, rho 49073⟩ ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 49079, rho 49080⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4691 rho ∧ Seg52.relationRow4692 rho ∧ Seg52.relationRow4693 rho ∧ Seg52.relationRow4694 rho ∧ Seg52.relationRow4695 rho ∧ Seg52.relationRow4696 rho ∧ Seg52.relationRow4697 rho ∧ Seg52.relationRow4698 rho ∧ Seg52.relationRow4699 rho ∧ Seg52.relationRow4700 rho ∧ Seg52.relationRow4701 rho ∧ Seg52.relationRow4702 rho ∧ Seg52.relationRow4703 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p58, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703⟩

theorem seg52In1_rung105 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47699 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49079, rho 49080⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 49079, rho 49080⟩
        ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 49092, rho 49093⟩ := by
  obtain ⟨r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703⟩ := seg52In1_rows105 rho h
  unfold Seg52.relationRow4691 at r4691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4691

  unfold Seg52.relationRow4692 at r4692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4692

  unfold Seg52.relationRow4693 at r4693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4693

  unfold Seg52.relationRow4694 at r4694

  unfold Seg52.relationRow4695 at r4695

  unfold Seg52.relationRow4696 at r4696

  unfold Seg52.relationRow4697 at r4697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4697

  unfold Seg52.relationRow4698 at r4698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4698

  unfold Seg52.relationRow4699 at r4699

  unfold Seg52.relationRow4700 at r4700

  unfold Seg52.relationRow4701 at r4701

  unfold Seg52.relationRow4702 at r4702

  unfold Seg52.relationRow4703 at r4703

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX106 rho = seg52In1AccX105 rho + rho 49087 := by
    unfold seg52In1AccX106 seg52In1AccX105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 105]

    ring

  have hnexty : seg52In1AccY106 rho = seg52In1AccY105 rho + rho 49088 := by
    unfold seg52In1AccY106 seg52In1AccY105
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 105]

    ring

  have ha0 : (rho 49079 + rho 49080) * (seg52In1AccX105 rho + seg52In1AccY105 rho) = rho 49081 := by
    unfold seg52In1AccX105 seg52In1AccY105
    linear_combination r4691
  have ha1 : rho 49080 * seg52In1AccX105 rho = rho 49082 := by
    unfold seg52In1AccX105
    linear_combination r4692
  have ha2 : rho 49079 * seg52In1AccY105 rho = rho 49083 := by
    unfold seg52In1AccY105
    linear_combination r4693
  have ha3 : 3021 * rho 49082 * rho 49083 = rho 49084 := by
    linear_combination r4694
  have ha4 : rho 49085 * (1 + rho 49084) = rho 49082 + rho 49083 := by
    linear_combination r4695
  have ha5 : rho 49086 * (1 - rho 49084) = rho 49081 - rho 49082 - rho 49083 := by
    linear_combination r4696
  have haddx :
      rho 49085 * (1 + 3021 * (rho 49080 * seg52In1AccX105 rho) * (rho 49079 * seg52In1AccY105 rho)) =
        rho 49080 * seg52In1AccX105 rho + rho 49079 * seg52In1AccY105 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49086 * (1 - 3021 * (rho 49080 * seg52In1AccX105 rho) * (rho 49079 * seg52In1AccY105 rho)) =
        (-1) * (rho 49080 * seg52In1AccX105 rho) - rho 49079 * seg52In1AccY105 rho +
          (seg52In1AccY105 rho - seg52In1AccX105 rho * (-1)) * (rho 49079 + rho 49080) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49086 * (1 - rho 49084) = rho 49081 - rho 49082 - rho 49083 := ha5
      _ = (-1) * rho 49082 - rho 49083 + (seg52In1AccY105 rho - seg52In1AccX105 rho * (-1)) *
          (rho 49079 + rho 49080) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX106 rho = seg52In1AccX105 rho - Bool.toZMod bit * (seg52In1AccX105 rho - rho 49085) := by
    have hd : rho 49087 = Bool.toZMod bit * (rho 49085 - seg52In1AccX105 rho) := by
      rw [← hbit]
      unfold seg52In1AccX105
      linear_combination -r4697
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY106 rho = seg52In1AccY105 rho - Bool.toZMod bit * (seg52In1AccY105 rho - rho 49086) := by
    have hd : rho 49088 = Bool.toZMod bit * (rho 49086 - seg52In1AccY105 rho) := by
      rw [← hbit]
      unfold seg52In1AccY105
      linear_combination -r4698
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49079 * rho 49080 = rho 49089 := by linear_combination r4699
  have hd1 : rho 49079 * rho 49079 = rho 49090 := by linear_combination r4700
  have hd2 : rho 49080 * rho 49080 = rho 49091 := by linear_combination r4701
  have hd3 : rho 49092 * (rho 49080 * rho 49080 + rho 49079 * rho 49079 * (-1)) =
      2 * (rho 49079 * rho 49080) := by
    rw [hd0, hd1, hd2]
    linear_combination r4702
  have hd4 : rho 49093 * (2 - (rho 49080 * rho 49080 + rho 49079 * rho 49079 * (-1))) =
      rho 49080 * rho 49080 - rho 49079 * rho 49079 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4703
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX105 rho, seg52In1AccY105 rho⟩ ⟨rho 49079, rho 49080⟩
    ⟨rho 49085, rho 49086⟩ ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 49092, rho 49093⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4704 rho ∧ Seg52.relationRow4705 rho ∧ Seg52.relationRow4706 rho ∧ Seg52.relationRow4707 rho ∧ Seg52.relationRow4708 rho ∧ Seg52.relationRow4709 rho ∧ Seg52.relationRow4710 rho ∧ Seg52.relationRow4711 rho ∧ Seg52.relationRow4712 rho ∧ Seg52.relationRow4713 rho ∧ Seg52.relationRow4714 rho ∧ Seg52.relationRow4715 rho ∧ Seg52.relationRow4716 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p58, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, _, _, _⟩

  exact ⟨r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716⟩

theorem seg52In1_rung106 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47700 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49092, rho 49093⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 49092, rho 49093⟩
        ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 49105, rho 49106⟩ := by
  obtain ⟨r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716⟩ := seg52In1_rows106 rho h
  unfold Seg52.relationRow4704 at r4704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4704

  unfold Seg52.relationRow4705 at r4705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4705

  unfold Seg52.relationRow4706 at r4706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4706

  unfold Seg52.relationRow4707 at r4707

  unfold Seg52.relationRow4708 at r4708

  unfold Seg52.relationRow4709 at r4709

  unfold Seg52.relationRow4710 at r4710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4710

  unfold Seg52.relationRow4711 at r4711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4711

  unfold Seg52.relationRow4712 at r4712

  unfold Seg52.relationRow4713 at r4713

  unfold Seg52.relationRow4714 at r4714

  unfold Seg52.relationRow4715 at r4715

  unfold Seg52.relationRow4716 at r4716

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX107 rho = seg52In1AccX106 rho + rho 49100 := by
    unfold seg52In1AccX107 seg52In1AccX106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 106]

    ring

  have hnexty : seg52In1AccY107 rho = seg52In1AccY106 rho + rho 49101 := by
    unfold seg52In1AccY107 seg52In1AccY106
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 106]

    ring

  have ha0 : (rho 49092 + rho 49093) * (seg52In1AccX106 rho + seg52In1AccY106 rho) = rho 49094 := by
    unfold seg52In1AccX106 seg52In1AccY106
    linear_combination r4704
  have ha1 : rho 49093 * seg52In1AccX106 rho = rho 49095 := by
    unfold seg52In1AccX106
    linear_combination r4705
  have ha2 : rho 49092 * seg52In1AccY106 rho = rho 49096 := by
    unfold seg52In1AccY106
    linear_combination r4706
  have ha3 : 3021 * rho 49095 * rho 49096 = rho 49097 := by
    linear_combination r4707
  have ha4 : rho 49098 * (1 + rho 49097) = rho 49095 + rho 49096 := by
    linear_combination r4708
  have ha5 : rho 49099 * (1 - rho 49097) = rho 49094 - rho 49095 - rho 49096 := by
    linear_combination r4709
  have haddx :
      rho 49098 * (1 + 3021 * (rho 49093 * seg52In1AccX106 rho) * (rho 49092 * seg52In1AccY106 rho)) =
        rho 49093 * seg52In1AccX106 rho + rho 49092 * seg52In1AccY106 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49099 * (1 - 3021 * (rho 49093 * seg52In1AccX106 rho) * (rho 49092 * seg52In1AccY106 rho)) =
        (-1) * (rho 49093 * seg52In1AccX106 rho) - rho 49092 * seg52In1AccY106 rho +
          (seg52In1AccY106 rho - seg52In1AccX106 rho * (-1)) * (rho 49092 + rho 49093) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49099 * (1 - rho 49097) = rho 49094 - rho 49095 - rho 49096 := ha5
      _ = (-1) * rho 49095 - rho 49096 + (seg52In1AccY106 rho - seg52In1AccX106 rho * (-1)) *
          (rho 49092 + rho 49093) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX107 rho = seg52In1AccX106 rho - Bool.toZMod bit * (seg52In1AccX106 rho - rho 49098) := by
    have hd : rho 49100 = Bool.toZMod bit * (rho 49098 - seg52In1AccX106 rho) := by
      rw [← hbit]
      unfold seg52In1AccX106
      linear_combination -r4710
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY107 rho = seg52In1AccY106 rho - Bool.toZMod bit * (seg52In1AccY106 rho - rho 49099) := by
    have hd : rho 49101 = Bool.toZMod bit * (rho 49099 - seg52In1AccY106 rho) := by
      rw [← hbit]
      unfold seg52In1AccY106
      linear_combination -r4711
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49092 * rho 49093 = rho 49102 := by linear_combination r4712
  have hd1 : rho 49092 * rho 49092 = rho 49103 := by linear_combination r4713
  have hd2 : rho 49093 * rho 49093 = rho 49104 := by linear_combination r4714
  have hd3 : rho 49105 * (rho 49093 * rho 49093 + rho 49092 * rho 49092 * (-1)) =
      2 * (rho 49092 * rho 49093) := by
    rw [hd0, hd1, hd2]
    linear_combination r4715
  have hd4 : rho 49106 * (2 - (rho 49093 * rho 49093 + rho 49092 * rho 49092 * (-1))) =
      rho 49093 * rho 49093 - rho 49092 * rho 49092 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4716
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX106 rho, seg52In1AccY106 rho⟩ ⟨rho 49092, rho 49093⟩
    ⟨rho 49098, rho 49099⟩ ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 49105, rho 49106⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4717 rho ∧ Seg52.relationRow4718 rho ∧ Seg52.relationRow4719 rho ∧ Seg52.relationRow4720 rho ∧ Seg52.relationRow4721 rho ∧ Seg52.relationRow4722 rho ∧ Seg52.relationRow4723 rho ∧ Seg52.relationRow4724 rho ∧ Seg52.relationRow4725 rho ∧ Seg52.relationRow4726 rho ∧ Seg52.relationRow4727 rho ∧ Seg52.relationRow4728 rho ∧ Seg52.relationRow4729 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p58, p59,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4717, r4718, r4719⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4717, r4718, r4719, r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729⟩

theorem seg52In1_rung107 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47701 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49105, rho 49106⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 49105, rho 49106⟩
        ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 49118, rho 49119⟩ := by
  obtain ⟨r4717, r4718, r4719, r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729⟩ := seg52In1_rows107 rho h
  unfold Seg52.relationRow4717 at r4717

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4717

  unfold Seg52.relationRow4718 at r4718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4718

  unfold Seg52.relationRow4719 at r4719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4719

  unfold Seg52.relationRow4720 at r4720

  unfold Seg52.relationRow4721 at r4721

  unfold Seg52.relationRow4722 at r4722

  unfold Seg52.relationRow4723 at r4723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4723

  unfold Seg52.relationRow4724 at r4724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4724

  unfold Seg52.relationRow4725 at r4725

  unfold Seg52.relationRow4726 at r4726

  unfold Seg52.relationRow4727 at r4727

  unfold Seg52.relationRow4728 at r4728

  unfold Seg52.relationRow4729 at r4729

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX108 rho = seg52In1AccX107 rho + rho 49113 := by
    unfold seg52In1AccX108 seg52In1AccX107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 107]

    ring

  have hnexty : seg52In1AccY108 rho = seg52In1AccY107 rho + rho 49114 := by
    unfold seg52In1AccY108 seg52In1AccY107
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 107]

    ring

  have ha0 : (rho 49105 + rho 49106) * (seg52In1AccX107 rho + seg52In1AccY107 rho) = rho 49107 := by
    unfold seg52In1AccX107 seg52In1AccY107
    linear_combination r4717
  have ha1 : rho 49106 * seg52In1AccX107 rho = rho 49108 := by
    unfold seg52In1AccX107
    linear_combination r4718
  have ha2 : rho 49105 * seg52In1AccY107 rho = rho 49109 := by
    unfold seg52In1AccY107
    linear_combination r4719
  have ha3 : 3021 * rho 49108 * rho 49109 = rho 49110 := by
    linear_combination r4720
  have ha4 : rho 49111 * (1 + rho 49110) = rho 49108 + rho 49109 := by
    linear_combination r4721
  have ha5 : rho 49112 * (1 - rho 49110) = rho 49107 - rho 49108 - rho 49109 := by
    linear_combination r4722
  have haddx :
      rho 49111 * (1 + 3021 * (rho 49106 * seg52In1AccX107 rho) * (rho 49105 * seg52In1AccY107 rho)) =
        rho 49106 * seg52In1AccX107 rho + rho 49105 * seg52In1AccY107 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49112 * (1 - 3021 * (rho 49106 * seg52In1AccX107 rho) * (rho 49105 * seg52In1AccY107 rho)) =
        (-1) * (rho 49106 * seg52In1AccX107 rho) - rho 49105 * seg52In1AccY107 rho +
          (seg52In1AccY107 rho - seg52In1AccX107 rho * (-1)) * (rho 49105 + rho 49106) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49112 * (1 - rho 49110) = rho 49107 - rho 49108 - rho 49109 := ha5
      _ = (-1) * rho 49108 - rho 49109 + (seg52In1AccY107 rho - seg52In1AccX107 rho * (-1)) *
          (rho 49105 + rho 49106) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX108 rho = seg52In1AccX107 rho - Bool.toZMod bit * (seg52In1AccX107 rho - rho 49111) := by
    have hd : rho 49113 = Bool.toZMod bit * (rho 49111 - seg52In1AccX107 rho) := by
      rw [← hbit]
      unfold seg52In1AccX107
      linear_combination -r4723
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY108 rho = seg52In1AccY107 rho - Bool.toZMod bit * (seg52In1AccY107 rho - rho 49112) := by
    have hd : rho 49114 = Bool.toZMod bit * (rho 49112 - seg52In1AccY107 rho) := by
      rw [← hbit]
      unfold seg52In1AccY107
      linear_combination -r4724
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49105 * rho 49106 = rho 49115 := by linear_combination r4725
  have hd1 : rho 49105 * rho 49105 = rho 49116 := by linear_combination r4726
  have hd2 : rho 49106 * rho 49106 = rho 49117 := by linear_combination r4727
  have hd3 : rho 49118 * (rho 49106 * rho 49106 + rho 49105 * rho 49105 * (-1)) =
      2 * (rho 49105 * rho 49106) := by
    rw [hd0, hd1, hd2]
    linear_combination r4728
  have hd4 : rho 49119 * (2 - (rho 49106 * rho 49106 + rho 49105 * rho 49105 * (-1))) =
      rho 49106 * rho 49106 - rho 49105 * rho 49105 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4729
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX107 rho, seg52In1AccY107 rho⟩ ⟨rho 49105, rho 49106⟩
    ⟨rho 49111, rho 49112⟩ ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 49118, rho 49119⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4730 rho ∧ Seg52.relationRow4731 rho ∧ Seg52.relationRow4732 rho ∧ Seg52.relationRow4733 rho ∧ Seg52.relationRow4734 rho ∧ Seg52.relationRow4735 rho ∧ Seg52.relationRow4736 rho ∧ Seg52.relationRow4737 rho ∧ Seg52.relationRow4738 rho ∧ Seg52.relationRow4739 rho ∧ Seg52.relationRow4740 rho ∧ Seg52.relationRow4741 rho ∧ Seg52.relationRow4742 rho := by
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

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742⟩

theorem seg52In1_rung108 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47702 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49118, rho 49119⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 49118, rho 49119⟩
        ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 49131, rho 49132⟩ := by
  obtain ⟨r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742⟩ := seg52In1_rows108 rho h
  unfold Seg52.relationRow4730 at r4730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4730

  unfold Seg52.relationRow4731 at r4731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4731

  unfold Seg52.relationRow4732 at r4732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4732

  unfold Seg52.relationRow4733 at r4733

  unfold Seg52.relationRow4734 at r4734

  unfold Seg52.relationRow4735 at r4735

  unfold Seg52.relationRow4736 at r4736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4736

  unfold Seg52.relationRow4737 at r4737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4737

  unfold Seg52.relationRow4738 at r4738

  unfold Seg52.relationRow4739 at r4739

  unfold Seg52.relationRow4740 at r4740

  unfold Seg52.relationRow4741 at r4741

  unfold Seg52.relationRow4742 at r4742

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX109 rho = seg52In1AccX108 rho + rho 49126 := by
    unfold seg52In1AccX109 seg52In1AccX108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 108]

    ring

  have hnexty : seg52In1AccY109 rho = seg52In1AccY108 rho + rho 49127 := by
    unfold seg52In1AccY109 seg52In1AccY108
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 108]

    ring

  have ha0 : (rho 49118 + rho 49119) * (seg52In1AccX108 rho + seg52In1AccY108 rho) = rho 49120 := by
    unfold seg52In1AccX108 seg52In1AccY108
    linear_combination r4730
  have ha1 : rho 49119 * seg52In1AccX108 rho = rho 49121 := by
    unfold seg52In1AccX108
    linear_combination r4731
  have ha2 : rho 49118 * seg52In1AccY108 rho = rho 49122 := by
    unfold seg52In1AccY108
    linear_combination r4732
  have ha3 : 3021 * rho 49121 * rho 49122 = rho 49123 := by
    linear_combination r4733
  have ha4 : rho 49124 * (1 + rho 49123) = rho 49121 + rho 49122 := by
    linear_combination r4734
  have ha5 : rho 49125 * (1 - rho 49123) = rho 49120 - rho 49121 - rho 49122 := by
    linear_combination r4735
  have haddx :
      rho 49124 * (1 + 3021 * (rho 49119 * seg52In1AccX108 rho) * (rho 49118 * seg52In1AccY108 rho)) =
        rho 49119 * seg52In1AccX108 rho + rho 49118 * seg52In1AccY108 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49125 * (1 - 3021 * (rho 49119 * seg52In1AccX108 rho) * (rho 49118 * seg52In1AccY108 rho)) =
        (-1) * (rho 49119 * seg52In1AccX108 rho) - rho 49118 * seg52In1AccY108 rho +
          (seg52In1AccY108 rho - seg52In1AccX108 rho * (-1)) * (rho 49118 + rho 49119) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49125 * (1 - rho 49123) = rho 49120 - rho 49121 - rho 49122 := ha5
      _ = (-1) * rho 49121 - rho 49122 + (seg52In1AccY108 rho - seg52In1AccX108 rho * (-1)) *
          (rho 49118 + rho 49119) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX109 rho = seg52In1AccX108 rho - Bool.toZMod bit * (seg52In1AccX108 rho - rho 49124) := by
    have hd : rho 49126 = Bool.toZMod bit * (rho 49124 - seg52In1AccX108 rho) := by
      rw [← hbit]
      unfold seg52In1AccX108
      linear_combination -r4736
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY109 rho = seg52In1AccY108 rho - Bool.toZMod bit * (seg52In1AccY108 rho - rho 49125) := by
    have hd : rho 49127 = Bool.toZMod bit * (rho 49125 - seg52In1AccY108 rho) := by
      rw [← hbit]
      unfold seg52In1AccY108
      linear_combination -r4737
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49118 * rho 49119 = rho 49128 := by linear_combination r4738
  have hd1 : rho 49118 * rho 49118 = rho 49129 := by linear_combination r4739
  have hd2 : rho 49119 * rho 49119 = rho 49130 := by linear_combination r4740
  have hd3 : rho 49131 * (rho 49119 * rho 49119 + rho 49118 * rho 49118 * (-1)) =
      2 * (rho 49118 * rho 49119) := by
    rw [hd0, hd1, hd2]
    linear_combination r4741
  have hd4 : rho 49132 * (2 - (rho 49119 * rho 49119 + rho 49118 * rho 49118 * (-1))) =
      rho 49119 * rho 49119 - rho 49118 * rho 49118 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4742
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX108 rho, seg52In1AccY108 rho⟩ ⟨rho 49118, rho 49119⟩
    ⟨rho 49124, rho 49125⟩ ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 49131, rho 49132⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4743 rho ∧ Seg52.relationRow4744 rho ∧ Seg52.relationRow4745 rho ∧ Seg52.relationRow4746 rho ∧ Seg52.relationRow4747 rho ∧ Seg52.relationRow4748 rho ∧ Seg52.relationRow4749 rho ∧ Seg52.relationRow4750 rho ∧ Seg52.relationRow4751 rho ∧ Seg52.relationRow4752 rho ∧ Seg52.relationRow4753 rho ∧ Seg52.relationRow4754 rho ∧ Seg52.relationRow4755 rho := by
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

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755⟩

theorem seg52In1_rung109 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47703 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49131, rho 49132⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 49131, rho 49132⟩
        ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 49144, rho 49145⟩ := by
  obtain ⟨r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755⟩ := seg52In1_rows109 rho h
  unfold Seg52.relationRow4743 at r4743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4743

  unfold Seg52.relationRow4744 at r4744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4744

  unfold Seg52.relationRow4745 at r4745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4745

  unfold Seg52.relationRow4746 at r4746

  unfold Seg52.relationRow4747 at r4747

  unfold Seg52.relationRow4748 at r4748

  unfold Seg52.relationRow4749 at r4749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4749

  unfold Seg52.relationRow4750 at r4750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4750

  unfold Seg52.relationRow4751 at r4751

  unfold Seg52.relationRow4752 at r4752

  unfold Seg52.relationRow4753 at r4753

  unfold Seg52.relationRow4754 at r4754

  unfold Seg52.relationRow4755 at r4755

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX110 rho = seg52In1AccX109 rho + rho 49139 := by
    unfold seg52In1AccX110 seg52In1AccX109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 109]

    ring

  have hnexty : seg52In1AccY110 rho = seg52In1AccY109 rho + rho 49140 := by
    unfold seg52In1AccY110 seg52In1AccY109
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 109]

    ring

  have ha0 : (rho 49131 + rho 49132) * (seg52In1AccX109 rho + seg52In1AccY109 rho) = rho 49133 := by
    unfold seg52In1AccX109 seg52In1AccY109
    linear_combination r4743
  have ha1 : rho 49132 * seg52In1AccX109 rho = rho 49134 := by
    unfold seg52In1AccX109
    linear_combination r4744
  have ha2 : rho 49131 * seg52In1AccY109 rho = rho 49135 := by
    unfold seg52In1AccY109
    linear_combination r4745
  have ha3 : 3021 * rho 49134 * rho 49135 = rho 49136 := by
    linear_combination r4746
  have ha4 : rho 49137 * (1 + rho 49136) = rho 49134 + rho 49135 := by
    linear_combination r4747
  have ha5 : rho 49138 * (1 - rho 49136) = rho 49133 - rho 49134 - rho 49135 := by
    linear_combination r4748
  have haddx :
      rho 49137 * (1 + 3021 * (rho 49132 * seg52In1AccX109 rho) * (rho 49131 * seg52In1AccY109 rho)) =
        rho 49132 * seg52In1AccX109 rho + rho 49131 * seg52In1AccY109 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49138 * (1 - 3021 * (rho 49132 * seg52In1AccX109 rho) * (rho 49131 * seg52In1AccY109 rho)) =
        (-1) * (rho 49132 * seg52In1AccX109 rho) - rho 49131 * seg52In1AccY109 rho +
          (seg52In1AccY109 rho - seg52In1AccX109 rho * (-1)) * (rho 49131 + rho 49132) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49138 * (1 - rho 49136) = rho 49133 - rho 49134 - rho 49135 := ha5
      _ = (-1) * rho 49134 - rho 49135 + (seg52In1AccY109 rho - seg52In1AccX109 rho * (-1)) *
          (rho 49131 + rho 49132) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX110 rho = seg52In1AccX109 rho - Bool.toZMod bit * (seg52In1AccX109 rho - rho 49137) := by
    have hd : rho 49139 = Bool.toZMod bit * (rho 49137 - seg52In1AccX109 rho) := by
      rw [← hbit]
      unfold seg52In1AccX109
      linear_combination -r4749
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY110 rho = seg52In1AccY109 rho - Bool.toZMod bit * (seg52In1AccY109 rho - rho 49138) := by
    have hd : rho 49140 = Bool.toZMod bit * (rho 49138 - seg52In1AccY109 rho) := by
      rw [← hbit]
      unfold seg52In1AccY109
      linear_combination -r4750
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49131 * rho 49132 = rho 49141 := by linear_combination r4751
  have hd1 : rho 49131 * rho 49131 = rho 49142 := by linear_combination r4752
  have hd2 : rho 49132 * rho 49132 = rho 49143 := by linear_combination r4753
  have hd3 : rho 49144 * (rho 49132 * rho 49132 + rho 49131 * rho 49131 * (-1)) =
      2 * (rho 49131 * rho 49132) := by
    rw [hd0, hd1, hd2]
    linear_combination r4754
  have hd4 : rho 49145 * (2 - (rho 49132 * rho 49132 + rho 49131 * rho 49131 * (-1))) =
      rho 49132 * rho 49132 - rho 49131 * rho 49131 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4755
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX109 rho, seg52In1AccY109 rho⟩ ⟨rho 49131, rho 49132⟩
    ⟨rho 49137, rho 49138⟩ ⟨seg52In1AccX110 rho, seg52In1AccY110 rho⟩ ⟨rho 49144, rho 49145⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c9 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 99 ≤ i → i < 110 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung99 rho h bits[99]! (hbitAt 99 (by omega)) hacc hcur
  · exact seg52In1_rung100 rho h bits[100]! (hbitAt 100 (by omega)) hacc hcur
  · exact seg52In1_rung101 rho h bits[101]! (hbitAt 101 (by omega)) hacc hcur
  · exact seg52In1_rung102 rho h bits[102]! (hbitAt 102 (by omega)) hacc hcur
  · exact seg52In1_rung103 rho h bits[103]! (hbitAt 103 (by omega)) hacc hcur
  · exact seg52In1_rung104 rho h bits[104]! (hbitAt 104 (by omega)) hacc hcur
  · exact seg52In1_rung105 rho h bits[105]! (hbitAt 105 (by omega)) hacc hcur
  · exact seg52In1_rung106 rho h bits[106]! (hbitAt 106 (by omega)) hacc hcur
  · exact seg52In1_rung107 rho h bits[107]! (hbitAt 107 (by omega)) hacc hcur
  · exact seg52In1_rung108 rho h bits[108]! (hbitAt 108 (by omega)) hacc hcur
  · exact seg52In1_rung109 rho h bits[109]! (hbitAt 109 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
