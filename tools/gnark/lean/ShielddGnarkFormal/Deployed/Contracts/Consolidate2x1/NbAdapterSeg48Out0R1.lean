import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4622 rho ∧ Seg48.relationRow4623 rho ∧ Seg48.relationRow4624 rho ∧ Seg48.relationRow4625 rho ∧ Seg48.relationRow4626 rho ∧ Seg48.relationRow4627 rho ∧ Seg48.relationRow4628 rho ∧ Seg48.relationRow4629 rho ∧ Seg48.relationRow4630 rho ∧ Seg48.relationRow4631 rho ∧ Seg48.relationRow4632 rho ∧ Seg48.relationRow4633 rho ∧ Seg48.relationRow4634 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, _, _, _, _, _⟩

  exact ⟨r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634⟩

theorem seg48Out0_rung11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37125 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX11 rho, seg48Out0AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37377, rho 37378⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX11 rho, seg48Out0AccY11 rho⟩ ⟨rho 37377, rho 37378⟩
        ⟨seg48Out0AccX12 rho, seg48Out0AccY12 rho⟩ ⟨rho 37390, rho 37391⟩ := by
  obtain ⟨r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634⟩ := seg48Out0_rows11 rho h
  unfold Seg48.relationRow4622 at r4622

  unfold Seg48.relationRow4623 at r4623

  unfold Seg48.relationRow4624 at r4624

  unfold Seg48.relationRow4625 at r4625

  unfold Seg48.relationRow4626 at r4626

  unfold Seg48.relationRow4627 at r4627

  unfold Seg48.relationRow4628 at r4628

  unfold Seg48.relationRow4629 at r4629

  unfold Seg48.relationRow4630 at r4630

  unfold Seg48.relationRow4631 at r4631

  unfold Seg48.relationRow4632 at r4632

  unfold Seg48.relationRow4633 at r4633

  unfold Seg48.relationRow4634 at r4634

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX12 rho = seg48Out0AccX11 rho + rho 37385 := by
    unfold seg48Out0AccX12 seg48Out0AccX11
    ring

  have hnexty : seg48Out0AccY12 rho = seg48Out0AccY11 rho + rho 37386 := by
    unfold seg48Out0AccY12 seg48Out0AccY11
    ring

  have ha0 : (rho 37377 + rho 37378) * (seg48Out0AccX11 rho + seg48Out0AccY11 rho) = rho 37379 := by
    unfold seg48Out0AccX11 seg48Out0AccY11
    linear_combination r4622
  have ha1 : rho 37378 * seg48Out0AccX11 rho = rho 37380 := by
    unfold seg48Out0AccX11
    linear_combination r4623
  have ha2 : rho 37377 * seg48Out0AccY11 rho = rho 37381 := by
    unfold seg48Out0AccY11
    linear_combination r4624
  have ha3 : 3021 * rho 37380 * rho 37381 = rho 37382 := by
    linear_combination r4625
  have ha4 : rho 37383 * (1 + rho 37382) = rho 37380 + rho 37381 := by
    linear_combination r4626
  have ha5 : rho 37384 * (1 - rho 37382) = rho 37379 - rho 37380 - rho 37381 := by
    linear_combination r4627
  have haddx :
      rho 37383 * (1 + 3021 * (rho 37378 * seg48Out0AccX11 rho) * (rho 37377 * seg48Out0AccY11 rho)) =
        rho 37378 * seg48Out0AccX11 rho + rho 37377 * seg48Out0AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37384 * (1 - 3021 * (rho 37378 * seg48Out0AccX11 rho) * (rho 37377 * seg48Out0AccY11 rho)) =
        (-1) * (rho 37378 * seg48Out0AccX11 rho) - rho 37377 * seg48Out0AccY11 rho +
          (seg48Out0AccY11 rho - seg48Out0AccX11 rho * (-1)) * (rho 37377 + rho 37378) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37384 * (1 - rho 37382) = rho 37379 - rho 37380 - rho 37381 := ha5
      _ = (-1) * rho 37380 - rho 37381 + (seg48Out0AccY11 rho - seg48Out0AccX11 rho * (-1)) *
          (rho 37377 + rho 37378) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX12 rho = seg48Out0AccX11 rho - Bool.toZMod bit * (seg48Out0AccX11 rho - rho 37383) := by
    have hd : rho 37385 = Bool.toZMod bit * (rho 37383 - seg48Out0AccX11 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX11
      linear_combination -r4628
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY12 rho = seg48Out0AccY11 rho - Bool.toZMod bit * (seg48Out0AccY11 rho - rho 37384) := by
    have hd : rho 37386 = Bool.toZMod bit * (rho 37384 - seg48Out0AccY11 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY11
      linear_combination -r4629
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37377 * rho 37378 = rho 37387 := by linear_combination r4630
  have hd1 : rho 37377 * rho 37377 = rho 37388 := by linear_combination r4631
  have hd2 : rho 37378 * rho 37378 = rho 37389 := by linear_combination r4632
  have hd3 : rho 37390 * (rho 37378 * rho 37378 + rho 37377 * rho 37377 * (-1)) =
      2 * (rho 37377 * rho 37378) := by
    rw [hd0, hd1, hd2]
    linear_combination r4633
  have hd4 : rho 37391 * (2 - (rho 37378 * rho 37378 + rho 37377 * rho 37377 * (-1))) =
      rho 37378 * rho 37378 - rho 37377 * rho 37377 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4634
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX11 rho, seg48Out0AccY11 rho⟩ ⟨rho 37377, rho 37378⟩
    ⟨rho 37383, rho 37384⟩ ⟨seg48Out0AccX12 rho, seg48Out0AccY12 rho⟩ ⟨rho 37390, rho 37391⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4635 rho ∧ Seg48.relationRow4636 rho ∧ Seg48.relationRow4637 rho ∧ Seg48.relationRow4638 rho ∧ Seg48.relationRow4639 rho ∧ Seg48.relationRow4640 rho ∧ Seg48.relationRow4641 rho ∧ Seg48.relationRow4642 rho ∧ Seg48.relationRow4643 rho ∧ Seg48.relationRow4644 rho ∧ Seg48.relationRow4645 rho ∧ Seg48.relationRow4646 rho ∧ Seg48.relationRow4647 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart57 at p57

  rcases p57 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4635, r4636, r4637, r4638, r4639⟩

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4635, r4636, r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647⟩

theorem seg48Out0_rung12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37126 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX12 rho, seg48Out0AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37390, rho 37391⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX12 rho, seg48Out0AccY12 rho⟩ ⟨rho 37390, rho 37391⟩
        ⟨seg48Out0AccX13 rho, seg48Out0AccY13 rho⟩ ⟨rho 37403, rho 37404⟩ := by
  obtain ⟨r4635, r4636, r4637, r4638, r4639, r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647⟩ := seg48Out0_rows12 rho h
  unfold Seg48.relationRow4635 at r4635

  unfold Seg48.relationRow4636 at r4636

  unfold Seg48.relationRow4637 at r4637

  unfold Seg48.relationRow4638 at r4638

  unfold Seg48.relationRow4639 at r4639

  unfold Seg48.relationRow4640 at r4640

  unfold Seg48.relationRow4641 at r4641

  unfold Seg48.relationRow4642 at r4642

  unfold Seg48.relationRow4643 at r4643

  unfold Seg48.relationRow4644 at r4644

  unfold Seg48.relationRow4645 at r4645

  unfold Seg48.relationRow4646 at r4646

  unfold Seg48.relationRow4647 at r4647

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX13 rho = seg48Out0AccX12 rho + rho 37398 := by
    unfold seg48Out0AccX13 seg48Out0AccX12
    ring

  have hnexty : seg48Out0AccY13 rho = seg48Out0AccY12 rho + rho 37399 := by
    unfold seg48Out0AccY13 seg48Out0AccY12
    ring

  have ha0 : (rho 37390 + rho 37391) * (seg48Out0AccX12 rho + seg48Out0AccY12 rho) = rho 37392 := by
    unfold seg48Out0AccX12 seg48Out0AccY12
    linear_combination r4635
  have ha1 : rho 37391 * seg48Out0AccX12 rho = rho 37393 := by
    unfold seg48Out0AccX12
    linear_combination r4636
  have ha2 : rho 37390 * seg48Out0AccY12 rho = rho 37394 := by
    unfold seg48Out0AccY12
    linear_combination r4637
  have ha3 : 3021 * rho 37393 * rho 37394 = rho 37395 := by
    linear_combination r4638
  have ha4 : rho 37396 * (1 + rho 37395) = rho 37393 + rho 37394 := by
    linear_combination r4639
  have ha5 : rho 37397 * (1 - rho 37395) = rho 37392 - rho 37393 - rho 37394 := by
    linear_combination r4640
  have haddx :
      rho 37396 * (1 + 3021 * (rho 37391 * seg48Out0AccX12 rho) * (rho 37390 * seg48Out0AccY12 rho)) =
        rho 37391 * seg48Out0AccX12 rho + rho 37390 * seg48Out0AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37397 * (1 - 3021 * (rho 37391 * seg48Out0AccX12 rho) * (rho 37390 * seg48Out0AccY12 rho)) =
        (-1) * (rho 37391 * seg48Out0AccX12 rho) - rho 37390 * seg48Out0AccY12 rho +
          (seg48Out0AccY12 rho - seg48Out0AccX12 rho * (-1)) * (rho 37390 + rho 37391) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37397 * (1 - rho 37395) = rho 37392 - rho 37393 - rho 37394 := ha5
      _ = (-1) * rho 37393 - rho 37394 + (seg48Out0AccY12 rho - seg48Out0AccX12 rho * (-1)) *
          (rho 37390 + rho 37391) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX13 rho = seg48Out0AccX12 rho - Bool.toZMod bit * (seg48Out0AccX12 rho - rho 37396) := by
    have hd : rho 37398 = Bool.toZMod bit * (rho 37396 - seg48Out0AccX12 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX12
      linear_combination -r4641
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY13 rho = seg48Out0AccY12 rho - Bool.toZMod bit * (seg48Out0AccY12 rho - rho 37397) := by
    have hd : rho 37399 = Bool.toZMod bit * (rho 37397 - seg48Out0AccY12 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY12
      linear_combination -r4642
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37390 * rho 37391 = rho 37400 := by linear_combination r4643
  have hd1 : rho 37390 * rho 37390 = rho 37401 := by linear_combination r4644
  have hd2 : rho 37391 * rho 37391 = rho 37402 := by linear_combination r4645
  have hd3 : rho 37403 * (rho 37391 * rho 37391 + rho 37390 * rho 37390 * (-1)) =
      2 * (rho 37390 * rho 37391) := by
    rw [hd0, hd1, hd2]
    linear_combination r4646
  have hd4 : rho 37404 * (2 - (rho 37391 * rho 37391 + rho 37390 * rho 37390 * (-1))) =
      rho 37391 * rho 37391 - rho 37390 * rho 37390 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4647
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX12 rho, seg48Out0AccY12 rho⟩ ⟨rho 37390, rho 37391⟩
    ⟨rho 37396, rho 37397⟩ ⟨seg48Out0AccX13 rho, seg48Out0AccY13 rho⟩ ⟨rho 37403, rho 37404⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4648 rho ∧ Seg48.relationRow4649 rho ∧ Seg48.relationRow4650 rho ∧ Seg48.relationRow4651 rho ∧ Seg48.relationRow4652 rho ∧ Seg48.relationRow4653 rho ∧ Seg48.relationRow4654 rho ∧ Seg48.relationRow4655 rho ∧ Seg48.relationRow4656 rho ∧ Seg48.relationRow4657 rho ∧ Seg48.relationRow4658 rho ∧ Seg48.relationRow4659 rho ∧ Seg48.relationRow4660 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660⟩

theorem seg48Out0_rung13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37127 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX13 rho, seg48Out0AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37403, rho 37404⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX13 rho, seg48Out0AccY13 rho⟩ ⟨rho 37403, rho 37404⟩
        ⟨seg48Out0AccX14 rho, seg48Out0AccY14 rho⟩ ⟨rho 37416, rho 37417⟩ := by
  obtain ⟨r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660⟩ := seg48Out0_rows13 rho h
  unfold Seg48.relationRow4648 at r4648

  unfold Seg48.relationRow4649 at r4649

  unfold Seg48.relationRow4650 at r4650

  unfold Seg48.relationRow4651 at r4651

  unfold Seg48.relationRow4652 at r4652

  unfold Seg48.relationRow4653 at r4653

  unfold Seg48.relationRow4654 at r4654

  unfold Seg48.relationRow4655 at r4655

  unfold Seg48.relationRow4656 at r4656

  unfold Seg48.relationRow4657 at r4657

  unfold Seg48.relationRow4658 at r4658

  unfold Seg48.relationRow4659 at r4659

  unfold Seg48.relationRow4660 at r4660

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX14 rho = seg48Out0AccX13 rho + rho 37411 := by
    unfold seg48Out0AccX14 seg48Out0AccX13
    ring

  have hnexty : seg48Out0AccY14 rho = seg48Out0AccY13 rho + rho 37412 := by
    unfold seg48Out0AccY14 seg48Out0AccY13
    ring

  have ha0 : (rho 37403 + rho 37404) * (seg48Out0AccX13 rho + seg48Out0AccY13 rho) = rho 37405 := by
    unfold seg48Out0AccX13 seg48Out0AccY13
    linear_combination r4648
  have ha1 : rho 37404 * seg48Out0AccX13 rho = rho 37406 := by
    unfold seg48Out0AccX13
    linear_combination r4649
  have ha2 : rho 37403 * seg48Out0AccY13 rho = rho 37407 := by
    unfold seg48Out0AccY13
    linear_combination r4650
  have ha3 : 3021 * rho 37406 * rho 37407 = rho 37408 := by
    linear_combination r4651
  have ha4 : rho 37409 * (1 + rho 37408) = rho 37406 + rho 37407 := by
    linear_combination r4652
  have ha5 : rho 37410 * (1 - rho 37408) = rho 37405 - rho 37406 - rho 37407 := by
    linear_combination r4653
  have haddx :
      rho 37409 * (1 + 3021 * (rho 37404 * seg48Out0AccX13 rho) * (rho 37403 * seg48Out0AccY13 rho)) =
        rho 37404 * seg48Out0AccX13 rho + rho 37403 * seg48Out0AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37410 * (1 - 3021 * (rho 37404 * seg48Out0AccX13 rho) * (rho 37403 * seg48Out0AccY13 rho)) =
        (-1) * (rho 37404 * seg48Out0AccX13 rho) - rho 37403 * seg48Out0AccY13 rho +
          (seg48Out0AccY13 rho - seg48Out0AccX13 rho * (-1)) * (rho 37403 + rho 37404) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37410 * (1 - rho 37408) = rho 37405 - rho 37406 - rho 37407 := ha5
      _ = (-1) * rho 37406 - rho 37407 + (seg48Out0AccY13 rho - seg48Out0AccX13 rho * (-1)) *
          (rho 37403 + rho 37404) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX14 rho = seg48Out0AccX13 rho - Bool.toZMod bit * (seg48Out0AccX13 rho - rho 37409) := by
    have hd : rho 37411 = Bool.toZMod bit * (rho 37409 - seg48Out0AccX13 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX13
      linear_combination -r4654
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY14 rho = seg48Out0AccY13 rho - Bool.toZMod bit * (seg48Out0AccY13 rho - rho 37410) := by
    have hd : rho 37412 = Bool.toZMod bit * (rho 37410 - seg48Out0AccY13 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY13
      linear_combination -r4655
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37403 * rho 37404 = rho 37413 := by linear_combination r4656
  have hd1 : rho 37403 * rho 37403 = rho 37414 := by linear_combination r4657
  have hd2 : rho 37404 * rho 37404 = rho 37415 := by linear_combination r4658
  have hd3 : rho 37416 * (rho 37404 * rho 37404 + rho 37403 * rho 37403 * (-1)) =
      2 * (rho 37403 * rho 37404) := by
    rw [hd0, hd1, hd2]
    linear_combination r4659
  have hd4 : rho 37417 * (2 - (rho 37404 * rho 37404 + rho 37403 * rho 37403 * (-1))) =
      rho 37404 * rho 37404 - rho 37403 * rho 37403 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4660
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX13 rho, seg48Out0AccY13 rho⟩ ⟨rho 37403, rho 37404⟩
    ⟨rho 37409, rho 37410⟩ ⟨seg48Out0AccX14 rho, seg48Out0AccY14 rho⟩ ⟨rho 37416, rho 37417⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4661 rho ∧ Seg48.relationRow4662 rho ∧ Seg48.relationRow4663 rho ∧ Seg48.relationRow4664 rho ∧ Seg48.relationRow4665 rho ∧ Seg48.relationRow4666 rho ∧ Seg48.relationRow4667 rho ∧ Seg48.relationRow4668 rho ∧ Seg48.relationRow4669 rho ∧ Seg48.relationRow4670 rho ∧ Seg48.relationRow4671 rho ∧ Seg48.relationRow4672 rho ∧ Seg48.relationRow4673 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673⟩

theorem seg48Out0_rung14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37128 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX14 rho, seg48Out0AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37416, rho 37417⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX14 rho, seg48Out0AccY14 rho⟩ ⟨rho 37416, rho 37417⟩
        ⟨seg48Out0AccX15 rho, seg48Out0AccY15 rho⟩ ⟨rho 37429, rho 37430⟩ := by
  obtain ⟨r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673⟩ := seg48Out0_rows14 rho h
  unfold Seg48.relationRow4661 at r4661

  unfold Seg48.relationRow4662 at r4662

  unfold Seg48.relationRow4663 at r4663

  unfold Seg48.relationRow4664 at r4664

  unfold Seg48.relationRow4665 at r4665

  unfold Seg48.relationRow4666 at r4666

  unfold Seg48.relationRow4667 at r4667

  unfold Seg48.relationRow4668 at r4668

  unfold Seg48.relationRow4669 at r4669

  unfold Seg48.relationRow4670 at r4670

  unfold Seg48.relationRow4671 at r4671

  unfold Seg48.relationRow4672 at r4672

  unfold Seg48.relationRow4673 at r4673

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX15 rho = seg48Out0AccX14 rho + rho 37424 := by
    unfold seg48Out0AccX15 seg48Out0AccX14
    ring

  have hnexty : seg48Out0AccY15 rho = seg48Out0AccY14 rho + rho 37425 := by
    unfold seg48Out0AccY15 seg48Out0AccY14
    ring

  have ha0 : (rho 37416 + rho 37417) * (seg48Out0AccX14 rho + seg48Out0AccY14 rho) = rho 37418 := by
    unfold seg48Out0AccX14 seg48Out0AccY14
    linear_combination r4661
  have ha1 : rho 37417 * seg48Out0AccX14 rho = rho 37419 := by
    unfold seg48Out0AccX14
    linear_combination r4662
  have ha2 : rho 37416 * seg48Out0AccY14 rho = rho 37420 := by
    unfold seg48Out0AccY14
    linear_combination r4663
  have ha3 : 3021 * rho 37419 * rho 37420 = rho 37421 := by
    linear_combination r4664
  have ha4 : rho 37422 * (1 + rho 37421) = rho 37419 + rho 37420 := by
    linear_combination r4665
  have ha5 : rho 37423 * (1 - rho 37421) = rho 37418 - rho 37419 - rho 37420 := by
    linear_combination r4666
  have haddx :
      rho 37422 * (1 + 3021 * (rho 37417 * seg48Out0AccX14 rho) * (rho 37416 * seg48Out0AccY14 rho)) =
        rho 37417 * seg48Out0AccX14 rho + rho 37416 * seg48Out0AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37423 * (1 - 3021 * (rho 37417 * seg48Out0AccX14 rho) * (rho 37416 * seg48Out0AccY14 rho)) =
        (-1) * (rho 37417 * seg48Out0AccX14 rho) - rho 37416 * seg48Out0AccY14 rho +
          (seg48Out0AccY14 rho - seg48Out0AccX14 rho * (-1)) * (rho 37416 + rho 37417) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37423 * (1 - rho 37421) = rho 37418 - rho 37419 - rho 37420 := ha5
      _ = (-1) * rho 37419 - rho 37420 + (seg48Out0AccY14 rho - seg48Out0AccX14 rho * (-1)) *
          (rho 37416 + rho 37417) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX15 rho = seg48Out0AccX14 rho - Bool.toZMod bit * (seg48Out0AccX14 rho - rho 37422) := by
    have hd : rho 37424 = Bool.toZMod bit * (rho 37422 - seg48Out0AccX14 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX14
      linear_combination -r4667
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY15 rho = seg48Out0AccY14 rho - Bool.toZMod bit * (seg48Out0AccY14 rho - rho 37423) := by
    have hd : rho 37425 = Bool.toZMod bit * (rho 37423 - seg48Out0AccY14 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY14
      linear_combination -r4668
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37416 * rho 37417 = rho 37426 := by linear_combination r4669
  have hd1 : rho 37416 * rho 37416 = rho 37427 := by linear_combination r4670
  have hd2 : rho 37417 * rho 37417 = rho 37428 := by linear_combination r4671
  have hd3 : rho 37429 * (rho 37417 * rho 37417 + rho 37416 * rho 37416 * (-1)) =
      2 * (rho 37416 * rho 37417) := by
    rw [hd0, hd1, hd2]
    linear_combination r4672
  have hd4 : rho 37430 * (2 - (rho 37417 * rho 37417 + rho 37416 * rho 37416 * (-1))) =
      rho 37417 * rho 37417 - rho 37416 * rho 37416 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4673
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX14 rho, seg48Out0AccY14 rho⟩ ⟨rho 37416, rho 37417⟩
    ⟨rho 37422, rho 37423⟩ ⟨seg48Out0AccX15 rho, seg48Out0AccY15 rho⟩ ⟨rho 37429, rho 37430⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4674 rho ∧ Seg48.relationRow4675 rho ∧ Seg48.relationRow4676 rho ∧ Seg48.relationRow4677 rho ∧ Seg48.relationRow4678 rho ∧ Seg48.relationRow4679 rho ∧ Seg48.relationRow4680 rho ∧ Seg48.relationRow4681 rho ∧ Seg48.relationRow4682 rho ∧ Seg48.relationRow4683 rho ∧ Seg48.relationRow4684 rho ∧ Seg48.relationRow4685 rho ∧ Seg48.relationRow4686 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686⟩

theorem seg48Out0_rung15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37129 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX15 rho, seg48Out0AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37429, rho 37430⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX15 rho, seg48Out0AccY15 rho⟩ ⟨rho 37429, rho 37430⟩
        ⟨seg48Out0AccX16 rho, seg48Out0AccY16 rho⟩ ⟨rho 37442, rho 37443⟩ := by
  obtain ⟨r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686⟩ := seg48Out0_rows15 rho h
  unfold Seg48.relationRow4674 at r4674

  unfold Seg48.relationRow4675 at r4675

  unfold Seg48.relationRow4676 at r4676

  unfold Seg48.relationRow4677 at r4677

  unfold Seg48.relationRow4678 at r4678

  unfold Seg48.relationRow4679 at r4679

  unfold Seg48.relationRow4680 at r4680

  unfold Seg48.relationRow4681 at r4681

  unfold Seg48.relationRow4682 at r4682

  unfold Seg48.relationRow4683 at r4683

  unfold Seg48.relationRow4684 at r4684

  unfold Seg48.relationRow4685 at r4685

  unfold Seg48.relationRow4686 at r4686

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX16 rho = seg48Out0AccX15 rho + rho 37437 := by
    unfold seg48Out0AccX16 seg48Out0AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 37242 13]

    ring

  have hnexty : seg48Out0AccY16 rho = seg48Out0AccY15 rho + rho 37438 := by
    unfold seg48Out0AccY16 seg48Out0AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 37243 13]

    ring

  have ha0 : (rho 37429 + rho 37430) * (seg48Out0AccX15 rho + seg48Out0AccY15 rho) = rho 37431 := by
    unfold seg48Out0AccX15 seg48Out0AccY15
    linear_combination r4674
  have ha1 : rho 37430 * seg48Out0AccX15 rho = rho 37432 := by
    unfold seg48Out0AccX15
    linear_combination r4675
  have ha2 : rho 37429 * seg48Out0AccY15 rho = rho 37433 := by
    unfold seg48Out0AccY15
    linear_combination r4676
  have ha3 : 3021 * rho 37432 * rho 37433 = rho 37434 := by
    linear_combination r4677
  have ha4 : rho 37435 * (1 + rho 37434) = rho 37432 + rho 37433 := by
    linear_combination r4678
  have ha5 : rho 37436 * (1 - rho 37434) = rho 37431 - rho 37432 - rho 37433 := by
    linear_combination r4679
  have haddx :
      rho 37435 * (1 + 3021 * (rho 37430 * seg48Out0AccX15 rho) * (rho 37429 * seg48Out0AccY15 rho)) =
        rho 37430 * seg48Out0AccX15 rho + rho 37429 * seg48Out0AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37436 * (1 - 3021 * (rho 37430 * seg48Out0AccX15 rho) * (rho 37429 * seg48Out0AccY15 rho)) =
        (-1) * (rho 37430 * seg48Out0AccX15 rho) - rho 37429 * seg48Out0AccY15 rho +
          (seg48Out0AccY15 rho - seg48Out0AccX15 rho * (-1)) * (rho 37429 + rho 37430) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37436 * (1 - rho 37434) = rho 37431 - rho 37432 - rho 37433 := ha5
      _ = (-1) * rho 37432 - rho 37433 + (seg48Out0AccY15 rho - seg48Out0AccX15 rho * (-1)) *
          (rho 37429 + rho 37430) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX16 rho = seg48Out0AccX15 rho - Bool.toZMod bit * (seg48Out0AccX15 rho - rho 37435) := by
    have hd : rho 37437 = Bool.toZMod bit * (rho 37435 - seg48Out0AccX15 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX15
      linear_combination -r4680
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY16 rho = seg48Out0AccY15 rho - Bool.toZMod bit * (seg48Out0AccY15 rho - rho 37436) := by
    have hd : rho 37438 = Bool.toZMod bit * (rho 37436 - seg48Out0AccY15 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY15
      linear_combination -r4681
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37429 * rho 37430 = rho 37439 := by linear_combination r4682
  have hd1 : rho 37429 * rho 37429 = rho 37440 := by linear_combination r4683
  have hd2 : rho 37430 * rho 37430 = rho 37441 := by linear_combination r4684
  have hd3 : rho 37442 * (rho 37430 * rho 37430 + rho 37429 * rho 37429 * (-1)) =
      2 * (rho 37429 * rho 37430) := by
    rw [hd0, hd1, hd2]
    linear_combination r4685
  have hd4 : rho 37443 * (2 - (rho 37430 * rho 37430 + rho 37429 * rho 37429 * (-1))) =
      rho 37430 * rho 37430 - rho 37429 * rho 37429 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4686
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX15 rho, seg48Out0AccY15 rho⟩ ⟨rho 37429, rho 37430⟩
    ⟨rho 37435, rho 37436⟩ ⟨seg48Out0AccX16 rho, seg48Out0AccY16 rho⟩ ⟨rho 37442, rho 37443⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4687 rho ∧ Seg48.relationRow4688 rho ∧ Seg48.relationRow4689 rho ∧ Seg48.relationRow4690 rho ∧ Seg48.relationRow4691 rho ∧ Seg48.relationRow4692 rho ∧ Seg48.relationRow4693 rho ∧ Seg48.relationRow4694 rho ∧ Seg48.relationRow4695 rho ∧ Seg48.relationRow4696 rho ∧ Seg48.relationRow4697 rho ∧ Seg48.relationRow4698 rho ∧ Seg48.relationRow4699 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699⟩

theorem seg48Out0_rung16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37130 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX16 rho, seg48Out0AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37442, rho 37443⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX16 rho, seg48Out0AccY16 rho⟩ ⟨rho 37442, rho 37443⟩
        ⟨seg48Out0AccX17 rho, seg48Out0AccY17 rho⟩ ⟨rho 37455, rho 37456⟩ := by
  obtain ⟨r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699⟩ := seg48Out0_rows16 rho h
  unfold Seg48.relationRow4687 at r4687

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4687

  unfold Seg48.relationRow4688 at r4688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4688

  unfold Seg48.relationRow4689 at r4689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4689

  unfold Seg48.relationRow4690 at r4690

  unfold Seg48.relationRow4691 at r4691

  unfold Seg48.relationRow4692 at r4692

  unfold Seg48.relationRow4693 at r4693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4693

  unfold Seg48.relationRow4694 at r4694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4694

  unfold Seg48.relationRow4695 at r4695

  unfold Seg48.relationRow4696 at r4696

  unfold Seg48.relationRow4697 at r4697

  unfold Seg48.relationRow4698 at r4698

  unfold Seg48.relationRow4699 at r4699

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX17 rho = seg48Out0AccX16 rho + rho 37450 := by
    unfold seg48Out0AccX17 seg48Out0AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 16]

    ring

  have hnexty : seg48Out0AccY17 rho = seg48Out0AccY16 rho + rho 37451 := by
    unfold seg48Out0AccY17 seg48Out0AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 16]

    ring

  have ha0 : (rho 37442 + rho 37443) * (seg48Out0AccX16 rho + seg48Out0AccY16 rho) = rho 37444 := by
    unfold seg48Out0AccX16 seg48Out0AccY16
    linear_combination r4687
  have ha1 : rho 37443 * seg48Out0AccX16 rho = rho 37445 := by
    unfold seg48Out0AccX16
    linear_combination r4688
  have ha2 : rho 37442 * seg48Out0AccY16 rho = rho 37446 := by
    unfold seg48Out0AccY16
    linear_combination r4689
  have ha3 : 3021 * rho 37445 * rho 37446 = rho 37447 := by
    linear_combination r4690
  have ha4 : rho 37448 * (1 + rho 37447) = rho 37445 + rho 37446 := by
    linear_combination r4691
  have ha5 : rho 37449 * (1 - rho 37447) = rho 37444 - rho 37445 - rho 37446 := by
    linear_combination r4692
  have haddx :
      rho 37448 * (1 + 3021 * (rho 37443 * seg48Out0AccX16 rho) * (rho 37442 * seg48Out0AccY16 rho)) =
        rho 37443 * seg48Out0AccX16 rho + rho 37442 * seg48Out0AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37449 * (1 - 3021 * (rho 37443 * seg48Out0AccX16 rho) * (rho 37442 * seg48Out0AccY16 rho)) =
        (-1) * (rho 37443 * seg48Out0AccX16 rho) - rho 37442 * seg48Out0AccY16 rho +
          (seg48Out0AccY16 rho - seg48Out0AccX16 rho * (-1)) * (rho 37442 + rho 37443) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37449 * (1 - rho 37447) = rho 37444 - rho 37445 - rho 37446 := ha5
      _ = (-1) * rho 37445 - rho 37446 + (seg48Out0AccY16 rho - seg48Out0AccX16 rho * (-1)) *
          (rho 37442 + rho 37443) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX17 rho = seg48Out0AccX16 rho - Bool.toZMod bit * (seg48Out0AccX16 rho - rho 37448) := by
    have hd : rho 37450 = Bool.toZMod bit * (rho 37448 - seg48Out0AccX16 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX16
      linear_combination -r4693
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY17 rho = seg48Out0AccY16 rho - Bool.toZMod bit * (seg48Out0AccY16 rho - rho 37449) := by
    have hd : rho 37451 = Bool.toZMod bit * (rho 37449 - seg48Out0AccY16 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY16
      linear_combination -r4694
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37442 * rho 37443 = rho 37452 := by linear_combination r4695
  have hd1 : rho 37442 * rho 37442 = rho 37453 := by linear_combination r4696
  have hd2 : rho 37443 * rho 37443 = rho 37454 := by linear_combination r4697
  have hd3 : rho 37455 * (rho 37443 * rho 37443 + rho 37442 * rho 37442 * (-1)) =
      2 * (rho 37442 * rho 37443) := by
    rw [hd0, hd1, hd2]
    linear_combination r4698
  have hd4 : rho 37456 * (2 - (rho 37443 * rho 37443 + rho 37442 * rho 37442 * (-1))) =
      rho 37443 * rho 37443 - rho 37442 * rho 37442 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4699
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX16 rho, seg48Out0AccY16 rho⟩ ⟨rho 37442, rho 37443⟩
    ⟨rho 37448, rho 37449⟩ ⟨seg48Out0AccX17 rho, seg48Out0AccY17 rho⟩ ⟨rho 37455, rho 37456⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4700 rho ∧ Seg48.relationRow4701 rho ∧ Seg48.relationRow4702 rho ∧ Seg48.relationRow4703 rho ∧ Seg48.relationRow4704 rho ∧ Seg48.relationRow4705 rho ∧ Seg48.relationRow4706 rho ∧ Seg48.relationRow4707 rho ∧ Seg48.relationRow4708 rho ∧ Seg48.relationRow4709 rho ∧ Seg48.relationRow4710 rho ∧ Seg48.relationRow4711 rho ∧ Seg48.relationRow4712 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, _, _, _, _, _, _, _⟩

  exact ⟨r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712⟩

theorem seg48Out0_rung17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37131 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX17 rho, seg48Out0AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37455, rho 37456⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX17 rho, seg48Out0AccY17 rho⟩ ⟨rho 37455, rho 37456⟩
        ⟨seg48Out0AccX18 rho, seg48Out0AccY18 rho⟩ ⟨rho 37468, rho 37469⟩ := by
  obtain ⟨r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712⟩ := seg48Out0_rows17 rho h
  unfold Seg48.relationRow4700 at r4700

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4700

  unfold Seg48.relationRow4701 at r4701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4701

  unfold Seg48.relationRow4702 at r4702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4702

  unfold Seg48.relationRow4703 at r4703

  unfold Seg48.relationRow4704 at r4704

  unfold Seg48.relationRow4705 at r4705

  unfold Seg48.relationRow4706 at r4706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4706

  unfold Seg48.relationRow4707 at r4707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4707

  unfold Seg48.relationRow4708 at r4708

  unfold Seg48.relationRow4709 at r4709

  unfold Seg48.relationRow4710 at r4710

  unfold Seg48.relationRow4711 at r4711

  unfold Seg48.relationRow4712 at r4712

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX18 rho = seg48Out0AccX17 rho + rho 37463 := by
    unfold seg48Out0AccX18 seg48Out0AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 17]

    ring

  have hnexty : seg48Out0AccY18 rho = seg48Out0AccY17 rho + rho 37464 := by
    unfold seg48Out0AccY18 seg48Out0AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 17]

    ring

  have ha0 : (rho 37455 + rho 37456) * (seg48Out0AccX17 rho + seg48Out0AccY17 rho) = rho 37457 := by
    unfold seg48Out0AccX17 seg48Out0AccY17
    linear_combination r4700
  have ha1 : rho 37456 * seg48Out0AccX17 rho = rho 37458 := by
    unfold seg48Out0AccX17
    linear_combination r4701
  have ha2 : rho 37455 * seg48Out0AccY17 rho = rho 37459 := by
    unfold seg48Out0AccY17
    linear_combination r4702
  have ha3 : 3021 * rho 37458 * rho 37459 = rho 37460 := by
    linear_combination r4703
  have ha4 : rho 37461 * (1 + rho 37460) = rho 37458 + rho 37459 := by
    linear_combination r4704
  have ha5 : rho 37462 * (1 - rho 37460) = rho 37457 - rho 37458 - rho 37459 := by
    linear_combination r4705
  have haddx :
      rho 37461 * (1 + 3021 * (rho 37456 * seg48Out0AccX17 rho) * (rho 37455 * seg48Out0AccY17 rho)) =
        rho 37456 * seg48Out0AccX17 rho + rho 37455 * seg48Out0AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37462 * (1 - 3021 * (rho 37456 * seg48Out0AccX17 rho) * (rho 37455 * seg48Out0AccY17 rho)) =
        (-1) * (rho 37456 * seg48Out0AccX17 rho) - rho 37455 * seg48Out0AccY17 rho +
          (seg48Out0AccY17 rho - seg48Out0AccX17 rho * (-1)) * (rho 37455 + rho 37456) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37462 * (1 - rho 37460) = rho 37457 - rho 37458 - rho 37459 := ha5
      _ = (-1) * rho 37458 - rho 37459 + (seg48Out0AccY17 rho - seg48Out0AccX17 rho * (-1)) *
          (rho 37455 + rho 37456) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX18 rho = seg48Out0AccX17 rho - Bool.toZMod bit * (seg48Out0AccX17 rho - rho 37461) := by
    have hd : rho 37463 = Bool.toZMod bit * (rho 37461 - seg48Out0AccX17 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX17
      linear_combination -r4706
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY18 rho = seg48Out0AccY17 rho - Bool.toZMod bit * (seg48Out0AccY17 rho - rho 37462) := by
    have hd : rho 37464 = Bool.toZMod bit * (rho 37462 - seg48Out0AccY17 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY17
      linear_combination -r4707
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37455 * rho 37456 = rho 37465 := by linear_combination r4708
  have hd1 : rho 37455 * rho 37455 = rho 37466 := by linear_combination r4709
  have hd2 : rho 37456 * rho 37456 = rho 37467 := by linear_combination r4710
  have hd3 : rho 37468 * (rho 37456 * rho 37456 + rho 37455 * rho 37455 * (-1)) =
      2 * (rho 37455 * rho 37456) := by
    rw [hd0, hd1, hd2]
    linear_combination r4711
  have hd4 : rho 37469 * (2 - (rho 37456 * rho 37456 + rho 37455 * rho 37455 * (-1))) =
      rho 37456 * rho 37456 - rho 37455 * rho 37455 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4712
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX17 rho, seg48Out0AccY17 rho⟩ ⟨rho 37455, rho 37456⟩
    ⟨rho 37461, rho 37462⟩ ⟨seg48Out0AccX18 rho, seg48Out0AccY18 rho⟩ ⟨rho 37468, rho 37469⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4713 rho ∧ Seg48.relationRow4714 rho ∧ Seg48.relationRow4715 rho ∧ Seg48.relationRow4716 rho ∧ Seg48.relationRow4717 rho ∧ Seg48.relationRow4718 rho ∧ Seg48.relationRow4719 rho ∧ Seg48.relationRow4720 rho ∧ Seg48.relationRow4721 rho ∧ Seg48.relationRow4722 rho ∧ Seg48.relationRow4723 rho ∧ Seg48.relationRow4724 rho ∧ Seg48.relationRow4725 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart58 at p58

  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4713, r4714, r4715, r4716, r4717, r4718, r4719, r4720, r4721, r4722, r4723, r4724, r4725⟩

theorem seg48Out0_rung18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37132 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX18 rho, seg48Out0AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37468, rho 37469⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX18 rho, seg48Out0AccY18 rho⟩ ⟨rho 37468, rho 37469⟩
        ⟨seg48Out0AccX19 rho, seg48Out0AccY19 rho⟩ ⟨rho 37481, rho 37482⟩ := by
  obtain ⟨r4713, r4714, r4715, r4716, r4717, r4718, r4719, r4720, r4721, r4722, r4723, r4724, r4725⟩ := seg48Out0_rows18 rho h
  unfold Seg48.relationRow4713 at r4713

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4713

  unfold Seg48.relationRow4714 at r4714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4714

  unfold Seg48.relationRow4715 at r4715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4715

  unfold Seg48.relationRow4716 at r4716

  unfold Seg48.relationRow4717 at r4717

  unfold Seg48.relationRow4718 at r4718

  unfold Seg48.relationRow4719 at r4719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4719

  unfold Seg48.relationRow4720 at r4720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4720

  unfold Seg48.relationRow4721 at r4721

  unfold Seg48.relationRow4722 at r4722

  unfold Seg48.relationRow4723 at r4723

  unfold Seg48.relationRow4724 at r4724

  unfold Seg48.relationRow4725 at r4725

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX19 rho = seg48Out0AccX18 rho + rho 37476 := by
    unfold seg48Out0AccX19 seg48Out0AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 18]

    ring

  have hnexty : seg48Out0AccY19 rho = seg48Out0AccY18 rho + rho 37477 := by
    unfold seg48Out0AccY19 seg48Out0AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 18]

    ring

  have ha0 : (rho 37468 + rho 37469) * (seg48Out0AccX18 rho + seg48Out0AccY18 rho) = rho 37470 := by
    unfold seg48Out0AccX18 seg48Out0AccY18
    linear_combination r4713
  have ha1 : rho 37469 * seg48Out0AccX18 rho = rho 37471 := by
    unfold seg48Out0AccX18
    linear_combination r4714
  have ha2 : rho 37468 * seg48Out0AccY18 rho = rho 37472 := by
    unfold seg48Out0AccY18
    linear_combination r4715
  have ha3 : 3021 * rho 37471 * rho 37472 = rho 37473 := by
    linear_combination r4716
  have ha4 : rho 37474 * (1 + rho 37473) = rho 37471 + rho 37472 := by
    linear_combination r4717
  have ha5 : rho 37475 * (1 - rho 37473) = rho 37470 - rho 37471 - rho 37472 := by
    linear_combination r4718
  have haddx :
      rho 37474 * (1 + 3021 * (rho 37469 * seg48Out0AccX18 rho) * (rho 37468 * seg48Out0AccY18 rho)) =
        rho 37469 * seg48Out0AccX18 rho + rho 37468 * seg48Out0AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37475 * (1 - 3021 * (rho 37469 * seg48Out0AccX18 rho) * (rho 37468 * seg48Out0AccY18 rho)) =
        (-1) * (rho 37469 * seg48Out0AccX18 rho) - rho 37468 * seg48Out0AccY18 rho +
          (seg48Out0AccY18 rho - seg48Out0AccX18 rho * (-1)) * (rho 37468 + rho 37469) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37475 * (1 - rho 37473) = rho 37470 - rho 37471 - rho 37472 := ha5
      _ = (-1) * rho 37471 - rho 37472 + (seg48Out0AccY18 rho - seg48Out0AccX18 rho * (-1)) *
          (rho 37468 + rho 37469) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX19 rho = seg48Out0AccX18 rho - Bool.toZMod bit * (seg48Out0AccX18 rho - rho 37474) := by
    have hd : rho 37476 = Bool.toZMod bit * (rho 37474 - seg48Out0AccX18 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX18
      linear_combination -r4719
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY19 rho = seg48Out0AccY18 rho - Bool.toZMod bit * (seg48Out0AccY18 rho - rho 37475) := by
    have hd : rho 37477 = Bool.toZMod bit * (rho 37475 - seg48Out0AccY18 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY18
      linear_combination -r4720
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37468 * rho 37469 = rho 37478 := by linear_combination r4721
  have hd1 : rho 37468 * rho 37468 = rho 37479 := by linear_combination r4722
  have hd2 : rho 37469 * rho 37469 = rho 37480 := by linear_combination r4723
  have hd3 : rho 37481 * (rho 37469 * rho 37469 + rho 37468 * rho 37468 * (-1)) =
      2 * (rho 37468 * rho 37469) := by
    rw [hd0, hd1, hd2]
    linear_combination r4724
  have hd4 : rho 37482 * (2 - (rho 37469 * rho 37469 + rho 37468 * rho 37468 * (-1))) =
      rho 37469 * rho 37469 - rho 37468 * rho 37468 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4725
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX18 rho, seg48Out0AccY18 rho⟩ ⟨rho 37468, rho 37469⟩
    ⟨rho 37474, rho 37475⟩ ⟨seg48Out0AccX19 rho, seg48Out0AccY19 rho⟩ ⟨rho 37481, rho 37482⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4726 rho ∧ Seg48.relationRow4727 rho ∧ Seg48.relationRow4728 rho ∧ Seg48.relationRow4729 rho ∧ Seg48.relationRow4730 rho ∧ Seg48.relationRow4731 rho ∧ Seg48.relationRow4732 rho ∧ Seg48.relationRow4733 rho ∧ Seg48.relationRow4734 rho ∧ Seg48.relationRow4735 rho ∧ Seg48.relationRow4736 rho ∧ Seg48.relationRow4737 rho ∧ Seg48.relationRow4738 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738⟩

theorem seg48Out0_rung19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37133 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX19 rho, seg48Out0AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37481, rho 37482⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX19 rho, seg48Out0AccY19 rho⟩ ⟨rho 37481, rho 37482⟩
        ⟨seg48Out0AccX20 rho, seg48Out0AccY20 rho⟩ ⟨rho 37494, rho 37495⟩ := by
  obtain ⟨r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738⟩ := seg48Out0_rows19 rho h
  unfold Seg48.relationRow4726 at r4726

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4726

  unfold Seg48.relationRow4727 at r4727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4727

  unfold Seg48.relationRow4728 at r4728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4728

  unfold Seg48.relationRow4729 at r4729

  unfold Seg48.relationRow4730 at r4730

  unfold Seg48.relationRow4731 at r4731

  unfold Seg48.relationRow4732 at r4732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4732

  unfold Seg48.relationRow4733 at r4733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4733

  unfold Seg48.relationRow4734 at r4734

  unfold Seg48.relationRow4735 at r4735

  unfold Seg48.relationRow4736 at r4736

  unfold Seg48.relationRow4737 at r4737

  unfold Seg48.relationRow4738 at r4738

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX20 rho = seg48Out0AccX19 rho + rho 37489 := by
    unfold seg48Out0AccX20 seg48Out0AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 19]

    ring

  have hnexty : seg48Out0AccY20 rho = seg48Out0AccY19 rho + rho 37490 := by
    unfold seg48Out0AccY20 seg48Out0AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 19]

    ring

  have ha0 : (rho 37481 + rho 37482) * (seg48Out0AccX19 rho + seg48Out0AccY19 rho) = rho 37483 := by
    unfold seg48Out0AccX19 seg48Out0AccY19
    linear_combination r4726
  have ha1 : rho 37482 * seg48Out0AccX19 rho = rho 37484 := by
    unfold seg48Out0AccX19
    linear_combination r4727
  have ha2 : rho 37481 * seg48Out0AccY19 rho = rho 37485 := by
    unfold seg48Out0AccY19
    linear_combination r4728
  have ha3 : 3021 * rho 37484 * rho 37485 = rho 37486 := by
    linear_combination r4729
  have ha4 : rho 37487 * (1 + rho 37486) = rho 37484 + rho 37485 := by
    linear_combination r4730
  have ha5 : rho 37488 * (1 - rho 37486) = rho 37483 - rho 37484 - rho 37485 := by
    linear_combination r4731
  have haddx :
      rho 37487 * (1 + 3021 * (rho 37482 * seg48Out0AccX19 rho) * (rho 37481 * seg48Out0AccY19 rho)) =
        rho 37482 * seg48Out0AccX19 rho + rho 37481 * seg48Out0AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37488 * (1 - 3021 * (rho 37482 * seg48Out0AccX19 rho) * (rho 37481 * seg48Out0AccY19 rho)) =
        (-1) * (rho 37482 * seg48Out0AccX19 rho) - rho 37481 * seg48Out0AccY19 rho +
          (seg48Out0AccY19 rho - seg48Out0AccX19 rho * (-1)) * (rho 37481 + rho 37482) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37488 * (1 - rho 37486) = rho 37483 - rho 37484 - rho 37485 := ha5
      _ = (-1) * rho 37484 - rho 37485 + (seg48Out0AccY19 rho - seg48Out0AccX19 rho * (-1)) *
          (rho 37481 + rho 37482) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX20 rho = seg48Out0AccX19 rho - Bool.toZMod bit * (seg48Out0AccX19 rho - rho 37487) := by
    have hd : rho 37489 = Bool.toZMod bit * (rho 37487 - seg48Out0AccX19 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX19
      linear_combination -r4732
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY20 rho = seg48Out0AccY19 rho - Bool.toZMod bit * (seg48Out0AccY19 rho - rho 37488) := by
    have hd : rho 37490 = Bool.toZMod bit * (rho 37488 - seg48Out0AccY19 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY19
      linear_combination -r4733
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37481 * rho 37482 = rho 37491 := by linear_combination r4734
  have hd1 : rho 37481 * rho 37481 = rho 37492 := by linear_combination r4735
  have hd2 : rho 37482 * rho 37482 = rho 37493 := by linear_combination r4736
  have hd3 : rho 37494 * (rho 37482 * rho 37482 + rho 37481 * rho 37481 * (-1)) =
      2 * (rho 37481 * rho 37482) := by
    rw [hd0, hd1, hd2]
    linear_combination r4737
  have hd4 : rho 37495 * (2 - (rho 37482 * rho 37482 + rho 37481 * rho 37481 * (-1))) =
      rho 37482 * rho 37482 - rho 37481 * rho 37481 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4738
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX19 rho, seg48Out0AccY19 rho⟩ ⟨rho 37481, rho 37482⟩
    ⟨rho 37487, rho 37488⟩ ⟨seg48Out0AccX20 rho, seg48Out0AccY20 rho⟩ ⟨rho 37494, rho 37495⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4739 rho ∧ Seg48.relationRow4740 rho ∧ Seg48.relationRow4741 rho ∧ Seg48.relationRow4742 rho ∧ Seg48.relationRow4743 rho ∧ Seg48.relationRow4744 rho ∧ Seg48.relationRow4745 rho ∧ Seg48.relationRow4746 rho ∧ Seg48.relationRow4747 rho ∧ Seg48.relationRow4748 rho ∧ Seg48.relationRow4749 rho ∧ Seg48.relationRow4750 rho ∧ Seg48.relationRow4751 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751⟩

theorem seg48Out0_rung20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37134 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX20 rho, seg48Out0AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37494, rho 37495⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX20 rho, seg48Out0AccY20 rho⟩ ⟨rho 37494, rho 37495⟩
        ⟨seg48Out0AccX21 rho, seg48Out0AccY21 rho⟩ ⟨rho 37507, rho 37508⟩ := by
  obtain ⟨r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751⟩ := seg48Out0_rows20 rho h
  unfold Seg48.relationRow4739 at r4739

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4739

  unfold Seg48.relationRow4740 at r4740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4740

  unfold Seg48.relationRow4741 at r4741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4741

  unfold Seg48.relationRow4742 at r4742

  unfold Seg48.relationRow4743 at r4743

  unfold Seg48.relationRow4744 at r4744

  unfold Seg48.relationRow4745 at r4745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4745

  unfold Seg48.relationRow4746 at r4746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4746

  unfold Seg48.relationRow4747 at r4747

  unfold Seg48.relationRow4748 at r4748

  unfold Seg48.relationRow4749 at r4749

  unfold Seg48.relationRow4750 at r4750

  unfold Seg48.relationRow4751 at r4751

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX21 rho = seg48Out0AccX20 rho + rho 37502 := by
    unfold seg48Out0AccX21 seg48Out0AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 20]

    ring

  have hnexty : seg48Out0AccY21 rho = seg48Out0AccY20 rho + rho 37503 := by
    unfold seg48Out0AccY21 seg48Out0AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 20]

    ring

  have ha0 : (rho 37494 + rho 37495) * (seg48Out0AccX20 rho + seg48Out0AccY20 rho) = rho 37496 := by
    unfold seg48Out0AccX20 seg48Out0AccY20
    linear_combination r4739
  have ha1 : rho 37495 * seg48Out0AccX20 rho = rho 37497 := by
    unfold seg48Out0AccX20
    linear_combination r4740
  have ha2 : rho 37494 * seg48Out0AccY20 rho = rho 37498 := by
    unfold seg48Out0AccY20
    linear_combination r4741
  have ha3 : 3021 * rho 37497 * rho 37498 = rho 37499 := by
    linear_combination r4742
  have ha4 : rho 37500 * (1 + rho 37499) = rho 37497 + rho 37498 := by
    linear_combination r4743
  have ha5 : rho 37501 * (1 - rho 37499) = rho 37496 - rho 37497 - rho 37498 := by
    linear_combination r4744
  have haddx :
      rho 37500 * (1 + 3021 * (rho 37495 * seg48Out0AccX20 rho) * (rho 37494 * seg48Out0AccY20 rho)) =
        rho 37495 * seg48Out0AccX20 rho + rho 37494 * seg48Out0AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37501 * (1 - 3021 * (rho 37495 * seg48Out0AccX20 rho) * (rho 37494 * seg48Out0AccY20 rho)) =
        (-1) * (rho 37495 * seg48Out0AccX20 rho) - rho 37494 * seg48Out0AccY20 rho +
          (seg48Out0AccY20 rho - seg48Out0AccX20 rho * (-1)) * (rho 37494 + rho 37495) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37501 * (1 - rho 37499) = rho 37496 - rho 37497 - rho 37498 := ha5
      _ = (-1) * rho 37497 - rho 37498 + (seg48Out0AccY20 rho - seg48Out0AccX20 rho * (-1)) *
          (rho 37494 + rho 37495) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX21 rho = seg48Out0AccX20 rho - Bool.toZMod bit * (seg48Out0AccX20 rho - rho 37500) := by
    have hd : rho 37502 = Bool.toZMod bit * (rho 37500 - seg48Out0AccX20 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX20
      linear_combination -r4745
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY21 rho = seg48Out0AccY20 rho - Bool.toZMod bit * (seg48Out0AccY20 rho - rho 37501) := by
    have hd : rho 37503 = Bool.toZMod bit * (rho 37501 - seg48Out0AccY20 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY20
      linear_combination -r4746
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37494 * rho 37495 = rho 37504 := by linear_combination r4747
  have hd1 : rho 37494 * rho 37494 = rho 37505 := by linear_combination r4748
  have hd2 : rho 37495 * rho 37495 = rho 37506 := by linear_combination r4749
  have hd3 : rho 37507 * (rho 37495 * rho 37495 + rho 37494 * rho 37494 * (-1)) =
      2 * (rho 37494 * rho 37495) := by
    rw [hd0, hd1, hd2]
    linear_combination r4750
  have hd4 : rho 37508 * (2 - (rho 37495 * rho 37495 + rho 37494 * rho 37494 * (-1))) =
      rho 37495 * rho 37495 - rho 37494 * rho 37494 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4751
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX20 rho, seg48Out0AccY20 rho⟩ ⟨rho 37494, rho 37495⟩
    ⟨rho 37500, rho 37501⟩ ⟨seg48Out0AccX21 rho, seg48Out0AccY21 rho⟩ ⟨rho 37507, rho 37508⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow4752 rho ∧ Seg48.relationRow4753 rho ∧ Seg48.relationRow4754 rho ∧ Seg48.relationRow4755 rho ∧ Seg48.relationRow4756 rho ∧ Seg48.relationRow4757 rho ∧ Seg48.relationRow4758 rho ∧ Seg48.relationRow4759 rho ∧ Seg48.relationRow4760 rho ∧ Seg48.relationRow4761 rho ∧ Seg48.relationRow4762 rho ∧ Seg48.relationRow4763 rho ∧ Seg48.relationRow4764 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart59 at p59

  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764⟩

theorem seg48Out0_rung21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37135 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX21 rho, seg48Out0AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 37507, rho 37508⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX21 rho, seg48Out0AccY21 rho⟩ ⟨rho 37507, rho 37508⟩
        ⟨seg48Out0AccX22 rho, seg48Out0AccY22 rho⟩ ⟨rho 37520, rho 37521⟩ := by
  obtain ⟨r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764⟩ := seg48Out0_rows21 rho h
  unfold Seg48.relationRow4752 at r4752

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4752

  unfold Seg48.relationRow4753 at r4753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4753

  unfold Seg48.relationRow4754 at r4754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4754

  unfold Seg48.relationRow4755 at r4755

  unfold Seg48.relationRow4756 at r4756

  unfold Seg48.relationRow4757 at r4757

  unfold Seg48.relationRow4758 at r4758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4758

  unfold Seg48.relationRow4759 at r4759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r4759

  unfold Seg48.relationRow4760 at r4760

  unfold Seg48.relationRow4761 at r4761

  unfold Seg48.relationRow4762 at r4762

  unfold Seg48.relationRow4763 at r4763

  unfold Seg48.relationRow4764 at r4764

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX22 rho = seg48Out0AccX21 rho + rho 37515 := by
    unfold seg48Out0AccX22 seg48Out0AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 21]

    ring

  have hnexty : seg48Out0AccY22 rho = seg48Out0AccY21 rho + rho 37516 := by
    unfold seg48Out0AccY22 seg48Out0AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 21]

    ring

  have ha0 : (rho 37507 + rho 37508) * (seg48Out0AccX21 rho + seg48Out0AccY21 rho) = rho 37509 := by
    unfold seg48Out0AccX21 seg48Out0AccY21
    linear_combination r4752
  have ha1 : rho 37508 * seg48Out0AccX21 rho = rho 37510 := by
    unfold seg48Out0AccX21
    linear_combination r4753
  have ha2 : rho 37507 * seg48Out0AccY21 rho = rho 37511 := by
    unfold seg48Out0AccY21
    linear_combination r4754
  have ha3 : 3021 * rho 37510 * rho 37511 = rho 37512 := by
    linear_combination r4755
  have ha4 : rho 37513 * (1 + rho 37512) = rho 37510 + rho 37511 := by
    linear_combination r4756
  have ha5 : rho 37514 * (1 - rho 37512) = rho 37509 - rho 37510 - rho 37511 := by
    linear_combination r4757
  have haddx :
      rho 37513 * (1 + 3021 * (rho 37508 * seg48Out0AccX21 rho) * (rho 37507 * seg48Out0AccY21 rho)) =
        rho 37508 * seg48Out0AccX21 rho + rho 37507 * seg48Out0AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 37514 * (1 - 3021 * (rho 37508 * seg48Out0AccX21 rho) * (rho 37507 * seg48Out0AccY21 rho)) =
        (-1) * (rho 37508 * seg48Out0AccX21 rho) - rho 37507 * seg48Out0AccY21 rho +
          (seg48Out0AccY21 rho - seg48Out0AccX21 rho * (-1)) * (rho 37507 + rho 37508) := by
    rw [ha1, ha2, ha3]
    calc
      rho 37514 * (1 - rho 37512) = rho 37509 - rho 37510 - rho 37511 := ha5
      _ = (-1) * rho 37510 - rho 37511 + (seg48Out0AccY21 rho - seg48Out0AccX21 rho * (-1)) *
          (rho 37507 + rho 37508) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX22 rho = seg48Out0AccX21 rho - Bool.toZMod bit * (seg48Out0AccX21 rho - rho 37513) := by
    have hd : rho 37515 = Bool.toZMod bit * (rho 37513 - seg48Out0AccX21 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX21
      linear_combination -r4758
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY22 rho = seg48Out0AccY21 rho - Bool.toZMod bit * (seg48Out0AccY21 rho - rho 37514) := by
    have hd : rho 37516 = Bool.toZMod bit * (rho 37514 - seg48Out0AccY21 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY21
      linear_combination -r4759
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 37507 * rho 37508 = rho 37517 := by linear_combination r4760
  have hd1 : rho 37507 * rho 37507 = rho 37518 := by linear_combination r4761
  have hd2 : rho 37508 * rho 37508 = rho 37519 := by linear_combination r4762
  have hd3 : rho 37520 * (rho 37508 * rho 37508 + rho 37507 * rho 37507 * (-1)) =
      2 * (rho 37507 * rho 37508) := by
    rw [hd0, hd1, hd2]
    linear_combination r4763
  have hd4 : rho 37521 * (2 - (rho 37508 * rho 37508 + rho 37507 * rho 37507 * (-1))) =
      rho 37508 * rho 37508 - rho 37507 * rho 37507 * (-1) := by
    rw [hd1, hd2]
    linear_combination r4764
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX21 rho, seg48Out0AccY21 rho⟩ ⟨rho 37507, rho 37508⟩
    ⟨rho 37513, rho 37514⟩ ⟨seg48Out0AccX22 rho, seg48Out0AccY22 rho⟩ ⟨rho 37520, rho 37521⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c1 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg48Out0_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg48Out0_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg48Out0_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg48Out0_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg48Out0_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg48Out0_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg48Out0_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg48Out0_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg48Out0_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg48Out0_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
