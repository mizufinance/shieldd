import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4622 rho ∧ Seg52.relationRow4623 rho ∧ Seg52.relationRow4624 rho ∧ Seg52.relationRow4625 rho ∧ Seg52.relationRow4626 rho ∧ Seg52.relationRow4627 rho ∧ Seg52.relationRow4628 rho ∧ Seg52.relationRow4629 rho ∧ Seg52.relationRow4630 rho ∧ Seg52.relationRow4631 rho ∧ Seg52.relationRow4632 rho ∧ Seg52.relationRow4633 rho ∧ Seg52.relationRow4634 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, _, _, _, _, _⟩

  exact ⟨r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634⟩

theorem seg52Out0_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48757 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49009, rho 49010⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49009, rho 49010⟩
        ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49022, rho 49023⟩ := by
  obtain ⟨r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634⟩ := seg52Out0_rows11 rho h
  unfold Seg52.relationRow4622 at r4622

  unfold Seg52.relationRow4623 at r4623

  unfold Seg52.relationRow4624 at r4624

  unfold Seg52.relationRow4625 at r4625

  unfold Seg52.relationRow4626 at r4626

  unfold Seg52.relationRow4627 at r4627

  unfold Seg52.relationRow4628 at r4628

  unfold Seg52.relationRow4629 at r4629

  unfold Seg52.relationRow4630 at r4630

  unfold Seg52.relationRow4631 at r4631

  unfold Seg52.relationRow4632 at r4632

  unfold Seg52.relationRow4633 at r4633

  unfold Seg52.relationRow4634 at r4634

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX12 rho = seg52Out0AccX11 rho + rho 49017 := by
    unfold seg52Out0AccX12 seg52Out0AccX11
    ring

  have hnexty : seg52Out0AccY12 rho = seg52Out0AccY11 rho + rho 49018 := by
    unfold seg52Out0AccY12 seg52Out0AccY11
    ring

  have ha0 : (rho 49009 + rho 49010) * (seg52Out0AccX11 rho + seg52Out0AccY11 rho) = rho 49011 := by
    unfold seg52Out0AccX11 seg52Out0AccY11
    linear_combination r4622
  have ha1 : rho 49010 * seg52Out0AccX11 rho = rho 49012 := by
    unfold seg52Out0AccX11
    linear_combination r4623
  have ha2 : rho 49009 * seg52Out0AccY11 rho = rho 49013 := by
    unfold seg52Out0AccY11
    linear_combination r4624
  have ha3 : 3021 * rho 49012 * rho 49013 = rho 49014 := by
    linear_combination r4625
  have ha4 : rho 49015 * (1 + rho 49014) = rho 49012 + rho 49013 := by
    linear_combination r4626
  have ha5 : rho 49016 * (1 - rho 49014) = rho 49011 - rho 49012 - rho 49013 := by
    linear_combination r4627
  have haddx :
      rho 49015 * (1 + 3021 * (rho 49010 * seg52Out0AccX11 rho) * (rho 49009 * seg52Out0AccY11 rho)) =
        rho 49010 * seg52Out0AccX11 rho + rho 49009 * seg52Out0AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49016 * (1 - 3021 * (rho 49010 * seg52Out0AccX11 rho) * (rho 49009 * seg52Out0AccY11 rho)) =
        (-1) * (rho 49010 * seg52Out0AccX11 rho) - rho 49009 * seg52Out0AccY11 rho +
          (seg52Out0AccY11 rho - seg52Out0AccX11 rho * (-1)) * (rho 49009 + rho 49010) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49016 * (1 - rho 49014) = rho 49011 - rho 49012 - rho 49013 := ha5
      _ = (-1) * rho 49012 - rho 49013 + (seg52Out0AccY11 rho - seg52Out0AccX11 rho * (-1)) *
          (rho 49009 + rho 49010) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX12 rho = seg52Out0AccX11 rho - Bool.toZMod bit * (seg52Out0AccX11 rho - rho 49015) := by
    have hd : rho 49017 = Bool.toZMod bit * (rho 49015 - seg52Out0AccX11 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX11
      linear_combination -r4628
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY12 rho = seg52Out0AccY11 rho - Bool.toZMod bit * (seg52Out0AccY11 rho - rho 49016) := by
    have hd : rho 49018 = Bool.toZMod bit * (rho 49016 - seg52Out0AccY11 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY11
      linear_combination -r4629
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49009 * rho 49010 = rho 49019 := by linear_combination r4630
  have hd1 : rho 49009 * rho 49009 = rho 49020 := by linear_combination r4631
  have hd2 : rho 49010 * rho 49010 = rho 49021 := by linear_combination r4632
  have hd3 : rho 49022 * (rho 49010 * rho 49010 + rho 49009 * rho 49009 * (-1)) =
      2 * (rho 49009 * rho 49010) := by
    rw [hd0, hd1, hd2]
    linear_combination r4633
  have hd4 : rho 49023 * (2 - (rho 49010 * rho 49010 + rho 49009 * rho 49009 * (-1))) =
      rho 49010 * rho 49010 - rho 49009 * rho 49009 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4634
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49009, rho 49010⟩
    ⟨rho 49015, rho 49016⟩ ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49022, rho 49023⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4635 rho ∧ Seg52.relationRow4636 rho ∧ Seg52.relationRow4637 rho ∧ Seg52.relationRow4638 rho ∧ Seg52.relationRow4639 rho ∧ Seg52.relationRow4640 rho ∧ Seg52.relationRow4641 rho ∧ Seg52.relationRow4642 rho ∧ Seg52.relationRow4643 rho ∧ Seg52.relationRow4644 rho ∧ Seg52.relationRow4645 rho ∧ Seg52.relationRow4646 rho ∧ Seg52.relationRow4647 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4635, r4636, r4637, r4638, r4639⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4635, r4636, r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647⟩

theorem seg52Out0_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48758 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49022, rho 49023⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49022, rho 49023⟩
        ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49035, rho 49036⟩ := by
  obtain ⟨r4635, r4636, r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647⟩ := seg52Out0_rows12 rho h
  unfold Seg52.relationRow4635 at r4635

  unfold Seg52.relationRow4636 at r4636

  unfold Seg52.relationRow4637 at r4637

  unfold Seg52.relationRow4638 at r4638

  unfold Seg52.relationRow4639 at r4639

  unfold Seg52.relationRow4640 at r4640

  unfold Seg52.relationRow4641 at r4641

  unfold Seg52.relationRow4642 at r4642

  unfold Seg52.relationRow4643 at r4643

  unfold Seg52.relationRow4644 at r4644

  unfold Seg52.relationRow4645 at r4645

  unfold Seg52.relationRow4646 at r4646

  unfold Seg52.relationRow4647 at r4647

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX13 rho = seg52Out0AccX12 rho + rho 49030 := by
    unfold seg52Out0AccX13 seg52Out0AccX12
    ring

  have hnexty : seg52Out0AccY13 rho = seg52Out0AccY12 rho + rho 49031 := by
    unfold seg52Out0AccY13 seg52Out0AccY12
    ring

  have ha0 : (rho 49022 + rho 49023) * (seg52Out0AccX12 rho + seg52Out0AccY12 rho) = rho 49024 := by
    unfold seg52Out0AccX12 seg52Out0AccY12
    linear_combination r4635
  have ha1 : rho 49023 * seg52Out0AccX12 rho = rho 49025 := by
    unfold seg52Out0AccX12
    linear_combination r4636
  have ha2 : rho 49022 * seg52Out0AccY12 rho = rho 49026 := by
    unfold seg52Out0AccY12
    linear_combination r4637
  have ha3 : 3021 * rho 49025 * rho 49026 = rho 49027 := by
    linear_combination r4638
  have ha4 : rho 49028 * (1 + rho 49027) = rho 49025 + rho 49026 := by
    linear_combination r4639
  have ha5 : rho 49029 * (1 - rho 49027) = rho 49024 - rho 49025 - rho 49026 := by
    linear_combination r4640
  have haddx :
      rho 49028 * (1 + 3021 * (rho 49023 * seg52Out0AccX12 rho) * (rho 49022 * seg52Out0AccY12 rho)) =
        rho 49023 * seg52Out0AccX12 rho + rho 49022 * seg52Out0AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49029 * (1 - 3021 * (rho 49023 * seg52Out0AccX12 rho) * (rho 49022 * seg52Out0AccY12 rho)) =
        (-1) * (rho 49023 * seg52Out0AccX12 rho) - rho 49022 * seg52Out0AccY12 rho +
          (seg52Out0AccY12 rho - seg52Out0AccX12 rho * (-1)) * (rho 49022 + rho 49023) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49029 * (1 - rho 49027) = rho 49024 - rho 49025 - rho 49026 := ha5
      _ = (-1) * rho 49025 - rho 49026 + (seg52Out0AccY12 rho - seg52Out0AccX12 rho * (-1)) *
          (rho 49022 + rho 49023) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX13 rho = seg52Out0AccX12 rho - Bool.toZMod bit * (seg52Out0AccX12 rho - rho 49028) := by
    have hd : rho 49030 = Bool.toZMod bit * (rho 49028 - seg52Out0AccX12 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX12
      linear_combination -r4641
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY13 rho = seg52Out0AccY12 rho - Bool.toZMod bit * (seg52Out0AccY12 rho - rho 49029) := by
    have hd : rho 49031 = Bool.toZMod bit * (rho 49029 - seg52Out0AccY12 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY12
      linear_combination -r4642
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49022 * rho 49023 = rho 49032 := by linear_combination r4643
  have hd1 : rho 49022 * rho 49022 = rho 49033 := by linear_combination r4644
  have hd2 : rho 49023 * rho 49023 = rho 49034 := by linear_combination r4645
  have hd3 : rho 49035 * (rho 49023 * rho 49023 + rho 49022 * rho 49022 * (-1)) =
      2 * (rho 49022 * rho 49023) := by
    rw [hd0, hd1, hd2]
    linear_combination r4646
  have hd4 : rho 49036 * (2 - (rho 49023 * rho 49023 + rho 49022 * rho 49022 * (-1))) =
      rho 49023 * rho 49023 - rho 49022 * rho 49022 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4647
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX12 rho, seg52Out0AccY12 rho⟩ ⟨rho 49022, rho 49023⟩
    ⟨rho 49028, rho 49029⟩ ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49035, rho 49036⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4648 rho ∧ Seg52.relationRow4649 rho ∧ Seg52.relationRow4650 rho ∧ Seg52.relationRow4651 rho ∧ Seg52.relationRow4652 rho ∧ Seg52.relationRow4653 rho ∧ Seg52.relationRow4654 rho ∧ Seg52.relationRow4655 rho ∧ Seg52.relationRow4656 rho ∧ Seg52.relationRow4657 rho ∧ Seg52.relationRow4658 rho ∧ Seg52.relationRow4659 rho ∧ Seg52.relationRow4660 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660⟩

theorem seg52Out0_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48759 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49035, rho 49036⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49035, rho 49036⟩
        ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49048, rho 49049⟩ := by
  obtain ⟨r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660⟩ := seg52Out0_rows13 rho h
  unfold Seg52.relationRow4648 at r4648

  unfold Seg52.relationRow4649 at r4649

  unfold Seg52.relationRow4650 at r4650

  unfold Seg52.relationRow4651 at r4651

  unfold Seg52.relationRow4652 at r4652

  unfold Seg52.relationRow4653 at r4653

  unfold Seg52.relationRow4654 at r4654

  unfold Seg52.relationRow4655 at r4655

  unfold Seg52.relationRow4656 at r4656

  unfold Seg52.relationRow4657 at r4657

  unfold Seg52.relationRow4658 at r4658

  unfold Seg52.relationRow4659 at r4659

  unfold Seg52.relationRow4660 at r4660

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX14 rho = seg52Out0AccX13 rho + rho 49043 := by
    unfold seg52Out0AccX14 seg52Out0AccX13
    ring

  have hnexty : seg52Out0AccY14 rho = seg52Out0AccY13 rho + rho 49044 := by
    unfold seg52Out0AccY14 seg52Out0AccY13
    ring

  have ha0 : (rho 49035 + rho 49036) * (seg52Out0AccX13 rho + seg52Out0AccY13 rho) = rho 49037 := by
    unfold seg52Out0AccX13 seg52Out0AccY13
    linear_combination r4648
  have ha1 : rho 49036 * seg52Out0AccX13 rho = rho 49038 := by
    unfold seg52Out0AccX13
    linear_combination r4649
  have ha2 : rho 49035 * seg52Out0AccY13 rho = rho 49039 := by
    unfold seg52Out0AccY13
    linear_combination r4650
  have ha3 : 3021 * rho 49038 * rho 49039 = rho 49040 := by
    linear_combination r4651
  have ha4 : rho 49041 * (1 + rho 49040) = rho 49038 + rho 49039 := by
    linear_combination r4652
  have ha5 : rho 49042 * (1 - rho 49040) = rho 49037 - rho 49038 - rho 49039 := by
    linear_combination r4653
  have haddx :
      rho 49041 * (1 + 3021 * (rho 49036 * seg52Out0AccX13 rho) * (rho 49035 * seg52Out0AccY13 rho)) =
        rho 49036 * seg52Out0AccX13 rho + rho 49035 * seg52Out0AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49042 * (1 - 3021 * (rho 49036 * seg52Out0AccX13 rho) * (rho 49035 * seg52Out0AccY13 rho)) =
        (-1) * (rho 49036 * seg52Out0AccX13 rho) - rho 49035 * seg52Out0AccY13 rho +
          (seg52Out0AccY13 rho - seg52Out0AccX13 rho * (-1)) * (rho 49035 + rho 49036) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49042 * (1 - rho 49040) = rho 49037 - rho 49038 - rho 49039 := ha5
      _ = (-1) * rho 49038 - rho 49039 + (seg52Out0AccY13 rho - seg52Out0AccX13 rho * (-1)) *
          (rho 49035 + rho 49036) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX14 rho = seg52Out0AccX13 rho - Bool.toZMod bit * (seg52Out0AccX13 rho - rho 49041) := by
    have hd : rho 49043 = Bool.toZMod bit * (rho 49041 - seg52Out0AccX13 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX13
      linear_combination -r4654
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY14 rho = seg52Out0AccY13 rho - Bool.toZMod bit * (seg52Out0AccY13 rho - rho 49042) := by
    have hd : rho 49044 = Bool.toZMod bit * (rho 49042 - seg52Out0AccY13 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY13
      linear_combination -r4655
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49035 * rho 49036 = rho 49045 := by linear_combination r4656
  have hd1 : rho 49035 * rho 49035 = rho 49046 := by linear_combination r4657
  have hd2 : rho 49036 * rho 49036 = rho 49047 := by linear_combination r4658
  have hd3 : rho 49048 * (rho 49036 * rho 49036 + rho 49035 * rho 49035 * (-1)) =
      2 * (rho 49035 * rho 49036) := by
    rw [hd0, hd1, hd2]
    linear_combination r4659
  have hd4 : rho 49049 * (2 - (rho 49036 * rho 49036 + rho 49035 * rho 49035 * (-1))) =
      rho 49036 * rho 49036 - rho 49035 * rho 49035 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4660
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX13 rho, seg52Out0AccY13 rho⟩ ⟨rho 49035, rho 49036⟩
    ⟨rho 49041, rho 49042⟩ ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49048, rho 49049⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4661 rho ∧ Seg52.relationRow4662 rho ∧ Seg52.relationRow4663 rho ∧ Seg52.relationRow4664 rho ∧ Seg52.relationRow4665 rho ∧ Seg52.relationRow4666 rho ∧ Seg52.relationRow4667 rho ∧ Seg52.relationRow4668 rho ∧ Seg52.relationRow4669 rho ∧ Seg52.relationRow4670 rho ∧ Seg52.relationRow4671 rho ∧ Seg52.relationRow4672 rho ∧ Seg52.relationRow4673 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673⟩

theorem seg52Out0_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48760 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49048, rho 49049⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49048, rho 49049⟩
        ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49061, rho 49062⟩ := by
  obtain ⟨r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673⟩ := seg52Out0_rows14 rho h
  unfold Seg52.relationRow4661 at r4661

  unfold Seg52.relationRow4662 at r4662

  unfold Seg52.relationRow4663 at r4663

  unfold Seg52.relationRow4664 at r4664

  unfold Seg52.relationRow4665 at r4665

  unfold Seg52.relationRow4666 at r4666

  unfold Seg52.relationRow4667 at r4667

  unfold Seg52.relationRow4668 at r4668

  unfold Seg52.relationRow4669 at r4669

  unfold Seg52.relationRow4670 at r4670

  unfold Seg52.relationRow4671 at r4671

  unfold Seg52.relationRow4672 at r4672

  unfold Seg52.relationRow4673 at r4673

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX15 rho = seg52Out0AccX14 rho + rho 49056 := by
    unfold seg52Out0AccX15 seg52Out0AccX14
    ring

  have hnexty : seg52Out0AccY15 rho = seg52Out0AccY14 rho + rho 49057 := by
    unfold seg52Out0AccY15 seg52Out0AccY14
    ring

  have ha0 : (rho 49048 + rho 49049) * (seg52Out0AccX14 rho + seg52Out0AccY14 rho) = rho 49050 := by
    unfold seg52Out0AccX14 seg52Out0AccY14
    linear_combination r4661
  have ha1 : rho 49049 * seg52Out0AccX14 rho = rho 49051 := by
    unfold seg52Out0AccX14
    linear_combination r4662
  have ha2 : rho 49048 * seg52Out0AccY14 rho = rho 49052 := by
    unfold seg52Out0AccY14
    linear_combination r4663
  have ha3 : 3021 * rho 49051 * rho 49052 = rho 49053 := by
    linear_combination r4664
  have ha4 : rho 49054 * (1 + rho 49053) = rho 49051 + rho 49052 := by
    linear_combination r4665
  have ha5 : rho 49055 * (1 - rho 49053) = rho 49050 - rho 49051 - rho 49052 := by
    linear_combination r4666
  have haddx :
      rho 49054 * (1 + 3021 * (rho 49049 * seg52Out0AccX14 rho) * (rho 49048 * seg52Out0AccY14 rho)) =
        rho 49049 * seg52Out0AccX14 rho + rho 49048 * seg52Out0AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49055 * (1 - 3021 * (rho 49049 * seg52Out0AccX14 rho) * (rho 49048 * seg52Out0AccY14 rho)) =
        (-1) * (rho 49049 * seg52Out0AccX14 rho) - rho 49048 * seg52Out0AccY14 rho +
          (seg52Out0AccY14 rho - seg52Out0AccX14 rho * (-1)) * (rho 49048 + rho 49049) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49055 * (1 - rho 49053) = rho 49050 - rho 49051 - rho 49052 := ha5
      _ = (-1) * rho 49051 - rho 49052 + (seg52Out0AccY14 rho - seg52Out0AccX14 rho * (-1)) *
          (rho 49048 + rho 49049) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX15 rho = seg52Out0AccX14 rho - Bool.toZMod bit * (seg52Out0AccX14 rho - rho 49054) := by
    have hd : rho 49056 = Bool.toZMod bit * (rho 49054 - seg52Out0AccX14 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX14
      linear_combination -r4667
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY15 rho = seg52Out0AccY14 rho - Bool.toZMod bit * (seg52Out0AccY14 rho - rho 49055) := by
    have hd : rho 49057 = Bool.toZMod bit * (rho 49055 - seg52Out0AccY14 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY14
      linear_combination -r4668
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49048 * rho 49049 = rho 49058 := by linear_combination r4669
  have hd1 : rho 49048 * rho 49048 = rho 49059 := by linear_combination r4670
  have hd2 : rho 49049 * rho 49049 = rho 49060 := by linear_combination r4671
  have hd3 : rho 49061 * (rho 49049 * rho 49049 + rho 49048 * rho 49048 * (-1)) =
      2 * (rho 49048 * rho 49049) := by
    rw [hd0, hd1, hd2]
    linear_combination r4672
  have hd4 : rho 49062 * (2 - (rho 49049 * rho 49049 + rho 49048 * rho 49048 * (-1))) =
      rho 49049 * rho 49049 - rho 49048 * rho 49048 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4673
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX14 rho, seg52Out0AccY14 rho⟩ ⟨rho 49048, rho 49049⟩
    ⟨rho 49054, rho 49055⟩ ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49061, rho 49062⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4674 rho ∧ Seg52.relationRow4675 rho ∧ Seg52.relationRow4676 rho ∧ Seg52.relationRow4677 rho ∧ Seg52.relationRow4678 rho ∧ Seg52.relationRow4679 rho ∧ Seg52.relationRow4680 rho ∧ Seg52.relationRow4681 rho ∧ Seg52.relationRow4682 rho ∧ Seg52.relationRow4683 rho ∧ Seg52.relationRow4684 rho ∧ Seg52.relationRow4685 rho ∧ Seg52.relationRow4686 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686⟩

theorem seg52Out0_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48761 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49061, rho 49062⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49061, rho 49062⟩
        ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49074, rho 49075⟩ := by
  obtain ⟨r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686⟩ := seg52Out0_rows15 rho h
  unfold Seg52.relationRow4674 at r4674

  unfold Seg52.relationRow4675 at r4675

  unfold Seg52.relationRow4676 at r4676

  unfold Seg52.relationRow4677 at r4677

  unfold Seg52.relationRow4678 at r4678

  unfold Seg52.relationRow4679 at r4679

  unfold Seg52.relationRow4680 at r4680

  unfold Seg52.relationRow4681 at r4681

  unfold Seg52.relationRow4682 at r4682

  unfold Seg52.relationRow4683 at r4683

  unfold Seg52.relationRow4684 at r4684

  unfold Seg52.relationRow4685 at r4685

  unfold Seg52.relationRow4686 at r4686

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX16 rho = seg52Out0AccX15 rho + rho 49069 := by
    unfold seg52Out0AccX16 seg52Out0AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 48874 13]

    ring

  have hnexty : seg52Out0AccY16 rho = seg52Out0AccY15 rho + rho 49070 := by
    unfold seg52Out0AccY16 seg52Out0AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 48875 13]

    ring

  have ha0 : (rho 49061 + rho 49062) * (seg52Out0AccX15 rho + seg52Out0AccY15 rho) = rho 49063 := by
    unfold seg52Out0AccX15 seg52Out0AccY15
    linear_combination r4674
  have ha1 : rho 49062 * seg52Out0AccX15 rho = rho 49064 := by
    unfold seg52Out0AccX15
    linear_combination r4675
  have ha2 : rho 49061 * seg52Out0AccY15 rho = rho 49065 := by
    unfold seg52Out0AccY15
    linear_combination r4676
  have ha3 : 3021 * rho 49064 * rho 49065 = rho 49066 := by
    linear_combination r4677
  have ha4 : rho 49067 * (1 + rho 49066) = rho 49064 + rho 49065 := by
    linear_combination r4678
  have ha5 : rho 49068 * (1 - rho 49066) = rho 49063 - rho 49064 - rho 49065 := by
    linear_combination r4679
  have haddx :
      rho 49067 * (1 + 3021 * (rho 49062 * seg52Out0AccX15 rho) * (rho 49061 * seg52Out0AccY15 rho)) =
        rho 49062 * seg52Out0AccX15 rho + rho 49061 * seg52Out0AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49068 * (1 - 3021 * (rho 49062 * seg52Out0AccX15 rho) * (rho 49061 * seg52Out0AccY15 rho)) =
        (-1) * (rho 49062 * seg52Out0AccX15 rho) - rho 49061 * seg52Out0AccY15 rho +
          (seg52Out0AccY15 rho - seg52Out0AccX15 rho * (-1)) * (rho 49061 + rho 49062) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49068 * (1 - rho 49066) = rho 49063 - rho 49064 - rho 49065 := ha5
      _ = (-1) * rho 49064 - rho 49065 + (seg52Out0AccY15 rho - seg52Out0AccX15 rho * (-1)) *
          (rho 49061 + rho 49062) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX16 rho = seg52Out0AccX15 rho - Bool.toZMod bit * (seg52Out0AccX15 rho - rho 49067) := by
    have hd : rho 49069 = Bool.toZMod bit * (rho 49067 - seg52Out0AccX15 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX15
      linear_combination -r4680
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY16 rho = seg52Out0AccY15 rho - Bool.toZMod bit * (seg52Out0AccY15 rho - rho 49068) := by
    have hd : rho 49070 = Bool.toZMod bit * (rho 49068 - seg52Out0AccY15 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY15
      linear_combination -r4681
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49061 * rho 49062 = rho 49071 := by linear_combination r4682
  have hd1 : rho 49061 * rho 49061 = rho 49072 := by linear_combination r4683
  have hd2 : rho 49062 * rho 49062 = rho 49073 := by linear_combination r4684
  have hd3 : rho 49074 * (rho 49062 * rho 49062 + rho 49061 * rho 49061 * (-1)) =
      2 * (rho 49061 * rho 49062) := by
    rw [hd0, hd1, hd2]
    linear_combination r4685
  have hd4 : rho 49075 * (2 - (rho 49062 * rho 49062 + rho 49061 * rho 49061 * (-1))) =
      rho 49062 * rho 49062 - rho 49061 * rho 49061 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4686
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX15 rho, seg52Out0AccY15 rho⟩ ⟨rho 49061, rho 49062⟩
    ⟨rho 49067, rho 49068⟩ ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49074, rho 49075⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4687 rho ∧ Seg52.relationRow4688 rho ∧ Seg52.relationRow4689 rho ∧ Seg52.relationRow4690 rho ∧ Seg52.relationRow4691 rho ∧ Seg52.relationRow4692 rho ∧ Seg52.relationRow4693 rho ∧ Seg52.relationRow4694 rho ∧ Seg52.relationRow4695 rho ∧ Seg52.relationRow4696 rho ∧ Seg52.relationRow4697 rho ∧ Seg52.relationRow4698 rho ∧ Seg52.relationRow4699 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699⟩

theorem seg52Out0_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48762 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49074, rho 49075⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49074, rho 49075⟩
        ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49087, rho 49088⟩ := by
  obtain ⟨r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699⟩ := seg52Out0_rows16 rho h
  unfold Seg52.relationRow4687 at r4687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4687

  unfold Seg52.relationRow4688 at r4688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4688

  unfold Seg52.relationRow4689 at r4689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4689

  unfold Seg52.relationRow4690 at r4690

  unfold Seg52.relationRow4691 at r4691

  unfold Seg52.relationRow4692 at r4692

  unfold Seg52.relationRow4693 at r4693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4693

  unfold Seg52.relationRow4694 at r4694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694

  unfold Seg52.relationRow4695 at r4695

  unfold Seg52.relationRow4696 at r4696

  unfold Seg52.relationRow4697 at r4697

  unfold Seg52.relationRow4698 at r4698

  unfold Seg52.relationRow4699 at r4699

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX17 rho = seg52Out0AccX16 rho + rho 49082 := by
    unfold seg52Out0AccX17 seg52Out0AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 16]

    ring

  have hnexty : seg52Out0AccY17 rho = seg52Out0AccY16 rho + rho 49083 := by
    unfold seg52Out0AccY17 seg52Out0AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 16]

    ring

  have ha0 : (rho 49074 + rho 49075) * (seg52Out0AccX16 rho + seg52Out0AccY16 rho) = rho 49076 := by
    unfold seg52Out0AccX16 seg52Out0AccY16
    linear_combination r4687
  have ha1 : rho 49075 * seg52Out0AccX16 rho = rho 49077 := by
    unfold seg52Out0AccX16
    linear_combination r4688
  have ha2 : rho 49074 * seg52Out0AccY16 rho = rho 49078 := by
    unfold seg52Out0AccY16
    linear_combination r4689
  have ha3 : 3021 * rho 49077 * rho 49078 = rho 49079 := by
    linear_combination r4690
  have ha4 : rho 49080 * (1 + rho 49079) = rho 49077 + rho 49078 := by
    linear_combination r4691
  have ha5 : rho 49081 * (1 - rho 49079) = rho 49076 - rho 49077 - rho 49078 := by
    linear_combination r4692
  have haddx :
      rho 49080 * (1 + 3021 * (rho 49075 * seg52Out0AccX16 rho) * (rho 49074 * seg52Out0AccY16 rho)) =
        rho 49075 * seg52Out0AccX16 rho + rho 49074 * seg52Out0AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49081 * (1 - 3021 * (rho 49075 * seg52Out0AccX16 rho) * (rho 49074 * seg52Out0AccY16 rho)) =
        (-1) * (rho 49075 * seg52Out0AccX16 rho) - rho 49074 * seg52Out0AccY16 rho +
          (seg52Out0AccY16 rho - seg52Out0AccX16 rho * (-1)) * (rho 49074 + rho 49075) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49081 * (1 - rho 49079) = rho 49076 - rho 49077 - rho 49078 := ha5
      _ = (-1) * rho 49077 - rho 49078 + (seg52Out0AccY16 rho - seg52Out0AccX16 rho * (-1)) *
          (rho 49074 + rho 49075) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX17 rho = seg52Out0AccX16 rho - Bool.toZMod bit * (seg52Out0AccX16 rho - rho 49080) := by
    have hd : rho 49082 = Bool.toZMod bit * (rho 49080 - seg52Out0AccX16 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX16
      linear_combination -r4693
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY17 rho = seg52Out0AccY16 rho - Bool.toZMod bit * (seg52Out0AccY16 rho - rho 49081) := by
    have hd : rho 49083 = Bool.toZMod bit * (rho 49081 - seg52Out0AccY16 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY16
      linear_combination -r4694
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49074 * rho 49075 = rho 49084 := by linear_combination r4695
  have hd1 : rho 49074 * rho 49074 = rho 49085 := by linear_combination r4696
  have hd2 : rho 49075 * rho 49075 = rho 49086 := by linear_combination r4697
  have hd3 : rho 49087 * (rho 49075 * rho 49075 + rho 49074 * rho 49074 * (-1)) =
      2 * (rho 49074 * rho 49075) := by
    rw [hd0, hd1, hd2]
    linear_combination r4698
  have hd4 : rho 49088 * (2 - (rho 49075 * rho 49075 + rho 49074 * rho 49074 * (-1))) =
      rho 49075 * rho 49075 - rho 49074 * rho 49074 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4699
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX16 rho, seg52Out0AccY16 rho⟩ ⟨rho 49074, rho 49075⟩
    ⟨rho 49080, rho 49081⟩ ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49087, rho 49088⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4700 rho ∧ Seg52.relationRow4701 rho ∧ Seg52.relationRow4702 rho ∧ Seg52.relationRow4703 rho ∧ Seg52.relationRow4704 rho ∧ Seg52.relationRow4705 rho ∧ Seg52.relationRow4706 rho ∧ Seg52.relationRow4707 rho ∧ Seg52.relationRow4708 rho ∧ Seg52.relationRow4709 rho ∧ Seg52.relationRow4710 rho ∧ Seg52.relationRow4711 rho ∧ Seg52.relationRow4712 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, _, _, _, _, _, _, _⟩

  exact ⟨r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712⟩

theorem seg52Out0_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48763 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49087, rho 49088⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49087, rho 49088⟩
        ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49100, rho 49101⟩ := by
  obtain ⟨r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712⟩ := seg52Out0_rows17 rho h
  unfold Seg52.relationRow4700 at r4700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4700

  unfold Seg52.relationRow4701 at r4701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4701

  unfold Seg52.relationRow4702 at r4702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4702

  unfold Seg52.relationRow4703 at r4703

  unfold Seg52.relationRow4704 at r4704

  unfold Seg52.relationRow4705 at r4705

  unfold Seg52.relationRow4706 at r4706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4706

  unfold Seg52.relationRow4707 at r4707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707

  unfold Seg52.relationRow4708 at r4708

  unfold Seg52.relationRow4709 at r4709

  unfold Seg52.relationRow4710 at r4710

  unfold Seg52.relationRow4711 at r4711

  unfold Seg52.relationRow4712 at r4712

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX18 rho = seg52Out0AccX17 rho + rho 49095 := by
    unfold seg52Out0AccX18 seg52Out0AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 17]

    ring

  have hnexty : seg52Out0AccY18 rho = seg52Out0AccY17 rho + rho 49096 := by
    unfold seg52Out0AccY18 seg52Out0AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 17]

    ring

  have ha0 : (rho 49087 + rho 49088) * (seg52Out0AccX17 rho + seg52Out0AccY17 rho) = rho 49089 := by
    unfold seg52Out0AccX17 seg52Out0AccY17
    linear_combination r4700
  have ha1 : rho 49088 * seg52Out0AccX17 rho = rho 49090 := by
    unfold seg52Out0AccX17
    linear_combination r4701
  have ha2 : rho 49087 * seg52Out0AccY17 rho = rho 49091 := by
    unfold seg52Out0AccY17
    linear_combination r4702
  have ha3 : 3021 * rho 49090 * rho 49091 = rho 49092 := by
    linear_combination r4703
  have ha4 : rho 49093 * (1 + rho 49092) = rho 49090 + rho 49091 := by
    linear_combination r4704
  have ha5 : rho 49094 * (1 - rho 49092) = rho 49089 - rho 49090 - rho 49091 := by
    linear_combination r4705
  have haddx :
      rho 49093 * (1 + 3021 * (rho 49088 * seg52Out0AccX17 rho) * (rho 49087 * seg52Out0AccY17 rho)) =
        rho 49088 * seg52Out0AccX17 rho + rho 49087 * seg52Out0AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49094 * (1 - 3021 * (rho 49088 * seg52Out0AccX17 rho) * (rho 49087 * seg52Out0AccY17 rho)) =
        (-1) * (rho 49088 * seg52Out0AccX17 rho) - rho 49087 * seg52Out0AccY17 rho +
          (seg52Out0AccY17 rho - seg52Out0AccX17 rho * (-1)) * (rho 49087 + rho 49088) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49094 * (1 - rho 49092) = rho 49089 - rho 49090 - rho 49091 := ha5
      _ = (-1) * rho 49090 - rho 49091 + (seg52Out0AccY17 rho - seg52Out0AccX17 rho * (-1)) *
          (rho 49087 + rho 49088) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX18 rho = seg52Out0AccX17 rho - Bool.toZMod bit * (seg52Out0AccX17 rho - rho 49093) := by
    have hd : rho 49095 = Bool.toZMod bit * (rho 49093 - seg52Out0AccX17 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX17
      linear_combination -r4706
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY18 rho = seg52Out0AccY17 rho - Bool.toZMod bit * (seg52Out0AccY17 rho - rho 49094) := by
    have hd : rho 49096 = Bool.toZMod bit * (rho 49094 - seg52Out0AccY17 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY17
      linear_combination -r4707
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49087 * rho 49088 = rho 49097 := by linear_combination r4708
  have hd1 : rho 49087 * rho 49087 = rho 49098 := by linear_combination r4709
  have hd2 : rho 49088 * rho 49088 = rho 49099 := by linear_combination r4710
  have hd3 : rho 49100 * (rho 49088 * rho 49088 + rho 49087 * rho 49087 * (-1)) =
      2 * (rho 49087 * rho 49088) := by
    rw [hd0, hd1, hd2]
    linear_combination r4711
  have hd4 : rho 49101 * (2 - (rho 49088 * rho 49088 + rho 49087 * rho 49087 * (-1))) =
      rho 49088 * rho 49088 - rho 49087 * rho 49087 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4712
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX17 rho, seg52Out0AccY17 rho⟩ ⟨rho 49087, rho 49088⟩
    ⟨rho 49093, rho 49094⟩ ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49100, rho 49101⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4713 rho ∧ Seg52.relationRow4714 rho ∧ Seg52.relationRow4715 rho ∧ Seg52.relationRow4716 rho ∧ Seg52.relationRow4717 rho ∧ Seg52.relationRow4718 rho ∧ Seg52.relationRow4719 rho ∧ Seg52.relationRow4720 rho ∧ Seg52.relationRow4721 rho ∧ Seg52.relationRow4722 rho ∧ Seg52.relationRow4723 rho ∧ Seg52.relationRow4724 rho ∧ Seg52.relationRow4725 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4713, r4714, r4715, r4716, r4717, r4718, r4719, r4720, r4721, r4722, r4723, r4724, r4725⟩

theorem seg52Out0_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48764 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49100, rho 49101⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49100, rho 49101⟩
        ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49113, rho 49114⟩ := by
  obtain ⟨r4713, r4714, r4715, r4716, r4717, r4718, r4719, r4720, r4721, r4722, r4723, r4724, r4725⟩ := seg52Out0_rows18 rho h
  unfold Seg52.relationRow4713 at r4713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713

  unfold Seg52.relationRow4714 at r4714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4714

  unfold Seg52.relationRow4715 at r4715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4715

  unfold Seg52.relationRow4716 at r4716

  unfold Seg52.relationRow4717 at r4717

  unfold Seg52.relationRow4718 at r4718

  unfold Seg52.relationRow4719 at r4719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4719

  unfold Seg52.relationRow4720 at r4720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4720

  unfold Seg52.relationRow4721 at r4721

  unfold Seg52.relationRow4722 at r4722

  unfold Seg52.relationRow4723 at r4723

  unfold Seg52.relationRow4724 at r4724

  unfold Seg52.relationRow4725 at r4725

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX19 rho = seg52Out0AccX18 rho + rho 49108 := by
    unfold seg52Out0AccX19 seg52Out0AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 18]

    ring

  have hnexty : seg52Out0AccY19 rho = seg52Out0AccY18 rho + rho 49109 := by
    unfold seg52Out0AccY19 seg52Out0AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 18]

    ring

  have ha0 : (rho 49100 + rho 49101) * (seg52Out0AccX18 rho + seg52Out0AccY18 rho) = rho 49102 := by
    unfold seg52Out0AccX18 seg52Out0AccY18
    linear_combination r4713
  have ha1 : rho 49101 * seg52Out0AccX18 rho = rho 49103 := by
    unfold seg52Out0AccX18
    linear_combination r4714
  have ha2 : rho 49100 * seg52Out0AccY18 rho = rho 49104 := by
    unfold seg52Out0AccY18
    linear_combination r4715
  have ha3 : 3021 * rho 49103 * rho 49104 = rho 49105 := by
    linear_combination r4716
  have ha4 : rho 49106 * (1 + rho 49105) = rho 49103 + rho 49104 := by
    linear_combination r4717
  have ha5 : rho 49107 * (1 - rho 49105) = rho 49102 - rho 49103 - rho 49104 := by
    linear_combination r4718
  have haddx :
      rho 49106 * (1 + 3021 * (rho 49101 * seg52Out0AccX18 rho) * (rho 49100 * seg52Out0AccY18 rho)) =
        rho 49101 * seg52Out0AccX18 rho + rho 49100 * seg52Out0AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49107 * (1 - 3021 * (rho 49101 * seg52Out0AccX18 rho) * (rho 49100 * seg52Out0AccY18 rho)) =
        (-1) * (rho 49101 * seg52Out0AccX18 rho) - rho 49100 * seg52Out0AccY18 rho +
          (seg52Out0AccY18 rho - seg52Out0AccX18 rho * (-1)) * (rho 49100 + rho 49101) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49107 * (1 - rho 49105) = rho 49102 - rho 49103 - rho 49104 := ha5
      _ = (-1) * rho 49103 - rho 49104 + (seg52Out0AccY18 rho - seg52Out0AccX18 rho * (-1)) *
          (rho 49100 + rho 49101) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX19 rho = seg52Out0AccX18 rho - Bool.toZMod bit * (seg52Out0AccX18 rho - rho 49106) := by
    have hd : rho 49108 = Bool.toZMod bit * (rho 49106 - seg52Out0AccX18 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX18
      linear_combination -r4719
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY19 rho = seg52Out0AccY18 rho - Bool.toZMod bit * (seg52Out0AccY18 rho - rho 49107) := by
    have hd : rho 49109 = Bool.toZMod bit * (rho 49107 - seg52Out0AccY18 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY18
      linear_combination -r4720
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49100 * rho 49101 = rho 49110 := by linear_combination r4721
  have hd1 : rho 49100 * rho 49100 = rho 49111 := by linear_combination r4722
  have hd2 : rho 49101 * rho 49101 = rho 49112 := by linear_combination r4723
  have hd3 : rho 49113 * (rho 49101 * rho 49101 + rho 49100 * rho 49100 * (-1)) =
      2 * (rho 49100 * rho 49101) := by
    rw [hd0, hd1, hd2]
    linear_combination r4724
  have hd4 : rho 49114 * (2 - (rho 49101 * rho 49101 + rho 49100 * rho 49100 * (-1))) =
      rho 49101 * rho 49101 - rho 49100 * rho 49100 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4725
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX18 rho, seg52Out0AccY18 rho⟩ ⟨rho 49100, rho 49101⟩
    ⟨rho 49106, rho 49107⟩ ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49113, rho 49114⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4726 rho ∧ Seg52.relationRow4727 rho ∧ Seg52.relationRow4728 rho ∧ Seg52.relationRow4729 rho ∧ Seg52.relationRow4730 rho ∧ Seg52.relationRow4731 rho ∧ Seg52.relationRow4732 rho ∧ Seg52.relationRow4733 rho ∧ Seg52.relationRow4734 rho ∧ Seg52.relationRow4735 rho ∧ Seg52.relationRow4736 rho ∧ Seg52.relationRow4737 rho ∧ Seg52.relationRow4738 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738⟩

theorem seg52Out0_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48765 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49113, rho 49114⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49113, rho 49114⟩
        ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49126, rho 49127⟩ := by
  obtain ⟨r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738⟩ := seg52Out0_rows19 rho h
  unfold Seg52.relationRow4726 at r4726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726

  unfold Seg52.relationRow4727 at r4727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727

  unfold Seg52.relationRow4728 at r4728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4728

  unfold Seg52.relationRow4729 at r4729

  unfold Seg52.relationRow4730 at r4730

  unfold Seg52.relationRow4731 at r4731

  unfold Seg52.relationRow4732 at r4732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4732

  unfold Seg52.relationRow4733 at r4733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733

  unfold Seg52.relationRow4734 at r4734

  unfold Seg52.relationRow4735 at r4735

  unfold Seg52.relationRow4736 at r4736

  unfold Seg52.relationRow4737 at r4737

  unfold Seg52.relationRow4738 at r4738

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX20 rho = seg52Out0AccX19 rho + rho 49121 := by
    unfold seg52Out0AccX20 seg52Out0AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 19]

    ring

  have hnexty : seg52Out0AccY20 rho = seg52Out0AccY19 rho + rho 49122 := by
    unfold seg52Out0AccY20 seg52Out0AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 19]

    ring

  have ha0 : (rho 49113 + rho 49114) * (seg52Out0AccX19 rho + seg52Out0AccY19 rho) = rho 49115 := by
    unfold seg52Out0AccX19 seg52Out0AccY19
    linear_combination r4726
  have ha1 : rho 49114 * seg52Out0AccX19 rho = rho 49116 := by
    unfold seg52Out0AccX19
    linear_combination r4727
  have ha2 : rho 49113 * seg52Out0AccY19 rho = rho 49117 := by
    unfold seg52Out0AccY19
    linear_combination r4728
  have ha3 : 3021 * rho 49116 * rho 49117 = rho 49118 := by
    linear_combination r4729
  have ha4 : rho 49119 * (1 + rho 49118) = rho 49116 + rho 49117 := by
    linear_combination r4730
  have ha5 : rho 49120 * (1 - rho 49118) = rho 49115 - rho 49116 - rho 49117 := by
    linear_combination r4731
  have haddx :
      rho 49119 * (1 + 3021 * (rho 49114 * seg52Out0AccX19 rho) * (rho 49113 * seg52Out0AccY19 rho)) =
        rho 49114 * seg52Out0AccX19 rho + rho 49113 * seg52Out0AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49120 * (1 - 3021 * (rho 49114 * seg52Out0AccX19 rho) * (rho 49113 * seg52Out0AccY19 rho)) =
        (-1) * (rho 49114 * seg52Out0AccX19 rho) - rho 49113 * seg52Out0AccY19 rho +
          (seg52Out0AccY19 rho - seg52Out0AccX19 rho * (-1)) * (rho 49113 + rho 49114) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49120 * (1 - rho 49118) = rho 49115 - rho 49116 - rho 49117 := ha5
      _ = (-1) * rho 49116 - rho 49117 + (seg52Out0AccY19 rho - seg52Out0AccX19 rho * (-1)) *
          (rho 49113 + rho 49114) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX20 rho = seg52Out0AccX19 rho - Bool.toZMod bit * (seg52Out0AccX19 rho - rho 49119) := by
    have hd : rho 49121 = Bool.toZMod bit * (rho 49119 - seg52Out0AccX19 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX19
      linear_combination -r4732
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY20 rho = seg52Out0AccY19 rho - Bool.toZMod bit * (seg52Out0AccY19 rho - rho 49120) := by
    have hd : rho 49122 = Bool.toZMod bit * (rho 49120 - seg52Out0AccY19 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY19
      linear_combination -r4733
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49113 * rho 49114 = rho 49123 := by linear_combination r4734
  have hd1 : rho 49113 * rho 49113 = rho 49124 := by linear_combination r4735
  have hd2 : rho 49114 * rho 49114 = rho 49125 := by linear_combination r4736
  have hd3 : rho 49126 * (rho 49114 * rho 49114 + rho 49113 * rho 49113 * (-1)) =
      2 * (rho 49113 * rho 49114) := by
    rw [hd0, hd1, hd2]
    linear_combination r4737
  have hd4 : rho 49127 * (2 - (rho 49114 * rho 49114 + rho 49113 * rho 49113 * (-1))) =
      rho 49114 * rho 49114 - rho 49113 * rho 49113 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4738
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX19 rho, seg52Out0AccY19 rho⟩ ⟨rho 49113, rho 49114⟩
    ⟨rho 49119, rho 49120⟩ ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49126, rho 49127⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4739 rho ∧ Seg52.relationRow4740 rho ∧ Seg52.relationRow4741 rho ∧ Seg52.relationRow4742 rho ∧ Seg52.relationRow4743 rho ∧ Seg52.relationRow4744 rho ∧ Seg52.relationRow4745 rho ∧ Seg52.relationRow4746 rho ∧ Seg52.relationRow4747 rho ∧ Seg52.relationRow4748 rho ∧ Seg52.relationRow4749 rho ∧ Seg52.relationRow4750 rho ∧ Seg52.relationRow4751 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751⟩

theorem seg52Out0_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48766 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49126, rho 49127⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49126, rho 49127⟩
        ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49139, rho 49140⟩ := by
  obtain ⟨r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751⟩ := seg52Out0_rows20 rho h
  unfold Seg52.relationRow4739 at r4739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4739

  unfold Seg52.relationRow4740 at r4740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740

  unfold Seg52.relationRow4741 at r4741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4741

  unfold Seg52.relationRow4742 at r4742

  unfold Seg52.relationRow4743 at r4743

  unfold Seg52.relationRow4744 at r4744

  unfold Seg52.relationRow4745 at r4745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4745

  unfold Seg52.relationRow4746 at r4746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4746

  unfold Seg52.relationRow4747 at r4747

  unfold Seg52.relationRow4748 at r4748

  unfold Seg52.relationRow4749 at r4749

  unfold Seg52.relationRow4750 at r4750

  unfold Seg52.relationRow4751 at r4751

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX21 rho = seg52Out0AccX20 rho + rho 49134 := by
    unfold seg52Out0AccX21 seg52Out0AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 20]

    ring

  have hnexty : seg52Out0AccY21 rho = seg52Out0AccY20 rho + rho 49135 := by
    unfold seg52Out0AccY21 seg52Out0AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 20]

    ring

  have ha0 : (rho 49126 + rho 49127) * (seg52Out0AccX20 rho + seg52Out0AccY20 rho) = rho 49128 := by
    unfold seg52Out0AccX20 seg52Out0AccY20
    linear_combination r4739
  have ha1 : rho 49127 * seg52Out0AccX20 rho = rho 49129 := by
    unfold seg52Out0AccX20
    linear_combination r4740
  have ha2 : rho 49126 * seg52Out0AccY20 rho = rho 49130 := by
    unfold seg52Out0AccY20
    linear_combination r4741
  have ha3 : 3021 * rho 49129 * rho 49130 = rho 49131 := by
    linear_combination r4742
  have ha4 : rho 49132 * (1 + rho 49131) = rho 49129 + rho 49130 := by
    linear_combination r4743
  have ha5 : rho 49133 * (1 - rho 49131) = rho 49128 - rho 49129 - rho 49130 := by
    linear_combination r4744
  have haddx :
      rho 49132 * (1 + 3021 * (rho 49127 * seg52Out0AccX20 rho) * (rho 49126 * seg52Out0AccY20 rho)) =
        rho 49127 * seg52Out0AccX20 rho + rho 49126 * seg52Out0AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49133 * (1 - 3021 * (rho 49127 * seg52Out0AccX20 rho) * (rho 49126 * seg52Out0AccY20 rho)) =
        (-1) * (rho 49127 * seg52Out0AccX20 rho) - rho 49126 * seg52Out0AccY20 rho +
          (seg52Out0AccY20 rho - seg52Out0AccX20 rho * (-1)) * (rho 49126 + rho 49127) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49133 * (1 - rho 49131) = rho 49128 - rho 49129 - rho 49130 := ha5
      _ = (-1) * rho 49129 - rho 49130 + (seg52Out0AccY20 rho - seg52Out0AccX20 rho * (-1)) *
          (rho 49126 + rho 49127) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX21 rho = seg52Out0AccX20 rho - Bool.toZMod bit * (seg52Out0AccX20 rho - rho 49132) := by
    have hd : rho 49134 = Bool.toZMod bit * (rho 49132 - seg52Out0AccX20 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX20
      linear_combination -r4745
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY21 rho = seg52Out0AccY20 rho - Bool.toZMod bit * (seg52Out0AccY20 rho - rho 49133) := by
    have hd : rho 49135 = Bool.toZMod bit * (rho 49133 - seg52Out0AccY20 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY20
      linear_combination -r4746
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49126 * rho 49127 = rho 49136 := by linear_combination r4747
  have hd1 : rho 49126 * rho 49126 = rho 49137 := by linear_combination r4748
  have hd2 : rho 49127 * rho 49127 = rho 49138 := by linear_combination r4749
  have hd3 : rho 49139 * (rho 49127 * rho 49127 + rho 49126 * rho 49126 * (-1)) =
      2 * (rho 49126 * rho 49127) := by
    rw [hd0, hd1, hd2]
    linear_combination r4750
  have hd4 : rho 49140 * (2 - (rho 49127 * rho 49127 + rho 49126 * rho 49126 * (-1))) =
      rho 49127 * rho 49127 - rho 49126 * rho 49126 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4751
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX20 rho, seg52Out0AccY20 rho⟩ ⟨rho 49126, rho 49127⟩
    ⟨rho 49132, rho 49133⟩ ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49139, rho 49140⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow4752 rho ∧ Seg52.relationRow4753 rho ∧ Seg52.relationRow4754 rho ∧ Seg52.relationRow4755 rho ∧ Seg52.relationRow4756 rho ∧ Seg52.relationRow4757 rho ∧ Seg52.relationRow4758 rho ∧ Seg52.relationRow4759 rho ∧ Seg52.relationRow4760 rho ∧ Seg52.relationRow4761 rho ∧ Seg52.relationRow4762 rho ∧ Seg52.relationRow4763 rho ∧ Seg52.relationRow4764 rho := by
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

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764⟩

theorem seg52Out0_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48767 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49139, rho 49140⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49139, rho 49140⟩
        ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49152, rho 49153⟩ := by
  obtain ⟨r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764⟩ := seg52Out0_rows21 rho h
  unfold Seg52.relationRow4752 at r4752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4752

  unfold Seg52.relationRow4753 at r4753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4753

  unfold Seg52.relationRow4754 at r4754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4754

  unfold Seg52.relationRow4755 at r4755

  unfold Seg52.relationRow4756 at r4756

  unfold Seg52.relationRow4757 at r4757

  unfold Seg52.relationRow4758 at r4758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4758

  unfold Seg52.relationRow4759 at r4759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4759

  unfold Seg52.relationRow4760 at r4760

  unfold Seg52.relationRow4761 at r4761

  unfold Seg52.relationRow4762 at r4762

  unfold Seg52.relationRow4763 at r4763

  unfold Seg52.relationRow4764 at r4764

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX22 rho = seg52Out0AccX21 rho + rho 49147 := by
    unfold seg52Out0AccX22 seg52Out0AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 21]

    ring

  have hnexty : seg52Out0AccY22 rho = seg52Out0AccY21 rho + rho 49148 := by
    unfold seg52Out0AccY22 seg52Out0AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 21]

    ring

  have ha0 : (rho 49139 + rho 49140) * (seg52Out0AccX21 rho + seg52Out0AccY21 rho) = rho 49141 := by
    unfold seg52Out0AccX21 seg52Out0AccY21
    linear_combination r4752
  have ha1 : rho 49140 * seg52Out0AccX21 rho = rho 49142 := by
    unfold seg52Out0AccX21
    linear_combination r4753
  have ha2 : rho 49139 * seg52Out0AccY21 rho = rho 49143 := by
    unfold seg52Out0AccY21
    linear_combination r4754
  have ha3 : 3021 * rho 49142 * rho 49143 = rho 49144 := by
    linear_combination r4755
  have ha4 : rho 49145 * (1 + rho 49144) = rho 49142 + rho 49143 := by
    linear_combination r4756
  have ha5 : rho 49146 * (1 - rho 49144) = rho 49141 - rho 49142 - rho 49143 := by
    linear_combination r4757
  have haddx :
      rho 49145 * (1 + 3021 * (rho 49140 * seg52Out0AccX21 rho) * (rho 49139 * seg52Out0AccY21 rho)) =
        rho 49140 * seg52Out0AccX21 rho + rho 49139 * seg52Out0AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49146 * (1 - 3021 * (rho 49140 * seg52Out0AccX21 rho) * (rho 49139 * seg52Out0AccY21 rho)) =
        (-1) * (rho 49140 * seg52Out0AccX21 rho) - rho 49139 * seg52Out0AccY21 rho +
          (seg52Out0AccY21 rho - seg52Out0AccX21 rho * (-1)) * (rho 49139 + rho 49140) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49146 * (1 - rho 49144) = rho 49141 - rho 49142 - rho 49143 := ha5
      _ = (-1) * rho 49142 - rho 49143 + (seg52Out0AccY21 rho - seg52Out0AccX21 rho * (-1)) *
          (rho 49139 + rho 49140) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX22 rho = seg52Out0AccX21 rho - Bool.toZMod bit * (seg52Out0AccX21 rho - rho 49145) := by
    have hd : rho 49147 = Bool.toZMod bit * (rho 49145 - seg52Out0AccX21 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX21
      linear_combination -r4758
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY22 rho = seg52Out0AccY21 rho - Bool.toZMod bit * (seg52Out0AccY21 rho - rho 49146) := by
    have hd : rho 49148 = Bool.toZMod bit * (rho 49146 - seg52Out0AccY21 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY21
      linear_combination -r4759
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49139 * rho 49140 = rho 49149 := by linear_combination r4760
  have hd1 : rho 49139 * rho 49139 = rho 49150 := by linear_combination r4761
  have hd2 : rho 49140 * rho 49140 = rho 49151 := by linear_combination r4762
  have hd3 : rho 49152 * (rho 49140 * rho 49140 + rho 49139 * rho 49139 * (-1)) =
      2 * (rho 49139 * rho 49140) := by
    rw [hd0, hd1, hd2]
    linear_combination r4763
  have hd4 : rho 49153 * (2 - (rho 49140 * rho 49140 + rho 49139 * rho 49139 * (-1))) =
      rho 49140 * rho 49140 - rho 49139 * rho 49139 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4764
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX21 rho, seg52Out0AccY21 rho⟩ ⟨rho 49139, rho 49140⟩
    ⟨rho 49145, rho 49146⟩ ⟨seg52Out0AccX22 rho, seg52Out0AccY22 rho⟩ ⟨rho 49152, rho 49153⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg52Out0_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg52Out0_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg52Out0_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg52Out0_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg52Out0_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg52Out0_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg52Out0_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg52Out0_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg52Out0_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg52Out0_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
