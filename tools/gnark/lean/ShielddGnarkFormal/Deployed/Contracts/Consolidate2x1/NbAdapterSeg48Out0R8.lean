import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48Out0_rows88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5623 rho ∧ Seg48.relationRow5624 rho ∧ Seg48.relationRow5625 rho ∧ Seg48.relationRow5626 rho ∧ Seg48.relationRow5627 rho ∧ Seg48.relationRow5628 rho ∧ Seg48.relationRow5629 rho ∧ Seg48.relationRow5630 rho ∧ Seg48.relationRow5631 rho ∧ Seg48.relationRow5632 rho ∧ Seg48.relationRow5633 rho ∧ Seg48.relationRow5634 rho ∧ Seg48.relationRow5635 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635⟩

theorem seg48Out0_rung88 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37202 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX88 rho, seg48Out0AccY88 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38378, rho 38379⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX88 rho, seg48Out0AccY88 rho⟩ ⟨rho 38378, rho 38379⟩
        ⟨seg48Out0AccX89 rho, seg48Out0AccY89 rho⟩ ⟨rho 38391, rho 38392⟩ := by
  obtain ⟨r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635⟩ := seg48Out0_rows88 rho h
  unfold Seg48.relationRow5623 at r5623

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5623

  unfold Seg48.relationRow5624 at r5624

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5624

  unfold Seg48.relationRow5625 at r5625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5625

  unfold Seg48.relationRow5626 at r5626

  unfold Seg48.relationRow5627 at r5627

  unfold Seg48.relationRow5628 at r5628

  unfold Seg48.relationRow5629 at r5629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5629

  unfold Seg48.relationRow5630 at r5630

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5630

  unfold Seg48.relationRow5631 at r5631

  unfold Seg48.relationRow5632 at r5632

  unfold Seg48.relationRow5633 at r5633

  unfold Seg48.relationRow5634 at r5634

  unfold Seg48.relationRow5635 at r5635

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX89 rho = seg48Out0AccX88 rho + rho 38386 := by
    unfold seg48Out0AccX89 seg48Out0AccX88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 88]

    ring

  have hnexty : seg48Out0AccY89 rho = seg48Out0AccY88 rho + rho 38387 := by
    unfold seg48Out0AccY89 seg48Out0AccY88
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 88]

    ring

  have ha0 : (rho 38378 + rho 38379) * (seg48Out0AccX88 rho + seg48Out0AccY88 rho) = rho 38380 := by
    unfold seg48Out0AccX88 seg48Out0AccY88
    linear_combination r5623
  have ha1 : rho 38379 * seg48Out0AccX88 rho = rho 38381 := by
    unfold seg48Out0AccX88
    linear_combination r5624
  have ha2 : rho 38378 * seg48Out0AccY88 rho = rho 38382 := by
    unfold seg48Out0AccY88
    linear_combination r5625
  have ha3 : 3021 * rho 38381 * rho 38382 = rho 38383 := by
    linear_combination r5626
  have ha4 : rho 38384 * (1 + rho 38383) = rho 38381 + rho 38382 := by
    linear_combination r5627
  have ha5 : rho 38385 * (1 - rho 38383) = rho 38380 - rho 38381 - rho 38382 := by
    linear_combination r5628
  have haddx :
      rho 38384 * (1 + 3021 * (rho 38379 * seg48Out0AccX88 rho) * (rho 38378 * seg48Out0AccY88 rho)) =
        rho 38379 * seg48Out0AccX88 rho + rho 38378 * seg48Out0AccY88 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38385 * (1 - 3021 * (rho 38379 * seg48Out0AccX88 rho) * (rho 38378 * seg48Out0AccY88 rho)) =
        (-1) * (rho 38379 * seg48Out0AccX88 rho) - rho 38378 * seg48Out0AccY88 rho +
          (seg48Out0AccY88 rho - seg48Out0AccX88 rho * (-1)) * (rho 38378 + rho 38379) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38385 * (1 - rho 38383) = rho 38380 - rho 38381 - rho 38382 := ha5
      _ = (-1) * rho 38381 - rho 38382 + (seg48Out0AccY88 rho - seg48Out0AccX88 rho * (-1)) *
          (rho 38378 + rho 38379) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX89 rho = seg48Out0AccX88 rho - Bool.toZMod bit * (seg48Out0AccX88 rho - rho 38384) := by
    have hd : rho 38386 = Bool.toZMod bit * (rho 38384 - seg48Out0AccX88 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX88
      linear_combination -r5629
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY89 rho = seg48Out0AccY88 rho - Bool.toZMod bit * (seg48Out0AccY88 rho - rho 38385) := by
    have hd : rho 38387 = Bool.toZMod bit * (rho 38385 - seg48Out0AccY88 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY88
      linear_combination -r5630
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38378 * rho 38379 = rho 38388 := by linear_combination r5631
  have hd1 : rho 38378 * rho 38378 = rho 38389 := by linear_combination r5632
  have hd2 : rho 38379 * rho 38379 = rho 38390 := by linear_combination r5633
  have hd3 : rho 38391 * (rho 38379 * rho 38379 + rho 38378 * rho 38378 * (-1)) =
      2 * (rho 38378 * rho 38379) := by
    rw [hd0, hd1, hd2]
    linear_combination r5634
  have hd4 : rho 38392 * (2 - (rho 38379 * rho 38379 + rho 38378 * rho 38378 * (-1))) =
      rho 38379 * rho 38379 - rho 38378 * rho 38378 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5635
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX88 rho, seg48Out0AccY88 rho⟩ ⟨rho 38378, rho 38379⟩
    ⟨rho 38384, rho 38385⟩ ⟨seg48Out0AccX89 rho, seg48Out0AccY89 rho⟩ ⟨rho 38391, rho 38392⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5636 rho ∧ Seg48.relationRow5637 rho ∧ Seg48.relationRow5638 rho ∧ Seg48.relationRow5639 rho ∧ Seg48.relationRow5640 rho ∧ Seg48.relationRow5641 rho ∧ Seg48.relationRow5642 rho ∧ Seg48.relationRow5643 rho ∧ Seg48.relationRow5644 rho ∧ Seg48.relationRow5645 rho ∧ Seg48.relationRow5646 rho ∧ Seg48.relationRow5647 rho ∧ Seg48.relationRow5648 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648⟩

theorem seg48Out0_rung89 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37203 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX89 rho, seg48Out0AccY89 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38391, rho 38392⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX89 rho, seg48Out0AccY89 rho⟩ ⟨rho 38391, rho 38392⟩
        ⟨seg48Out0AccX90 rho, seg48Out0AccY90 rho⟩ ⟨rho 38404, rho 38405⟩ := by
  obtain ⟨r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648⟩ := seg48Out0_rows89 rho h
  unfold Seg48.relationRow5636 at r5636

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5636

  unfold Seg48.relationRow5637 at r5637

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5637

  unfold Seg48.relationRow5638 at r5638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5638

  unfold Seg48.relationRow5639 at r5639

  unfold Seg48.relationRow5640 at r5640

  unfold Seg48.relationRow5641 at r5641

  unfold Seg48.relationRow5642 at r5642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5642

  unfold Seg48.relationRow5643 at r5643

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5643

  unfold Seg48.relationRow5644 at r5644

  unfold Seg48.relationRow5645 at r5645

  unfold Seg48.relationRow5646 at r5646

  unfold Seg48.relationRow5647 at r5647

  unfold Seg48.relationRow5648 at r5648

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX90 rho = seg48Out0AccX89 rho + rho 38399 := by
    unfold seg48Out0AccX90 seg48Out0AccX89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 89]

    ring

  have hnexty : seg48Out0AccY90 rho = seg48Out0AccY89 rho + rho 38400 := by
    unfold seg48Out0AccY90 seg48Out0AccY89
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 89]

    ring

  have ha0 : (rho 38391 + rho 38392) * (seg48Out0AccX89 rho + seg48Out0AccY89 rho) = rho 38393 := by
    unfold seg48Out0AccX89 seg48Out0AccY89
    linear_combination r5636
  have ha1 : rho 38392 * seg48Out0AccX89 rho = rho 38394 := by
    unfold seg48Out0AccX89
    linear_combination r5637
  have ha2 : rho 38391 * seg48Out0AccY89 rho = rho 38395 := by
    unfold seg48Out0AccY89
    linear_combination r5638
  have ha3 : 3021 * rho 38394 * rho 38395 = rho 38396 := by
    linear_combination r5639
  have ha4 : rho 38397 * (1 + rho 38396) = rho 38394 + rho 38395 := by
    linear_combination r5640
  have ha5 : rho 38398 * (1 - rho 38396) = rho 38393 - rho 38394 - rho 38395 := by
    linear_combination r5641
  have haddx :
      rho 38397 * (1 + 3021 * (rho 38392 * seg48Out0AccX89 rho) * (rho 38391 * seg48Out0AccY89 rho)) =
        rho 38392 * seg48Out0AccX89 rho + rho 38391 * seg48Out0AccY89 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38398 * (1 - 3021 * (rho 38392 * seg48Out0AccX89 rho) * (rho 38391 * seg48Out0AccY89 rho)) =
        (-1) * (rho 38392 * seg48Out0AccX89 rho) - rho 38391 * seg48Out0AccY89 rho +
          (seg48Out0AccY89 rho - seg48Out0AccX89 rho * (-1)) * (rho 38391 + rho 38392) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38398 * (1 - rho 38396) = rho 38393 - rho 38394 - rho 38395 := ha5
      _ = (-1) * rho 38394 - rho 38395 + (seg48Out0AccY89 rho - seg48Out0AccX89 rho * (-1)) *
          (rho 38391 + rho 38392) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX90 rho = seg48Out0AccX89 rho - Bool.toZMod bit * (seg48Out0AccX89 rho - rho 38397) := by
    have hd : rho 38399 = Bool.toZMod bit * (rho 38397 - seg48Out0AccX89 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX89
      linear_combination -r5642
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY90 rho = seg48Out0AccY89 rho - Bool.toZMod bit * (seg48Out0AccY89 rho - rho 38398) := by
    have hd : rho 38400 = Bool.toZMod bit * (rho 38398 - seg48Out0AccY89 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY89
      linear_combination -r5643
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38391 * rho 38392 = rho 38401 := by linear_combination r5644
  have hd1 : rho 38391 * rho 38391 = rho 38402 := by linear_combination r5645
  have hd2 : rho 38392 * rho 38392 = rho 38403 := by linear_combination r5646
  have hd3 : rho 38404 * (rho 38392 * rho 38392 + rho 38391 * rho 38391 * (-1)) =
      2 * (rho 38391 * rho 38392) := by
    rw [hd0, hd1, hd2]
    linear_combination r5647
  have hd4 : rho 38405 * (2 - (rho 38392 * rho 38392 + rho 38391 * rho 38391 * (-1))) =
      rho 38392 * rho 38392 - rho 38391 * rho 38391 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5648
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX89 rho, seg48Out0AccY89 rho⟩ ⟨rho 38391, rho 38392⟩
    ⟨rho 38397, rho 38398⟩ ⟨seg48Out0AccX90 rho, seg48Out0AccY90 rho⟩ ⟨rho 38404, rho 38405⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5649 rho ∧ Seg48.relationRow5650 rho ∧ Seg48.relationRow5651 rho ∧ Seg48.relationRow5652 rho ∧ Seg48.relationRow5653 rho ∧ Seg48.relationRow5654 rho ∧ Seg48.relationRow5655 rho ∧ Seg48.relationRow5656 rho ∧ Seg48.relationRow5657 rho ∧ Seg48.relationRow5658 rho ∧ Seg48.relationRow5659 rho ∧ Seg48.relationRow5660 rho ∧ Seg48.relationRow5661 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661⟩

theorem seg48Out0_rung90 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37204 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX90 rho, seg48Out0AccY90 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38404, rho 38405⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX90 rho, seg48Out0AccY90 rho⟩ ⟨rho 38404, rho 38405⟩
        ⟨seg48Out0AccX91 rho, seg48Out0AccY91 rho⟩ ⟨rho 38417, rho 38418⟩ := by
  obtain ⟨r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661⟩ := seg48Out0_rows90 rho h
  unfold Seg48.relationRow5649 at r5649

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5649

  unfold Seg48.relationRow5650 at r5650

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5650

  unfold Seg48.relationRow5651 at r5651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5651

  unfold Seg48.relationRow5652 at r5652

  unfold Seg48.relationRow5653 at r5653

  unfold Seg48.relationRow5654 at r5654

  unfold Seg48.relationRow5655 at r5655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5655

  unfold Seg48.relationRow5656 at r5656

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5656

  unfold Seg48.relationRow5657 at r5657

  unfold Seg48.relationRow5658 at r5658

  unfold Seg48.relationRow5659 at r5659

  unfold Seg48.relationRow5660 at r5660

  unfold Seg48.relationRow5661 at r5661

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX91 rho = seg48Out0AccX90 rho + rho 38412 := by
    unfold seg48Out0AccX91 seg48Out0AccX90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 90]

    ring

  have hnexty : seg48Out0AccY91 rho = seg48Out0AccY90 rho + rho 38413 := by
    unfold seg48Out0AccY91 seg48Out0AccY90
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 90]

    ring

  have ha0 : (rho 38404 + rho 38405) * (seg48Out0AccX90 rho + seg48Out0AccY90 rho) = rho 38406 := by
    unfold seg48Out0AccX90 seg48Out0AccY90
    linear_combination r5649
  have ha1 : rho 38405 * seg48Out0AccX90 rho = rho 38407 := by
    unfold seg48Out0AccX90
    linear_combination r5650
  have ha2 : rho 38404 * seg48Out0AccY90 rho = rho 38408 := by
    unfold seg48Out0AccY90
    linear_combination r5651
  have ha3 : 3021 * rho 38407 * rho 38408 = rho 38409 := by
    linear_combination r5652
  have ha4 : rho 38410 * (1 + rho 38409) = rho 38407 + rho 38408 := by
    linear_combination r5653
  have ha5 : rho 38411 * (1 - rho 38409) = rho 38406 - rho 38407 - rho 38408 := by
    linear_combination r5654
  have haddx :
      rho 38410 * (1 + 3021 * (rho 38405 * seg48Out0AccX90 rho) * (rho 38404 * seg48Out0AccY90 rho)) =
        rho 38405 * seg48Out0AccX90 rho + rho 38404 * seg48Out0AccY90 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38411 * (1 - 3021 * (rho 38405 * seg48Out0AccX90 rho) * (rho 38404 * seg48Out0AccY90 rho)) =
        (-1) * (rho 38405 * seg48Out0AccX90 rho) - rho 38404 * seg48Out0AccY90 rho +
          (seg48Out0AccY90 rho - seg48Out0AccX90 rho * (-1)) * (rho 38404 + rho 38405) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38411 * (1 - rho 38409) = rho 38406 - rho 38407 - rho 38408 := ha5
      _ = (-1) * rho 38407 - rho 38408 + (seg48Out0AccY90 rho - seg48Out0AccX90 rho * (-1)) *
          (rho 38404 + rho 38405) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX91 rho = seg48Out0AccX90 rho - Bool.toZMod bit * (seg48Out0AccX90 rho - rho 38410) := by
    have hd : rho 38412 = Bool.toZMod bit * (rho 38410 - seg48Out0AccX90 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX90
      linear_combination -r5655
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY91 rho = seg48Out0AccY90 rho - Bool.toZMod bit * (seg48Out0AccY90 rho - rho 38411) := by
    have hd : rho 38413 = Bool.toZMod bit * (rho 38411 - seg48Out0AccY90 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY90
      linear_combination -r5656
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38404 * rho 38405 = rho 38414 := by linear_combination r5657
  have hd1 : rho 38404 * rho 38404 = rho 38415 := by linear_combination r5658
  have hd2 : rho 38405 * rho 38405 = rho 38416 := by linear_combination r5659
  have hd3 : rho 38417 * (rho 38405 * rho 38405 + rho 38404 * rho 38404 * (-1)) =
      2 * (rho 38404 * rho 38405) := by
    rw [hd0, hd1, hd2]
    linear_combination r5660
  have hd4 : rho 38418 * (2 - (rho 38405 * rho 38405 + rho 38404 * rho 38404 * (-1))) =
      rho 38405 * rho 38405 - rho 38404 * rho 38404 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5661
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX90 rho, seg48Out0AccY90 rho⟩ ⟨rho 38404, rho 38405⟩
    ⟨rho 38410, rho 38411⟩ ⟨seg48Out0AccX91 rho, seg48Out0AccY91 rho⟩ ⟨rho 38417, rho 38418⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5662 rho ∧ Seg48.relationRow5663 rho ∧ Seg48.relationRow5664 rho ∧ Seg48.relationRow5665 rho ∧ Seg48.relationRow5666 rho ∧ Seg48.relationRow5667 rho ∧ Seg48.relationRow5668 rho ∧ Seg48.relationRow5669 rho ∧ Seg48.relationRow5670 rho ∧ Seg48.relationRow5671 rho ∧ Seg48.relationRow5672 rho ∧ Seg48.relationRow5673 rho ∧ Seg48.relationRow5674 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, _, _, _, _, _⟩

  exact ⟨r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674⟩

theorem seg48Out0_rung91 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37205 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX91 rho, seg48Out0AccY91 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38417, rho 38418⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX91 rho, seg48Out0AccY91 rho⟩ ⟨rho 38417, rho 38418⟩
        ⟨seg48Out0AccX92 rho, seg48Out0AccY92 rho⟩ ⟨rho 38430, rho 38431⟩ := by
  obtain ⟨r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674⟩ := seg48Out0_rows91 rho h
  unfold Seg48.relationRow5662 at r5662

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5662

  unfold Seg48.relationRow5663 at r5663

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5663

  unfold Seg48.relationRow5664 at r5664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5664

  unfold Seg48.relationRow5665 at r5665

  unfold Seg48.relationRow5666 at r5666

  unfold Seg48.relationRow5667 at r5667

  unfold Seg48.relationRow5668 at r5668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5668

  unfold Seg48.relationRow5669 at r5669

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5669

  unfold Seg48.relationRow5670 at r5670

  unfold Seg48.relationRow5671 at r5671

  unfold Seg48.relationRow5672 at r5672

  unfold Seg48.relationRow5673 at r5673

  unfold Seg48.relationRow5674 at r5674

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX92 rho = seg48Out0AccX91 rho + rho 38425 := by
    unfold seg48Out0AccX92 seg48Out0AccX91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 91]

    ring

  have hnexty : seg48Out0AccY92 rho = seg48Out0AccY91 rho + rho 38426 := by
    unfold seg48Out0AccY92 seg48Out0AccY91
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 91]

    ring

  have ha0 : (rho 38417 + rho 38418) * (seg48Out0AccX91 rho + seg48Out0AccY91 rho) = rho 38419 := by
    unfold seg48Out0AccX91 seg48Out0AccY91
    linear_combination r5662
  have ha1 : rho 38418 * seg48Out0AccX91 rho = rho 38420 := by
    unfold seg48Out0AccX91
    linear_combination r5663
  have ha2 : rho 38417 * seg48Out0AccY91 rho = rho 38421 := by
    unfold seg48Out0AccY91
    linear_combination r5664
  have ha3 : 3021 * rho 38420 * rho 38421 = rho 38422 := by
    linear_combination r5665
  have ha4 : rho 38423 * (1 + rho 38422) = rho 38420 + rho 38421 := by
    linear_combination r5666
  have ha5 : rho 38424 * (1 - rho 38422) = rho 38419 - rho 38420 - rho 38421 := by
    linear_combination r5667
  have haddx :
      rho 38423 * (1 + 3021 * (rho 38418 * seg48Out0AccX91 rho) * (rho 38417 * seg48Out0AccY91 rho)) =
        rho 38418 * seg48Out0AccX91 rho + rho 38417 * seg48Out0AccY91 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38424 * (1 - 3021 * (rho 38418 * seg48Out0AccX91 rho) * (rho 38417 * seg48Out0AccY91 rho)) =
        (-1) * (rho 38418 * seg48Out0AccX91 rho) - rho 38417 * seg48Out0AccY91 rho +
          (seg48Out0AccY91 rho - seg48Out0AccX91 rho * (-1)) * (rho 38417 + rho 38418) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38424 * (1 - rho 38422) = rho 38419 - rho 38420 - rho 38421 := ha5
      _ = (-1) * rho 38420 - rho 38421 + (seg48Out0AccY91 rho - seg48Out0AccX91 rho * (-1)) *
          (rho 38417 + rho 38418) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX92 rho = seg48Out0AccX91 rho - Bool.toZMod bit * (seg48Out0AccX91 rho - rho 38423) := by
    have hd : rho 38425 = Bool.toZMod bit * (rho 38423 - seg48Out0AccX91 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX91
      linear_combination -r5668
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY92 rho = seg48Out0AccY91 rho - Bool.toZMod bit * (seg48Out0AccY91 rho - rho 38424) := by
    have hd : rho 38426 = Bool.toZMod bit * (rho 38424 - seg48Out0AccY91 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY91
      linear_combination -r5669
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38417 * rho 38418 = rho 38427 := by linear_combination r5670
  have hd1 : rho 38417 * rho 38417 = rho 38428 := by linear_combination r5671
  have hd2 : rho 38418 * rho 38418 = rho 38429 := by linear_combination r5672
  have hd3 : rho 38430 * (rho 38418 * rho 38418 + rho 38417 * rho 38417 * (-1)) =
      2 * (rho 38417 * rho 38418) := by
    rw [hd0, hd1, hd2]
    linear_combination r5673
  have hd4 : rho 38431 * (2 - (rho 38418 * rho 38418 + rho 38417 * rho 38417 * (-1))) =
      rho 38418 * rho 38418 - rho 38417 * rho 38417 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5674
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX91 rho, seg48Out0AccY91 rho⟩ ⟨rho 38417, rho 38418⟩
    ⟨rho 38423, rho 38424⟩ ⟨seg48Out0AccX92 rho, seg48Out0AccY92 rho⟩ ⟨rho 38430, rho 38431⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5675 rho ∧ Seg48.relationRow5676 rho ∧ Seg48.relationRow5677 rho ∧ Seg48.relationRow5678 rho ∧ Seg48.relationRow5679 rho ∧ Seg48.relationRow5680 rho ∧ Seg48.relationRow5681 rho ∧ Seg48.relationRow5682 rho ∧ Seg48.relationRow5683 rho ∧ Seg48.relationRow5684 rho ∧ Seg48.relationRow5685 rho ∧ Seg48.relationRow5686 rho ∧ Seg48.relationRow5687 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5675, r5676, r5677, r5678, r5679⟩

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687⟩

theorem seg48Out0_rung92 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37206 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX92 rho, seg48Out0AccY92 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38430, rho 38431⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX92 rho, seg48Out0AccY92 rho⟩ ⟨rho 38430, rho 38431⟩
        ⟨seg48Out0AccX93 rho, seg48Out0AccY93 rho⟩ ⟨rho 38443, rho 38444⟩ := by
  obtain ⟨r5675, r5676, r5677, r5678, r5679, r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687⟩ := seg48Out0_rows92 rho h
  unfold Seg48.relationRow5675 at r5675

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5675

  unfold Seg48.relationRow5676 at r5676

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5676

  unfold Seg48.relationRow5677 at r5677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5677

  unfold Seg48.relationRow5678 at r5678

  unfold Seg48.relationRow5679 at r5679

  unfold Seg48.relationRow5680 at r5680

  unfold Seg48.relationRow5681 at r5681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5681

  unfold Seg48.relationRow5682 at r5682

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5682

  unfold Seg48.relationRow5683 at r5683

  unfold Seg48.relationRow5684 at r5684

  unfold Seg48.relationRow5685 at r5685

  unfold Seg48.relationRow5686 at r5686

  unfold Seg48.relationRow5687 at r5687

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX93 rho = seg48Out0AccX92 rho + rho 38438 := by
    unfold seg48Out0AccX93 seg48Out0AccX92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 92]

    ring

  have hnexty : seg48Out0AccY93 rho = seg48Out0AccY92 rho + rho 38439 := by
    unfold seg48Out0AccY93 seg48Out0AccY92
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 92]

    ring

  have ha0 : (rho 38430 + rho 38431) * (seg48Out0AccX92 rho + seg48Out0AccY92 rho) = rho 38432 := by
    unfold seg48Out0AccX92 seg48Out0AccY92
    linear_combination r5675
  have ha1 : rho 38431 * seg48Out0AccX92 rho = rho 38433 := by
    unfold seg48Out0AccX92
    linear_combination r5676
  have ha2 : rho 38430 * seg48Out0AccY92 rho = rho 38434 := by
    unfold seg48Out0AccY92
    linear_combination r5677
  have ha3 : 3021 * rho 38433 * rho 38434 = rho 38435 := by
    linear_combination r5678
  have ha4 : rho 38436 * (1 + rho 38435) = rho 38433 + rho 38434 := by
    linear_combination r5679
  have ha5 : rho 38437 * (1 - rho 38435) = rho 38432 - rho 38433 - rho 38434 := by
    linear_combination r5680
  have haddx :
      rho 38436 * (1 + 3021 * (rho 38431 * seg48Out0AccX92 rho) * (rho 38430 * seg48Out0AccY92 rho)) =
        rho 38431 * seg48Out0AccX92 rho + rho 38430 * seg48Out0AccY92 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38437 * (1 - 3021 * (rho 38431 * seg48Out0AccX92 rho) * (rho 38430 * seg48Out0AccY92 rho)) =
        (-1) * (rho 38431 * seg48Out0AccX92 rho) - rho 38430 * seg48Out0AccY92 rho +
          (seg48Out0AccY92 rho - seg48Out0AccX92 rho * (-1)) * (rho 38430 + rho 38431) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38437 * (1 - rho 38435) = rho 38432 - rho 38433 - rho 38434 := ha5
      _ = (-1) * rho 38433 - rho 38434 + (seg48Out0AccY92 rho - seg48Out0AccX92 rho * (-1)) *
          (rho 38430 + rho 38431) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX93 rho = seg48Out0AccX92 rho - Bool.toZMod bit * (seg48Out0AccX92 rho - rho 38436) := by
    have hd : rho 38438 = Bool.toZMod bit * (rho 38436 - seg48Out0AccX92 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX92
      linear_combination -r5681
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY93 rho = seg48Out0AccY92 rho - Bool.toZMod bit * (seg48Out0AccY92 rho - rho 38437) := by
    have hd : rho 38439 = Bool.toZMod bit * (rho 38437 - seg48Out0AccY92 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY92
      linear_combination -r5682
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38430 * rho 38431 = rho 38440 := by linear_combination r5683
  have hd1 : rho 38430 * rho 38430 = rho 38441 := by linear_combination r5684
  have hd2 : rho 38431 * rho 38431 = rho 38442 := by linear_combination r5685
  have hd3 : rho 38443 * (rho 38431 * rho 38431 + rho 38430 * rho 38430 * (-1)) =
      2 * (rho 38430 * rho 38431) := by
    rw [hd0, hd1, hd2]
    linear_combination r5686
  have hd4 : rho 38444 * (2 - (rho 38431 * rho 38431 + rho 38430 * rho 38430 * (-1))) =
      rho 38431 * rho 38431 - rho 38430 * rho 38430 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5687
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX92 rho, seg48Out0AccY92 rho⟩ ⟨rho 38430, rho 38431⟩
    ⟨rho 38436, rho 38437⟩ ⟨seg48Out0AccX93 rho, seg48Out0AccY93 rho⟩ ⟨rho 38443, rho 38444⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5688 rho ∧ Seg48.relationRow5689 rho ∧ Seg48.relationRow5690 rho ∧ Seg48.relationRow5691 rho ∧ Seg48.relationRow5692 rho ∧ Seg48.relationRow5693 rho ∧ Seg48.relationRow5694 rho ∧ Seg48.relationRow5695 rho ∧ Seg48.relationRow5696 rho ∧ Seg48.relationRow5697 rho ∧ Seg48.relationRow5698 rho ∧ Seg48.relationRow5699 rho ∧ Seg48.relationRow5700 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700⟩

theorem seg48Out0_rung93 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37207 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX93 rho, seg48Out0AccY93 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38443, rho 38444⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX93 rho, seg48Out0AccY93 rho⟩ ⟨rho 38443, rho 38444⟩
        ⟨seg48Out0AccX94 rho, seg48Out0AccY94 rho⟩ ⟨rho 38456, rho 38457⟩ := by
  obtain ⟨r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700⟩ := seg48Out0_rows93 rho h
  unfold Seg48.relationRow5688 at r5688

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5688

  unfold Seg48.relationRow5689 at r5689

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5689

  unfold Seg48.relationRow5690 at r5690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5690

  unfold Seg48.relationRow5691 at r5691

  unfold Seg48.relationRow5692 at r5692

  unfold Seg48.relationRow5693 at r5693

  unfold Seg48.relationRow5694 at r5694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5694

  unfold Seg48.relationRow5695 at r5695

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5695

  unfold Seg48.relationRow5696 at r5696

  unfold Seg48.relationRow5697 at r5697

  unfold Seg48.relationRow5698 at r5698

  unfold Seg48.relationRow5699 at r5699

  unfold Seg48.relationRow5700 at r5700

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX94 rho = seg48Out0AccX93 rho + rho 38451 := by
    unfold seg48Out0AccX94 seg48Out0AccX93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 93]

    ring

  have hnexty : seg48Out0AccY94 rho = seg48Out0AccY93 rho + rho 38452 := by
    unfold seg48Out0AccY94 seg48Out0AccY93
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 93]

    ring

  have ha0 : (rho 38443 + rho 38444) * (seg48Out0AccX93 rho + seg48Out0AccY93 rho) = rho 38445 := by
    unfold seg48Out0AccX93 seg48Out0AccY93
    linear_combination r5688
  have ha1 : rho 38444 * seg48Out0AccX93 rho = rho 38446 := by
    unfold seg48Out0AccX93
    linear_combination r5689
  have ha2 : rho 38443 * seg48Out0AccY93 rho = rho 38447 := by
    unfold seg48Out0AccY93
    linear_combination r5690
  have ha3 : 3021 * rho 38446 * rho 38447 = rho 38448 := by
    linear_combination r5691
  have ha4 : rho 38449 * (1 + rho 38448) = rho 38446 + rho 38447 := by
    linear_combination r5692
  have ha5 : rho 38450 * (1 - rho 38448) = rho 38445 - rho 38446 - rho 38447 := by
    linear_combination r5693
  have haddx :
      rho 38449 * (1 + 3021 * (rho 38444 * seg48Out0AccX93 rho) * (rho 38443 * seg48Out0AccY93 rho)) =
        rho 38444 * seg48Out0AccX93 rho + rho 38443 * seg48Out0AccY93 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38450 * (1 - 3021 * (rho 38444 * seg48Out0AccX93 rho) * (rho 38443 * seg48Out0AccY93 rho)) =
        (-1) * (rho 38444 * seg48Out0AccX93 rho) - rho 38443 * seg48Out0AccY93 rho +
          (seg48Out0AccY93 rho - seg48Out0AccX93 rho * (-1)) * (rho 38443 + rho 38444) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38450 * (1 - rho 38448) = rho 38445 - rho 38446 - rho 38447 := ha5
      _ = (-1) * rho 38446 - rho 38447 + (seg48Out0AccY93 rho - seg48Out0AccX93 rho * (-1)) *
          (rho 38443 + rho 38444) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX94 rho = seg48Out0AccX93 rho - Bool.toZMod bit * (seg48Out0AccX93 rho - rho 38449) := by
    have hd : rho 38451 = Bool.toZMod bit * (rho 38449 - seg48Out0AccX93 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX93
      linear_combination -r5694
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY94 rho = seg48Out0AccY93 rho - Bool.toZMod bit * (seg48Out0AccY93 rho - rho 38450) := by
    have hd : rho 38452 = Bool.toZMod bit * (rho 38450 - seg48Out0AccY93 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY93
      linear_combination -r5695
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38443 * rho 38444 = rho 38453 := by linear_combination r5696
  have hd1 : rho 38443 * rho 38443 = rho 38454 := by linear_combination r5697
  have hd2 : rho 38444 * rho 38444 = rho 38455 := by linear_combination r5698
  have hd3 : rho 38456 * (rho 38444 * rho 38444 + rho 38443 * rho 38443 * (-1)) =
      2 * (rho 38443 * rho 38444) := by
    rw [hd0, hd1, hd2]
    linear_combination r5699
  have hd4 : rho 38457 * (2 - (rho 38444 * rho 38444 + rho 38443 * rho 38443 * (-1))) =
      rho 38444 * rho 38444 - rho 38443 * rho 38443 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5700
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX93 rho, seg48Out0AccY93 rho⟩ ⟨rho 38443, rho 38444⟩
    ⟨rho 38449, rho 38450⟩ ⟨seg48Out0AccX94 rho, seg48Out0AccY94 rho⟩ ⟨rho 38456, rho 38457⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5701 rho ∧ Seg48.relationRow5702 rho ∧ Seg48.relationRow5703 rho ∧ Seg48.relationRow5704 rho ∧ Seg48.relationRow5705 rho ∧ Seg48.relationRow5706 rho ∧ Seg48.relationRow5707 rho ∧ Seg48.relationRow5708 rho ∧ Seg48.relationRow5709 rho ∧ Seg48.relationRow5710 rho ∧ Seg48.relationRow5711 rho ∧ Seg48.relationRow5712 rho ∧ Seg48.relationRow5713 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713⟩

theorem seg48Out0_rung94 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37208 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX94 rho, seg48Out0AccY94 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38456, rho 38457⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX94 rho, seg48Out0AccY94 rho⟩ ⟨rho 38456, rho 38457⟩
        ⟨seg48Out0AccX95 rho, seg48Out0AccY95 rho⟩ ⟨rho 38469, rho 38470⟩ := by
  obtain ⟨r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713⟩ := seg48Out0_rows94 rho h
  unfold Seg48.relationRow5701 at r5701

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5701

  unfold Seg48.relationRow5702 at r5702

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5702

  unfold Seg48.relationRow5703 at r5703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5703

  unfold Seg48.relationRow5704 at r5704

  unfold Seg48.relationRow5705 at r5705

  unfold Seg48.relationRow5706 at r5706

  unfold Seg48.relationRow5707 at r5707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5707

  unfold Seg48.relationRow5708 at r5708

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5708

  unfold Seg48.relationRow5709 at r5709

  unfold Seg48.relationRow5710 at r5710

  unfold Seg48.relationRow5711 at r5711

  unfold Seg48.relationRow5712 at r5712

  unfold Seg48.relationRow5713 at r5713

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX95 rho = seg48Out0AccX94 rho + rho 38464 := by
    unfold seg48Out0AccX95 seg48Out0AccX94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 94]

    ring

  have hnexty : seg48Out0AccY95 rho = seg48Out0AccY94 rho + rho 38465 := by
    unfold seg48Out0AccY95 seg48Out0AccY94
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 94]

    ring

  have ha0 : (rho 38456 + rho 38457) * (seg48Out0AccX94 rho + seg48Out0AccY94 rho) = rho 38458 := by
    unfold seg48Out0AccX94 seg48Out0AccY94
    linear_combination r5701
  have ha1 : rho 38457 * seg48Out0AccX94 rho = rho 38459 := by
    unfold seg48Out0AccX94
    linear_combination r5702
  have ha2 : rho 38456 * seg48Out0AccY94 rho = rho 38460 := by
    unfold seg48Out0AccY94
    linear_combination r5703
  have ha3 : 3021 * rho 38459 * rho 38460 = rho 38461 := by
    linear_combination r5704
  have ha4 : rho 38462 * (1 + rho 38461) = rho 38459 + rho 38460 := by
    linear_combination r5705
  have ha5 : rho 38463 * (1 - rho 38461) = rho 38458 - rho 38459 - rho 38460 := by
    linear_combination r5706
  have haddx :
      rho 38462 * (1 + 3021 * (rho 38457 * seg48Out0AccX94 rho) * (rho 38456 * seg48Out0AccY94 rho)) =
        rho 38457 * seg48Out0AccX94 rho + rho 38456 * seg48Out0AccY94 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38463 * (1 - 3021 * (rho 38457 * seg48Out0AccX94 rho) * (rho 38456 * seg48Out0AccY94 rho)) =
        (-1) * (rho 38457 * seg48Out0AccX94 rho) - rho 38456 * seg48Out0AccY94 rho +
          (seg48Out0AccY94 rho - seg48Out0AccX94 rho * (-1)) * (rho 38456 + rho 38457) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38463 * (1 - rho 38461) = rho 38458 - rho 38459 - rho 38460 := ha5
      _ = (-1) * rho 38459 - rho 38460 + (seg48Out0AccY94 rho - seg48Out0AccX94 rho * (-1)) *
          (rho 38456 + rho 38457) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX95 rho = seg48Out0AccX94 rho - Bool.toZMod bit * (seg48Out0AccX94 rho - rho 38462) := by
    have hd : rho 38464 = Bool.toZMod bit * (rho 38462 - seg48Out0AccX94 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX94
      linear_combination -r5707
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY95 rho = seg48Out0AccY94 rho - Bool.toZMod bit * (seg48Out0AccY94 rho - rho 38463) := by
    have hd : rho 38465 = Bool.toZMod bit * (rho 38463 - seg48Out0AccY94 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY94
      linear_combination -r5708
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38456 * rho 38457 = rho 38466 := by linear_combination r5709
  have hd1 : rho 38456 * rho 38456 = rho 38467 := by linear_combination r5710
  have hd2 : rho 38457 * rho 38457 = rho 38468 := by linear_combination r5711
  have hd3 : rho 38469 * (rho 38457 * rho 38457 + rho 38456 * rho 38456 * (-1)) =
      2 * (rho 38456 * rho 38457) := by
    rw [hd0, hd1, hd2]
    linear_combination r5712
  have hd4 : rho 38470 * (2 - (rho 38457 * rho 38457 + rho 38456 * rho 38456 * (-1))) =
      rho 38457 * rho 38457 - rho 38456 * rho 38456 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5713
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX94 rho, seg48Out0AccY94 rho⟩ ⟨rho 38456, rho 38457⟩
    ⟨rho 38462, rho 38463⟩ ⟨seg48Out0AccX95 rho, seg48Out0AccY95 rho⟩ ⟨rho 38469, rho 38470⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5714 rho ∧ Seg48.relationRow5715 rho ∧ Seg48.relationRow5716 rho ∧ Seg48.relationRow5717 rho ∧ Seg48.relationRow5718 rho ∧ Seg48.relationRow5719 rho ∧ Seg48.relationRow5720 rho ∧ Seg48.relationRow5721 rho ∧ Seg48.relationRow5722 rho ∧ Seg48.relationRow5723 rho ∧ Seg48.relationRow5724 rho ∧ Seg48.relationRow5725 rho ∧ Seg48.relationRow5726 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩

theorem seg48Out0_rung95 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37209 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX95 rho, seg48Out0AccY95 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38469, rho 38470⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX95 rho, seg48Out0AccY95 rho⟩ ⟨rho 38469, rho 38470⟩
        ⟨seg48Out0AccX96 rho, seg48Out0AccY96 rho⟩ ⟨rho 38482, rho 38483⟩ := by
  obtain ⟨r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726⟩ := seg48Out0_rows95 rho h
  unfold Seg48.relationRow5714 at r5714

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5714

  unfold Seg48.relationRow5715 at r5715

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5715

  unfold Seg48.relationRow5716 at r5716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5716

  unfold Seg48.relationRow5717 at r5717

  unfold Seg48.relationRow5718 at r5718

  unfold Seg48.relationRow5719 at r5719

  unfold Seg48.relationRow5720 at r5720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5720

  unfold Seg48.relationRow5721 at r5721

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5721

  unfold Seg48.relationRow5722 at r5722

  unfold Seg48.relationRow5723 at r5723

  unfold Seg48.relationRow5724 at r5724

  unfold Seg48.relationRow5725 at r5725

  unfold Seg48.relationRow5726 at r5726

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX96 rho = seg48Out0AccX95 rho + rho 38477 := by
    unfold seg48Out0AccX96 seg48Out0AccX95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 95]

    ring

  have hnexty : seg48Out0AccY96 rho = seg48Out0AccY95 rho + rho 38478 := by
    unfold seg48Out0AccY96 seg48Out0AccY95
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 95]

    ring

  have ha0 : (rho 38469 + rho 38470) * (seg48Out0AccX95 rho + seg48Out0AccY95 rho) = rho 38471 := by
    unfold seg48Out0AccX95 seg48Out0AccY95
    linear_combination r5714
  have ha1 : rho 38470 * seg48Out0AccX95 rho = rho 38472 := by
    unfold seg48Out0AccX95
    linear_combination r5715
  have ha2 : rho 38469 * seg48Out0AccY95 rho = rho 38473 := by
    unfold seg48Out0AccY95
    linear_combination r5716
  have ha3 : 3021 * rho 38472 * rho 38473 = rho 38474 := by
    linear_combination r5717
  have ha4 : rho 38475 * (1 + rho 38474) = rho 38472 + rho 38473 := by
    linear_combination r5718
  have ha5 : rho 38476 * (1 - rho 38474) = rho 38471 - rho 38472 - rho 38473 := by
    linear_combination r5719
  have haddx :
      rho 38475 * (1 + 3021 * (rho 38470 * seg48Out0AccX95 rho) * (rho 38469 * seg48Out0AccY95 rho)) =
        rho 38470 * seg48Out0AccX95 rho + rho 38469 * seg48Out0AccY95 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38476 * (1 - 3021 * (rho 38470 * seg48Out0AccX95 rho) * (rho 38469 * seg48Out0AccY95 rho)) =
        (-1) * (rho 38470 * seg48Out0AccX95 rho) - rho 38469 * seg48Out0AccY95 rho +
          (seg48Out0AccY95 rho - seg48Out0AccX95 rho * (-1)) * (rho 38469 + rho 38470) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38476 * (1 - rho 38474) = rho 38471 - rho 38472 - rho 38473 := ha5
      _ = (-1) * rho 38472 - rho 38473 + (seg48Out0AccY95 rho - seg48Out0AccX95 rho * (-1)) *
          (rho 38469 + rho 38470) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX96 rho = seg48Out0AccX95 rho - Bool.toZMod bit * (seg48Out0AccX95 rho - rho 38475) := by
    have hd : rho 38477 = Bool.toZMod bit * (rho 38475 - seg48Out0AccX95 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX95
      linear_combination -r5720
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY96 rho = seg48Out0AccY95 rho - Bool.toZMod bit * (seg48Out0AccY95 rho - rho 38476) := by
    have hd : rho 38478 = Bool.toZMod bit * (rho 38476 - seg48Out0AccY95 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY95
      linear_combination -r5721
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38469 * rho 38470 = rho 38479 := by linear_combination r5722
  have hd1 : rho 38469 * rho 38469 = rho 38480 := by linear_combination r5723
  have hd2 : rho 38470 * rho 38470 = rho 38481 := by linear_combination r5724
  have hd3 : rho 38482 * (rho 38470 * rho 38470 + rho 38469 * rho 38469 * (-1)) =
      2 * (rho 38469 * rho 38470) := by
    rw [hd0, hd1, hd2]
    linear_combination r5725
  have hd4 : rho 38483 * (2 - (rho 38470 * rho 38470 + rho 38469 * rho 38469 * (-1))) =
      rho 38470 * rho 38470 - rho 38469 * rho 38469 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5726
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX95 rho, seg48Out0AccY95 rho⟩ ⟨rho 38469, rho 38470⟩
    ⟨rho 38475, rho 38476⟩ ⟨seg48Out0AccX96 rho, seg48Out0AccY96 rho⟩ ⟨rho 38482, rho 38483⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5727 rho ∧ Seg48.relationRow5728 rho ∧ Seg48.relationRow5729 rho ∧ Seg48.relationRow5730 rho ∧ Seg48.relationRow5731 rho ∧ Seg48.relationRow5732 rho ∧ Seg48.relationRow5733 rho ∧ Seg48.relationRow5734 rho ∧ Seg48.relationRow5735 rho ∧ Seg48.relationRow5736 rho ∧ Seg48.relationRow5737 rho ∧ Seg48.relationRow5738 rho ∧ Seg48.relationRow5739 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739⟩

theorem seg48Out0_rung96 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37210 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX96 rho, seg48Out0AccY96 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38482, rho 38483⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX96 rho, seg48Out0AccY96 rho⟩ ⟨rho 38482, rho 38483⟩
        ⟨seg48Out0AccX97 rho, seg48Out0AccY97 rho⟩ ⟨rho 38495, rho 38496⟩ := by
  obtain ⟨r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739⟩ := seg48Out0_rows96 rho h
  unfold Seg48.relationRow5727 at r5727

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5727

  unfold Seg48.relationRow5728 at r5728

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5728

  unfold Seg48.relationRow5729 at r5729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5729

  unfold Seg48.relationRow5730 at r5730

  unfold Seg48.relationRow5731 at r5731

  unfold Seg48.relationRow5732 at r5732

  unfold Seg48.relationRow5733 at r5733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5733

  unfold Seg48.relationRow5734 at r5734

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5734

  unfold Seg48.relationRow5735 at r5735

  unfold Seg48.relationRow5736 at r5736

  unfold Seg48.relationRow5737 at r5737

  unfold Seg48.relationRow5738 at r5738

  unfold Seg48.relationRow5739 at r5739

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX97 rho = seg48Out0AccX96 rho + rho 38490 := by
    unfold seg48Out0AccX97 seg48Out0AccX96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 96]

    ring

  have hnexty : seg48Out0AccY97 rho = seg48Out0AccY96 rho + rho 38491 := by
    unfold seg48Out0AccY97 seg48Out0AccY96
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 96]

    ring

  have ha0 : (rho 38482 + rho 38483) * (seg48Out0AccX96 rho + seg48Out0AccY96 rho) = rho 38484 := by
    unfold seg48Out0AccX96 seg48Out0AccY96
    linear_combination r5727
  have ha1 : rho 38483 * seg48Out0AccX96 rho = rho 38485 := by
    unfold seg48Out0AccX96
    linear_combination r5728
  have ha2 : rho 38482 * seg48Out0AccY96 rho = rho 38486 := by
    unfold seg48Out0AccY96
    linear_combination r5729
  have ha3 : 3021 * rho 38485 * rho 38486 = rho 38487 := by
    linear_combination r5730
  have ha4 : rho 38488 * (1 + rho 38487) = rho 38485 + rho 38486 := by
    linear_combination r5731
  have ha5 : rho 38489 * (1 - rho 38487) = rho 38484 - rho 38485 - rho 38486 := by
    linear_combination r5732
  have haddx :
      rho 38488 * (1 + 3021 * (rho 38483 * seg48Out0AccX96 rho) * (rho 38482 * seg48Out0AccY96 rho)) =
        rho 38483 * seg48Out0AccX96 rho + rho 38482 * seg48Out0AccY96 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38489 * (1 - 3021 * (rho 38483 * seg48Out0AccX96 rho) * (rho 38482 * seg48Out0AccY96 rho)) =
        (-1) * (rho 38483 * seg48Out0AccX96 rho) - rho 38482 * seg48Out0AccY96 rho +
          (seg48Out0AccY96 rho - seg48Out0AccX96 rho * (-1)) * (rho 38482 + rho 38483) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38489 * (1 - rho 38487) = rho 38484 - rho 38485 - rho 38486 := ha5
      _ = (-1) * rho 38485 - rho 38486 + (seg48Out0AccY96 rho - seg48Out0AccX96 rho * (-1)) *
          (rho 38482 + rho 38483) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX97 rho = seg48Out0AccX96 rho - Bool.toZMod bit * (seg48Out0AccX96 rho - rho 38488) := by
    have hd : rho 38490 = Bool.toZMod bit * (rho 38488 - seg48Out0AccX96 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX96
      linear_combination -r5733
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY97 rho = seg48Out0AccY96 rho - Bool.toZMod bit * (seg48Out0AccY96 rho - rho 38489) := by
    have hd : rho 38491 = Bool.toZMod bit * (rho 38489 - seg48Out0AccY96 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY96
      linear_combination -r5734
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38482 * rho 38483 = rho 38492 := by linear_combination r5735
  have hd1 : rho 38482 * rho 38482 = rho 38493 := by linear_combination r5736
  have hd2 : rho 38483 * rho 38483 = rho 38494 := by linear_combination r5737
  have hd3 : rho 38495 * (rho 38483 * rho 38483 + rho 38482 * rho 38482 * (-1)) =
      2 * (rho 38482 * rho 38483) := by
    rw [hd0, hd1, hd2]
    linear_combination r5738
  have hd4 : rho 38496 * (2 - (rho 38483 * rho 38483 + rho 38482 * rho 38482 * (-1))) =
      rho 38483 * rho 38483 - rho 38482 * rho 38482 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5739
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX96 rho, seg48Out0AccY96 rho⟩ ⟨rho 38482, rho 38483⟩
    ⟨rho 38488, rho 38489⟩ ⟨seg48Out0AccX97 rho, seg48Out0AccY97 rho⟩ ⟨rho 38495, rho 38496⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5740 rho ∧ Seg48.relationRow5741 rho ∧ Seg48.relationRow5742 rho ∧ Seg48.relationRow5743 rho ∧ Seg48.relationRow5744 rho ∧ Seg48.relationRow5745 rho ∧ Seg48.relationRow5746 rho ∧ Seg48.relationRow5747 rho ∧ Seg48.relationRow5748 rho ∧ Seg48.relationRow5749 rho ∧ Seg48.relationRow5750 rho ∧ Seg48.relationRow5751 rho ∧ Seg48.relationRow5752 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, _, _, _, _, _, _, _⟩

  exact ⟨r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752⟩

theorem seg48Out0_rung97 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37211 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX97 rho, seg48Out0AccY97 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38495, rho 38496⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX97 rho, seg48Out0AccY97 rho⟩ ⟨rho 38495, rho 38496⟩
        ⟨seg48Out0AccX98 rho, seg48Out0AccY98 rho⟩ ⟨rho 38508, rho 38509⟩ := by
  obtain ⟨r5740, r5741, r5742, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752⟩ := seg48Out0_rows97 rho h
  unfold Seg48.relationRow5740 at r5740

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5740

  unfold Seg48.relationRow5741 at r5741

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5741

  unfold Seg48.relationRow5742 at r5742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5742

  unfold Seg48.relationRow5743 at r5743

  unfold Seg48.relationRow5744 at r5744

  unfold Seg48.relationRow5745 at r5745

  unfold Seg48.relationRow5746 at r5746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5746

  unfold Seg48.relationRow5747 at r5747

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5747

  unfold Seg48.relationRow5748 at r5748

  unfold Seg48.relationRow5749 at r5749

  unfold Seg48.relationRow5750 at r5750

  unfold Seg48.relationRow5751 at r5751

  unfold Seg48.relationRow5752 at r5752

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX98 rho = seg48Out0AccX97 rho + rho 38503 := by
    unfold seg48Out0AccX98 seg48Out0AccX97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 97]

    ring

  have hnexty : seg48Out0AccY98 rho = seg48Out0AccY97 rho + rho 38504 := by
    unfold seg48Out0AccY98 seg48Out0AccY97
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 97]

    ring

  have ha0 : (rho 38495 + rho 38496) * (seg48Out0AccX97 rho + seg48Out0AccY97 rho) = rho 38497 := by
    unfold seg48Out0AccX97 seg48Out0AccY97
    linear_combination r5740
  have ha1 : rho 38496 * seg48Out0AccX97 rho = rho 38498 := by
    unfold seg48Out0AccX97
    linear_combination r5741
  have ha2 : rho 38495 * seg48Out0AccY97 rho = rho 38499 := by
    unfold seg48Out0AccY97
    linear_combination r5742
  have ha3 : 3021 * rho 38498 * rho 38499 = rho 38500 := by
    linear_combination r5743
  have ha4 : rho 38501 * (1 + rho 38500) = rho 38498 + rho 38499 := by
    linear_combination r5744
  have ha5 : rho 38502 * (1 - rho 38500) = rho 38497 - rho 38498 - rho 38499 := by
    linear_combination r5745
  have haddx :
      rho 38501 * (1 + 3021 * (rho 38496 * seg48Out0AccX97 rho) * (rho 38495 * seg48Out0AccY97 rho)) =
        rho 38496 * seg48Out0AccX97 rho + rho 38495 * seg48Out0AccY97 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38502 * (1 - 3021 * (rho 38496 * seg48Out0AccX97 rho) * (rho 38495 * seg48Out0AccY97 rho)) =
        (-1) * (rho 38496 * seg48Out0AccX97 rho) - rho 38495 * seg48Out0AccY97 rho +
          (seg48Out0AccY97 rho - seg48Out0AccX97 rho * (-1)) * (rho 38495 + rho 38496) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38502 * (1 - rho 38500) = rho 38497 - rho 38498 - rho 38499 := ha5
      _ = (-1) * rho 38498 - rho 38499 + (seg48Out0AccY97 rho - seg48Out0AccX97 rho * (-1)) *
          (rho 38495 + rho 38496) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX98 rho = seg48Out0AccX97 rho - Bool.toZMod bit * (seg48Out0AccX97 rho - rho 38501) := by
    have hd : rho 38503 = Bool.toZMod bit * (rho 38501 - seg48Out0AccX97 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX97
      linear_combination -r5746
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY98 rho = seg48Out0AccY97 rho - Bool.toZMod bit * (seg48Out0AccY97 rho - rho 38502) := by
    have hd : rho 38504 = Bool.toZMod bit * (rho 38502 - seg48Out0AccY97 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY97
      linear_combination -r5747
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38495 * rho 38496 = rho 38505 := by linear_combination r5748
  have hd1 : rho 38495 * rho 38495 = rho 38506 := by linear_combination r5749
  have hd2 : rho 38496 * rho 38496 = rho 38507 := by linear_combination r5750
  have hd3 : rho 38508 * (rho 38496 * rho 38496 + rho 38495 * rho 38495 * (-1)) =
      2 * (rho 38495 * rho 38496) := by
    rw [hd0, hd1, hd2]
    linear_combination r5751
  have hd4 : rho 38509 * (2 - (rho 38496 * rho 38496 + rho 38495 * rho 38495 * (-1))) =
      rho 38496 * rho 38496 - rho 38495 * rho 38495 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5752
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX97 rho, seg48Out0AccY97 rho⟩ ⟨rho 38495, rho 38496⟩
    ⟨rho 38501, rho 38502⟩ ⟨seg48Out0AccX98 rho, seg48Out0AccY98 rho⟩ ⟨rho 38508, rho 38509⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_rows98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow5753 rho ∧ Seg48.relationRow5754 rho ∧ Seg48.relationRow5755 rho ∧ Seg48.relationRow5756 rho ∧ Seg48.relationRow5757 rho ∧ Seg48.relationRow5758 rho ∧ Seg48.relationRow5759 rho ∧ Seg48.relationRow5760 rho ∧ Seg48.relationRow5761 rho ∧ Seg48.relationRow5762 rho ∧ Seg48.relationRow5763 rho ∧ Seg48.relationRow5764 rho ∧ Seg48.relationRow5765 rho := by
  unfold Seg48.relation at h

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

  unfold Seg48.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5753, r5754, r5755, r5756, r5757, r5758, r5759⟩

  unfold Seg48.relationPart72 at p72

  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5753, r5754, r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765⟩

theorem seg48Out0_rung98 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 37212 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48Out0AccX98 rho, seg48Out0AccY98 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 38508, rho 38509⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48Out0AccX98 rho, seg48Out0AccY98 rho⟩ ⟨rho 38508, rho 38509⟩
        ⟨seg48Out0AccX99 rho, seg48Out0AccY99 rho⟩ ⟨rho 38521, rho 38522⟩ := by
  obtain ⟨r5753, r5754, r5755, r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765⟩ := seg48Out0_rows98 rho h
  unfold Seg48.relationRow5753 at r5753

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5753

  unfold Seg48.relationRow5754 at r5754

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5754

  unfold Seg48.relationRow5755 at r5755

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5755

  unfold Seg48.relationRow5756 at r5756

  unfold Seg48.relationRow5757 at r5757

  unfold Seg48.relationRow5758 at r5758

  unfold Seg48.relationRow5759 at r5759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5759

  unfold Seg48.relationRow5760 at r5760

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5760

  unfold Seg48.relationRow5761 at r5761

  unfold Seg48.relationRow5762 at r5762

  unfold Seg48.relationRow5763 at r5763

  unfold Seg48.relationRow5764 at r5764

  unfold Seg48.relationRow5765 at r5765

  intro bit hbit hacc hcur
  have hnextx : seg48Out0AccX99 rho = seg48Out0AccX98 rho + rho 38516 := by
    unfold seg48Out0AccX99 seg48Out0AccX98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37242 13 98]

    ring

  have hnexty : seg48Out0AccY99 rho = seg48Out0AccY98 rho + rho 38517 := by
    unfold seg48Out0AccY99 seg48Out0AccY98
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 37243 13 98]

    ring

  have ha0 : (rho 38508 + rho 38509) * (seg48Out0AccX98 rho + seg48Out0AccY98 rho) = rho 38510 := by
    unfold seg48Out0AccX98 seg48Out0AccY98
    linear_combination r5753
  have ha1 : rho 38509 * seg48Out0AccX98 rho = rho 38511 := by
    unfold seg48Out0AccX98
    linear_combination r5754
  have ha2 : rho 38508 * seg48Out0AccY98 rho = rho 38512 := by
    unfold seg48Out0AccY98
    linear_combination r5755
  have ha3 : 3021 * rho 38511 * rho 38512 = rho 38513 := by
    linear_combination r5756
  have ha4 : rho 38514 * (1 + rho 38513) = rho 38511 + rho 38512 := by
    linear_combination r5757
  have ha5 : rho 38515 * (1 - rho 38513) = rho 38510 - rho 38511 - rho 38512 := by
    linear_combination r5758
  have haddx :
      rho 38514 * (1 + 3021 * (rho 38509 * seg48Out0AccX98 rho) * (rho 38508 * seg48Out0AccY98 rho)) =
        rho 38509 * seg48Out0AccX98 rho + rho 38508 * seg48Out0AccY98 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 38515 * (1 - 3021 * (rho 38509 * seg48Out0AccX98 rho) * (rho 38508 * seg48Out0AccY98 rho)) =
        (-1) * (rho 38509 * seg48Out0AccX98 rho) - rho 38508 * seg48Out0AccY98 rho +
          (seg48Out0AccY98 rho - seg48Out0AccX98 rho * (-1)) * (rho 38508 + rho 38509) := by
    rw [ha1, ha2, ha3]
    calc
      rho 38515 * (1 - rho 38513) = rho 38510 - rho 38511 - rho 38512 := ha5
      _ = (-1) * rho 38511 - rho 38512 + (seg48Out0AccY98 rho - seg48Out0AccX98 rho * (-1)) *
          (rho 38508 + rho 38509) := by
        rw [← ha0]
        ring
  have hselx : seg48Out0AccX99 rho = seg48Out0AccX98 rho - Bool.toZMod bit * (seg48Out0AccX98 rho - rho 38514) := by
    have hd : rho 38516 = Bool.toZMod bit * (rho 38514 - seg48Out0AccX98 rho) := by
      rw [← hbit]
      unfold seg48Out0AccX98
      linear_combination -r5759
    rw [hnextx]
    linear_combination hd
  have hsely : seg48Out0AccY99 rho = seg48Out0AccY98 rho - Bool.toZMod bit * (seg48Out0AccY98 rho - rho 38515) := by
    have hd : rho 38517 = Bool.toZMod bit * (rho 38515 - seg48Out0AccY98 rho) := by
      rw [← hbit]
      unfold seg48Out0AccY98
      linear_combination -r5760
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 38508 * rho 38509 = rho 38518 := by linear_combination r5761
  have hd1 : rho 38508 * rho 38508 = rho 38519 := by linear_combination r5762
  have hd2 : rho 38509 * rho 38509 = rho 38520 := by linear_combination r5763
  have hd3 : rho 38521 * (rho 38509 * rho 38509 + rho 38508 * rho 38508 * (-1)) =
      2 * (rho 38508 * rho 38509) := by
    rw [hd0, hd1, hd2]
    linear_combination r5764
  have hd4 : rho 38522 * (2 - (rho 38509 * rho 38509 + rho 38508 * rho 38508 * (-1))) =
      rho 38509 * rho 38509 - rho 38508 * rho 38508 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5765
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48Out0AccX98 rho, seg48Out0AccY98 rho⟩ ⟨rho 38508, rho 38509⟩
    ⟨rho 38514, rho 38515⟩ ⟨seg48Out0AccX99 rho, seg48Out0AccY99 rho⟩ ⟨rho 38521, rho 38522⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48Out0_hstep_c8 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (37114 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 88 ≤ i → i < 99 →
      EdwardsBridge.onCurve (seg48Out0AccState rho i) →
      EdwardsBridge.onCurve (seg48Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48Out0AccState rho i) (seg48Out0CurState rho i)
        (seg48Out0AccState rho (i + 1)) (seg48Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48Out0_rung88 rho h bits[88]! (hbitAt 88 (by omega)) hacc hcur
  · exact seg48Out0_rung89 rho h bits[89]! (hbitAt 89 (by omega)) hacc hcur
  · exact seg48Out0_rung90 rho h bits[90]! (hbitAt 90 (by omega)) hacc hcur
  · exact seg48Out0_rung91 rho h bits[91]! (hbitAt 91 (by omega)) hacc hcur
  · exact seg48Out0_rung92 rho h bits[92]! (hbitAt 92 (by omega)) hacc hcur
  · exact seg48Out0_rung93 rho h bits[93]! (hbitAt 93 (by omega)) hacc hcur
  · exact seg48Out0_rung94 rho h bits[94]! (hbitAt 94 (by omega)) hacc hcur
  · exact seg48Out0_rung95 rho h bits[95]! (hbitAt 95 (by omega)) hacc hcur
  · exact seg48Out0_rung96 rho h bits[96]! (hbitAt 96 (by omega)) hacc hcur
  · exact seg48Out0_rung97 rho h bits[97]! (hbitAt 97 (by omega)) hacc hcur
  · exact seg48Out0_rung98 rho h bits[98]! (hbitAt 98 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
