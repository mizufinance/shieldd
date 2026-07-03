import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6549 rho ∧ Seg52.relationRow6550 rho ∧ Seg52.relationRow6551 rho ∧ Seg52.relationRow6552 rho ∧ Seg52.relationRow6553 rho ∧ Seg52.relationRow6554 rho ∧ Seg52.relationRow6555 rho ∧ Seg52.relationRow6556 rho ∧ Seg52.relationRow6557 rho ∧ Seg52.relationRow6558 rho ∧ Seg52.relationRow6559 rho ∧ Seg52.relationRow6560 rho ∧ Seg52.relationRow6561 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, p81, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart81 at p81

  rcases p81 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6549, r6550, r6551, r6552, r6553, r6554, r6555, r6556, r6557, r6558, r6559⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨r6560, r6561, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6549, r6550, r6551, r6552, r6553, r6554, r6555, r6556, r6557, r6558, r6559, r6560, r6561⟩

theorem seg52Out0_rung110 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49496 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50936, rho 50937⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50936, rho 50937⟩
        ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50949, rho 50950⟩ := by
  obtain ⟨r6549, r6550, r6551, r6552, r6553, r6554, r6555, r6556, r6557, r6558, r6559, r6560, r6561⟩ := seg52Out0_rows110 rho h
  unfold Seg52.relationRow6549 at r6549

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6549

  unfold Seg52.relationRow6550 at r6550

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6550

  unfold Seg52.relationRow6551 at r6551

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6551

  unfold Seg52.relationRow6552 at r6552

  unfold Seg52.relationRow6553 at r6553

  unfold Seg52.relationRow6554 at r6554

  unfold Seg52.relationRow6555 at r6555

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6555

  unfold Seg52.relationRow6556 at r6556

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6556

  unfold Seg52.relationRow6557 at r6557

  unfold Seg52.relationRow6558 at r6558

  unfold Seg52.relationRow6559 at r6559

  unfold Seg52.relationRow6560 at r6560

  unfold Seg52.relationRow6561 at r6561

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX111 rho = seg52Out0AccX110 rho + rho 50944 := by
    unfold seg52Out0AccX111 seg52Out0AccX110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 110]

    ring

  have hnexty : seg52Out0AccY111 rho = seg52Out0AccY110 rho + rho 50945 := by
    unfold seg52Out0AccY111 seg52Out0AccY110
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 110]

    ring

  have ha0 : (rho 50936 + rho 50937) * (seg52Out0AccX110 rho + seg52Out0AccY110 rho) = rho 50938 := by
    unfold seg52Out0AccX110 seg52Out0AccY110
    linear_combination r6549
  have ha1 : rho 50937 * seg52Out0AccX110 rho = rho 50939 := by
    unfold seg52Out0AccX110
    linear_combination r6550
  have ha2 : rho 50936 * seg52Out0AccY110 rho = rho 50940 := by
    unfold seg52Out0AccY110
    linear_combination r6551
  have ha3 : 3021 * rho 50939 * rho 50940 = rho 50941 := by
    linear_combination r6552
  have ha4 : rho 50942 * (1 + rho 50941) = rho 50939 + rho 50940 := by
    linear_combination r6553
  have ha5 : rho 50943 * (1 - rho 50941) = rho 50938 - rho 50939 - rho 50940 := by
    linear_combination r6554
  have haddx :
      rho 50942 * (1 + 3021 * (rho 50937 * seg52Out0AccX110 rho) * (rho 50936 * seg52Out0AccY110 rho)) =
        rho 50937 * seg52Out0AccX110 rho + rho 50936 * seg52Out0AccY110 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50943 * (1 - 3021 * (rho 50937 * seg52Out0AccX110 rho) * (rho 50936 * seg52Out0AccY110 rho)) =
        (-1) * (rho 50937 * seg52Out0AccX110 rho) - rho 50936 * seg52Out0AccY110 rho +
          (seg52Out0AccY110 rho - seg52Out0AccX110 rho * (-1)) * (rho 50936 + rho 50937) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50943 * (1 - rho 50941) = rho 50938 - rho 50939 - rho 50940 := ha5
      _ = (-1) * rho 50939 - rho 50940 + (seg52Out0AccY110 rho - seg52Out0AccX110 rho * (-1)) *
          (rho 50936 + rho 50937) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX111 rho = seg52Out0AccX110 rho - Bool.toZMod bit * (seg52Out0AccX110 rho - rho 50942) := by
    have hd : rho 50944 = Bool.toZMod bit * (rho 50942 - seg52Out0AccX110 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX110
      linear_combination -r6555
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY111 rho = seg52Out0AccY110 rho - Bool.toZMod bit * (seg52Out0AccY110 rho - rho 50943) := by
    have hd : rho 50945 = Bool.toZMod bit * (rho 50943 - seg52Out0AccY110 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY110
      linear_combination -r6556
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50936 * rho 50937 = rho 50946 := by linear_combination r6557
  have hd1 : rho 50936 * rho 50936 = rho 50947 := by linear_combination r6558
  have hd2 : rho 50937 * rho 50937 = rho 50948 := by linear_combination r6559
  have hd3 : rho 50949 * (rho 50937 * rho 50937 + rho 50936 * rho 50936 * (-1)) =
      2 * (rho 50936 * rho 50937) := by
    rw [hd0, hd1, hd2]
    linear_combination r6560
  have hd4 : rho 50950 * (2 - (rho 50937 * rho 50937 + rho 50936 * rho 50936 * (-1))) =
      rho 50937 * rho 50937 - rho 50936 * rho 50936 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6561
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX110 rho, seg52Out0AccY110 rho⟩ ⟨rho 50936, rho 50937⟩
    ⟨rho 50942, rho 50943⟩ ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50949, rho 50950⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6562 rho ∧ Seg52.relationRow6563 rho ∧ Seg52.relationRow6564 rho ∧ Seg52.relationRow6565 rho ∧ Seg52.relationRow6566 rho ∧ Seg52.relationRow6567 rho ∧ Seg52.relationRow6568 rho ∧ Seg52.relationRow6569 rho ∧ Seg52.relationRow6570 rho ∧ Seg52.relationRow6571 rho ∧ Seg52.relationRow6572 rho ∧ Seg52.relationRow6573 rho ∧ Seg52.relationRow6574 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, r6562, r6563, r6564, r6565, r6566, r6567, r6568, r6569, r6570, r6571, r6572, r6573, r6574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6562, r6563, r6564, r6565, r6566, r6567, r6568, r6569, r6570, r6571, r6572, r6573, r6574⟩

theorem seg52Out0_rung111 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49497 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50949, rho 50950⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50949, rho 50950⟩
        ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50962, rho 50963⟩ := by
  obtain ⟨r6562, r6563, r6564, r6565, r6566, r6567, r6568, r6569, r6570, r6571, r6572, r6573, r6574⟩ := seg52Out0_rows111 rho h
  unfold Seg52.relationRow6562 at r6562

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6562

  unfold Seg52.relationRow6563 at r6563

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6563

  unfold Seg52.relationRow6564 at r6564

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6564

  unfold Seg52.relationRow6565 at r6565

  unfold Seg52.relationRow6566 at r6566

  unfold Seg52.relationRow6567 at r6567

  unfold Seg52.relationRow6568 at r6568

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6568

  unfold Seg52.relationRow6569 at r6569

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6569

  unfold Seg52.relationRow6570 at r6570

  unfold Seg52.relationRow6571 at r6571

  unfold Seg52.relationRow6572 at r6572

  unfold Seg52.relationRow6573 at r6573

  unfold Seg52.relationRow6574 at r6574

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX112 rho = seg52Out0AccX111 rho + rho 50957 := by
    unfold seg52Out0AccX112 seg52Out0AccX111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 111]

    ring

  have hnexty : seg52Out0AccY112 rho = seg52Out0AccY111 rho + rho 50958 := by
    unfold seg52Out0AccY112 seg52Out0AccY111
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 111]

    ring

  have ha0 : (rho 50949 + rho 50950) * (seg52Out0AccX111 rho + seg52Out0AccY111 rho) = rho 50951 := by
    unfold seg52Out0AccX111 seg52Out0AccY111
    linear_combination r6562
  have ha1 : rho 50950 * seg52Out0AccX111 rho = rho 50952 := by
    unfold seg52Out0AccX111
    linear_combination r6563
  have ha2 : rho 50949 * seg52Out0AccY111 rho = rho 50953 := by
    unfold seg52Out0AccY111
    linear_combination r6564
  have ha3 : 3021 * rho 50952 * rho 50953 = rho 50954 := by
    linear_combination r6565
  have ha4 : rho 50955 * (1 + rho 50954) = rho 50952 + rho 50953 := by
    linear_combination r6566
  have ha5 : rho 50956 * (1 - rho 50954) = rho 50951 - rho 50952 - rho 50953 := by
    linear_combination r6567
  have haddx :
      rho 50955 * (1 + 3021 * (rho 50950 * seg52Out0AccX111 rho) * (rho 50949 * seg52Out0AccY111 rho)) =
        rho 50950 * seg52Out0AccX111 rho + rho 50949 * seg52Out0AccY111 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50956 * (1 - 3021 * (rho 50950 * seg52Out0AccX111 rho) * (rho 50949 * seg52Out0AccY111 rho)) =
        (-1) * (rho 50950 * seg52Out0AccX111 rho) - rho 50949 * seg52Out0AccY111 rho +
          (seg52Out0AccY111 rho - seg52Out0AccX111 rho * (-1)) * (rho 50949 + rho 50950) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50956 * (1 - rho 50954) = rho 50951 - rho 50952 - rho 50953 := ha5
      _ = (-1) * rho 50952 - rho 50953 + (seg52Out0AccY111 rho - seg52Out0AccX111 rho * (-1)) *
          (rho 50949 + rho 50950) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX112 rho = seg52Out0AccX111 rho - Bool.toZMod bit * (seg52Out0AccX111 rho - rho 50955) := by
    have hd : rho 50957 = Bool.toZMod bit * (rho 50955 - seg52Out0AccX111 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX111
      linear_combination -r6568
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY112 rho = seg52Out0AccY111 rho - Bool.toZMod bit * (seg52Out0AccY111 rho - rho 50956) := by
    have hd : rho 50958 = Bool.toZMod bit * (rho 50956 - seg52Out0AccY111 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY111
      linear_combination -r6569
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50949 * rho 50950 = rho 50959 := by linear_combination r6570
  have hd1 : rho 50949 * rho 50949 = rho 50960 := by linear_combination r6571
  have hd2 : rho 50950 * rho 50950 = rho 50961 := by linear_combination r6572
  have hd3 : rho 50962 * (rho 50950 * rho 50950 + rho 50949 * rho 50949 * (-1)) =
      2 * (rho 50949 * rho 50950) := by
    rw [hd0, hd1, hd2]
    linear_combination r6573
  have hd4 : rho 50963 * (2 - (rho 50950 * rho 50950 + rho 50949 * rho 50949 * (-1))) =
      rho 50950 * rho 50950 - rho 50949 * rho 50949 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6574
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX111 rho, seg52Out0AccY111 rho⟩ ⟨rho 50949, rho 50950⟩
    ⟨rho 50955, rho 50956⟩ ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50962, rho 50963⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6575 rho ∧ Seg52.relationRow6576 rho ∧ Seg52.relationRow6577 rho ∧ Seg52.relationRow6578 rho ∧ Seg52.relationRow6579 rho ∧ Seg52.relationRow6580 rho ∧ Seg52.relationRow6581 rho ∧ Seg52.relationRow6582 rho ∧ Seg52.relationRow6583 rho ∧ Seg52.relationRow6584 rho ∧ Seg52.relationRow6585 rho ∧ Seg52.relationRow6586 rho ∧ Seg52.relationRow6587 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6575, r6576, r6577, r6578, r6579, r6580, r6581, r6582, r6583, r6584, r6585, r6586, r6587, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6575, r6576, r6577, r6578, r6579, r6580, r6581, r6582, r6583, r6584, r6585, r6586, r6587⟩

theorem seg52Out0_rung112 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49498 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50962, rho 50963⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50962, rho 50963⟩
        ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50975, rho 50976⟩ := by
  obtain ⟨r6575, r6576, r6577, r6578, r6579, r6580, r6581, r6582, r6583, r6584, r6585, r6586, r6587⟩ := seg52Out0_rows112 rho h
  unfold Seg52.relationRow6575 at r6575

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6575

  unfold Seg52.relationRow6576 at r6576

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6576

  unfold Seg52.relationRow6577 at r6577

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6577

  unfold Seg52.relationRow6578 at r6578

  unfold Seg52.relationRow6579 at r6579

  unfold Seg52.relationRow6580 at r6580

  unfold Seg52.relationRow6581 at r6581

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6581

  unfold Seg52.relationRow6582 at r6582

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6582

  unfold Seg52.relationRow6583 at r6583

  unfold Seg52.relationRow6584 at r6584

  unfold Seg52.relationRow6585 at r6585

  unfold Seg52.relationRow6586 at r6586

  unfold Seg52.relationRow6587 at r6587

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX113 rho = seg52Out0AccX112 rho + rho 50970 := by
    unfold seg52Out0AccX113 seg52Out0AccX112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 112]

    ring

  have hnexty : seg52Out0AccY113 rho = seg52Out0AccY112 rho + rho 50971 := by
    unfold seg52Out0AccY113 seg52Out0AccY112
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 112]

    ring

  have ha0 : (rho 50962 + rho 50963) * (seg52Out0AccX112 rho + seg52Out0AccY112 rho) = rho 50964 := by
    unfold seg52Out0AccX112 seg52Out0AccY112
    linear_combination r6575
  have ha1 : rho 50963 * seg52Out0AccX112 rho = rho 50965 := by
    unfold seg52Out0AccX112
    linear_combination r6576
  have ha2 : rho 50962 * seg52Out0AccY112 rho = rho 50966 := by
    unfold seg52Out0AccY112
    linear_combination r6577
  have ha3 : 3021 * rho 50965 * rho 50966 = rho 50967 := by
    linear_combination r6578
  have ha4 : rho 50968 * (1 + rho 50967) = rho 50965 + rho 50966 := by
    linear_combination r6579
  have ha5 : rho 50969 * (1 - rho 50967) = rho 50964 - rho 50965 - rho 50966 := by
    linear_combination r6580
  have haddx :
      rho 50968 * (1 + 3021 * (rho 50963 * seg52Out0AccX112 rho) * (rho 50962 * seg52Out0AccY112 rho)) =
        rho 50963 * seg52Out0AccX112 rho + rho 50962 * seg52Out0AccY112 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50969 * (1 - 3021 * (rho 50963 * seg52Out0AccX112 rho) * (rho 50962 * seg52Out0AccY112 rho)) =
        (-1) * (rho 50963 * seg52Out0AccX112 rho) - rho 50962 * seg52Out0AccY112 rho +
          (seg52Out0AccY112 rho - seg52Out0AccX112 rho * (-1)) * (rho 50962 + rho 50963) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50969 * (1 - rho 50967) = rho 50964 - rho 50965 - rho 50966 := ha5
      _ = (-1) * rho 50965 - rho 50966 + (seg52Out0AccY112 rho - seg52Out0AccX112 rho * (-1)) *
          (rho 50962 + rho 50963) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX113 rho = seg52Out0AccX112 rho - Bool.toZMod bit * (seg52Out0AccX112 rho - rho 50968) := by
    have hd : rho 50970 = Bool.toZMod bit * (rho 50968 - seg52Out0AccX112 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX112
      linear_combination -r6581
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY113 rho = seg52Out0AccY112 rho - Bool.toZMod bit * (seg52Out0AccY112 rho - rho 50969) := by
    have hd : rho 50971 = Bool.toZMod bit * (rho 50969 - seg52Out0AccY112 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY112
      linear_combination -r6582
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50962 * rho 50963 = rho 50972 := by linear_combination r6583
  have hd1 : rho 50962 * rho 50962 = rho 50973 := by linear_combination r6584
  have hd2 : rho 50963 * rho 50963 = rho 50974 := by linear_combination r6585
  have hd3 : rho 50975 * (rho 50963 * rho 50963 + rho 50962 * rho 50962 * (-1)) =
      2 * (rho 50962 * rho 50963) := by
    rw [hd0, hd1, hd2]
    linear_combination r6586
  have hd4 : rho 50976 * (2 - (rho 50963 * rho 50963 + rho 50962 * rho 50962 * (-1))) =
      rho 50963 * rho 50963 - rho 50962 * rho 50962 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6587
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX112 rho, seg52Out0AccY112 rho⟩ ⟨rho 50962, rho 50963⟩
    ⟨rho 50968, rho 50969⟩ ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50975, rho 50976⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6588 rho ∧ Seg52.relationRow6589 rho ∧ Seg52.relationRow6590 rho ∧ Seg52.relationRow6591 rho ∧ Seg52.relationRow6592 rho ∧ Seg52.relationRow6593 rho ∧ Seg52.relationRow6594 rho ∧ Seg52.relationRow6595 rho ∧ Seg52.relationRow6596 rho ∧ Seg52.relationRow6597 rho ∧ Seg52.relationRow6598 rho ∧ Seg52.relationRow6599 rho ∧ Seg52.relationRow6600 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6588, r6589, r6590, r6591, r6592, r6593, r6594, r6595, r6596, r6597, r6598, r6599, r6600, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6588, r6589, r6590, r6591, r6592, r6593, r6594, r6595, r6596, r6597, r6598, r6599, r6600⟩

theorem seg52Out0_rung113 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49499 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50975, rho 50976⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50975, rho 50976⟩
        ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50988, rho 50989⟩ := by
  obtain ⟨r6588, r6589, r6590, r6591, r6592, r6593, r6594, r6595, r6596, r6597, r6598, r6599, r6600⟩ := seg52Out0_rows113 rho h
  unfold Seg52.relationRow6588 at r6588

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6588

  unfold Seg52.relationRow6589 at r6589

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6589

  unfold Seg52.relationRow6590 at r6590

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6590

  unfold Seg52.relationRow6591 at r6591

  unfold Seg52.relationRow6592 at r6592

  unfold Seg52.relationRow6593 at r6593

  unfold Seg52.relationRow6594 at r6594

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6594

  unfold Seg52.relationRow6595 at r6595

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6595

  unfold Seg52.relationRow6596 at r6596

  unfold Seg52.relationRow6597 at r6597

  unfold Seg52.relationRow6598 at r6598

  unfold Seg52.relationRow6599 at r6599

  unfold Seg52.relationRow6600 at r6600

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX114 rho = seg52Out0AccX113 rho + rho 50983 := by
    unfold seg52Out0AccX114 seg52Out0AccX113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 113]

    ring

  have hnexty : seg52Out0AccY114 rho = seg52Out0AccY113 rho + rho 50984 := by
    unfold seg52Out0AccY114 seg52Out0AccY113
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 113]

    ring

  have ha0 : (rho 50975 + rho 50976) * (seg52Out0AccX113 rho + seg52Out0AccY113 rho) = rho 50977 := by
    unfold seg52Out0AccX113 seg52Out0AccY113
    linear_combination r6588
  have ha1 : rho 50976 * seg52Out0AccX113 rho = rho 50978 := by
    unfold seg52Out0AccX113
    linear_combination r6589
  have ha2 : rho 50975 * seg52Out0AccY113 rho = rho 50979 := by
    unfold seg52Out0AccY113
    linear_combination r6590
  have ha3 : 3021 * rho 50978 * rho 50979 = rho 50980 := by
    linear_combination r6591
  have ha4 : rho 50981 * (1 + rho 50980) = rho 50978 + rho 50979 := by
    linear_combination r6592
  have ha5 : rho 50982 * (1 - rho 50980) = rho 50977 - rho 50978 - rho 50979 := by
    linear_combination r6593
  have haddx :
      rho 50981 * (1 + 3021 * (rho 50976 * seg52Out0AccX113 rho) * (rho 50975 * seg52Out0AccY113 rho)) =
        rho 50976 * seg52Out0AccX113 rho + rho 50975 * seg52Out0AccY113 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50982 * (1 - 3021 * (rho 50976 * seg52Out0AccX113 rho) * (rho 50975 * seg52Out0AccY113 rho)) =
        (-1) * (rho 50976 * seg52Out0AccX113 rho) - rho 50975 * seg52Out0AccY113 rho +
          (seg52Out0AccY113 rho - seg52Out0AccX113 rho * (-1)) * (rho 50975 + rho 50976) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50982 * (1 - rho 50980) = rho 50977 - rho 50978 - rho 50979 := ha5
      _ = (-1) * rho 50978 - rho 50979 + (seg52Out0AccY113 rho - seg52Out0AccX113 rho * (-1)) *
          (rho 50975 + rho 50976) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX114 rho = seg52Out0AccX113 rho - Bool.toZMod bit * (seg52Out0AccX113 rho - rho 50981) := by
    have hd : rho 50983 = Bool.toZMod bit * (rho 50981 - seg52Out0AccX113 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX113
      linear_combination -r6594
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY114 rho = seg52Out0AccY113 rho - Bool.toZMod bit * (seg52Out0AccY113 rho - rho 50982) := by
    have hd : rho 50984 = Bool.toZMod bit * (rho 50982 - seg52Out0AccY113 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY113
      linear_combination -r6595
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50975 * rho 50976 = rho 50985 := by linear_combination r6596
  have hd1 : rho 50975 * rho 50975 = rho 50986 := by linear_combination r6597
  have hd2 : rho 50976 * rho 50976 = rho 50987 := by linear_combination r6598
  have hd3 : rho 50988 * (rho 50976 * rho 50976 + rho 50975 * rho 50975 * (-1)) =
      2 * (rho 50975 * rho 50976) := by
    rw [hd0, hd1, hd2]
    linear_combination r6599
  have hd4 : rho 50989 * (2 - (rho 50976 * rho 50976 + rho 50975 * rho 50975 * (-1))) =
      rho 50976 * rho 50976 - rho 50975 * rho 50975 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6600
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX113 rho, seg52Out0AccY113 rho⟩ ⟨rho 50975, rho 50976⟩
    ⟨rho 50981, rho 50982⟩ ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50988, rho 50989⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6601 rho ∧ Seg52.relationRow6602 rho ∧ Seg52.relationRow6603 rho ∧ Seg52.relationRow6604 rho ∧ Seg52.relationRow6605 rho ∧ Seg52.relationRow6606 rho ∧ Seg52.relationRow6607 rho ∧ Seg52.relationRow6608 rho ∧ Seg52.relationRow6609 rho ∧ Seg52.relationRow6610 rho ∧ Seg52.relationRow6611 rho ∧ Seg52.relationRow6612 rho ∧ Seg52.relationRow6613 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6601, r6602, r6603, r6604, r6605, r6606, r6607, r6608, r6609, r6610, r6611, r6612, r6613, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6601, r6602, r6603, r6604, r6605, r6606, r6607, r6608, r6609, r6610, r6611, r6612, r6613⟩

theorem seg52Out0_rung114 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49500 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50988, rho 50989⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50988, rho 50989⟩
        ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 51001, rho 51002⟩ := by
  obtain ⟨r6601, r6602, r6603, r6604, r6605, r6606, r6607, r6608, r6609, r6610, r6611, r6612, r6613⟩ := seg52Out0_rows114 rho h
  unfold Seg52.relationRow6601 at r6601

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6601

  unfold Seg52.relationRow6602 at r6602

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6602

  unfold Seg52.relationRow6603 at r6603

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6603

  unfold Seg52.relationRow6604 at r6604

  unfold Seg52.relationRow6605 at r6605

  unfold Seg52.relationRow6606 at r6606

  unfold Seg52.relationRow6607 at r6607

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6607

  unfold Seg52.relationRow6608 at r6608

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6608

  unfold Seg52.relationRow6609 at r6609

  unfold Seg52.relationRow6610 at r6610

  unfold Seg52.relationRow6611 at r6611

  unfold Seg52.relationRow6612 at r6612

  unfold Seg52.relationRow6613 at r6613

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX115 rho = seg52Out0AccX114 rho + rho 50996 := by
    unfold seg52Out0AccX115 seg52Out0AccX114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 114]

    ring

  have hnexty : seg52Out0AccY115 rho = seg52Out0AccY114 rho + rho 50997 := by
    unfold seg52Out0AccY115 seg52Out0AccY114
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 114]

    ring

  have ha0 : (rho 50988 + rho 50989) * (seg52Out0AccX114 rho + seg52Out0AccY114 rho) = rho 50990 := by
    unfold seg52Out0AccX114 seg52Out0AccY114
    linear_combination r6601
  have ha1 : rho 50989 * seg52Out0AccX114 rho = rho 50991 := by
    unfold seg52Out0AccX114
    linear_combination r6602
  have ha2 : rho 50988 * seg52Out0AccY114 rho = rho 50992 := by
    unfold seg52Out0AccY114
    linear_combination r6603
  have ha3 : 3021 * rho 50991 * rho 50992 = rho 50993 := by
    linear_combination r6604
  have ha4 : rho 50994 * (1 + rho 50993) = rho 50991 + rho 50992 := by
    linear_combination r6605
  have ha5 : rho 50995 * (1 - rho 50993) = rho 50990 - rho 50991 - rho 50992 := by
    linear_combination r6606
  have haddx :
      rho 50994 * (1 + 3021 * (rho 50989 * seg52Out0AccX114 rho) * (rho 50988 * seg52Out0AccY114 rho)) =
        rho 50989 * seg52Out0AccX114 rho + rho 50988 * seg52Out0AccY114 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50995 * (1 - 3021 * (rho 50989 * seg52Out0AccX114 rho) * (rho 50988 * seg52Out0AccY114 rho)) =
        (-1) * (rho 50989 * seg52Out0AccX114 rho) - rho 50988 * seg52Out0AccY114 rho +
          (seg52Out0AccY114 rho - seg52Out0AccX114 rho * (-1)) * (rho 50988 + rho 50989) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50995 * (1 - rho 50993) = rho 50990 - rho 50991 - rho 50992 := ha5
      _ = (-1) * rho 50991 - rho 50992 + (seg52Out0AccY114 rho - seg52Out0AccX114 rho * (-1)) *
          (rho 50988 + rho 50989) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX115 rho = seg52Out0AccX114 rho - Bool.toZMod bit * (seg52Out0AccX114 rho - rho 50994) := by
    have hd : rho 50996 = Bool.toZMod bit * (rho 50994 - seg52Out0AccX114 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX114
      linear_combination -r6607
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY115 rho = seg52Out0AccY114 rho - Bool.toZMod bit * (seg52Out0AccY114 rho - rho 50995) := by
    have hd : rho 50997 = Bool.toZMod bit * (rho 50995 - seg52Out0AccY114 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY114
      linear_combination -r6608
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50988 * rho 50989 = rho 50998 := by linear_combination r6609
  have hd1 : rho 50988 * rho 50988 = rho 50999 := by linear_combination r6610
  have hd2 : rho 50989 * rho 50989 = rho 51000 := by linear_combination r6611
  have hd3 : rho 51001 * (rho 50989 * rho 50989 + rho 50988 * rho 50988 * (-1)) =
      2 * (rho 50988 * rho 50989) := by
    rw [hd0, hd1, hd2]
    linear_combination r6612
  have hd4 : rho 51002 * (2 - (rho 50989 * rho 50989 + rho 50988 * rho 50988 * (-1))) =
      rho 50989 * rho 50989 - rho 50988 * rho 50988 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6613
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX114 rho, seg52Out0AccY114 rho⟩ ⟨rho 50988, rho 50989⟩
    ⟨rho 50994, rho 50995⟩ ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 51001, rho 51002⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6614 rho ∧ Seg52.relationRow6615 rho ∧ Seg52.relationRow6616 rho ∧ Seg52.relationRow6617 rho ∧ Seg52.relationRow6618 rho ∧ Seg52.relationRow6619 rho ∧ Seg52.relationRow6620 rho ∧ Seg52.relationRow6621 rho ∧ Seg52.relationRow6622 rho ∧ Seg52.relationRow6623 rho ∧ Seg52.relationRow6624 rho ∧ Seg52.relationRow6625 rho ∧ Seg52.relationRow6626 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6614, r6615, r6616, r6617, r6618, r6619, r6620, r6621, r6622, r6623, r6624, r6625, r6626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6614, r6615, r6616, r6617, r6618, r6619, r6620, r6621, r6622, r6623, r6624, r6625, r6626⟩

theorem seg52Out0_rung115 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49501 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51001, rho 51002⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 51001, rho 51002⟩
        ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 51014, rho 51015⟩ := by
  obtain ⟨r6614, r6615, r6616, r6617, r6618, r6619, r6620, r6621, r6622, r6623, r6624, r6625, r6626⟩ := seg52Out0_rows115 rho h
  unfold Seg52.relationRow6614 at r6614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6614

  unfold Seg52.relationRow6615 at r6615

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6615

  unfold Seg52.relationRow6616 at r6616

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6616

  unfold Seg52.relationRow6617 at r6617

  unfold Seg52.relationRow6618 at r6618

  unfold Seg52.relationRow6619 at r6619

  unfold Seg52.relationRow6620 at r6620

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6620

  unfold Seg52.relationRow6621 at r6621

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6621

  unfold Seg52.relationRow6622 at r6622

  unfold Seg52.relationRow6623 at r6623

  unfold Seg52.relationRow6624 at r6624

  unfold Seg52.relationRow6625 at r6625

  unfold Seg52.relationRow6626 at r6626

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX116 rho = seg52Out0AccX115 rho + rho 51009 := by
    unfold seg52Out0AccX116 seg52Out0AccX115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 115]

    ring

  have hnexty : seg52Out0AccY116 rho = seg52Out0AccY115 rho + rho 51010 := by
    unfold seg52Out0AccY116 seg52Out0AccY115
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 115]

    ring

  have ha0 : (rho 51001 + rho 51002) * (seg52Out0AccX115 rho + seg52Out0AccY115 rho) = rho 51003 := by
    unfold seg52Out0AccX115 seg52Out0AccY115
    linear_combination r6614
  have ha1 : rho 51002 * seg52Out0AccX115 rho = rho 51004 := by
    unfold seg52Out0AccX115
    linear_combination r6615
  have ha2 : rho 51001 * seg52Out0AccY115 rho = rho 51005 := by
    unfold seg52Out0AccY115
    linear_combination r6616
  have ha3 : 3021 * rho 51004 * rho 51005 = rho 51006 := by
    linear_combination r6617
  have ha4 : rho 51007 * (1 + rho 51006) = rho 51004 + rho 51005 := by
    linear_combination r6618
  have ha5 : rho 51008 * (1 - rho 51006) = rho 51003 - rho 51004 - rho 51005 := by
    linear_combination r6619
  have haddx :
      rho 51007 * (1 + 3021 * (rho 51002 * seg52Out0AccX115 rho) * (rho 51001 * seg52Out0AccY115 rho)) =
        rho 51002 * seg52Out0AccX115 rho + rho 51001 * seg52Out0AccY115 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51008 * (1 - 3021 * (rho 51002 * seg52Out0AccX115 rho) * (rho 51001 * seg52Out0AccY115 rho)) =
        (-1) * (rho 51002 * seg52Out0AccX115 rho) - rho 51001 * seg52Out0AccY115 rho +
          (seg52Out0AccY115 rho - seg52Out0AccX115 rho * (-1)) * (rho 51001 + rho 51002) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51008 * (1 - rho 51006) = rho 51003 - rho 51004 - rho 51005 := ha5
      _ = (-1) * rho 51004 - rho 51005 + (seg52Out0AccY115 rho - seg52Out0AccX115 rho * (-1)) *
          (rho 51001 + rho 51002) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX116 rho = seg52Out0AccX115 rho - Bool.toZMod bit * (seg52Out0AccX115 rho - rho 51007) := by
    have hd : rho 51009 = Bool.toZMod bit * (rho 51007 - seg52Out0AccX115 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX115
      linear_combination -r6620
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY116 rho = seg52Out0AccY115 rho - Bool.toZMod bit * (seg52Out0AccY115 rho - rho 51008) := by
    have hd : rho 51010 = Bool.toZMod bit * (rho 51008 - seg52Out0AccY115 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY115
      linear_combination -r6621
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51001 * rho 51002 = rho 51011 := by linear_combination r6622
  have hd1 : rho 51001 * rho 51001 = rho 51012 := by linear_combination r6623
  have hd2 : rho 51002 * rho 51002 = rho 51013 := by linear_combination r6624
  have hd3 : rho 51014 * (rho 51002 * rho 51002 + rho 51001 * rho 51001 * (-1)) =
      2 * (rho 51001 * rho 51002) := by
    rw [hd0, hd1, hd2]
    linear_combination r6625
  have hd4 : rho 51015 * (2 - (rho 51002 * rho 51002 + rho 51001 * rho 51001 * (-1))) =
      rho 51002 * rho 51002 - rho 51001 * rho 51001 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6626
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX115 rho, seg52Out0AccY115 rho⟩ ⟨rho 51001, rho 51002⟩
    ⟨rho 51007, rho 51008⟩ ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 51014, rho 51015⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6627 rho ∧ Seg52.relationRow6628 rho ∧ Seg52.relationRow6629 rho ∧ Seg52.relationRow6630 rho ∧ Seg52.relationRow6631 rho ∧ Seg52.relationRow6632 rho ∧ Seg52.relationRow6633 rho ∧ Seg52.relationRow6634 rho ∧ Seg52.relationRow6635 rho ∧ Seg52.relationRow6636 rho ∧ Seg52.relationRow6637 rho ∧ Seg52.relationRow6638 rho ∧ Seg52.relationRow6639 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p82, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart82 at p82

  rcases p82 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6627, r6628, r6629, r6630, r6631, r6632, r6633, r6634, r6635, r6636, r6637, r6638, r6639⟩

  exact ⟨r6627, r6628, r6629, r6630, r6631, r6632, r6633, r6634, r6635, r6636, r6637, r6638, r6639⟩

theorem seg52Out0_rung116 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49502 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51014, rho 51015⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 51014, rho 51015⟩
        ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 51027, rho 51028⟩ := by
  obtain ⟨r6627, r6628, r6629, r6630, r6631, r6632, r6633, r6634, r6635, r6636, r6637, r6638, r6639⟩ := seg52Out0_rows116 rho h
  unfold Seg52.relationRow6627 at r6627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6627

  unfold Seg52.relationRow6628 at r6628

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6628

  unfold Seg52.relationRow6629 at r6629

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6629

  unfold Seg52.relationRow6630 at r6630

  unfold Seg52.relationRow6631 at r6631

  unfold Seg52.relationRow6632 at r6632

  unfold Seg52.relationRow6633 at r6633

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6633

  unfold Seg52.relationRow6634 at r6634

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6634

  unfold Seg52.relationRow6635 at r6635

  unfold Seg52.relationRow6636 at r6636

  unfold Seg52.relationRow6637 at r6637

  unfold Seg52.relationRow6638 at r6638

  unfold Seg52.relationRow6639 at r6639

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX117 rho = seg52Out0AccX116 rho + rho 51022 := by
    unfold seg52Out0AccX117 seg52Out0AccX116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 116]

    ring

  have hnexty : seg52Out0AccY117 rho = seg52Out0AccY116 rho + rho 51023 := by
    unfold seg52Out0AccY117 seg52Out0AccY116
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 116]

    ring

  have ha0 : (rho 51014 + rho 51015) * (seg52Out0AccX116 rho + seg52Out0AccY116 rho) = rho 51016 := by
    unfold seg52Out0AccX116 seg52Out0AccY116
    linear_combination r6627
  have ha1 : rho 51015 * seg52Out0AccX116 rho = rho 51017 := by
    unfold seg52Out0AccX116
    linear_combination r6628
  have ha2 : rho 51014 * seg52Out0AccY116 rho = rho 51018 := by
    unfold seg52Out0AccY116
    linear_combination r6629
  have ha3 : 3021 * rho 51017 * rho 51018 = rho 51019 := by
    linear_combination r6630
  have ha4 : rho 51020 * (1 + rho 51019) = rho 51017 + rho 51018 := by
    linear_combination r6631
  have ha5 : rho 51021 * (1 - rho 51019) = rho 51016 - rho 51017 - rho 51018 := by
    linear_combination r6632
  have haddx :
      rho 51020 * (1 + 3021 * (rho 51015 * seg52Out0AccX116 rho) * (rho 51014 * seg52Out0AccY116 rho)) =
        rho 51015 * seg52Out0AccX116 rho + rho 51014 * seg52Out0AccY116 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51021 * (1 - 3021 * (rho 51015 * seg52Out0AccX116 rho) * (rho 51014 * seg52Out0AccY116 rho)) =
        (-1) * (rho 51015 * seg52Out0AccX116 rho) - rho 51014 * seg52Out0AccY116 rho +
          (seg52Out0AccY116 rho - seg52Out0AccX116 rho * (-1)) * (rho 51014 + rho 51015) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51021 * (1 - rho 51019) = rho 51016 - rho 51017 - rho 51018 := ha5
      _ = (-1) * rho 51017 - rho 51018 + (seg52Out0AccY116 rho - seg52Out0AccX116 rho * (-1)) *
          (rho 51014 + rho 51015) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX117 rho = seg52Out0AccX116 rho - Bool.toZMod bit * (seg52Out0AccX116 rho - rho 51020) := by
    have hd : rho 51022 = Bool.toZMod bit * (rho 51020 - seg52Out0AccX116 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX116
      linear_combination -r6633
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY117 rho = seg52Out0AccY116 rho - Bool.toZMod bit * (seg52Out0AccY116 rho - rho 51021) := by
    have hd : rho 51023 = Bool.toZMod bit * (rho 51021 - seg52Out0AccY116 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY116
      linear_combination -r6634
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51014 * rho 51015 = rho 51024 := by linear_combination r6635
  have hd1 : rho 51014 * rho 51014 = rho 51025 := by linear_combination r6636
  have hd2 : rho 51015 * rho 51015 = rho 51026 := by linear_combination r6637
  have hd3 : rho 51027 * (rho 51015 * rho 51015 + rho 51014 * rho 51014 * (-1)) =
      2 * (rho 51014 * rho 51015) := by
    rw [hd0, hd1, hd2]
    linear_combination r6638
  have hd4 : rho 51028 * (2 - (rho 51015 * rho 51015 + rho 51014 * rho 51014 * (-1))) =
      rho 51015 * rho 51015 - rho 51014 * rho 51014 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6639
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX116 rho, seg52Out0AccY116 rho⟩ ⟨rho 51014, rho 51015⟩
    ⟨rho 51020, rho 51021⟩ ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 51027, rho 51028⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6640 rho ∧ Seg52.relationRow6641 rho ∧ Seg52.relationRow6642 rho ∧ Seg52.relationRow6643 rho ∧ Seg52.relationRow6644 rho ∧ Seg52.relationRow6645 rho ∧ Seg52.relationRow6646 rho ∧ Seg52.relationRow6647 rho ∧ Seg52.relationRow6648 rho ∧ Seg52.relationRow6649 rho ∧ Seg52.relationRow6650 rho ∧ Seg52.relationRow6651 rho ∧ Seg52.relationRow6652 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨r6640, r6641, r6642, r6643, r6644, r6645, r6646, r6647, r6648, r6649, r6650, r6651, r6652, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6640, r6641, r6642, r6643, r6644, r6645, r6646, r6647, r6648, r6649, r6650, r6651, r6652⟩

theorem seg52Out0_rung117 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49503 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51027, rho 51028⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 51027, rho 51028⟩
        ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 51040, rho 51041⟩ := by
  obtain ⟨r6640, r6641, r6642, r6643, r6644, r6645, r6646, r6647, r6648, r6649, r6650, r6651, r6652⟩ := seg52Out0_rows117 rho h
  unfold Seg52.relationRow6640 at r6640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6640

  unfold Seg52.relationRow6641 at r6641

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6641

  unfold Seg52.relationRow6642 at r6642

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6642

  unfold Seg52.relationRow6643 at r6643

  unfold Seg52.relationRow6644 at r6644

  unfold Seg52.relationRow6645 at r6645

  unfold Seg52.relationRow6646 at r6646

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6646

  unfold Seg52.relationRow6647 at r6647

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6647

  unfold Seg52.relationRow6648 at r6648

  unfold Seg52.relationRow6649 at r6649

  unfold Seg52.relationRow6650 at r6650

  unfold Seg52.relationRow6651 at r6651

  unfold Seg52.relationRow6652 at r6652

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX118 rho = seg52Out0AccX117 rho + rho 51035 := by
    unfold seg52Out0AccX118 seg52Out0AccX117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 117]

    ring

  have hnexty : seg52Out0AccY118 rho = seg52Out0AccY117 rho + rho 51036 := by
    unfold seg52Out0AccY118 seg52Out0AccY117
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 117]

    ring

  have ha0 : (rho 51027 + rho 51028) * (seg52Out0AccX117 rho + seg52Out0AccY117 rho) = rho 51029 := by
    unfold seg52Out0AccX117 seg52Out0AccY117
    linear_combination r6640
  have ha1 : rho 51028 * seg52Out0AccX117 rho = rho 51030 := by
    unfold seg52Out0AccX117
    linear_combination r6641
  have ha2 : rho 51027 * seg52Out0AccY117 rho = rho 51031 := by
    unfold seg52Out0AccY117
    linear_combination r6642
  have ha3 : 3021 * rho 51030 * rho 51031 = rho 51032 := by
    linear_combination r6643
  have ha4 : rho 51033 * (1 + rho 51032) = rho 51030 + rho 51031 := by
    linear_combination r6644
  have ha5 : rho 51034 * (1 - rho 51032) = rho 51029 - rho 51030 - rho 51031 := by
    linear_combination r6645
  have haddx :
      rho 51033 * (1 + 3021 * (rho 51028 * seg52Out0AccX117 rho) * (rho 51027 * seg52Out0AccY117 rho)) =
        rho 51028 * seg52Out0AccX117 rho + rho 51027 * seg52Out0AccY117 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51034 * (1 - 3021 * (rho 51028 * seg52Out0AccX117 rho) * (rho 51027 * seg52Out0AccY117 rho)) =
        (-1) * (rho 51028 * seg52Out0AccX117 rho) - rho 51027 * seg52Out0AccY117 rho +
          (seg52Out0AccY117 rho - seg52Out0AccX117 rho * (-1)) * (rho 51027 + rho 51028) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51034 * (1 - rho 51032) = rho 51029 - rho 51030 - rho 51031 := ha5
      _ = (-1) * rho 51030 - rho 51031 + (seg52Out0AccY117 rho - seg52Out0AccX117 rho * (-1)) *
          (rho 51027 + rho 51028) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX118 rho = seg52Out0AccX117 rho - Bool.toZMod bit * (seg52Out0AccX117 rho - rho 51033) := by
    have hd : rho 51035 = Bool.toZMod bit * (rho 51033 - seg52Out0AccX117 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX117
      linear_combination -r6646
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY118 rho = seg52Out0AccY117 rho - Bool.toZMod bit * (seg52Out0AccY117 rho - rho 51034) := by
    have hd : rho 51036 = Bool.toZMod bit * (rho 51034 - seg52Out0AccY117 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY117
      linear_combination -r6647
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51027 * rho 51028 = rho 51037 := by linear_combination r6648
  have hd1 : rho 51027 * rho 51027 = rho 51038 := by linear_combination r6649
  have hd2 : rho 51028 * rho 51028 = rho 51039 := by linear_combination r6650
  have hd3 : rho 51040 * (rho 51028 * rho 51028 + rho 51027 * rho 51027 * (-1)) =
      2 * (rho 51027 * rho 51028) := by
    rw [hd0, hd1, hd2]
    linear_combination r6651
  have hd4 : rho 51041 * (2 - (rho 51028 * rho 51028 + rho 51027 * rho 51027 * (-1))) =
      rho 51028 * rho 51028 - rho 51027 * rho 51027 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6652
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX117 rho, seg52Out0AccY117 rho⟩ ⟨rho 51027, rho 51028⟩
    ⟨rho 51033, rho 51034⟩ ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 51040, rho 51041⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6653 rho ∧ Seg52.relationRow6654 rho ∧ Seg52.relationRow6655 rho ∧ Seg52.relationRow6656 rho ∧ Seg52.relationRow6657 rho ∧ Seg52.relationRow6658 rho ∧ Seg52.relationRow6659 rho ∧ Seg52.relationRow6660 rho ∧ Seg52.relationRow6661 rho ∧ Seg52.relationRow6662 rho ∧ Seg52.relationRow6663 rho ∧ Seg52.relationRow6664 rho ∧ Seg52.relationRow6665 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r6653, r6654, r6655, r6656, r6657, r6658, r6659, r6660, r6661, r6662, r6663, r6664, r6665, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6653, r6654, r6655, r6656, r6657, r6658, r6659, r6660, r6661, r6662, r6663, r6664, r6665⟩

theorem seg52Out0_rung118 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49504 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51040, rho 51041⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 51040, rho 51041⟩
        ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 51053, rho 51054⟩ := by
  obtain ⟨r6653, r6654, r6655, r6656, r6657, r6658, r6659, r6660, r6661, r6662, r6663, r6664, r6665⟩ := seg52Out0_rows118 rho h
  unfold Seg52.relationRow6653 at r6653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6653

  unfold Seg52.relationRow6654 at r6654

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6654

  unfold Seg52.relationRow6655 at r6655

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6655

  unfold Seg52.relationRow6656 at r6656

  unfold Seg52.relationRow6657 at r6657

  unfold Seg52.relationRow6658 at r6658

  unfold Seg52.relationRow6659 at r6659

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6659

  unfold Seg52.relationRow6660 at r6660

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6660

  unfold Seg52.relationRow6661 at r6661

  unfold Seg52.relationRow6662 at r6662

  unfold Seg52.relationRow6663 at r6663

  unfold Seg52.relationRow6664 at r6664

  unfold Seg52.relationRow6665 at r6665

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX119 rho = seg52Out0AccX118 rho + rho 51048 := by
    unfold seg52Out0AccX119 seg52Out0AccX118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 118]

    ring

  have hnexty : seg52Out0AccY119 rho = seg52Out0AccY118 rho + rho 51049 := by
    unfold seg52Out0AccY119 seg52Out0AccY118
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 118]

    ring

  have ha0 : (rho 51040 + rho 51041) * (seg52Out0AccX118 rho + seg52Out0AccY118 rho) = rho 51042 := by
    unfold seg52Out0AccX118 seg52Out0AccY118
    linear_combination r6653
  have ha1 : rho 51041 * seg52Out0AccX118 rho = rho 51043 := by
    unfold seg52Out0AccX118
    linear_combination r6654
  have ha2 : rho 51040 * seg52Out0AccY118 rho = rho 51044 := by
    unfold seg52Out0AccY118
    linear_combination r6655
  have ha3 : 3021 * rho 51043 * rho 51044 = rho 51045 := by
    linear_combination r6656
  have ha4 : rho 51046 * (1 + rho 51045) = rho 51043 + rho 51044 := by
    linear_combination r6657
  have ha5 : rho 51047 * (1 - rho 51045) = rho 51042 - rho 51043 - rho 51044 := by
    linear_combination r6658
  have haddx :
      rho 51046 * (1 + 3021 * (rho 51041 * seg52Out0AccX118 rho) * (rho 51040 * seg52Out0AccY118 rho)) =
        rho 51041 * seg52Out0AccX118 rho + rho 51040 * seg52Out0AccY118 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51047 * (1 - 3021 * (rho 51041 * seg52Out0AccX118 rho) * (rho 51040 * seg52Out0AccY118 rho)) =
        (-1) * (rho 51041 * seg52Out0AccX118 rho) - rho 51040 * seg52Out0AccY118 rho +
          (seg52Out0AccY118 rho - seg52Out0AccX118 rho * (-1)) * (rho 51040 + rho 51041) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51047 * (1 - rho 51045) = rho 51042 - rho 51043 - rho 51044 := ha5
      _ = (-1) * rho 51043 - rho 51044 + (seg52Out0AccY118 rho - seg52Out0AccX118 rho * (-1)) *
          (rho 51040 + rho 51041) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX119 rho = seg52Out0AccX118 rho - Bool.toZMod bit * (seg52Out0AccX118 rho - rho 51046) := by
    have hd : rho 51048 = Bool.toZMod bit * (rho 51046 - seg52Out0AccX118 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX118
      linear_combination -r6659
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY119 rho = seg52Out0AccY118 rho - Bool.toZMod bit * (seg52Out0AccY118 rho - rho 51047) := by
    have hd : rho 51049 = Bool.toZMod bit * (rho 51047 - seg52Out0AccY118 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY118
      linear_combination -r6660
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51040 * rho 51041 = rho 51050 := by linear_combination r6661
  have hd1 : rho 51040 * rho 51040 = rho 51051 := by linear_combination r6662
  have hd2 : rho 51041 * rho 51041 = rho 51052 := by linear_combination r6663
  have hd3 : rho 51053 * (rho 51041 * rho 51041 + rho 51040 * rho 51040 * (-1)) =
      2 * (rho 51040 * rho 51041) := by
    rw [hd0, hd1, hd2]
    linear_combination r6664
  have hd4 : rho 51054 * (2 - (rho 51041 * rho 51041 + rho 51040 * rho 51040 * (-1))) =
      rho 51041 * rho 51041 - rho 51040 * rho 51040 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6665
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX118 rho, seg52Out0AccY118 rho⟩ ⟨rho 51040, rho 51041⟩
    ⟨rho 51046, rho 51047⟩ ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 51053, rho 51054⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6666 rho ∧ Seg52.relationRow6667 rho ∧ Seg52.relationRow6668 rho ∧ Seg52.relationRow6669 rho ∧ Seg52.relationRow6670 rho ∧ Seg52.relationRow6671 rho ∧ Seg52.relationRow6672 rho ∧ Seg52.relationRow6673 rho ∧ Seg52.relationRow6674 rho ∧ Seg52.relationRow6675 rho ∧ Seg52.relationRow6676 rho ∧ Seg52.relationRow6677 rho ∧ Seg52.relationRow6678 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6666, r6667, r6668, r6669, r6670, r6671, r6672, r6673, r6674, r6675, r6676, r6677, r6678, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6666, r6667, r6668, r6669, r6670, r6671, r6672, r6673, r6674, r6675, r6676, r6677, r6678⟩

theorem seg52Out0_rung119 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49505 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51053, rho 51054⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 51053, rho 51054⟩
        ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 51066, rho 51067⟩ := by
  obtain ⟨r6666, r6667, r6668, r6669, r6670, r6671, r6672, r6673, r6674, r6675, r6676, r6677, r6678⟩ := seg52Out0_rows119 rho h
  unfold Seg52.relationRow6666 at r6666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6666

  unfold Seg52.relationRow6667 at r6667

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6667

  unfold Seg52.relationRow6668 at r6668

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6668

  unfold Seg52.relationRow6669 at r6669

  unfold Seg52.relationRow6670 at r6670

  unfold Seg52.relationRow6671 at r6671

  unfold Seg52.relationRow6672 at r6672

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6672

  unfold Seg52.relationRow6673 at r6673

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6673

  unfold Seg52.relationRow6674 at r6674

  unfold Seg52.relationRow6675 at r6675

  unfold Seg52.relationRow6676 at r6676

  unfold Seg52.relationRow6677 at r6677

  unfold Seg52.relationRow6678 at r6678

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX120 rho = seg52Out0AccX119 rho + rho 51061 := by
    unfold seg52Out0AccX120 seg52Out0AccX119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 119]

    ring

  have hnexty : seg52Out0AccY120 rho = seg52Out0AccY119 rho + rho 51062 := by
    unfold seg52Out0AccY120 seg52Out0AccY119
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 119]

    ring

  have ha0 : (rho 51053 + rho 51054) * (seg52Out0AccX119 rho + seg52Out0AccY119 rho) = rho 51055 := by
    unfold seg52Out0AccX119 seg52Out0AccY119
    linear_combination r6666
  have ha1 : rho 51054 * seg52Out0AccX119 rho = rho 51056 := by
    unfold seg52Out0AccX119
    linear_combination r6667
  have ha2 : rho 51053 * seg52Out0AccY119 rho = rho 51057 := by
    unfold seg52Out0AccY119
    linear_combination r6668
  have ha3 : 3021 * rho 51056 * rho 51057 = rho 51058 := by
    linear_combination r6669
  have ha4 : rho 51059 * (1 + rho 51058) = rho 51056 + rho 51057 := by
    linear_combination r6670
  have ha5 : rho 51060 * (1 - rho 51058) = rho 51055 - rho 51056 - rho 51057 := by
    linear_combination r6671
  have haddx :
      rho 51059 * (1 + 3021 * (rho 51054 * seg52Out0AccX119 rho) * (rho 51053 * seg52Out0AccY119 rho)) =
        rho 51054 * seg52Out0AccX119 rho + rho 51053 * seg52Out0AccY119 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51060 * (1 - 3021 * (rho 51054 * seg52Out0AccX119 rho) * (rho 51053 * seg52Out0AccY119 rho)) =
        (-1) * (rho 51054 * seg52Out0AccX119 rho) - rho 51053 * seg52Out0AccY119 rho +
          (seg52Out0AccY119 rho - seg52Out0AccX119 rho * (-1)) * (rho 51053 + rho 51054) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51060 * (1 - rho 51058) = rho 51055 - rho 51056 - rho 51057 := ha5
      _ = (-1) * rho 51056 - rho 51057 + (seg52Out0AccY119 rho - seg52Out0AccX119 rho * (-1)) *
          (rho 51053 + rho 51054) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX120 rho = seg52Out0AccX119 rho - Bool.toZMod bit * (seg52Out0AccX119 rho - rho 51059) := by
    have hd : rho 51061 = Bool.toZMod bit * (rho 51059 - seg52Out0AccX119 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX119
      linear_combination -r6672
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY120 rho = seg52Out0AccY119 rho - Bool.toZMod bit * (seg52Out0AccY119 rho - rho 51060) := by
    have hd : rho 51062 = Bool.toZMod bit * (rho 51060 - seg52Out0AccY119 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY119
      linear_combination -r6673
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51053 * rho 51054 = rho 51063 := by linear_combination r6674
  have hd1 : rho 51053 * rho 51053 = rho 51064 := by linear_combination r6675
  have hd2 : rho 51054 * rho 51054 = rho 51065 := by linear_combination r6676
  have hd3 : rho 51066 * (rho 51054 * rho 51054 + rho 51053 * rho 51053 * (-1)) =
      2 * (rho 51053 * rho 51054) := by
    rw [hd0, hd1, hd2]
    linear_combination r6677
  have hd4 : rho 51067 * (2 - (rho 51054 * rho 51054 + rho 51053 * rho 51053 * (-1))) =
      rho 51054 * rho 51054 - rho 51053 * rho 51053 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6678
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX119 rho, seg52Out0AccY119 rho⟩ ⟨rho 51053, rho 51054⟩
    ⟨rho 51059, rho 51060⟩ ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 51066, rho 51067⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6679 rho ∧ Seg52.relationRow6680 rho ∧ Seg52.relationRow6681 rho ∧ Seg52.relationRow6682 rho ∧ Seg52.relationRow6683 rho ∧ Seg52.relationRow6684 rho ∧ Seg52.relationRow6685 rho ∧ Seg52.relationRow6686 rho ∧ Seg52.relationRow6687 rho ∧ Seg52.relationRow6688 rho ∧ Seg52.relationRow6689 rho ∧ Seg52.relationRow6690 rho ∧ Seg52.relationRow6691 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p83, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6679, r6680, r6681, r6682, r6683, r6684, r6685, r6686, r6687, r6688, r6689, r6690, r6691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6679, r6680, r6681, r6682, r6683, r6684, r6685, r6686, r6687, r6688, r6689, r6690, r6691⟩

theorem seg52Out0_rung120 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49506 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51066, rho 51067⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 51066, rho 51067⟩
        ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 51079, rho 51080⟩ := by
  obtain ⟨r6679, r6680, r6681, r6682, r6683, r6684, r6685, r6686, r6687, r6688, r6689, r6690, r6691⟩ := seg52Out0_rows120 rho h
  unfold Seg52.relationRow6679 at r6679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6679

  unfold Seg52.relationRow6680 at r6680

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6680

  unfold Seg52.relationRow6681 at r6681

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6681

  unfold Seg52.relationRow6682 at r6682

  unfold Seg52.relationRow6683 at r6683

  unfold Seg52.relationRow6684 at r6684

  unfold Seg52.relationRow6685 at r6685

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6685

  unfold Seg52.relationRow6686 at r6686

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6686

  unfold Seg52.relationRow6687 at r6687

  unfold Seg52.relationRow6688 at r6688

  unfold Seg52.relationRow6689 at r6689

  unfold Seg52.relationRow6690 at r6690

  unfold Seg52.relationRow6691 at r6691

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX121 rho = seg52Out0AccX120 rho + rho 51074 := by
    unfold seg52Out0AccX121 seg52Out0AccX120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 120]

    ring

  have hnexty : seg52Out0AccY121 rho = seg52Out0AccY120 rho + rho 51075 := by
    unfold seg52Out0AccY121 seg52Out0AccY120
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 120]

    ring

  have ha0 : (rho 51066 + rho 51067) * (seg52Out0AccX120 rho + seg52Out0AccY120 rho) = rho 51068 := by
    unfold seg52Out0AccX120 seg52Out0AccY120
    linear_combination r6679
  have ha1 : rho 51067 * seg52Out0AccX120 rho = rho 51069 := by
    unfold seg52Out0AccX120
    linear_combination r6680
  have ha2 : rho 51066 * seg52Out0AccY120 rho = rho 51070 := by
    unfold seg52Out0AccY120
    linear_combination r6681
  have ha3 : 3021 * rho 51069 * rho 51070 = rho 51071 := by
    linear_combination r6682
  have ha4 : rho 51072 * (1 + rho 51071) = rho 51069 + rho 51070 := by
    linear_combination r6683
  have ha5 : rho 51073 * (1 - rho 51071) = rho 51068 - rho 51069 - rho 51070 := by
    linear_combination r6684
  have haddx :
      rho 51072 * (1 + 3021 * (rho 51067 * seg52Out0AccX120 rho) * (rho 51066 * seg52Out0AccY120 rho)) =
        rho 51067 * seg52Out0AccX120 rho + rho 51066 * seg52Out0AccY120 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51073 * (1 - 3021 * (rho 51067 * seg52Out0AccX120 rho) * (rho 51066 * seg52Out0AccY120 rho)) =
        (-1) * (rho 51067 * seg52Out0AccX120 rho) - rho 51066 * seg52Out0AccY120 rho +
          (seg52Out0AccY120 rho - seg52Out0AccX120 rho * (-1)) * (rho 51066 + rho 51067) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51073 * (1 - rho 51071) = rho 51068 - rho 51069 - rho 51070 := ha5
      _ = (-1) * rho 51069 - rho 51070 + (seg52Out0AccY120 rho - seg52Out0AccX120 rho * (-1)) *
          (rho 51066 + rho 51067) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX121 rho = seg52Out0AccX120 rho - Bool.toZMod bit * (seg52Out0AccX120 rho - rho 51072) := by
    have hd : rho 51074 = Bool.toZMod bit * (rho 51072 - seg52Out0AccX120 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX120
      linear_combination -r6685
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY121 rho = seg52Out0AccY120 rho - Bool.toZMod bit * (seg52Out0AccY120 rho - rho 51073) := by
    have hd : rho 51075 = Bool.toZMod bit * (rho 51073 - seg52Out0AccY120 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY120
      linear_combination -r6686
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51066 * rho 51067 = rho 51076 := by linear_combination r6687
  have hd1 : rho 51066 * rho 51066 = rho 51077 := by linear_combination r6688
  have hd2 : rho 51067 * rho 51067 = rho 51078 := by linear_combination r6689
  have hd3 : rho 51079 * (rho 51067 * rho 51067 + rho 51066 * rho 51066 * (-1)) =
      2 * (rho 51066 * rho 51067) := by
    rw [hd0, hd1, hd2]
    linear_combination r6690
  have hd4 : rho 51080 * (2 - (rho 51067 * rho 51067 + rho 51066 * rho 51066 * (-1))) =
      rho 51067 * rho 51067 - rho 51066 * rho 51066 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6691
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX120 rho, seg52Out0AccY120 rho⟩ ⟨rho 51066, rho 51067⟩
    ⟨rho 51072, rho 51073⟩ ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 51079, rho 51080⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c10 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 110 ≤ i → i < 121 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung110 rho h bits[110]! (hbitAt 110 (by omega)) hacc hcur
  · exact seg52Out0_rung111 rho h bits[111]! (hbitAt 111 (by omega)) hacc hcur
  · exact seg52Out0_rung112 rho h bits[112]! (hbitAt 112 (by omega)) hacc hcur
  · exact seg52Out0_rung113 rho h bits[113]! (hbitAt 113 (by omega)) hacc hcur
  · exact seg52Out0_rung114 rho h bits[114]! (hbitAt 114 (by omega)) hacc hcur
  · exact seg52Out0_rung115 rho h bits[115]! (hbitAt 115 (by omega)) hacc hcur
  · exact seg52Out0_rung116 rho h bits[116]! (hbitAt 116 (by omega)) hacc hcur
  · exact seg52Out0_rung117 rho h bits[117]! (hbitAt 117 (by omega)) hacc hcur
  · exact seg52Out0_rung118 rho h bits[118]! (hbitAt 118 (by omega)) hacc hcur
  · exact seg52Out0_rung119 rho h bits[119]! (hbitAt 119 (by omega)) hacc hcur
  · exact seg52Out0_rung120 rho h bits[120]! (hbitAt 120 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
