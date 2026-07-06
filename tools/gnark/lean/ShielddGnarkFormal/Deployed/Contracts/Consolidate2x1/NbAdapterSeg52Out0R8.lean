import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5623 rho ∧ Seg52.relationRow5624 rho ∧ Seg52.relationRow5625 rho ∧ Seg52.relationRow5626 rho ∧ Seg52.relationRow5627 rho ∧ Seg52.relationRow5628 rho ∧ Seg52.relationRow5629 rho ∧ Seg52.relationRow5630 rho ∧ Seg52.relationRow5631 rho ∧ Seg52.relationRow5632 rho ∧ Seg52.relationRow5633 rho ∧ Seg52.relationRow5634 rho ∧ Seg52.relationRow5635 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p70, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635⟩

theorem seg52Out0_rung88 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48834 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50010, rho 50011⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50010, rho 50011⟩
        ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50023, rho 50024⟩ := by
  obtain ⟨r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635⟩ := seg52Out0_rows88 rho h
  unfold Seg52.relationRow5623 at r5623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623

  unfold Seg52.relationRow5624 at r5624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5624

  unfold Seg52.relationRow5625 at r5625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5625

  unfold Seg52.relationRow5626 at r5626

  unfold Seg52.relationRow5627 at r5627

  unfold Seg52.relationRow5628 at r5628

  unfold Seg52.relationRow5629 at r5629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629

  unfold Seg52.relationRow5630 at r5630

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5630

  unfold Seg52.relationRow5631 at r5631

  unfold Seg52.relationRow5632 at r5632

  unfold Seg52.relationRow5633 at r5633

  unfold Seg52.relationRow5634 at r5634

  unfold Seg52.relationRow5635 at r5635

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX89 rho = seg52Out0AccX88 rho + rho 50018 := by
    unfold seg52Out0AccX89 seg52Out0AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 88]

    ring

  have hnexty : seg52Out0AccY89 rho = seg52Out0AccY88 rho + rho 50019 := by
    unfold seg52Out0AccY89 seg52Out0AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 88]

    ring

  have ha0 : (rho 50010 + rho 50011) * (seg52Out0AccX88 rho + seg52Out0AccY88 rho) = rho 50012 := by
    unfold seg52Out0AccX88 seg52Out0AccY88
    linear_combination r5623
  have ha1 : rho 50011 * seg52Out0AccX88 rho = rho 50013 := by
    unfold seg52Out0AccX88
    linear_combination r5624
  have ha2 : rho 50010 * seg52Out0AccY88 rho = rho 50014 := by
    unfold seg52Out0AccY88
    linear_combination r5625
  have ha3 : 3021 * rho 50013 * rho 50014 = rho 50015 := by
    linear_combination r5626
  have ha4 : rho 50016 * (1 + rho 50015) = rho 50013 + rho 50014 := by
    linear_combination r5627
  have ha5 : rho 50017 * (1 - rho 50015) = rho 50012 - rho 50013 - rho 50014 := by
    linear_combination r5628
  have haddx :
      rho 50016 * (1 + 3021 * (rho 50011 * seg52Out0AccX88 rho) * (rho 50010 * seg52Out0AccY88 rho)) =
        rho 50011 * seg52Out0AccX88 rho + rho 50010 * seg52Out0AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50017 * (1 - 3021 * (rho 50011 * seg52Out0AccX88 rho) * (rho 50010 * seg52Out0AccY88 rho)) =
        (-1) * (rho 50011 * seg52Out0AccX88 rho) - rho 50010 * seg52Out0AccY88 rho +
          (seg52Out0AccY88 rho - seg52Out0AccX88 rho * (-1)) * (rho 50010 + rho 50011) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50017 * (1 - rho 50015) = rho 50012 - rho 50013 - rho 50014 := ha5
      _ = (-1) * rho 50013 - rho 50014 + (seg52Out0AccY88 rho - seg52Out0AccX88 rho * (-1)) *
          (rho 50010 + rho 50011) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX89 rho = seg52Out0AccX88 rho - Bool.toZMod bit * (seg52Out0AccX88 rho - rho 50016) := by
    have hd : rho 50018 = Bool.toZMod bit * (rho 50016 - seg52Out0AccX88 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX88
      linear_combination -r5629
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY89 rho = seg52Out0AccY88 rho - Bool.toZMod bit * (seg52Out0AccY88 rho - rho 50017) := by
    have hd : rho 50019 = Bool.toZMod bit * (rho 50017 - seg52Out0AccY88 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY88
      linear_combination -r5630
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50010 * rho 50011 = rho 50020 := by linear_combination r5631
  have hd1 : rho 50010 * rho 50010 = rho 50021 := by linear_combination r5632
  have hd2 : rho 50011 * rho 50011 = rho 50022 := by linear_combination r5633
  have hd3 : rho 50023 * (rho 50011 * rho 50011 + rho 50010 * rho 50010 * (-1)) =
      2 * (rho 50010 * rho 50011) := by
    rw [hd0, hd1, hd2]
    linear_combination r5634
  have hd4 : rho 50024 * (2 - (rho 50011 * rho 50011 + rho 50010 * rho 50010 * (-1))) =
      rho 50011 * rho 50011 - rho 50010 * rho 50010 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5635
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50010, rho 50011⟩
    ⟨rho 50016, rho 50017⟩ ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50023, rho 50024⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5636 rho ∧ Seg52.relationRow5637 rho ∧ Seg52.relationRow5638 rho ∧ Seg52.relationRow5639 rho ∧ Seg52.relationRow5640 rho ∧ Seg52.relationRow5641 rho ∧ Seg52.relationRow5642 rho ∧ Seg52.relationRow5643 rho ∧ Seg52.relationRow5644 rho ∧ Seg52.relationRow5645 rho ∧ Seg52.relationRow5646 rho ∧ Seg52.relationRow5647 rho ∧ Seg52.relationRow5648 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p70, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648⟩

theorem seg52Out0_rung89 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48835 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50023, rho 50024⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50023, rho 50024⟩
        ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50036, rho 50037⟩ := by
  obtain ⟨r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648⟩ := seg52Out0_rows89 rho h
  unfold Seg52.relationRow5636 at r5636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636

  unfold Seg52.relationRow5637 at r5637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637

  unfold Seg52.relationRow5638 at r5638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5638

  unfold Seg52.relationRow5639 at r5639

  unfold Seg52.relationRow5640 at r5640

  unfold Seg52.relationRow5641 at r5641

  unfold Seg52.relationRow5642 at r5642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5642

  unfold Seg52.relationRow5643 at r5643

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643

  unfold Seg52.relationRow5644 at r5644

  unfold Seg52.relationRow5645 at r5645

  unfold Seg52.relationRow5646 at r5646

  unfold Seg52.relationRow5647 at r5647

  unfold Seg52.relationRow5648 at r5648

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX90 rho = seg52Out0AccX89 rho + rho 50031 := by
    unfold seg52Out0AccX90 seg52Out0AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 89]

    ring

  have hnexty : seg52Out0AccY90 rho = seg52Out0AccY89 rho + rho 50032 := by
    unfold seg52Out0AccY90 seg52Out0AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 89]

    ring

  have ha0 : (rho 50023 + rho 50024) * (seg52Out0AccX89 rho + seg52Out0AccY89 rho) = rho 50025 := by
    unfold seg52Out0AccX89 seg52Out0AccY89
    linear_combination r5636
  have ha1 : rho 50024 * seg52Out0AccX89 rho = rho 50026 := by
    unfold seg52Out0AccX89
    linear_combination r5637
  have ha2 : rho 50023 * seg52Out0AccY89 rho = rho 50027 := by
    unfold seg52Out0AccY89
    linear_combination r5638
  have ha3 : 3021 * rho 50026 * rho 50027 = rho 50028 := by
    linear_combination r5639
  have ha4 : rho 50029 * (1 + rho 50028) = rho 50026 + rho 50027 := by
    linear_combination r5640
  have ha5 : rho 50030 * (1 - rho 50028) = rho 50025 - rho 50026 - rho 50027 := by
    linear_combination r5641
  have haddx :
      rho 50029 * (1 + 3021 * (rho 50024 * seg52Out0AccX89 rho) * (rho 50023 * seg52Out0AccY89 rho)) =
        rho 50024 * seg52Out0AccX89 rho + rho 50023 * seg52Out0AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50030 * (1 - 3021 * (rho 50024 * seg52Out0AccX89 rho) * (rho 50023 * seg52Out0AccY89 rho)) =
        (-1) * (rho 50024 * seg52Out0AccX89 rho) - rho 50023 * seg52Out0AccY89 rho +
          (seg52Out0AccY89 rho - seg52Out0AccX89 rho * (-1)) * (rho 50023 + rho 50024) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50030 * (1 - rho 50028) = rho 50025 - rho 50026 - rho 50027 := ha5
      _ = (-1) * rho 50026 - rho 50027 + (seg52Out0AccY89 rho - seg52Out0AccX89 rho * (-1)) *
          (rho 50023 + rho 50024) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX90 rho = seg52Out0AccX89 rho - Bool.toZMod bit * (seg52Out0AccX89 rho - rho 50029) := by
    have hd : rho 50031 = Bool.toZMod bit * (rho 50029 - seg52Out0AccX89 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX89
      linear_combination -r5642
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY90 rho = seg52Out0AccY89 rho - Bool.toZMod bit * (seg52Out0AccY89 rho - rho 50030) := by
    have hd : rho 50032 = Bool.toZMod bit * (rho 50030 - seg52Out0AccY89 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY89
      linear_combination -r5643
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50023 * rho 50024 = rho 50033 := by linear_combination r5644
  have hd1 : rho 50023 * rho 50023 = rho 50034 := by linear_combination r5645
  have hd2 : rho 50024 * rho 50024 = rho 50035 := by linear_combination r5646
  have hd3 : rho 50036 * (rho 50024 * rho 50024 + rho 50023 * rho 50023 * (-1)) =
      2 * (rho 50023 * rho 50024) := by
    rw [hd0, hd1, hd2]
    linear_combination r5647
  have hd4 : rho 50037 * (2 - (rho 50024 * rho 50024 + rho 50023 * rho 50023 * (-1))) =
      rho 50024 * rho 50024 - rho 50023 * rho 50023 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5648
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX89 rho, seg52Out0AccY89 rho⟩ ⟨rho 50023, rho 50024⟩
    ⟨rho 50029, rho 50030⟩ ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50036, rho 50037⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5649 rho ∧ Seg52.relationRow5650 rho ∧ Seg52.relationRow5651 rho ∧ Seg52.relationRow5652 rho ∧ Seg52.relationRow5653 rho ∧ Seg52.relationRow5654 rho ∧ Seg52.relationRow5655 rho ∧ Seg52.relationRow5656 rho ∧ Seg52.relationRow5657 rho ∧ Seg52.relationRow5658 rho ∧ Seg52.relationRow5659 rho ∧ Seg52.relationRow5660 rho ∧ Seg52.relationRow5661 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p70, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661⟩

theorem seg52Out0_rung90 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48836 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50036, rho 50037⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50036, rho 50037⟩
        ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50049, rho 50050⟩ := by
  obtain ⟨r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661⟩ := seg52Out0_rows90 rho h
  unfold Seg52.relationRow5649 at r5649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5649

  unfold Seg52.relationRow5650 at r5650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650

  unfold Seg52.relationRow5651 at r5651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651

  unfold Seg52.relationRow5652 at r5652

  unfold Seg52.relationRow5653 at r5653

  unfold Seg52.relationRow5654 at r5654

  unfold Seg52.relationRow5655 at r5655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5655

  unfold Seg52.relationRow5656 at r5656

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5656

  unfold Seg52.relationRow5657 at r5657

  unfold Seg52.relationRow5658 at r5658

  unfold Seg52.relationRow5659 at r5659

  unfold Seg52.relationRow5660 at r5660

  unfold Seg52.relationRow5661 at r5661

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX91 rho = seg52Out0AccX90 rho + rho 50044 := by
    unfold seg52Out0AccX91 seg52Out0AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 90]

    ring

  have hnexty : seg52Out0AccY91 rho = seg52Out0AccY90 rho + rho 50045 := by
    unfold seg52Out0AccY91 seg52Out0AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 90]

    ring

  have ha0 : (rho 50036 + rho 50037) * (seg52Out0AccX90 rho + seg52Out0AccY90 rho) = rho 50038 := by
    unfold seg52Out0AccX90 seg52Out0AccY90
    linear_combination r5649
  have ha1 : rho 50037 * seg52Out0AccX90 rho = rho 50039 := by
    unfold seg52Out0AccX90
    linear_combination r5650
  have ha2 : rho 50036 * seg52Out0AccY90 rho = rho 50040 := by
    unfold seg52Out0AccY90
    linear_combination r5651
  have ha3 : 3021 * rho 50039 * rho 50040 = rho 50041 := by
    linear_combination r5652
  have ha4 : rho 50042 * (1 + rho 50041) = rho 50039 + rho 50040 := by
    linear_combination r5653
  have ha5 : rho 50043 * (1 - rho 50041) = rho 50038 - rho 50039 - rho 50040 := by
    linear_combination r5654
  have haddx :
      rho 50042 * (1 + 3021 * (rho 50037 * seg52Out0AccX90 rho) * (rho 50036 * seg52Out0AccY90 rho)) =
        rho 50037 * seg52Out0AccX90 rho + rho 50036 * seg52Out0AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50043 * (1 - 3021 * (rho 50037 * seg52Out0AccX90 rho) * (rho 50036 * seg52Out0AccY90 rho)) =
        (-1) * (rho 50037 * seg52Out0AccX90 rho) - rho 50036 * seg52Out0AccY90 rho +
          (seg52Out0AccY90 rho - seg52Out0AccX90 rho * (-1)) * (rho 50036 + rho 50037) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50043 * (1 - rho 50041) = rho 50038 - rho 50039 - rho 50040 := ha5
      _ = (-1) * rho 50039 - rho 50040 + (seg52Out0AccY90 rho - seg52Out0AccX90 rho * (-1)) *
          (rho 50036 + rho 50037) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX91 rho = seg52Out0AccX90 rho - Bool.toZMod bit * (seg52Out0AccX90 rho - rho 50042) := by
    have hd : rho 50044 = Bool.toZMod bit * (rho 50042 - seg52Out0AccX90 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX90
      linear_combination -r5655
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY91 rho = seg52Out0AccY90 rho - Bool.toZMod bit * (seg52Out0AccY90 rho - rho 50043) := by
    have hd : rho 50045 = Bool.toZMod bit * (rho 50043 - seg52Out0AccY90 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY90
      linear_combination -r5656
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50036 * rho 50037 = rho 50046 := by linear_combination r5657
  have hd1 : rho 50036 * rho 50036 = rho 50047 := by linear_combination r5658
  have hd2 : rho 50037 * rho 50037 = rho 50048 := by linear_combination r5659
  have hd3 : rho 50049 * (rho 50037 * rho 50037 + rho 50036 * rho 50036 * (-1)) =
      2 * (rho 50036 * rho 50037) := by
    rw [hd0, hd1, hd2]
    linear_combination r5660
  have hd4 : rho 50050 * (2 - (rho 50037 * rho 50037 + rho 50036 * rho 50036 * (-1))) =
      rho 50037 * rho 50037 - rho 50036 * rho 50036 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5661
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX90 rho, seg52Out0AccY90 rho⟩ ⟨rho 50036, rho 50037⟩
    ⟨rho 50042, rho 50043⟩ ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50049, rho 50050⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5662 rho ∧ Seg52.relationRow5663 rho ∧ Seg52.relationRow5664 rho ∧ Seg52.relationRow5665 rho ∧ Seg52.relationRow5666 rho ∧ Seg52.relationRow5667 rho ∧ Seg52.relationRow5668 rho ∧ Seg52.relationRow5669 rho ∧ Seg52.relationRow5670 rho ∧ Seg52.relationRow5671 rho ∧ Seg52.relationRow5672 rho ∧ Seg52.relationRow5673 rho ∧ Seg52.relationRow5674 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p70, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, _, _, _, _, _⟩

  exact ⟨r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674⟩

theorem seg52Out0_rung91 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48837 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50049, rho 50050⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50049, rho 50050⟩
        ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50062, rho 50063⟩ := by
  obtain ⟨r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674⟩ := seg52Out0_rows91 rho h
  unfold Seg52.relationRow5662 at r5662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5662

  unfold Seg52.relationRow5663 at r5663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5663

  unfold Seg52.relationRow5664 at r5664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664

  unfold Seg52.relationRow5665 at r5665

  unfold Seg52.relationRow5666 at r5666

  unfold Seg52.relationRow5667 at r5667

  unfold Seg52.relationRow5668 at r5668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5668

  unfold Seg52.relationRow5669 at r5669

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5669

  unfold Seg52.relationRow5670 at r5670

  unfold Seg52.relationRow5671 at r5671

  unfold Seg52.relationRow5672 at r5672

  unfold Seg52.relationRow5673 at r5673

  unfold Seg52.relationRow5674 at r5674

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX92 rho = seg52Out0AccX91 rho + rho 50057 := by
    unfold seg52Out0AccX92 seg52Out0AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 91]

    ring

  have hnexty : seg52Out0AccY92 rho = seg52Out0AccY91 rho + rho 50058 := by
    unfold seg52Out0AccY92 seg52Out0AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 91]

    ring

  have ha0 : (rho 50049 + rho 50050) * (seg52Out0AccX91 rho + seg52Out0AccY91 rho) = rho 50051 := by
    unfold seg52Out0AccX91 seg52Out0AccY91
    linear_combination r5662
  have ha1 : rho 50050 * seg52Out0AccX91 rho = rho 50052 := by
    unfold seg52Out0AccX91
    linear_combination r5663
  have ha2 : rho 50049 * seg52Out0AccY91 rho = rho 50053 := by
    unfold seg52Out0AccY91
    linear_combination r5664
  have ha3 : 3021 * rho 50052 * rho 50053 = rho 50054 := by
    linear_combination r5665
  have ha4 : rho 50055 * (1 + rho 50054) = rho 50052 + rho 50053 := by
    linear_combination r5666
  have ha5 : rho 50056 * (1 - rho 50054) = rho 50051 - rho 50052 - rho 50053 := by
    linear_combination r5667
  have haddx :
      rho 50055 * (1 + 3021 * (rho 50050 * seg52Out0AccX91 rho) * (rho 50049 * seg52Out0AccY91 rho)) =
        rho 50050 * seg52Out0AccX91 rho + rho 50049 * seg52Out0AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50056 * (1 - 3021 * (rho 50050 * seg52Out0AccX91 rho) * (rho 50049 * seg52Out0AccY91 rho)) =
        (-1) * (rho 50050 * seg52Out0AccX91 rho) - rho 50049 * seg52Out0AccY91 rho +
          (seg52Out0AccY91 rho - seg52Out0AccX91 rho * (-1)) * (rho 50049 + rho 50050) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50056 * (1 - rho 50054) = rho 50051 - rho 50052 - rho 50053 := ha5
      _ = (-1) * rho 50052 - rho 50053 + (seg52Out0AccY91 rho - seg52Out0AccX91 rho * (-1)) *
          (rho 50049 + rho 50050) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX92 rho = seg52Out0AccX91 rho - Bool.toZMod bit * (seg52Out0AccX91 rho - rho 50055) := by
    have hd : rho 50057 = Bool.toZMod bit * (rho 50055 - seg52Out0AccX91 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX91
      linear_combination -r5668
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY92 rho = seg52Out0AccY91 rho - Bool.toZMod bit * (seg52Out0AccY91 rho - rho 50056) := by
    have hd : rho 50058 = Bool.toZMod bit * (rho 50056 - seg52Out0AccY91 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY91
      linear_combination -r5669
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50049 * rho 50050 = rho 50059 := by linear_combination r5670
  have hd1 : rho 50049 * rho 50049 = rho 50060 := by linear_combination r5671
  have hd2 : rho 50050 * rho 50050 = rho 50061 := by linear_combination r5672
  have hd3 : rho 50062 * (rho 50050 * rho 50050 + rho 50049 * rho 50049 * (-1)) =
      2 * (rho 50049 * rho 50050) := by
    rw [hd0, hd1, hd2]
    linear_combination r5673
  have hd4 : rho 50063 * (2 - (rho 50050 * rho 50050 + rho 50049 * rho 50049 * (-1))) =
      rho 50050 * rho 50050 - rho 50049 * rho 50049 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5674
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX91 rho, seg52Out0AccY91 rho⟩ ⟨rho 50049, rho 50050⟩
    ⟨rho 50055, rho 50056⟩ ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50062, rho 50063⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5675 rho ∧ Seg52.relationRow5676 rho ∧ Seg52.relationRow5677 rho ∧ Seg52.relationRow5678 rho ∧ Seg52.relationRow5679 rho ∧ Seg52.relationRow5680 rho ∧ Seg52.relationRow5681 rho ∧ Seg52.relationRow5682 rho ∧ Seg52.relationRow5683 rho ∧ Seg52.relationRow5684 rho ∧ Seg52.relationRow5685 rho ∧ Seg52.relationRow5686 rho ∧ Seg52.relationRow5687 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    p70, p71, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5675, r5676, r5677, r5678, r5679⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687⟩

theorem seg52Out0_rung92 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48838 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50062, rho 50063⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50062, rho 50063⟩
        ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50075, rho 50076⟩ := by
  obtain ⟨r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687⟩ := seg52Out0_rows92 rho h
  unfold Seg52.relationRow5675 at r5675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5675

  unfold Seg52.relationRow5676 at r5676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5676

  unfold Seg52.relationRow5677 at r5677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5677

  unfold Seg52.relationRow5678 at r5678

  unfold Seg52.relationRow5679 at r5679

  unfold Seg52.relationRow5680 at r5680

  unfold Seg52.relationRow5681 at r5681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5681

  unfold Seg52.relationRow5682 at r5682

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5682

  unfold Seg52.relationRow5683 at r5683

  unfold Seg52.relationRow5684 at r5684

  unfold Seg52.relationRow5685 at r5685

  unfold Seg52.relationRow5686 at r5686

  unfold Seg52.relationRow5687 at r5687

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX93 rho = seg52Out0AccX92 rho + rho 50070 := by
    unfold seg52Out0AccX93 seg52Out0AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 92]

    ring

  have hnexty : seg52Out0AccY93 rho = seg52Out0AccY92 rho + rho 50071 := by
    unfold seg52Out0AccY93 seg52Out0AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 92]

    ring

  have ha0 : (rho 50062 + rho 50063) * (seg52Out0AccX92 rho + seg52Out0AccY92 rho) = rho 50064 := by
    unfold seg52Out0AccX92 seg52Out0AccY92
    linear_combination r5675
  have ha1 : rho 50063 * seg52Out0AccX92 rho = rho 50065 := by
    unfold seg52Out0AccX92
    linear_combination r5676
  have ha2 : rho 50062 * seg52Out0AccY92 rho = rho 50066 := by
    unfold seg52Out0AccY92
    linear_combination r5677
  have ha3 : 3021 * rho 50065 * rho 50066 = rho 50067 := by
    linear_combination r5678
  have ha4 : rho 50068 * (1 + rho 50067) = rho 50065 + rho 50066 := by
    linear_combination r5679
  have ha5 : rho 50069 * (1 - rho 50067) = rho 50064 - rho 50065 - rho 50066 := by
    linear_combination r5680
  have haddx :
      rho 50068 * (1 + 3021 * (rho 50063 * seg52Out0AccX92 rho) * (rho 50062 * seg52Out0AccY92 rho)) =
        rho 50063 * seg52Out0AccX92 rho + rho 50062 * seg52Out0AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50069 * (1 - 3021 * (rho 50063 * seg52Out0AccX92 rho) * (rho 50062 * seg52Out0AccY92 rho)) =
        (-1) * (rho 50063 * seg52Out0AccX92 rho) - rho 50062 * seg52Out0AccY92 rho +
          (seg52Out0AccY92 rho - seg52Out0AccX92 rho * (-1)) * (rho 50062 + rho 50063) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50069 * (1 - rho 50067) = rho 50064 - rho 50065 - rho 50066 := ha5
      _ = (-1) * rho 50065 - rho 50066 + (seg52Out0AccY92 rho - seg52Out0AccX92 rho * (-1)) *
          (rho 50062 + rho 50063) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX93 rho = seg52Out0AccX92 rho - Bool.toZMod bit * (seg52Out0AccX92 rho - rho 50068) := by
    have hd : rho 50070 = Bool.toZMod bit * (rho 50068 - seg52Out0AccX92 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX92
      linear_combination -r5681
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY93 rho = seg52Out0AccY92 rho - Bool.toZMod bit * (seg52Out0AccY92 rho - rho 50069) := by
    have hd : rho 50071 = Bool.toZMod bit * (rho 50069 - seg52Out0AccY92 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY92
      linear_combination -r5682
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50062 * rho 50063 = rho 50072 := by linear_combination r5683
  have hd1 : rho 50062 * rho 50062 = rho 50073 := by linear_combination r5684
  have hd2 : rho 50063 * rho 50063 = rho 50074 := by linear_combination r5685
  have hd3 : rho 50075 * (rho 50063 * rho 50063 + rho 50062 * rho 50062 * (-1)) =
      2 * (rho 50062 * rho 50063) := by
    rw [hd0, hd1, hd2]
    linear_combination r5686
  have hd4 : rho 50076 * (2 - (rho 50063 * rho 50063 + rho 50062 * rho 50062 * (-1))) =
      rho 50063 * rho 50063 - rho 50062 * rho 50062 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5687
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX92 rho, seg52Out0AccY92 rho⟩ ⟨rho 50062, rho 50063⟩
    ⟨rho 50068, rho 50069⟩ ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50075, rho 50076⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5688 rho ∧ Seg52.relationRow5689 rho ∧ Seg52.relationRow5690 rho ∧ Seg52.relationRow5691 rho ∧ Seg52.relationRow5692 rho ∧ Seg52.relationRow5693 rho ∧ Seg52.relationRow5694 rho ∧ Seg52.relationRow5695 rho ∧ Seg52.relationRow5696 rho ∧ Seg52.relationRow5697 rho ∧ Seg52.relationRow5698 rho ∧ Seg52.relationRow5699 rho ∧ Seg52.relationRow5700 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p71, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700⟩

theorem seg52Out0_rung93 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48839 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50075, rho 50076⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50075, rho 50076⟩
        ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50088, rho 50089⟩ := by
  obtain ⟨r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700⟩ := seg52Out0_rows93 rho h
  unfold Seg52.relationRow5688 at r5688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688

  unfold Seg52.relationRow5689 at r5689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5689

  unfold Seg52.relationRow5690 at r5690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5690

  unfold Seg52.relationRow5691 at r5691

  unfold Seg52.relationRow5692 at r5692

  unfold Seg52.relationRow5693 at r5693

  unfold Seg52.relationRow5694 at r5694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5694

  unfold Seg52.relationRow5695 at r5695

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5695

  unfold Seg52.relationRow5696 at r5696

  unfold Seg52.relationRow5697 at r5697

  unfold Seg52.relationRow5698 at r5698

  unfold Seg52.relationRow5699 at r5699

  unfold Seg52.relationRow5700 at r5700

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX94 rho = seg52Out0AccX93 rho + rho 50083 := by
    unfold seg52Out0AccX94 seg52Out0AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 93]

    ring

  have hnexty : seg52Out0AccY94 rho = seg52Out0AccY93 rho + rho 50084 := by
    unfold seg52Out0AccY94 seg52Out0AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 93]

    ring

  have ha0 : (rho 50075 + rho 50076) * (seg52Out0AccX93 rho + seg52Out0AccY93 rho) = rho 50077 := by
    unfold seg52Out0AccX93 seg52Out0AccY93
    linear_combination r5688
  have ha1 : rho 50076 * seg52Out0AccX93 rho = rho 50078 := by
    unfold seg52Out0AccX93
    linear_combination r5689
  have ha2 : rho 50075 * seg52Out0AccY93 rho = rho 50079 := by
    unfold seg52Out0AccY93
    linear_combination r5690
  have ha3 : 3021 * rho 50078 * rho 50079 = rho 50080 := by
    linear_combination r5691
  have ha4 : rho 50081 * (1 + rho 50080) = rho 50078 + rho 50079 := by
    linear_combination r5692
  have ha5 : rho 50082 * (1 - rho 50080) = rho 50077 - rho 50078 - rho 50079 := by
    linear_combination r5693
  have haddx :
      rho 50081 * (1 + 3021 * (rho 50076 * seg52Out0AccX93 rho) * (rho 50075 * seg52Out0AccY93 rho)) =
        rho 50076 * seg52Out0AccX93 rho + rho 50075 * seg52Out0AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50082 * (1 - 3021 * (rho 50076 * seg52Out0AccX93 rho) * (rho 50075 * seg52Out0AccY93 rho)) =
        (-1) * (rho 50076 * seg52Out0AccX93 rho) - rho 50075 * seg52Out0AccY93 rho +
          (seg52Out0AccY93 rho - seg52Out0AccX93 rho * (-1)) * (rho 50075 + rho 50076) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50082 * (1 - rho 50080) = rho 50077 - rho 50078 - rho 50079 := ha5
      _ = (-1) * rho 50078 - rho 50079 + (seg52Out0AccY93 rho - seg52Out0AccX93 rho * (-1)) *
          (rho 50075 + rho 50076) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX94 rho = seg52Out0AccX93 rho - Bool.toZMod bit * (seg52Out0AccX93 rho - rho 50081) := by
    have hd : rho 50083 = Bool.toZMod bit * (rho 50081 - seg52Out0AccX93 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX93
      linear_combination -r5694
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY94 rho = seg52Out0AccY93 rho - Bool.toZMod bit * (seg52Out0AccY93 rho - rho 50082) := by
    have hd : rho 50084 = Bool.toZMod bit * (rho 50082 - seg52Out0AccY93 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY93
      linear_combination -r5695
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50075 * rho 50076 = rho 50085 := by linear_combination r5696
  have hd1 : rho 50075 * rho 50075 = rho 50086 := by linear_combination r5697
  have hd2 : rho 50076 * rho 50076 = rho 50087 := by linear_combination r5698
  have hd3 : rho 50088 * (rho 50076 * rho 50076 + rho 50075 * rho 50075 * (-1)) =
      2 * (rho 50075 * rho 50076) := by
    rw [hd0, hd1, hd2]
    linear_combination r5699
  have hd4 : rho 50089 * (2 - (rho 50076 * rho 50076 + rho 50075 * rho 50075 * (-1))) =
      rho 50076 * rho 50076 - rho 50075 * rho 50075 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5700
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX93 rho, seg52Out0AccY93 rho⟩ ⟨rho 50075, rho 50076⟩
    ⟨rho 50081, rho 50082⟩ ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50088, rho 50089⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5701 rho ∧ Seg52.relationRow5702 rho ∧ Seg52.relationRow5703 rho ∧ Seg52.relationRow5704 rho ∧ Seg52.relationRow5705 rho ∧ Seg52.relationRow5706 rho ∧ Seg52.relationRow5707 rho ∧ Seg52.relationRow5708 rho ∧ Seg52.relationRow5709 rho ∧ Seg52.relationRow5710 rho ∧ Seg52.relationRow5711 rho ∧ Seg52.relationRow5712 rho ∧ Seg52.relationRow5713 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p71, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713⟩

theorem seg52Out0_rung94 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48840 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50088, rho 50089⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50088, rho 50089⟩
        ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50101, rho 50102⟩ := by
  obtain ⟨r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713⟩ := seg52Out0_rows94 rho h
  unfold Seg52.relationRow5701 at r5701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701

  unfold Seg52.relationRow5702 at r5702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702

  unfold Seg52.relationRow5703 at r5703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5703

  unfold Seg52.relationRow5704 at r5704

  unfold Seg52.relationRow5705 at r5705

  unfold Seg52.relationRow5706 at r5706

  unfold Seg52.relationRow5707 at r5707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707

  unfold Seg52.relationRow5708 at r5708

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5708

  unfold Seg52.relationRow5709 at r5709

  unfold Seg52.relationRow5710 at r5710

  unfold Seg52.relationRow5711 at r5711

  unfold Seg52.relationRow5712 at r5712

  unfold Seg52.relationRow5713 at r5713

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX95 rho = seg52Out0AccX94 rho + rho 50096 := by
    unfold seg52Out0AccX95 seg52Out0AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 94]

    ring

  have hnexty : seg52Out0AccY95 rho = seg52Out0AccY94 rho + rho 50097 := by
    unfold seg52Out0AccY95 seg52Out0AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 94]

    ring

  have ha0 : (rho 50088 + rho 50089) * (seg52Out0AccX94 rho + seg52Out0AccY94 rho) = rho 50090 := by
    unfold seg52Out0AccX94 seg52Out0AccY94
    linear_combination r5701
  have ha1 : rho 50089 * seg52Out0AccX94 rho = rho 50091 := by
    unfold seg52Out0AccX94
    linear_combination r5702
  have ha2 : rho 50088 * seg52Out0AccY94 rho = rho 50092 := by
    unfold seg52Out0AccY94
    linear_combination r5703
  have ha3 : 3021 * rho 50091 * rho 50092 = rho 50093 := by
    linear_combination r5704
  have ha4 : rho 50094 * (1 + rho 50093) = rho 50091 + rho 50092 := by
    linear_combination r5705
  have ha5 : rho 50095 * (1 - rho 50093) = rho 50090 - rho 50091 - rho 50092 := by
    linear_combination r5706
  have haddx :
      rho 50094 * (1 + 3021 * (rho 50089 * seg52Out0AccX94 rho) * (rho 50088 * seg52Out0AccY94 rho)) =
        rho 50089 * seg52Out0AccX94 rho + rho 50088 * seg52Out0AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50095 * (1 - 3021 * (rho 50089 * seg52Out0AccX94 rho) * (rho 50088 * seg52Out0AccY94 rho)) =
        (-1) * (rho 50089 * seg52Out0AccX94 rho) - rho 50088 * seg52Out0AccY94 rho +
          (seg52Out0AccY94 rho - seg52Out0AccX94 rho * (-1)) * (rho 50088 + rho 50089) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50095 * (1 - rho 50093) = rho 50090 - rho 50091 - rho 50092 := ha5
      _ = (-1) * rho 50091 - rho 50092 + (seg52Out0AccY94 rho - seg52Out0AccX94 rho * (-1)) *
          (rho 50088 + rho 50089) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX95 rho = seg52Out0AccX94 rho - Bool.toZMod bit * (seg52Out0AccX94 rho - rho 50094) := by
    have hd : rho 50096 = Bool.toZMod bit * (rho 50094 - seg52Out0AccX94 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX94
      linear_combination -r5707
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY95 rho = seg52Out0AccY94 rho - Bool.toZMod bit * (seg52Out0AccY94 rho - rho 50095) := by
    have hd : rho 50097 = Bool.toZMod bit * (rho 50095 - seg52Out0AccY94 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY94
      linear_combination -r5708
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50088 * rho 50089 = rho 50098 := by linear_combination r5709
  have hd1 : rho 50088 * rho 50088 = rho 50099 := by linear_combination r5710
  have hd2 : rho 50089 * rho 50089 = rho 50100 := by linear_combination r5711
  have hd3 : rho 50101 * (rho 50089 * rho 50089 + rho 50088 * rho 50088 * (-1)) =
      2 * (rho 50088 * rho 50089) := by
    rw [hd0, hd1, hd2]
    linear_combination r5712
  have hd4 : rho 50102 * (2 - (rho 50089 * rho 50089 + rho 50088 * rho 50088 * (-1))) =
      rho 50089 * rho 50089 - rho 50088 * rho 50088 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5713
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX94 rho, seg52Out0AccY94 rho⟩ ⟨rho 50088, rho 50089⟩
    ⟨rho 50094, rho 50095⟩ ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50101, rho 50102⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5714 rho ∧ Seg52.relationRow5715 rho ∧ Seg52.relationRow5716 rho ∧ Seg52.relationRow5717 rho ∧ Seg52.relationRow5718 rho ∧ Seg52.relationRow5719 rho ∧ Seg52.relationRow5720 rho ∧ Seg52.relationRow5721 rho ∧ Seg52.relationRow5722 rho ∧ Seg52.relationRow5723 rho ∧ Seg52.relationRow5724 rho ∧ Seg52.relationRow5725 rho ∧ Seg52.relationRow5726 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p71, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg52Out0_rung95 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48841 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50101, rho 50102⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50101, rho 50102⟩
        ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50114, rho 50115⟩ := by
  obtain ⟨r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg52Out0_rows95 rho h
  unfold Seg52.relationRow5714 at r5714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5714

  unfold Seg52.relationRow5715 at r5715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715

  unfold Seg52.relationRow5716 at r5716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716

  unfold Seg52.relationRow5717 at r5717

  unfold Seg52.relationRow5718 at r5718

  unfold Seg52.relationRow5719 at r5719

  unfold Seg52.relationRow5720 at r5720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720

  unfold Seg52.relationRow5721 at r5721

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721

  unfold Seg52.relationRow5722 at r5722

  unfold Seg52.relationRow5723 at r5723

  unfold Seg52.relationRow5724 at r5724

  unfold Seg52.relationRow5725 at r5725

  unfold Seg52.relationRow5726 at r5726

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX96 rho = seg52Out0AccX95 rho + rho 50109 := by
    unfold seg52Out0AccX96 seg52Out0AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 95]

    ring

  have hnexty : seg52Out0AccY96 rho = seg52Out0AccY95 rho + rho 50110 := by
    unfold seg52Out0AccY96 seg52Out0AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 95]

    ring

  have ha0 : (rho 50101 + rho 50102) * (seg52Out0AccX95 rho + seg52Out0AccY95 rho) = rho 50103 := by
    unfold seg52Out0AccX95 seg52Out0AccY95
    linear_combination r5714
  have ha1 : rho 50102 * seg52Out0AccX95 rho = rho 50104 := by
    unfold seg52Out0AccX95
    linear_combination r5715
  have ha2 : rho 50101 * seg52Out0AccY95 rho = rho 50105 := by
    unfold seg52Out0AccY95
    linear_combination r5716
  have ha3 : 3021 * rho 50104 * rho 50105 = rho 50106 := by
    linear_combination r5717
  have ha4 : rho 50107 * (1 + rho 50106) = rho 50104 + rho 50105 := by
    linear_combination r5718
  have ha5 : rho 50108 * (1 - rho 50106) = rho 50103 - rho 50104 - rho 50105 := by
    linear_combination r5719
  have haddx :
      rho 50107 * (1 + 3021 * (rho 50102 * seg52Out0AccX95 rho) * (rho 50101 * seg52Out0AccY95 rho)) =
        rho 50102 * seg52Out0AccX95 rho + rho 50101 * seg52Out0AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50108 * (1 - 3021 * (rho 50102 * seg52Out0AccX95 rho) * (rho 50101 * seg52Out0AccY95 rho)) =
        (-1) * (rho 50102 * seg52Out0AccX95 rho) - rho 50101 * seg52Out0AccY95 rho +
          (seg52Out0AccY95 rho - seg52Out0AccX95 rho * (-1)) * (rho 50101 + rho 50102) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50108 * (1 - rho 50106) = rho 50103 - rho 50104 - rho 50105 := ha5
      _ = (-1) * rho 50104 - rho 50105 + (seg52Out0AccY95 rho - seg52Out0AccX95 rho * (-1)) *
          (rho 50101 + rho 50102) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX96 rho = seg52Out0AccX95 rho - Bool.toZMod bit * (seg52Out0AccX95 rho - rho 50107) := by
    have hd : rho 50109 = Bool.toZMod bit * (rho 50107 - seg52Out0AccX95 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX95
      linear_combination -r5720
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY96 rho = seg52Out0AccY95 rho - Bool.toZMod bit * (seg52Out0AccY95 rho - rho 50108) := by
    have hd : rho 50110 = Bool.toZMod bit * (rho 50108 - seg52Out0AccY95 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY95
      linear_combination -r5721
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50101 * rho 50102 = rho 50111 := by linear_combination r5722
  have hd1 : rho 50101 * rho 50101 = rho 50112 := by linear_combination r5723
  have hd2 : rho 50102 * rho 50102 = rho 50113 := by linear_combination r5724
  have hd3 : rho 50114 * (rho 50102 * rho 50102 + rho 50101 * rho 50101 * (-1)) =
      2 * (rho 50101 * rho 50102) := by
    rw [hd0, hd1, hd2]
    linear_combination r5725
  have hd4 : rho 50115 * (2 - (rho 50102 * rho 50102 + rho 50101 * rho 50101 * (-1))) =
      rho 50102 * rho 50102 - rho 50101 * rho 50101 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5726
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX95 rho, seg52Out0AccY95 rho⟩ ⟨rho 50101, rho 50102⟩
    ⟨rho 50107, rho 50108⟩ ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50114, rho 50115⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5727 rho ∧ Seg52.relationRow5728 rho ∧ Seg52.relationRow5729 rho ∧ Seg52.relationRow5730 rho ∧ Seg52.relationRow5731 rho ∧ Seg52.relationRow5732 rho ∧ Seg52.relationRow5733 rho ∧ Seg52.relationRow5734 rho ∧ Seg52.relationRow5735 rho ∧ Seg52.relationRow5736 rho ∧ Seg52.relationRow5737 rho ∧ Seg52.relationRow5738 rho ∧ Seg52.relationRow5739 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p71, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739⟩

theorem seg52Out0_rung96 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48842 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50114, rho 50115⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50114, rho 50115⟩
        ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50127, rho 50128⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739⟩ := seg52Out0_rows96 rho h
  unfold Seg52.relationRow5727 at r5727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727

  unfold Seg52.relationRow5728 at r5728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5728

  unfold Seg52.relationRow5729 at r5729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729

  unfold Seg52.relationRow5730 at r5730

  unfold Seg52.relationRow5731 at r5731

  unfold Seg52.relationRow5732 at r5732

  unfold Seg52.relationRow5733 at r5733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5733

  unfold Seg52.relationRow5734 at r5734

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734

  unfold Seg52.relationRow5735 at r5735

  unfold Seg52.relationRow5736 at r5736

  unfold Seg52.relationRow5737 at r5737

  unfold Seg52.relationRow5738 at r5738

  unfold Seg52.relationRow5739 at r5739

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX97 rho = seg52Out0AccX96 rho + rho 50122 := by
    unfold seg52Out0AccX97 seg52Out0AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 96]

    ring

  have hnexty : seg52Out0AccY97 rho = seg52Out0AccY96 rho + rho 50123 := by
    unfold seg52Out0AccY97 seg52Out0AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 96]

    ring

  have ha0 : (rho 50114 + rho 50115) * (seg52Out0AccX96 rho + seg52Out0AccY96 rho) = rho 50116 := by
    unfold seg52Out0AccX96 seg52Out0AccY96
    linear_combination r5727
  have ha1 : rho 50115 * seg52Out0AccX96 rho = rho 50117 := by
    unfold seg52Out0AccX96
    linear_combination r5728
  have ha2 : rho 50114 * seg52Out0AccY96 rho = rho 50118 := by
    unfold seg52Out0AccY96
    linear_combination r5729
  have ha3 : 3021 * rho 50117 * rho 50118 = rho 50119 := by
    linear_combination r5730
  have ha4 : rho 50120 * (1 + rho 50119) = rho 50117 + rho 50118 := by
    linear_combination r5731
  have ha5 : rho 50121 * (1 - rho 50119) = rho 50116 - rho 50117 - rho 50118 := by
    linear_combination r5732
  have haddx :
      rho 50120 * (1 + 3021 * (rho 50115 * seg52Out0AccX96 rho) * (rho 50114 * seg52Out0AccY96 rho)) =
        rho 50115 * seg52Out0AccX96 rho + rho 50114 * seg52Out0AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50121 * (1 - 3021 * (rho 50115 * seg52Out0AccX96 rho) * (rho 50114 * seg52Out0AccY96 rho)) =
        (-1) * (rho 50115 * seg52Out0AccX96 rho) - rho 50114 * seg52Out0AccY96 rho +
          (seg52Out0AccY96 rho - seg52Out0AccX96 rho * (-1)) * (rho 50114 + rho 50115) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50121 * (1 - rho 50119) = rho 50116 - rho 50117 - rho 50118 := ha5
      _ = (-1) * rho 50117 - rho 50118 + (seg52Out0AccY96 rho - seg52Out0AccX96 rho * (-1)) *
          (rho 50114 + rho 50115) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX97 rho = seg52Out0AccX96 rho - Bool.toZMod bit * (seg52Out0AccX96 rho - rho 50120) := by
    have hd : rho 50122 = Bool.toZMod bit * (rho 50120 - seg52Out0AccX96 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX96
      linear_combination -r5733
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY97 rho = seg52Out0AccY96 rho - Bool.toZMod bit * (seg52Out0AccY96 rho - rho 50121) := by
    have hd : rho 50123 = Bool.toZMod bit * (rho 50121 - seg52Out0AccY96 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY96
      linear_combination -r5734
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50114 * rho 50115 = rho 50124 := by linear_combination r5735
  have hd1 : rho 50114 * rho 50114 = rho 50125 := by linear_combination r5736
  have hd2 : rho 50115 * rho 50115 = rho 50126 := by linear_combination r5737
  have hd3 : rho 50127 * (rho 50115 * rho 50115 + rho 50114 * rho 50114 * (-1)) =
      2 * (rho 50114 * rho 50115) := by
    rw [hd0, hd1, hd2]
    linear_combination r5738
  have hd4 : rho 50128 * (2 - (rho 50115 * rho 50115 + rho 50114 * rho 50114 * (-1))) =
      rho 50115 * rho 50115 - rho 50114 * rho 50114 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5739
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX96 rho, seg52Out0AccY96 rho⟩ ⟨rho 50114, rho 50115⟩
    ⟨rho 50120, rho 50121⟩ ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50127, rho 50128⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5740 rho ∧ Seg52.relationRow5741 rho ∧ Seg52.relationRow5742 rho ∧ Seg52.relationRow5743 rho ∧ Seg52.relationRow5744 rho ∧ Seg52.relationRow5745 rho ∧ Seg52.relationRow5746 rho ∧ Seg52.relationRow5747 rho ∧ Seg52.relationRow5748 rho ∧ Seg52.relationRow5749 rho ∧ Seg52.relationRow5750 rho ∧ Seg52.relationRow5751 rho ∧ Seg52.relationRow5752 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p71, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, _, _, _, _, _, _, _⟩

  exact ⟨r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752⟩

theorem seg52Out0_rung97 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48843 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50127, rho 50128⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50127, rho 50128⟩
        ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50140, rho 50141⟩ := by
  obtain ⟨r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752⟩ := seg52Out0_rows97 rho h
  unfold Seg52.relationRow5740 at r5740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5740

  unfold Seg52.relationRow5741 at r5741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741

  unfold Seg52.relationRow5742 at r5742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5742

  unfold Seg52.relationRow5743 at r5743

  unfold Seg52.relationRow5744 at r5744

  unfold Seg52.relationRow5745 at r5745

  unfold Seg52.relationRow5746 at r5746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5746

  unfold Seg52.relationRow5747 at r5747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5747

  unfold Seg52.relationRow5748 at r5748

  unfold Seg52.relationRow5749 at r5749

  unfold Seg52.relationRow5750 at r5750

  unfold Seg52.relationRow5751 at r5751

  unfold Seg52.relationRow5752 at r5752

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX98 rho = seg52Out0AccX97 rho + rho 50135 := by
    unfold seg52Out0AccX98 seg52Out0AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 97]

    ring

  have hnexty : seg52Out0AccY98 rho = seg52Out0AccY97 rho + rho 50136 := by
    unfold seg52Out0AccY98 seg52Out0AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 97]

    ring

  have ha0 : (rho 50127 + rho 50128) * (seg52Out0AccX97 rho + seg52Out0AccY97 rho) = rho 50129 := by
    unfold seg52Out0AccX97 seg52Out0AccY97
    linear_combination r5740
  have ha1 : rho 50128 * seg52Out0AccX97 rho = rho 50130 := by
    unfold seg52Out0AccX97
    linear_combination r5741
  have ha2 : rho 50127 * seg52Out0AccY97 rho = rho 50131 := by
    unfold seg52Out0AccY97
    linear_combination r5742
  have ha3 : 3021 * rho 50130 * rho 50131 = rho 50132 := by
    linear_combination r5743
  have ha4 : rho 50133 * (1 + rho 50132) = rho 50130 + rho 50131 := by
    linear_combination r5744
  have ha5 : rho 50134 * (1 - rho 50132) = rho 50129 - rho 50130 - rho 50131 := by
    linear_combination r5745
  have haddx :
      rho 50133 * (1 + 3021 * (rho 50128 * seg52Out0AccX97 rho) * (rho 50127 * seg52Out0AccY97 rho)) =
        rho 50128 * seg52Out0AccX97 rho + rho 50127 * seg52Out0AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50134 * (1 - 3021 * (rho 50128 * seg52Out0AccX97 rho) * (rho 50127 * seg52Out0AccY97 rho)) =
        (-1) * (rho 50128 * seg52Out0AccX97 rho) - rho 50127 * seg52Out0AccY97 rho +
          (seg52Out0AccY97 rho - seg52Out0AccX97 rho * (-1)) * (rho 50127 + rho 50128) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50134 * (1 - rho 50132) = rho 50129 - rho 50130 - rho 50131 := ha5
      _ = (-1) * rho 50130 - rho 50131 + (seg52Out0AccY97 rho - seg52Out0AccX97 rho * (-1)) *
          (rho 50127 + rho 50128) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX98 rho = seg52Out0AccX97 rho - Bool.toZMod bit * (seg52Out0AccX97 rho - rho 50133) := by
    have hd : rho 50135 = Bool.toZMod bit * (rho 50133 - seg52Out0AccX97 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX97
      linear_combination -r5746
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY98 rho = seg52Out0AccY97 rho - Bool.toZMod bit * (seg52Out0AccY97 rho - rho 50134) := by
    have hd : rho 50136 = Bool.toZMod bit * (rho 50134 - seg52Out0AccY97 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY97
      linear_combination -r5747
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50127 * rho 50128 = rho 50137 := by linear_combination r5748
  have hd1 : rho 50127 * rho 50127 = rho 50138 := by linear_combination r5749
  have hd2 : rho 50128 * rho 50128 = rho 50139 := by linear_combination r5750
  have hd3 : rho 50140 * (rho 50128 * rho 50128 + rho 50127 * rho 50127 * (-1)) =
      2 * (rho 50127 * rho 50128) := by
    rw [hd0, hd1, hd2]
    linear_combination r5751
  have hd4 : rho 50141 * (2 - (rho 50128 * rho 50128 + rho 50127 * rho 50127 * (-1))) =
      rho 50128 * rho 50128 - rho 50127 * rho 50127 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5752
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX97 rho, seg52Out0AccY97 rho⟩ ⟨rho 50127, rho 50128⟩
    ⟨rho 50133, rho 50134⟩ ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50140, rho 50141⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5753 rho ∧ Seg52.relationRow5754 rho ∧ Seg52.relationRow5755 rho ∧ Seg52.relationRow5756 rho ∧ Seg52.relationRow5757 rho ∧ Seg52.relationRow5758 rho ∧ Seg52.relationRow5759 rho ∧ Seg52.relationRow5760 rho ∧ Seg52.relationRow5761 rho ∧ Seg52.relationRow5762 rho ∧ Seg52.relationRow5763 rho ∧ Seg52.relationRow5764 rho ∧ Seg52.relationRow5765 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p71, p72, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5753, r5754, r5755, r5756, r5757, r5758, r5759⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5753, r5754, r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765⟩

theorem seg52Out0_rung98 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 48844 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50140, rho 50141⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50140, rho 50141⟩
        ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50153, rho 50154⟩ := by
  obtain ⟨r5753, r5754, r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765⟩ := seg52Out0_rows98 rho h
  unfold Seg52.relationRow5753 at r5753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5753

  unfold Seg52.relationRow5754 at r5754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5754

  unfold Seg52.relationRow5755 at r5755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755

  unfold Seg52.relationRow5756 at r5756

  unfold Seg52.relationRow5757 at r5757

  unfold Seg52.relationRow5758 at r5758

  unfold Seg52.relationRow5759 at r5759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5759

  unfold Seg52.relationRow5760 at r5760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5760

  unfold Seg52.relationRow5761 at r5761

  unfold Seg52.relationRow5762 at r5762

  unfold Seg52.relationRow5763 at r5763

  unfold Seg52.relationRow5764 at r5764

  unfold Seg52.relationRow5765 at r5765

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX99 rho = seg52Out0AccX98 rho + rho 50148 := by
    unfold seg52Out0AccX99 seg52Out0AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48874 13 98]

    ring

  have hnexty : seg52Out0AccY99 rho = seg52Out0AccY98 rho + rho 50149 := by
    unfold seg52Out0AccY99 seg52Out0AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 48875 13 98]

    ring

  have ha0 : (rho 50140 + rho 50141) * (seg52Out0AccX98 rho + seg52Out0AccY98 rho) = rho 50142 := by
    unfold seg52Out0AccX98 seg52Out0AccY98
    linear_combination r5753
  have ha1 : rho 50141 * seg52Out0AccX98 rho = rho 50143 := by
    unfold seg52Out0AccX98
    linear_combination r5754
  have ha2 : rho 50140 * seg52Out0AccY98 rho = rho 50144 := by
    unfold seg52Out0AccY98
    linear_combination r5755
  have ha3 : 3021 * rho 50143 * rho 50144 = rho 50145 := by
    linear_combination r5756
  have ha4 : rho 50146 * (1 + rho 50145) = rho 50143 + rho 50144 := by
    linear_combination r5757
  have ha5 : rho 50147 * (1 - rho 50145) = rho 50142 - rho 50143 - rho 50144 := by
    linear_combination r5758
  have haddx :
      rho 50146 * (1 + 3021 * (rho 50141 * seg52Out0AccX98 rho) * (rho 50140 * seg52Out0AccY98 rho)) =
        rho 50141 * seg52Out0AccX98 rho + rho 50140 * seg52Out0AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50147 * (1 - 3021 * (rho 50141 * seg52Out0AccX98 rho) * (rho 50140 * seg52Out0AccY98 rho)) =
        (-1) * (rho 50141 * seg52Out0AccX98 rho) - rho 50140 * seg52Out0AccY98 rho +
          (seg52Out0AccY98 rho - seg52Out0AccX98 rho * (-1)) * (rho 50140 + rho 50141) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50147 * (1 - rho 50145) = rho 50142 - rho 50143 - rho 50144 := ha5
      _ = (-1) * rho 50143 - rho 50144 + (seg52Out0AccY98 rho - seg52Out0AccX98 rho * (-1)) *
          (rho 50140 + rho 50141) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX99 rho = seg52Out0AccX98 rho - Bool.toZMod bit * (seg52Out0AccX98 rho - rho 50146) := by
    have hd : rho 50148 = Bool.toZMod bit * (rho 50146 - seg52Out0AccX98 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX98
      linear_combination -r5759
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY99 rho = seg52Out0AccY98 rho - Bool.toZMod bit * (seg52Out0AccY98 rho - rho 50147) := by
    have hd : rho 50149 = Bool.toZMod bit * (rho 50147 - seg52Out0AccY98 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY98
      linear_combination -r5760
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50140 * rho 50141 = rho 50150 := by linear_combination r5761
  have hd1 : rho 50140 * rho 50140 = rho 50151 := by linear_combination r5762
  have hd2 : rho 50141 * rho 50141 = rho 50152 := by linear_combination r5763
  have hd3 : rho 50153 * (rho 50141 * rho 50141 + rho 50140 * rho 50140 * (-1)) =
      2 * (rho 50140 * rho 50141) := by
    rw [hd0, hd1, hd2]
    linear_combination r5764
  have hd4 : rho 50154 * (2 - (rho 50141 * rho 50141 + rho 50140 * rho 50140 * (-1))) =
      rho 50141 * rho 50141 - rho 50140 * rho 50140 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5765
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX98 rho, seg52Out0AccY98 rho⟩ ⟨rho 50140, rho 50141⟩
    ⟨rho 50146, rho 50147⟩ ⟨seg52Out0AccX99 rho, seg52Out0AccY99 rho⟩ ⟨rho 50153, rho 50154⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c8 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (48746 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg52Out0_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg52Out0_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg52Out0_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg52Out0_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg52Out0_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg52Out0_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg52Out0_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg52Out0_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg52Out0_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg52Out0_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
