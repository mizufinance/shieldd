import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5548 rho ∧ Seg52.relationRow5549 rho ∧ Seg52.relationRow5550 rho ∧ Seg52.relationRow5551 rho ∧ Seg52.relationRow5552 rho ∧ Seg52.relationRow5553 rho ∧ Seg52.relationRow5554 rho ∧ Seg52.relationRow5555 rho ∧ Seg52.relationRow5556 rho ∧ Seg52.relationRow5557 rho ∧ Seg52.relationRow5558 rho ∧ Seg52.relationRow5559 rho ∧ Seg52.relationRow5560 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560⟩

theorem seg52Out0_rung33 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49419 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49935, rho 49936⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49935, rho 49936⟩
        ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49948, rho 49949⟩ := by
  obtain ⟨r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560⟩ := seg52Out0_rows33 rho h
  unfold Seg52.relationRow5548 at r5548

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5548

  unfold Seg52.relationRow5549 at r5549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5549

  unfold Seg52.relationRow5550 at r5550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5550

  unfold Seg52.relationRow5551 at r5551

  unfold Seg52.relationRow5552 at r5552

  unfold Seg52.relationRow5553 at r5553

  unfold Seg52.relationRow5554 at r5554

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5554

  unfold Seg52.relationRow5555 at r5555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5555

  unfold Seg52.relationRow5556 at r5556

  unfold Seg52.relationRow5557 at r5557

  unfold Seg52.relationRow5558 at r5558

  unfold Seg52.relationRow5559 at r5559

  unfold Seg52.relationRow5560 at r5560

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX34 rho = seg52Out0AccX33 rho + rho 49943 := by
    unfold seg52Out0AccX34 seg52Out0AccX33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 33]

    ring

  have hnexty : seg52Out0AccY34 rho = seg52Out0AccY33 rho + rho 49944 := by
    unfold seg52Out0AccY34 seg52Out0AccY33
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 33]

    ring

  have ha0 : (rho 49935 + rho 49936) * (seg52Out0AccX33 rho + seg52Out0AccY33 rho) = rho 49937 := by
    unfold seg52Out0AccX33 seg52Out0AccY33
    linear_combination r5548
  have ha1 : rho 49936 * seg52Out0AccX33 rho = rho 49938 := by
    unfold seg52Out0AccX33
    linear_combination r5549
  have ha2 : rho 49935 * seg52Out0AccY33 rho = rho 49939 := by
    unfold seg52Out0AccY33
    linear_combination r5550
  have ha3 : 3021 * rho 49938 * rho 49939 = rho 49940 := by
    linear_combination r5551
  have ha4 : rho 49941 * (1 + rho 49940) = rho 49938 + rho 49939 := by
    linear_combination r5552
  have ha5 : rho 49942 * (1 - rho 49940) = rho 49937 - rho 49938 - rho 49939 := by
    linear_combination r5553
  have haddx :
      rho 49941 * (1 + 3021 * (rho 49936 * seg52Out0AccX33 rho) * (rho 49935 * seg52Out0AccY33 rho)) =
        rho 49936 * seg52Out0AccX33 rho + rho 49935 * seg52Out0AccY33 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49942 * (1 - 3021 * (rho 49936 * seg52Out0AccX33 rho) * (rho 49935 * seg52Out0AccY33 rho)) =
        (-1) * (rho 49936 * seg52Out0AccX33 rho) - rho 49935 * seg52Out0AccY33 rho +
          (seg52Out0AccY33 rho - seg52Out0AccX33 rho * (-1)) * (rho 49935 + rho 49936) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49942 * (1 - rho 49940) = rho 49937 - rho 49938 - rho 49939 := ha5
      _ = (-1) * rho 49938 - rho 49939 + (seg52Out0AccY33 rho - seg52Out0AccX33 rho * (-1)) *
          (rho 49935 + rho 49936) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX34 rho = seg52Out0AccX33 rho - Bool.toZMod bit * (seg52Out0AccX33 rho - rho 49941) := by
    have hd : rho 49943 = Bool.toZMod bit * (rho 49941 - seg52Out0AccX33 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX33
      linear_combination -r5554
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY34 rho = seg52Out0AccY33 rho - Bool.toZMod bit * (seg52Out0AccY33 rho - rho 49942) := by
    have hd : rho 49944 = Bool.toZMod bit * (rho 49942 - seg52Out0AccY33 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY33
      linear_combination -r5555
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49935 * rho 49936 = rho 49945 := by linear_combination r5556
  have hd1 : rho 49935 * rho 49935 = rho 49946 := by linear_combination r5557
  have hd2 : rho 49936 * rho 49936 = rho 49947 := by linear_combination r5558
  have hd3 : rho 49948 * (rho 49936 * rho 49936 + rho 49935 * rho 49935 * (-1)) =
      2 * (rho 49935 * rho 49936) := by
    rw [hd0, hd1, hd2]
    linear_combination r5559
  have hd4 : rho 49949 * (2 - (rho 49936 * rho 49936 + rho 49935 * rho 49935 * (-1))) =
      rho 49936 * rho 49936 - rho 49935 * rho 49935 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5560
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX33 rho, seg52Out0AccY33 rho⟩ ⟨rho 49935, rho 49936⟩
    ⟨rho 49941, rho 49942⟩ ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49948, rho 49949⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5561 rho ∧ Seg52.relationRow5562 rho ∧ Seg52.relationRow5563 rho ∧ Seg52.relationRow5564 rho ∧ Seg52.relationRow5565 rho ∧ Seg52.relationRow5566 rho ∧ Seg52.relationRow5567 rho ∧ Seg52.relationRow5568 rho ∧ Seg52.relationRow5569 rho ∧ Seg52.relationRow5570 rho ∧ Seg52.relationRow5571 rho ∧ Seg52.relationRow5572 rho ∧ Seg52.relationRow5573 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573⟩

theorem seg52Out0_rung34 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49420 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49948, rho 49949⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49948, rho 49949⟩
        ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49961, rho 49962⟩ := by
  obtain ⟨r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573⟩ := seg52Out0_rows34 rho h
  unfold Seg52.relationRow5561 at r5561

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5561

  unfold Seg52.relationRow5562 at r5562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5562

  unfold Seg52.relationRow5563 at r5563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5563

  unfold Seg52.relationRow5564 at r5564

  unfold Seg52.relationRow5565 at r5565

  unfold Seg52.relationRow5566 at r5566

  unfold Seg52.relationRow5567 at r5567

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5567

  unfold Seg52.relationRow5568 at r5568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5568

  unfold Seg52.relationRow5569 at r5569

  unfold Seg52.relationRow5570 at r5570

  unfold Seg52.relationRow5571 at r5571

  unfold Seg52.relationRow5572 at r5572

  unfold Seg52.relationRow5573 at r5573

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX35 rho = seg52Out0AccX34 rho + rho 49956 := by
    unfold seg52Out0AccX35 seg52Out0AccX34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 34]

    ring

  have hnexty : seg52Out0AccY35 rho = seg52Out0AccY34 rho + rho 49957 := by
    unfold seg52Out0AccY35 seg52Out0AccY34
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 34]

    ring

  have ha0 : (rho 49948 + rho 49949) * (seg52Out0AccX34 rho + seg52Out0AccY34 rho) = rho 49950 := by
    unfold seg52Out0AccX34 seg52Out0AccY34
    linear_combination r5561
  have ha1 : rho 49949 * seg52Out0AccX34 rho = rho 49951 := by
    unfold seg52Out0AccX34
    linear_combination r5562
  have ha2 : rho 49948 * seg52Out0AccY34 rho = rho 49952 := by
    unfold seg52Out0AccY34
    linear_combination r5563
  have ha3 : 3021 * rho 49951 * rho 49952 = rho 49953 := by
    linear_combination r5564
  have ha4 : rho 49954 * (1 + rho 49953) = rho 49951 + rho 49952 := by
    linear_combination r5565
  have ha5 : rho 49955 * (1 - rho 49953) = rho 49950 - rho 49951 - rho 49952 := by
    linear_combination r5566
  have haddx :
      rho 49954 * (1 + 3021 * (rho 49949 * seg52Out0AccX34 rho) * (rho 49948 * seg52Out0AccY34 rho)) =
        rho 49949 * seg52Out0AccX34 rho + rho 49948 * seg52Out0AccY34 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49955 * (1 - 3021 * (rho 49949 * seg52Out0AccX34 rho) * (rho 49948 * seg52Out0AccY34 rho)) =
        (-1) * (rho 49949 * seg52Out0AccX34 rho) - rho 49948 * seg52Out0AccY34 rho +
          (seg52Out0AccY34 rho - seg52Out0AccX34 rho * (-1)) * (rho 49948 + rho 49949) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49955 * (1 - rho 49953) = rho 49950 - rho 49951 - rho 49952 := ha5
      _ = (-1) * rho 49951 - rho 49952 + (seg52Out0AccY34 rho - seg52Out0AccX34 rho * (-1)) *
          (rho 49948 + rho 49949) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX35 rho = seg52Out0AccX34 rho - Bool.toZMod bit * (seg52Out0AccX34 rho - rho 49954) := by
    have hd : rho 49956 = Bool.toZMod bit * (rho 49954 - seg52Out0AccX34 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX34
      linear_combination -r5567
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY35 rho = seg52Out0AccY34 rho - Bool.toZMod bit * (seg52Out0AccY34 rho - rho 49955) := by
    have hd : rho 49957 = Bool.toZMod bit * (rho 49955 - seg52Out0AccY34 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY34
      linear_combination -r5568
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49948 * rho 49949 = rho 49958 := by linear_combination r5569
  have hd1 : rho 49948 * rho 49948 = rho 49959 := by linear_combination r5570
  have hd2 : rho 49949 * rho 49949 = rho 49960 := by linear_combination r5571
  have hd3 : rho 49961 * (rho 49949 * rho 49949 + rho 49948 * rho 49948 * (-1)) =
      2 * (rho 49948 * rho 49949) := by
    rw [hd0, hd1, hd2]
    linear_combination r5572
  have hd4 : rho 49962 * (2 - (rho 49949 * rho 49949 + rho 49948 * rho 49948 * (-1))) =
      rho 49949 * rho 49949 - rho 49948 * rho 49948 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5573
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX34 rho, seg52Out0AccY34 rho⟩ ⟨rho 49948, rho 49949⟩
    ⟨rho 49954, rho 49955⟩ ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49961, rho 49962⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5574 rho ∧ Seg52.relationRow5575 rho ∧ Seg52.relationRow5576 rho ∧ Seg52.relationRow5577 rho ∧ Seg52.relationRow5578 rho ∧ Seg52.relationRow5579 rho ∧ Seg52.relationRow5580 rho ∧ Seg52.relationRow5581 rho ∧ Seg52.relationRow5582 rho ∧ Seg52.relationRow5583 rho ∧ Seg52.relationRow5584 rho ∧ Seg52.relationRow5585 rho ∧ Seg52.relationRow5586 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩

theorem seg52Out0_rung35 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49421 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49961, rho 49962⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49961, rho 49962⟩
        ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49974, rho 49975⟩ := by
  obtain ⟨r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586⟩ := seg52Out0_rows35 rho h
  unfold Seg52.relationRow5574 at r5574

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5574

  unfold Seg52.relationRow5575 at r5575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5575

  unfold Seg52.relationRow5576 at r5576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5576

  unfold Seg52.relationRow5577 at r5577

  unfold Seg52.relationRow5578 at r5578

  unfold Seg52.relationRow5579 at r5579

  unfold Seg52.relationRow5580 at r5580

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5580

  unfold Seg52.relationRow5581 at r5581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5581

  unfold Seg52.relationRow5582 at r5582

  unfold Seg52.relationRow5583 at r5583

  unfold Seg52.relationRow5584 at r5584

  unfold Seg52.relationRow5585 at r5585

  unfold Seg52.relationRow5586 at r5586

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX36 rho = seg52Out0AccX35 rho + rho 49969 := by
    unfold seg52Out0AccX36 seg52Out0AccX35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 35]

    ring

  have hnexty : seg52Out0AccY36 rho = seg52Out0AccY35 rho + rho 49970 := by
    unfold seg52Out0AccY36 seg52Out0AccY35
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 35]

    ring

  have ha0 : (rho 49961 + rho 49962) * (seg52Out0AccX35 rho + seg52Out0AccY35 rho) = rho 49963 := by
    unfold seg52Out0AccX35 seg52Out0AccY35
    linear_combination r5574
  have ha1 : rho 49962 * seg52Out0AccX35 rho = rho 49964 := by
    unfold seg52Out0AccX35
    linear_combination r5575
  have ha2 : rho 49961 * seg52Out0AccY35 rho = rho 49965 := by
    unfold seg52Out0AccY35
    linear_combination r5576
  have ha3 : 3021 * rho 49964 * rho 49965 = rho 49966 := by
    linear_combination r5577
  have ha4 : rho 49967 * (1 + rho 49966) = rho 49964 + rho 49965 := by
    linear_combination r5578
  have ha5 : rho 49968 * (1 - rho 49966) = rho 49963 - rho 49964 - rho 49965 := by
    linear_combination r5579
  have haddx :
      rho 49967 * (1 + 3021 * (rho 49962 * seg52Out0AccX35 rho) * (rho 49961 * seg52Out0AccY35 rho)) =
        rho 49962 * seg52Out0AccX35 rho + rho 49961 * seg52Out0AccY35 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49968 * (1 - 3021 * (rho 49962 * seg52Out0AccX35 rho) * (rho 49961 * seg52Out0AccY35 rho)) =
        (-1) * (rho 49962 * seg52Out0AccX35 rho) - rho 49961 * seg52Out0AccY35 rho +
          (seg52Out0AccY35 rho - seg52Out0AccX35 rho * (-1)) * (rho 49961 + rho 49962) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49968 * (1 - rho 49966) = rho 49963 - rho 49964 - rho 49965 := ha5
      _ = (-1) * rho 49964 - rho 49965 + (seg52Out0AccY35 rho - seg52Out0AccX35 rho * (-1)) *
          (rho 49961 + rho 49962) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX36 rho = seg52Out0AccX35 rho - Bool.toZMod bit * (seg52Out0AccX35 rho - rho 49967) := by
    have hd : rho 49969 = Bool.toZMod bit * (rho 49967 - seg52Out0AccX35 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX35
      linear_combination -r5580
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY36 rho = seg52Out0AccY35 rho - Bool.toZMod bit * (seg52Out0AccY35 rho - rho 49968) := by
    have hd : rho 49970 = Bool.toZMod bit * (rho 49968 - seg52Out0AccY35 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY35
      linear_combination -r5581
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49961 * rho 49962 = rho 49971 := by linear_combination r5582
  have hd1 : rho 49961 * rho 49961 = rho 49972 := by linear_combination r5583
  have hd2 : rho 49962 * rho 49962 = rho 49973 := by linear_combination r5584
  have hd3 : rho 49974 * (rho 49962 * rho 49962 + rho 49961 * rho 49961 * (-1)) =
      2 * (rho 49961 * rho 49962) := by
    rw [hd0, hd1, hd2]
    linear_combination r5585
  have hd4 : rho 49975 * (2 - (rho 49962 * rho 49962 + rho 49961 * rho 49961 * (-1))) =
      rho 49962 * rho 49962 - rho 49961 * rho 49961 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5586
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX35 rho, seg52Out0AccY35 rho⟩ ⟨rho 49961, rho 49962⟩
    ⟨rho 49967, rho 49968⟩ ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49974, rho 49975⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5587 rho ∧ Seg52.relationRow5588 rho ∧ Seg52.relationRow5589 rho ∧ Seg52.relationRow5590 rho ∧ Seg52.relationRow5591 rho ∧ Seg52.relationRow5592 rho ∧ Seg52.relationRow5593 rho ∧ Seg52.relationRow5594 rho ∧ Seg52.relationRow5595 rho ∧ Seg52.relationRow5596 rho ∧ Seg52.relationRow5597 rho ∧ Seg52.relationRow5598 rho ∧ Seg52.relationRow5599 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, p69,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart69 at p69

  rcases p69 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩

  exact ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩

theorem seg52Out0_rung36 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49422 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49974, rho 49975⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49974, rho 49975⟩
        ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49987, rho 49988⟩ := by
  obtain ⟨r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩ := seg52Out0_rows36 rho h
  unfold Seg52.relationRow5587 at r5587

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5587

  unfold Seg52.relationRow5588 at r5588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5588

  unfold Seg52.relationRow5589 at r5589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5589

  unfold Seg52.relationRow5590 at r5590

  unfold Seg52.relationRow5591 at r5591

  unfold Seg52.relationRow5592 at r5592

  unfold Seg52.relationRow5593 at r5593

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5593

  unfold Seg52.relationRow5594 at r5594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5594

  unfold Seg52.relationRow5595 at r5595

  unfold Seg52.relationRow5596 at r5596

  unfold Seg52.relationRow5597 at r5597

  unfold Seg52.relationRow5598 at r5598

  unfold Seg52.relationRow5599 at r5599

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX37 rho = seg52Out0AccX36 rho + rho 49982 := by
    unfold seg52Out0AccX37 seg52Out0AccX36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 36]

    ring

  have hnexty : seg52Out0AccY37 rho = seg52Out0AccY36 rho + rho 49983 := by
    unfold seg52Out0AccY37 seg52Out0AccY36
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 36]

    ring

  have ha0 : (rho 49974 + rho 49975) * (seg52Out0AccX36 rho + seg52Out0AccY36 rho) = rho 49976 := by
    unfold seg52Out0AccX36 seg52Out0AccY36
    linear_combination r5587
  have ha1 : rho 49975 * seg52Out0AccX36 rho = rho 49977 := by
    unfold seg52Out0AccX36
    linear_combination r5588
  have ha2 : rho 49974 * seg52Out0AccY36 rho = rho 49978 := by
    unfold seg52Out0AccY36
    linear_combination r5589
  have ha3 : 3021 * rho 49977 * rho 49978 = rho 49979 := by
    linear_combination r5590
  have ha4 : rho 49980 * (1 + rho 49979) = rho 49977 + rho 49978 := by
    linear_combination r5591
  have ha5 : rho 49981 * (1 - rho 49979) = rho 49976 - rho 49977 - rho 49978 := by
    linear_combination r5592
  have haddx :
      rho 49980 * (1 + 3021 * (rho 49975 * seg52Out0AccX36 rho) * (rho 49974 * seg52Out0AccY36 rho)) =
        rho 49975 * seg52Out0AccX36 rho + rho 49974 * seg52Out0AccY36 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49981 * (1 - 3021 * (rho 49975 * seg52Out0AccX36 rho) * (rho 49974 * seg52Out0AccY36 rho)) =
        (-1) * (rho 49975 * seg52Out0AccX36 rho) - rho 49974 * seg52Out0AccY36 rho +
          (seg52Out0AccY36 rho - seg52Out0AccX36 rho * (-1)) * (rho 49974 + rho 49975) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49981 * (1 - rho 49979) = rho 49976 - rho 49977 - rho 49978 := ha5
      _ = (-1) * rho 49977 - rho 49978 + (seg52Out0AccY36 rho - seg52Out0AccX36 rho * (-1)) *
          (rho 49974 + rho 49975) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX37 rho = seg52Out0AccX36 rho - Bool.toZMod bit * (seg52Out0AccX36 rho - rho 49980) := by
    have hd : rho 49982 = Bool.toZMod bit * (rho 49980 - seg52Out0AccX36 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX36
      linear_combination -r5593
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY37 rho = seg52Out0AccY36 rho - Bool.toZMod bit * (seg52Out0AccY36 rho - rho 49981) := by
    have hd : rho 49983 = Bool.toZMod bit * (rho 49981 - seg52Out0AccY36 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY36
      linear_combination -r5594
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49974 * rho 49975 = rho 49984 := by linear_combination r5595
  have hd1 : rho 49974 * rho 49974 = rho 49985 := by linear_combination r5596
  have hd2 : rho 49975 * rho 49975 = rho 49986 := by linear_combination r5597
  have hd3 : rho 49987 * (rho 49975 * rho 49975 + rho 49974 * rho 49974 * (-1)) =
      2 * (rho 49974 * rho 49975) := by
    rw [hd0, hd1, hd2]
    linear_combination r5598
  have hd4 : rho 49988 * (2 - (rho 49975 * rho 49975 + rho 49974 * rho 49974 * (-1))) =
      rho 49975 * rho 49975 - rho 49974 * rho 49974 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5599
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX36 rho, seg52Out0AccY36 rho⟩ ⟨rho 49974, rho 49975⟩
    ⟨rho 49980, rho 49981⟩ ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49987, rho 49988⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5600 rho ∧ Seg52.relationRow5601 rho ∧ Seg52.relationRow5602 rho ∧ Seg52.relationRow5603 rho ∧ Seg52.relationRow5604 rho ∧ Seg52.relationRow5605 rho ∧ Seg52.relationRow5606 rho ∧ Seg52.relationRow5607 rho ∧ Seg52.relationRow5608 rho ∧ Seg52.relationRow5609 rho ∧ Seg52.relationRow5610 rho ∧ Seg52.relationRow5611 rho ∧ Seg52.relationRow5612 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612⟩

theorem seg52Out0_rung37 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49423 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49987, rho 49988⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49987, rho 49988⟩
        ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 50000, rho 50001⟩ := by
  obtain ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612⟩ := seg52Out0_rows37 rho h
  unfold Seg52.relationRow5600 at r5600

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5600

  unfold Seg52.relationRow5601 at r5601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5601

  unfold Seg52.relationRow5602 at r5602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5602

  unfold Seg52.relationRow5603 at r5603

  unfold Seg52.relationRow5604 at r5604

  unfold Seg52.relationRow5605 at r5605

  unfold Seg52.relationRow5606 at r5606

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5606

  unfold Seg52.relationRow5607 at r5607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5607

  unfold Seg52.relationRow5608 at r5608

  unfold Seg52.relationRow5609 at r5609

  unfold Seg52.relationRow5610 at r5610

  unfold Seg52.relationRow5611 at r5611

  unfold Seg52.relationRow5612 at r5612

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX38 rho = seg52Out0AccX37 rho + rho 49995 := by
    unfold seg52Out0AccX38 seg52Out0AccX37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 37]

    ring

  have hnexty : seg52Out0AccY38 rho = seg52Out0AccY37 rho + rho 49996 := by
    unfold seg52Out0AccY38 seg52Out0AccY37
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 37]

    ring

  have ha0 : (rho 49987 + rho 49988) * (seg52Out0AccX37 rho + seg52Out0AccY37 rho) = rho 49989 := by
    unfold seg52Out0AccX37 seg52Out0AccY37
    linear_combination r5600
  have ha1 : rho 49988 * seg52Out0AccX37 rho = rho 49990 := by
    unfold seg52Out0AccX37
    linear_combination r5601
  have ha2 : rho 49987 * seg52Out0AccY37 rho = rho 49991 := by
    unfold seg52Out0AccY37
    linear_combination r5602
  have ha3 : 3021 * rho 49990 * rho 49991 = rho 49992 := by
    linear_combination r5603
  have ha4 : rho 49993 * (1 + rho 49992) = rho 49990 + rho 49991 := by
    linear_combination r5604
  have ha5 : rho 49994 * (1 - rho 49992) = rho 49989 - rho 49990 - rho 49991 := by
    linear_combination r5605
  have haddx :
      rho 49993 * (1 + 3021 * (rho 49988 * seg52Out0AccX37 rho) * (rho 49987 * seg52Out0AccY37 rho)) =
        rho 49988 * seg52Out0AccX37 rho + rho 49987 * seg52Out0AccY37 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49994 * (1 - 3021 * (rho 49988 * seg52Out0AccX37 rho) * (rho 49987 * seg52Out0AccY37 rho)) =
        (-1) * (rho 49988 * seg52Out0AccX37 rho) - rho 49987 * seg52Out0AccY37 rho +
          (seg52Out0AccY37 rho - seg52Out0AccX37 rho * (-1)) * (rho 49987 + rho 49988) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49994 * (1 - rho 49992) = rho 49989 - rho 49990 - rho 49991 := ha5
      _ = (-1) * rho 49990 - rho 49991 + (seg52Out0AccY37 rho - seg52Out0AccX37 rho * (-1)) *
          (rho 49987 + rho 49988) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX38 rho = seg52Out0AccX37 rho - Bool.toZMod bit * (seg52Out0AccX37 rho - rho 49993) := by
    have hd : rho 49995 = Bool.toZMod bit * (rho 49993 - seg52Out0AccX37 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX37
      linear_combination -r5606
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY38 rho = seg52Out0AccY37 rho - Bool.toZMod bit * (seg52Out0AccY37 rho - rho 49994) := by
    have hd : rho 49996 = Bool.toZMod bit * (rho 49994 - seg52Out0AccY37 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY37
      linear_combination -r5607
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49987 * rho 49988 = rho 49997 := by linear_combination r5608
  have hd1 : rho 49987 * rho 49987 = rho 49998 := by linear_combination r5609
  have hd2 : rho 49988 * rho 49988 = rho 49999 := by linear_combination r5610
  have hd3 : rho 50000 * (rho 49988 * rho 49988 + rho 49987 * rho 49987 * (-1)) =
      2 * (rho 49987 * rho 49988) := by
    rw [hd0, hd1, hd2]
    linear_combination r5611
  have hd4 : rho 50001 * (2 - (rho 49988 * rho 49988 + rho 49987 * rho 49987 * (-1))) =
      rho 49988 * rho 49988 - rho 49987 * rho 49987 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5612
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX37 rho, seg52Out0AccY37 rho⟩ ⟨rho 49987, rho 49988⟩
    ⟨rho 49993, rho 49994⟩ ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 50000, rho 50001⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5613 rho ∧ Seg52.relationRow5614 rho ∧ Seg52.relationRow5615 rho ∧ Seg52.relationRow5616 rho ∧ Seg52.relationRow5617 rho ∧ Seg52.relationRow5618 rho ∧ Seg52.relationRow5619 rho ∧ Seg52.relationRow5620 rho ∧ Seg52.relationRow5621 rho ∧ Seg52.relationRow5622 rho ∧ Seg52.relationRow5623 rho ∧ Seg52.relationRow5624 rho ∧ Seg52.relationRow5625 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625⟩

theorem seg52Out0_rung38 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49424 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50000, rho 50001⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 50000, rho 50001⟩
        ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 50013, rho 50014⟩ := by
  obtain ⟨r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625⟩ := seg52Out0_rows38 rho h
  unfold Seg52.relationRow5613 at r5613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5613

  unfold Seg52.relationRow5614 at r5614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5614

  unfold Seg52.relationRow5615 at r5615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5615

  unfold Seg52.relationRow5616 at r5616

  unfold Seg52.relationRow5617 at r5617

  unfold Seg52.relationRow5618 at r5618

  unfold Seg52.relationRow5619 at r5619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5619

  unfold Seg52.relationRow5620 at r5620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5620

  unfold Seg52.relationRow5621 at r5621

  unfold Seg52.relationRow5622 at r5622

  unfold Seg52.relationRow5623 at r5623

  unfold Seg52.relationRow5624 at r5624

  unfold Seg52.relationRow5625 at r5625

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX39 rho = seg52Out0AccX38 rho + rho 50008 := by
    unfold seg52Out0AccX39 seg52Out0AccX38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 38]

    ring

  have hnexty : seg52Out0AccY39 rho = seg52Out0AccY38 rho + rho 50009 := by
    unfold seg52Out0AccY39 seg52Out0AccY38
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 38]

    ring

  have ha0 : (rho 50000 + rho 50001) * (seg52Out0AccX38 rho + seg52Out0AccY38 rho) = rho 50002 := by
    unfold seg52Out0AccX38 seg52Out0AccY38
    linear_combination r5613
  have ha1 : rho 50001 * seg52Out0AccX38 rho = rho 50003 := by
    unfold seg52Out0AccX38
    linear_combination r5614
  have ha2 : rho 50000 * seg52Out0AccY38 rho = rho 50004 := by
    unfold seg52Out0AccY38
    linear_combination r5615
  have ha3 : 3021 * rho 50003 * rho 50004 = rho 50005 := by
    linear_combination r5616
  have ha4 : rho 50006 * (1 + rho 50005) = rho 50003 + rho 50004 := by
    linear_combination r5617
  have ha5 : rho 50007 * (1 - rho 50005) = rho 50002 - rho 50003 - rho 50004 := by
    linear_combination r5618
  have haddx :
      rho 50006 * (1 + 3021 * (rho 50001 * seg52Out0AccX38 rho) * (rho 50000 * seg52Out0AccY38 rho)) =
        rho 50001 * seg52Out0AccX38 rho + rho 50000 * seg52Out0AccY38 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50007 * (1 - 3021 * (rho 50001 * seg52Out0AccX38 rho) * (rho 50000 * seg52Out0AccY38 rho)) =
        (-1) * (rho 50001 * seg52Out0AccX38 rho) - rho 50000 * seg52Out0AccY38 rho +
          (seg52Out0AccY38 rho - seg52Out0AccX38 rho * (-1)) * (rho 50000 + rho 50001) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50007 * (1 - rho 50005) = rho 50002 - rho 50003 - rho 50004 := ha5
      _ = (-1) * rho 50003 - rho 50004 + (seg52Out0AccY38 rho - seg52Out0AccX38 rho * (-1)) *
          (rho 50000 + rho 50001) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX39 rho = seg52Out0AccX38 rho - Bool.toZMod bit * (seg52Out0AccX38 rho - rho 50006) := by
    have hd : rho 50008 = Bool.toZMod bit * (rho 50006 - seg52Out0AccX38 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX38
      linear_combination -r5619
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY39 rho = seg52Out0AccY38 rho - Bool.toZMod bit * (seg52Out0AccY38 rho - rho 50007) := by
    have hd : rho 50009 = Bool.toZMod bit * (rho 50007 - seg52Out0AccY38 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY38
      linear_combination -r5620
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50000 * rho 50001 = rho 50010 := by linear_combination r5621
  have hd1 : rho 50000 * rho 50000 = rho 50011 := by linear_combination r5622
  have hd2 : rho 50001 * rho 50001 = rho 50012 := by linear_combination r5623
  have hd3 : rho 50013 * (rho 50001 * rho 50001 + rho 50000 * rho 50000 * (-1)) =
      2 * (rho 50000 * rho 50001) := by
    rw [hd0, hd1, hd2]
    linear_combination r5624
  have hd4 : rho 50014 * (2 - (rho 50001 * rho 50001 + rho 50000 * rho 50000 * (-1))) =
      rho 50001 * rho 50001 - rho 50000 * rho 50000 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5625
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX38 rho, seg52Out0AccY38 rho⟩ ⟨rho 50000, rho 50001⟩
    ⟨rho 50006, rho 50007⟩ ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 50013, rho 50014⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5626 rho ∧ Seg52.relationRow5627 rho ∧ Seg52.relationRow5628 rho ∧ Seg52.relationRow5629 rho ∧ Seg52.relationRow5630 rho ∧ Seg52.relationRow5631 rho ∧ Seg52.relationRow5632 rho ∧ Seg52.relationRow5633 rho ∧ Seg52.relationRow5634 rho ∧ Seg52.relationRow5635 rho ∧ Seg52.relationRow5636 rho ∧ Seg52.relationRow5637 rho ∧ Seg52.relationRow5638 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638⟩

theorem seg52Out0_rung39 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49425 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50013, rho 50014⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 50013, rho 50014⟩
        ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 50026, rho 50027⟩ := by
  obtain ⟨r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638⟩ := seg52Out0_rows39 rho h
  unfold Seg52.relationRow5626 at r5626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5626

  unfold Seg52.relationRow5627 at r5627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5627

  unfold Seg52.relationRow5628 at r5628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5628

  unfold Seg52.relationRow5629 at r5629

  unfold Seg52.relationRow5630 at r5630

  unfold Seg52.relationRow5631 at r5631

  unfold Seg52.relationRow5632 at r5632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5632

  unfold Seg52.relationRow5633 at r5633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5633

  unfold Seg52.relationRow5634 at r5634

  unfold Seg52.relationRow5635 at r5635

  unfold Seg52.relationRow5636 at r5636

  unfold Seg52.relationRow5637 at r5637

  unfold Seg52.relationRow5638 at r5638

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX40 rho = seg52Out0AccX39 rho + rho 50021 := by
    unfold seg52Out0AccX40 seg52Out0AccX39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 39]

    ring

  have hnexty : seg52Out0AccY40 rho = seg52Out0AccY39 rho + rho 50022 := by
    unfold seg52Out0AccY40 seg52Out0AccY39
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 39]

    ring

  have ha0 : (rho 50013 + rho 50014) * (seg52Out0AccX39 rho + seg52Out0AccY39 rho) = rho 50015 := by
    unfold seg52Out0AccX39 seg52Out0AccY39
    linear_combination r5626
  have ha1 : rho 50014 * seg52Out0AccX39 rho = rho 50016 := by
    unfold seg52Out0AccX39
    linear_combination r5627
  have ha2 : rho 50013 * seg52Out0AccY39 rho = rho 50017 := by
    unfold seg52Out0AccY39
    linear_combination r5628
  have ha3 : 3021 * rho 50016 * rho 50017 = rho 50018 := by
    linear_combination r5629
  have ha4 : rho 50019 * (1 + rho 50018) = rho 50016 + rho 50017 := by
    linear_combination r5630
  have ha5 : rho 50020 * (1 - rho 50018) = rho 50015 - rho 50016 - rho 50017 := by
    linear_combination r5631
  have haddx :
      rho 50019 * (1 + 3021 * (rho 50014 * seg52Out0AccX39 rho) * (rho 50013 * seg52Out0AccY39 rho)) =
        rho 50014 * seg52Out0AccX39 rho + rho 50013 * seg52Out0AccY39 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50020 * (1 - 3021 * (rho 50014 * seg52Out0AccX39 rho) * (rho 50013 * seg52Out0AccY39 rho)) =
        (-1) * (rho 50014 * seg52Out0AccX39 rho) - rho 50013 * seg52Out0AccY39 rho +
          (seg52Out0AccY39 rho - seg52Out0AccX39 rho * (-1)) * (rho 50013 + rho 50014) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50020 * (1 - rho 50018) = rho 50015 - rho 50016 - rho 50017 := ha5
      _ = (-1) * rho 50016 - rho 50017 + (seg52Out0AccY39 rho - seg52Out0AccX39 rho * (-1)) *
          (rho 50013 + rho 50014) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX40 rho = seg52Out0AccX39 rho - Bool.toZMod bit * (seg52Out0AccX39 rho - rho 50019) := by
    have hd : rho 50021 = Bool.toZMod bit * (rho 50019 - seg52Out0AccX39 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX39
      linear_combination -r5632
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY40 rho = seg52Out0AccY39 rho - Bool.toZMod bit * (seg52Out0AccY39 rho - rho 50020) := by
    have hd : rho 50022 = Bool.toZMod bit * (rho 50020 - seg52Out0AccY39 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY39
      linear_combination -r5633
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50013 * rho 50014 = rho 50023 := by linear_combination r5634
  have hd1 : rho 50013 * rho 50013 = rho 50024 := by linear_combination r5635
  have hd2 : rho 50014 * rho 50014 = rho 50025 := by linear_combination r5636
  have hd3 : rho 50026 * (rho 50014 * rho 50014 + rho 50013 * rho 50013 * (-1)) =
      2 * (rho 50013 * rho 50014) := by
    rw [hd0, hd1, hd2]
    linear_combination r5637
  have hd4 : rho 50027 * (2 - (rho 50014 * rho 50014 + rho 50013 * rho 50013 * (-1))) =
      rho 50014 * rho 50014 - rho 50013 * rho 50013 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5638
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX39 rho, seg52Out0AccY39 rho⟩ ⟨rho 50013, rho 50014⟩
    ⟨rho 50019, rho 50020⟩ ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 50026, rho 50027⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5639 rho ∧ Seg52.relationRow5640 rho ∧ Seg52.relationRow5641 rho ∧ Seg52.relationRow5642 rho ∧ Seg52.relationRow5643 rho ∧ Seg52.relationRow5644 rho ∧ Seg52.relationRow5645 rho ∧ Seg52.relationRow5646 rho ∧ Seg52.relationRow5647 rho ∧ Seg52.relationRow5648 rho ∧ Seg52.relationRow5649 rho ∧ Seg52.relationRow5650 rho ∧ Seg52.relationRow5651 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651⟩

theorem seg52Out0_rung40 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49426 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50026, rho 50027⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 50026, rho 50027⟩
        ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 50039, rho 50040⟩ := by
  obtain ⟨r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651⟩ := seg52Out0_rows40 rho h
  unfold Seg52.relationRow5639 at r5639

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5639

  unfold Seg52.relationRow5640 at r5640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5640

  unfold Seg52.relationRow5641 at r5641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5641

  unfold Seg52.relationRow5642 at r5642

  unfold Seg52.relationRow5643 at r5643

  unfold Seg52.relationRow5644 at r5644

  unfold Seg52.relationRow5645 at r5645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5645

  unfold Seg52.relationRow5646 at r5646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5646

  unfold Seg52.relationRow5647 at r5647

  unfold Seg52.relationRow5648 at r5648

  unfold Seg52.relationRow5649 at r5649

  unfold Seg52.relationRow5650 at r5650

  unfold Seg52.relationRow5651 at r5651

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX41 rho = seg52Out0AccX40 rho + rho 50034 := by
    unfold seg52Out0AccX41 seg52Out0AccX40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 40]

    ring

  have hnexty : seg52Out0AccY41 rho = seg52Out0AccY40 rho + rho 50035 := by
    unfold seg52Out0AccY41 seg52Out0AccY40
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 40]

    ring

  have ha0 : (rho 50026 + rho 50027) * (seg52Out0AccX40 rho + seg52Out0AccY40 rho) = rho 50028 := by
    unfold seg52Out0AccX40 seg52Out0AccY40
    linear_combination r5639
  have ha1 : rho 50027 * seg52Out0AccX40 rho = rho 50029 := by
    unfold seg52Out0AccX40
    linear_combination r5640
  have ha2 : rho 50026 * seg52Out0AccY40 rho = rho 50030 := by
    unfold seg52Out0AccY40
    linear_combination r5641
  have ha3 : 3021 * rho 50029 * rho 50030 = rho 50031 := by
    linear_combination r5642
  have ha4 : rho 50032 * (1 + rho 50031) = rho 50029 + rho 50030 := by
    linear_combination r5643
  have ha5 : rho 50033 * (1 - rho 50031) = rho 50028 - rho 50029 - rho 50030 := by
    linear_combination r5644
  have haddx :
      rho 50032 * (1 + 3021 * (rho 50027 * seg52Out0AccX40 rho) * (rho 50026 * seg52Out0AccY40 rho)) =
        rho 50027 * seg52Out0AccX40 rho + rho 50026 * seg52Out0AccY40 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50033 * (1 - 3021 * (rho 50027 * seg52Out0AccX40 rho) * (rho 50026 * seg52Out0AccY40 rho)) =
        (-1) * (rho 50027 * seg52Out0AccX40 rho) - rho 50026 * seg52Out0AccY40 rho +
          (seg52Out0AccY40 rho - seg52Out0AccX40 rho * (-1)) * (rho 50026 + rho 50027) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50033 * (1 - rho 50031) = rho 50028 - rho 50029 - rho 50030 := ha5
      _ = (-1) * rho 50029 - rho 50030 + (seg52Out0AccY40 rho - seg52Out0AccX40 rho * (-1)) *
          (rho 50026 + rho 50027) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX41 rho = seg52Out0AccX40 rho - Bool.toZMod bit * (seg52Out0AccX40 rho - rho 50032) := by
    have hd : rho 50034 = Bool.toZMod bit * (rho 50032 - seg52Out0AccX40 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX40
      linear_combination -r5645
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY41 rho = seg52Out0AccY40 rho - Bool.toZMod bit * (seg52Out0AccY40 rho - rho 50033) := by
    have hd : rho 50035 = Bool.toZMod bit * (rho 50033 - seg52Out0AccY40 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY40
      linear_combination -r5646
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50026 * rho 50027 = rho 50036 := by linear_combination r5647
  have hd1 : rho 50026 * rho 50026 = rho 50037 := by linear_combination r5648
  have hd2 : rho 50027 * rho 50027 = rho 50038 := by linear_combination r5649
  have hd3 : rho 50039 * (rho 50027 * rho 50027 + rho 50026 * rho 50026 * (-1)) =
      2 * (rho 50026 * rho 50027) := by
    rw [hd0, hd1, hd2]
    linear_combination r5650
  have hd4 : rho 50040 * (2 - (rho 50027 * rho 50027 + rho 50026 * rho 50026 * (-1))) =
      rho 50027 * rho 50027 - rho 50026 * rho 50026 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5651
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX40 rho, seg52Out0AccY40 rho⟩ ⟨rho 50026, rho 50027⟩
    ⟨rho 50032, rho 50033⟩ ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 50039, rho 50040⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5652 rho ∧ Seg52.relationRow5653 rho ∧ Seg52.relationRow5654 rho ∧ Seg52.relationRow5655 rho ∧ Seg52.relationRow5656 rho ∧ Seg52.relationRow5657 rho ∧ Seg52.relationRow5658 rho ∧ Seg52.relationRow5659 rho ∧ Seg52.relationRow5660 rho ∧ Seg52.relationRow5661 rho ∧ Seg52.relationRow5662 rho ∧ Seg52.relationRow5663 rho ∧ Seg52.relationRow5664 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664⟩

theorem seg52Out0_rung41 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49427 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50039, rho 50040⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 50039, rho 50040⟩
        ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 50052, rho 50053⟩ := by
  obtain ⟨r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664⟩ := seg52Out0_rows41 rho h
  unfold Seg52.relationRow5652 at r5652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5652

  unfold Seg52.relationRow5653 at r5653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5653

  unfold Seg52.relationRow5654 at r5654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5654

  unfold Seg52.relationRow5655 at r5655

  unfold Seg52.relationRow5656 at r5656

  unfold Seg52.relationRow5657 at r5657

  unfold Seg52.relationRow5658 at r5658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5658

  unfold Seg52.relationRow5659 at r5659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5659

  unfold Seg52.relationRow5660 at r5660

  unfold Seg52.relationRow5661 at r5661

  unfold Seg52.relationRow5662 at r5662

  unfold Seg52.relationRow5663 at r5663

  unfold Seg52.relationRow5664 at r5664

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX42 rho = seg52Out0AccX41 rho + rho 50047 := by
    unfold seg52Out0AccX42 seg52Out0AccX41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 41]

    ring

  have hnexty : seg52Out0AccY42 rho = seg52Out0AccY41 rho + rho 50048 := by
    unfold seg52Out0AccY42 seg52Out0AccY41
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 41]

    ring

  have ha0 : (rho 50039 + rho 50040) * (seg52Out0AccX41 rho + seg52Out0AccY41 rho) = rho 50041 := by
    unfold seg52Out0AccX41 seg52Out0AccY41
    linear_combination r5652
  have ha1 : rho 50040 * seg52Out0AccX41 rho = rho 50042 := by
    unfold seg52Out0AccX41
    linear_combination r5653
  have ha2 : rho 50039 * seg52Out0AccY41 rho = rho 50043 := by
    unfold seg52Out0AccY41
    linear_combination r5654
  have ha3 : 3021 * rho 50042 * rho 50043 = rho 50044 := by
    linear_combination r5655
  have ha4 : rho 50045 * (1 + rho 50044) = rho 50042 + rho 50043 := by
    linear_combination r5656
  have ha5 : rho 50046 * (1 - rho 50044) = rho 50041 - rho 50042 - rho 50043 := by
    linear_combination r5657
  have haddx :
      rho 50045 * (1 + 3021 * (rho 50040 * seg52Out0AccX41 rho) * (rho 50039 * seg52Out0AccY41 rho)) =
        rho 50040 * seg52Out0AccX41 rho + rho 50039 * seg52Out0AccY41 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50046 * (1 - 3021 * (rho 50040 * seg52Out0AccX41 rho) * (rho 50039 * seg52Out0AccY41 rho)) =
        (-1) * (rho 50040 * seg52Out0AccX41 rho) - rho 50039 * seg52Out0AccY41 rho +
          (seg52Out0AccY41 rho - seg52Out0AccX41 rho * (-1)) * (rho 50039 + rho 50040) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50046 * (1 - rho 50044) = rho 50041 - rho 50042 - rho 50043 := ha5
      _ = (-1) * rho 50042 - rho 50043 + (seg52Out0AccY41 rho - seg52Out0AccX41 rho * (-1)) *
          (rho 50039 + rho 50040) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX42 rho = seg52Out0AccX41 rho - Bool.toZMod bit * (seg52Out0AccX41 rho - rho 50045) := by
    have hd : rho 50047 = Bool.toZMod bit * (rho 50045 - seg52Out0AccX41 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX41
      linear_combination -r5658
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY42 rho = seg52Out0AccY41 rho - Bool.toZMod bit * (seg52Out0AccY41 rho - rho 50046) := by
    have hd : rho 50048 = Bool.toZMod bit * (rho 50046 - seg52Out0AccY41 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY41
      linear_combination -r5659
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50039 * rho 50040 = rho 50049 := by linear_combination r5660
  have hd1 : rho 50039 * rho 50039 = rho 50050 := by linear_combination r5661
  have hd2 : rho 50040 * rho 50040 = rho 50051 := by linear_combination r5662
  have hd3 : rho 50052 * (rho 50040 * rho 50040 + rho 50039 * rho 50039 * (-1)) =
      2 * (rho 50039 * rho 50040) := by
    rw [hd0, hd1, hd2]
    linear_combination r5663
  have hd4 : rho 50053 * (2 - (rho 50040 * rho 50040 + rho 50039 * rho 50039 * (-1))) =
      rho 50040 * rho 50040 - rho 50039 * rho 50039 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5664
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX41 rho, seg52Out0AccY41 rho⟩ ⟨rho 50039, rho 50040⟩
    ⟨rho 50045, rho 50046⟩ ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 50052, rho 50053⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5665 rho ∧ Seg52.relationRow5666 rho ∧ Seg52.relationRow5667 rho ∧ Seg52.relationRow5668 rho ∧ Seg52.relationRow5669 rho ∧ Seg52.relationRow5670 rho ∧ Seg52.relationRow5671 rho ∧ Seg52.relationRow5672 rho ∧ Seg52.relationRow5673 rho ∧ Seg52.relationRow5674 rho ∧ Seg52.relationRow5675 rho ∧ Seg52.relationRow5676 rho ∧ Seg52.relationRow5677 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677, _, _⟩

  exact ⟨r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677⟩

theorem seg52Out0_rung42 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49428 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50052, rho 50053⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 50052, rho 50053⟩
        ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 50065, rho 50066⟩ := by
  obtain ⟨r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677⟩ := seg52Out0_rows42 rho h
  unfold Seg52.relationRow5665 at r5665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5665

  unfold Seg52.relationRow5666 at r5666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5666

  unfold Seg52.relationRow5667 at r5667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5667

  unfold Seg52.relationRow5668 at r5668

  unfold Seg52.relationRow5669 at r5669

  unfold Seg52.relationRow5670 at r5670

  unfold Seg52.relationRow5671 at r5671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5671

  unfold Seg52.relationRow5672 at r5672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5672

  unfold Seg52.relationRow5673 at r5673

  unfold Seg52.relationRow5674 at r5674

  unfold Seg52.relationRow5675 at r5675

  unfold Seg52.relationRow5676 at r5676

  unfold Seg52.relationRow5677 at r5677

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX43 rho = seg52Out0AccX42 rho + rho 50060 := by
    unfold seg52Out0AccX43 seg52Out0AccX42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 42]

    ring

  have hnexty : seg52Out0AccY43 rho = seg52Out0AccY42 rho + rho 50061 := by
    unfold seg52Out0AccY43 seg52Out0AccY42
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 42]

    ring

  have ha0 : (rho 50052 + rho 50053) * (seg52Out0AccX42 rho + seg52Out0AccY42 rho) = rho 50054 := by
    unfold seg52Out0AccX42 seg52Out0AccY42
    linear_combination r5665
  have ha1 : rho 50053 * seg52Out0AccX42 rho = rho 50055 := by
    unfold seg52Out0AccX42
    linear_combination r5666
  have ha2 : rho 50052 * seg52Out0AccY42 rho = rho 50056 := by
    unfold seg52Out0AccY42
    linear_combination r5667
  have ha3 : 3021 * rho 50055 * rho 50056 = rho 50057 := by
    linear_combination r5668
  have ha4 : rho 50058 * (1 + rho 50057) = rho 50055 + rho 50056 := by
    linear_combination r5669
  have ha5 : rho 50059 * (1 - rho 50057) = rho 50054 - rho 50055 - rho 50056 := by
    linear_combination r5670
  have haddx :
      rho 50058 * (1 + 3021 * (rho 50053 * seg52Out0AccX42 rho) * (rho 50052 * seg52Out0AccY42 rho)) =
        rho 50053 * seg52Out0AccX42 rho + rho 50052 * seg52Out0AccY42 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50059 * (1 - 3021 * (rho 50053 * seg52Out0AccX42 rho) * (rho 50052 * seg52Out0AccY42 rho)) =
        (-1) * (rho 50053 * seg52Out0AccX42 rho) - rho 50052 * seg52Out0AccY42 rho +
          (seg52Out0AccY42 rho - seg52Out0AccX42 rho * (-1)) * (rho 50052 + rho 50053) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50059 * (1 - rho 50057) = rho 50054 - rho 50055 - rho 50056 := ha5
      _ = (-1) * rho 50055 - rho 50056 + (seg52Out0AccY42 rho - seg52Out0AccX42 rho * (-1)) *
          (rho 50052 + rho 50053) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX43 rho = seg52Out0AccX42 rho - Bool.toZMod bit * (seg52Out0AccX42 rho - rho 50058) := by
    have hd : rho 50060 = Bool.toZMod bit * (rho 50058 - seg52Out0AccX42 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX42
      linear_combination -r5671
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY43 rho = seg52Out0AccY42 rho - Bool.toZMod bit * (seg52Out0AccY42 rho - rho 50059) := by
    have hd : rho 50061 = Bool.toZMod bit * (rho 50059 - seg52Out0AccY42 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY42
      linear_combination -r5672
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50052 * rho 50053 = rho 50062 := by linear_combination r5673
  have hd1 : rho 50052 * rho 50052 = rho 50063 := by linear_combination r5674
  have hd2 : rho 50053 * rho 50053 = rho 50064 := by linear_combination r5675
  have hd3 : rho 50065 * (rho 50053 * rho 50053 + rho 50052 * rho 50052 * (-1)) =
      2 * (rho 50052 * rho 50053) := by
    rw [hd0, hd1, hd2]
    linear_combination r5676
  have hd4 : rho 50066 * (2 - (rho 50053 * rho 50053 + rho 50052 * rho 50052 * (-1))) =
      rho 50053 * rho 50053 - rho 50052 * rho 50052 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5677
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX42 rho, seg52Out0AccY42 rho⟩ ⟨rho 50052, rho 50053⟩
    ⟨rho 50058, rho 50059⟩ ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 50065, rho 50066⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5678 rho ∧ Seg52.relationRow5679 rho ∧ Seg52.relationRow5680 rho ∧ Seg52.relationRow5681 rho ∧ Seg52.relationRow5682 rho ∧ Seg52.relationRow5683 rho ∧ Seg52.relationRow5684 rho ∧ Seg52.relationRow5685 rho ∧ Seg52.relationRow5686 rho ∧ Seg52.relationRow5687 rho ∧ Seg52.relationRow5688 rho ∧ Seg52.relationRow5689 rho ∧ Seg52.relationRow5690 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart70 at p70

  rcases p70 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5678, r5679⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5678, r5679, r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690⟩

theorem seg52Out0_rung43 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49429 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50065, rho 50066⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 50065, rho 50066⟩
        ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 50078, rho 50079⟩ := by
  obtain ⟨r5678, r5679, r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690⟩ := seg52Out0_rows43 rho h
  unfold Seg52.relationRow5678 at r5678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5678

  unfold Seg52.relationRow5679 at r5679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5679

  unfold Seg52.relationRow5680 at r5680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5680

  unfold Seg52.relationRow5681 at r5681

  unfold Seg52.relationRow5682 at r5682

  unfold Seg52.relationRow5683 at r5683

  unfold Seg52.relationRow5684 at r5684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5684

  unfold Seg52.relationRow5685 at r5685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5685

  unfold Seg52.relationRow5686 at r5686

  unfold Seg52.relationRow5687 at r5687

  unfold Seg52.relationRow5688 at r5688

  unfold Seg52.relationRow5689 at r5689

  unfold Seg52.relationRow5690 at r5690

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX44 rho = seg52Out0AccX43 rho + rho 50073 := by
    unfold seg52Out0AccX44 seg52Out0AccX43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 43]

    ring

  have hnexty : seg52Out0AccY44 rho = seg52Out0AccY43 rho + rho 50074 := by
    unfold seg52Out0AccY44 seg52Out0AccY43
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 43]

    ring

  have ha0 : (rho 50065 + rho 50066) * (seg52Out0AccX43 rho + seg52Out0AccY43 rho) = rho 50067 := by
    unfold seg52Out0AccX43 seg52Out0AccY43
    linear_combination r5678
  have ha1 : rho 50066 * seg52Out0AccX43 rho = rho 50068 := by
    unfold seg52Out0AccX43
    linear_combination r5679
  have ha2 : rho 50065 * seg52Out0AccY43 rho = rho 50069 := by
    unfold seg52Out0AccY43
    linear_combination r5680
  have ha3 : 3021 * rho 50068 * rho 50069 = rho 50070 := by
    linear_combination r5681
  have ha4 : rho 50071 * (1 + rho 50070) = rho 50068 + rho 50069 := by
    linear_combination r5682
  have ha5 : rho 50072 * (1 - rho 50070) = rho 50067 - rho 50068 - rho 50069 := by
    linear_combination r5683
  have haddx :
      rho 50071 * (1 + 3021 * (rho 50066 * seg52Out0AccX43 rho) * (rho 50065 * seg52Out0AccY43 rho)) =
        rho 50066 * seg52Out0AccX43 rho + rho 50065 * seg52Out0AccY43 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50072 * (1 - 3021 * (rho 50066 * seg52Out0AccX43 rho) * (rho 50065 * seg52Out0AccY43 rho)) =
        (-1) * (rho 50066 * seg52Out0AccX43 rho) - rho 50065 * seg52Out0AccY43 rho +
          (seg52Out0AccY43 rho - seg52Out0AccX43 rho * (-1)) * (rho 50065 + rho 50066) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50072 * (1 - rho 50070) = rho 50067 - rho 50068 - rho 50069 := ha5
      _ = (-1) * rho 50068 - rho 50069 + (seg52Out0AccY43 rho - seg52Out0AccX43 rho * (-1)) *
          (rho 50065 + rho 50066) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX44 rho = seg52Out0AccX43 rho - Bool.toZMod bit * (seg52Out0AccX43 rho - rho 50071) := by
    have hd : rho 50073 = Bool.toZMod bit * (rho 50071 - seg52Out0AccX43 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX43
      linear_combination -r5684
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY44 rho = seg52Out0AccY43 rho - Bool.toZMod bit * (seg52Out0AccY43 rho - rho 50072) := by
    have hd : rho 50074 = Bool.toZMod bit * (rho 50072 - seg52Out0AccY43 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY43
      linear_combination -r5685
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50065 * rho 50066 = rho 50075 := by linear_combination r5686
  have hd1 : rho 50065 * rho 50065 = rho 50076 := by linear_combination r5687
  have hd2 : rho 50066 * rho 50066 = rho 50077 := by linear_combination r5688
  have hd3 : rho 50078 * (rho 50066 * rho 50066 + rho 50065 * rho 50065 * (-1)) =
      2 * (rho 50065 * rho 50066) := by
    rw [hd0, hd1, hd2]
    linear_combination r5689
  have hd4 : rho 50079 * (2 - (rho 50066 * rho 50066 + rho 50065 * rho 50065 * (-1))) =
      rho 50066 * rho 50066 - rho 50065 * rho 50065 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5690
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX43 rho, seg52Out0AccY43 rho⟩ ⟨rho 50065, rho 50066⟩
    ⟨rho 50071, rho 50072⟩ ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 50078, rho 50079⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c3 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 33 ≤ i → i < 44 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung33 rho h bits[33]! (hbitAt 33 (by omega)) hacc hcur
  · exact seg52Out0_rung34 rho h bits[34]! (hbitAt 34 (by omega)) hacc hcur
  · exact seg52Out0_rung35 rho h bits[35]! (hbitAt 35 (by omega)) hacc hcur
  · exact seg52Out0_rung36 rho h bits[36]! (hbitAt 36 (by omega)) hacc hcur
  · exact seg52Out0_rung37 rho h bits[37]! (hbitAt 37 (by omega)) hacc hcur
  · exact seg52Out0_rung38 rho h bits[38]! (hbitAt 38 (by omega)) hacc hcur
  · exact seg52Out0_rung39 rho h bits[39]! (hbitAt 39 (by omega)) hacc hcur
  · exact seg52Out0_rung40 rho h bits[40]! (hbitAt 40 (by omega)) hacc hcur
  · exact seg52Out0_rung41 rho h bits[41]! (hbitAt 41 (by omega)) hacc hcur
  · exact seg52Out0_rung42 rho h bits[42]! (hbitAt 42 (by omega)) hacc hcur
  · exact seg52Out0_rung43 rho h bits[43]! (hbitAt 43 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
