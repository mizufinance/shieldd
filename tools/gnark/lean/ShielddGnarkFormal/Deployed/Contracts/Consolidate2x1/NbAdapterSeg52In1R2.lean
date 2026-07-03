import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1_rows22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3612 rho ∧ Seg52.relationRow3613 rho ∧ Seg52.relationRow3614 rho ∧ Seg52.relationRow3615 rho ∧ Seg52.relationRow3616 rho ∧ Seg52.relationRow3617 rho ∧ Seg52.relationRow3618 rho ∧ Seg52.relationRow3619 rho ∧ Seg52.relationRow3620 rho ∧ Seg52.relationRow3621 rho ∧ Seg52.relationRow3622 rho ∧ Seg52.relationRow3623 rho ∧ Seg52.relationRow3624 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624⟩

theorem seg52In1_rung22 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47616 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48000, rho 48001⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 48000, rho 48001⟩
        ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 48013, rho 48014⟩ := by
  obtain ⟨r3612, r3613, r3614, r3615, r3616, r3617, r3618, r3619, r3620, r3621, r3622, r3623, r3624⟩ := seg52In1_rows22 rho h
  unfold Seg52.relationRow3612 at r3612

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3612

  unfold Seg52.relationRow3613 at r3613

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3613

  unfold Seg52.relationRow3614 at r3614

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3614

  unfold Seg52.relationRow3615 at r3615

  unfold Seg52.relationRow3616 at r3616

  unfold Seg52.relationRow3617 at r3617

  unfold Seg52.relationRow3618 at r3618

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3618

  unfold Seg52.relationRow3619 at r3619

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3619

  unfold Seg52.relationRow3620 at r3620

  unfold Seg52.relationRow3621 at r3621

  unfold Seg52.relationRow3622 at r3622

  unfold Seg52.relationRow3623 at r3623

  unfold Seg52.relationRow3624 at r3624

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX23 rho = seg52In1AccX22 rho + rho 48008 := by
    unfold seg52In1AccX23 seg52In1AccX22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 22]

    ring

  have hnexty : seg52In1AccY23 rho = seg52In1AccY22 rho + rho 48009 := by
    unfold seg52In1AccY23 seg52In1AccY22
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 22]

    ring

  have ha0 : (rho 48000 + rho 48001) * (seg52In1AccX22 rho + seg52In1AccY22 rho) = rho 48002 := by
    unfold seg52In1AccX22 seg52In1AccY22
    linear_combination r3612
  have ha1 : rho 48001 * seg52In1AccX22 rho = rho 48003 := by
    unfold seg52In1AccX22
    linear_combination r3613
  have ha2 : rho 48000 * seg52In1AccY22 rho = rho 48004 := by
    unfold seg52In1AccY22
    linear_combination r3614
  have ha3 : 3021 * rho 48003 * rho 48004 = rho 48005 := by
    linear_combination r3615
  have ha4 : rho 48006 * (1 + rho 48005) = rho 48003 + rho 48004 := by
    linear_combination r3616
  have ha5 : rho 48007 * (1 - rho 48005) = rho 48002 - rho 48003 - rho 48004 := by
    linear_combination r3617
  have haddx :
      rho 48006 * (1 + 3021 * (rho 48001 * seg52In1AccX22 rho) * (rho 48000 * seg52In1AccY22 rho)) =
        rho 48001 * seg52In1AccX22 rho + rho 48000 * seg52In1AccY22 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48007 * (1 - 3021 * (rho 48001 * seg52In1AccX22 rho) * (rho 48000 * seg52In1AccY22 rho)) =
        (-1) * (rho 48001 * seg52In1AccX22 rho) - rho 48000 * seg52In1AccY22 rho +
          (seg52In1AccY22 rho - seg52In1AccX22 rho * (-1)) * (rho 48000 + rho 48001) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48007 * (1 - rho 48005) = rho 48002 - rho 48003 - rho 48004 := ha5
      _ = (-1) * rho 48003 - rho 48004 + (seg52In1AccY22 rho - seg52In1AccX22 rho * (-1)) *
          (rho 48000 + rho 48001) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX23 rho = seg52In1AccX22 rho - Bool.toZMod bit * (seg52In1AccX22 rho - rho 48006) := by
    have hd : rho 48008 = Bool.toZMod bit * (rho 48006 - seg52In1AccX22 rho) := by
      rw [← hbit]
      unfold seg52In1AccX22
      linear_combination -r3618
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY23 rho = seg52In1AccY22 rho - Bool.toZMod bit * (seg52In1AccY22 rho - rho 48007) := by
    have hd : rho 48009 = Bool.toZMod bit * (rho 48007 - seg52In1AccY22 rho) := by
      rw [← hbit]
      unfold seg52In1AccY22
      linear_combination -r3619
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48000 * rho 48001 = rho 48010 := by linear_combination r3620
  have hd1 : rho 48000 * rho 48000 = rho 48011 := by linear_combination r3621
  have hd2 : rho 48001 * rho 48001 = rho 48012 := by linear_combination r3622
  have hd3 : rho 48013 * (rho 48001 * rho 48001 + rho 48000 * rho 48000 * (-1)) =
      2 * (rho 48000 * rho 48001) := by
    rw [hd0, hd1, hd2]
    linear_combination r3623
  have hd4 : rho 48014 * (2 - (rho 48001 * rho 48001 + rho 48000 * rho 48000 * (-1))) =
      rho 48001 * rho 48001 - rho 48000 * rho 48000 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3624
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX22 rho, seg52In1AccY22 rho⟩ ⟨rho 48000, rho 48001⟩
    ⟨rho 48006, rho 48007⟩ ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 48013, rho 48014⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3625 rho ∧ Seg52.relationRow3626 rho ∧ Seg52.relationRow3627 rho ∧ Seg52.relationRow3628 rho ∧ Seg52.relationRow3629 rho ∧ Seg52.relationRow3630 rho ∧ Seg52.relationRow3631 rho ∧ Seg52.relationRow3632 rho ∧ Seg52.relationRow3633 rho ∧ Seg52.relationRow3634 rho ∧ Seg52.relationRow3635 rho ∧ Seg52.relationRow3636 rho ∧ Seg52.relationRow3637 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637⟩

theorem seg52In1_rung23 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47617 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48013, rho 48014⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 48013, rho 48014⟩
        ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 48026, rho 48027⟩ := by
  obtain ⟨r3625, r3626, r3627, r3628, r3629, r3630, r3631, r3632, r3633, r3634, r3635, r3636, r3637⟩ := seg52In1_rows23 rho h
  unfold Seg52.relationRow3625 at r3625

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3625

  unfold Seg52.relationRow3626 at r3626

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3626

  unfold Seg52.relationRow3627 at r3627

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3627

  unfold Seg52.relationRow3628 at r3628

  unfold Seg52.relationRow3629 at r3629

  unfold Seg52.relationRow3630 at r3630

  unfold Seg52.relationRow3631 at r3631

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3631

  unfold Seg52.relationRow3632 at r3632

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3632

  unfold Seg52.relationRow3633 at r3633

  unfold Seg52.relationRow3634 at r3634

  unfold Seg52.relationRow3635 at r3635

  unfold Seg52.relationRow3636 at r3636

  unfold Seg52.relationRow3637 at r3637

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX24 rho = seg52In1AccX23 rho + rho 48021 := by
    unfold seg52In1AccX24 seg52In1AccX23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 23]

    ring

  have hnexty : seg52In1AccY24 rho = seg52In1AccY23 rho + rho 48022 := by
    unfold seg52In1AccY24 seg52In1AccY23
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 23]

    ring

  have ha0 : (rho 48013 + rho 48014) * (seg52In1AccX23 rho + seg52In1AccY23 rho) = rho 48015 := by
    unfold seg52In1AccX23 seg52In1AccY23
    linear_combination r3625
  have ha1 : rho 48014 * seg52In1AccX23 rho = rho 48016 := by
    unfold seg52In1AccX23
    linear_combination r3626
  have ha2 : rho 48013 * seg52In1AccY23 rho = rho 48017 := by
    unfold seg52In1AccY23
    linear_combination r3627
  have ha3 : 3021 * rho 48016 * rho 48017 = rho 48018 := by
    linear_combination r3628
  have ha4 : rho 48019 * (1 + rho 48018) = rho 48016 + rho 48017 := by
    linear_combination r3629
  have ha5 : rho 48020 * (1 - rho 48018) = rho 48015 - rho 48016 - rho 48017 := by
    linear_combination r3630
  have haddx :
      rho 48019 * (1 + 3021 * (rho 48014 * seg52In1AccX23 rho) * (rho 48013 * seg52In1AccY23 rho)) =
        rho 48014 * seg52In1AccX23 rho + rho 48013 * seg52In1AccY23 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48020 * (1 - 3021 * (rho 48014 * seg52In1AccX23 rho) * (rho 48013 * seg52In1AccY23 rho)) =
        (-1) * (rho 48014 * seg52In1AccX23 rho) - rho 48013 * seg52In1AccY23 rho +
          (seg52In1AccY23 rho - seg52In1AccX23 rho * (-1)) * (rho 48013 + rho 48014) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48020 * (1 - rho 48018) = rho 48015 - rho 48016 - rho 48017 := ha5
      _ = (-1) * rho 48016 - rho 48017 + (seg52In1AccY23 rho - seg52In1AccX23 rho * (-1)) *
          (rho 48013 + rho 48014) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX24 rho = seg52In1AccX23 rho - Bool.toZMod bit * (seg52In1AccX23 rho - rho 48019) := by
    have hd : rho 48021 = Bool.toZMod bit * (rho 48019 - seg52In1AccX23 rho) := by
      rw [← hbit]
      unfold seg52In1AccX23
      linear_combination -r3631
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY24 rho = seg52In1AccY23 rho - Bool.toZMod bit * (seg52In1AccY23 rho - rho 48020) := by
    have hd : rho 48022 = Bool.toZMod bit * (rho 48020 - seg52In1AccY23 rho) := by
      rw [← hbit]
      unfold seg52In1AccY23
      linear_combination -r3632
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48013 * rho 48014 = rho 48023 := by linear_combination r3633
  have hd1 : rho 48013 * rho 48013 = rho 48024 := by linear_combination r3634
  have hd2 : rho 48014 * rho 48014 = rho 48025 := by linear_combination r3635
  have hd3 : rho 48026 * (rho 48014 * rho 48014 + rho 48013 * rho 48013 * (-1)) =
      2 * (rho 48013 * rho 48014) := by
    rw [hd0, hd1, hd2]
    linear_combination r3636
  have hd4 : rho 48027 * (2 - (rho 48014 * rho 48014 + rho 48013 * rho 48013 * (-1))) =
      rho 48014 * rho 48014 - rho 48013 * rho 48013 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3637
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX23 rho, seg52In1AccY23 rho⟩ ⟨rho 48013, rho 48014⟩
    ⟨rho 48019, rho 48020⟩ ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 48026, rho 48027⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3638 rho ∧ Seg52.relationRow3639 rho ∧ Seg52.relationRow3640 rho ∧ Seg52.relationRow3641 rho ∧ Seg52.relationRow3642 rho ∧ Seg52.relationRow3643 rho ∧ Seg52.relationRow3644 rho ∧ Seg52.relationRow3645 rho ∧ Seg52.relationRow3646 rho ∧ Seg52.relationRow3647 rho ∧ Seg52.relationRow3648 rho ∧ Seg52.relationRow3649 rho ∧ Seg52.relationRow3650 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650⟩

theorem seg52In1_rung24 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47618 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48026, rho 48027⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 48026, rho 48027⟩
        ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 48039, rho 48040⟩ := by
  obtain ⟨r3638, r3639, r3640, r3641, r3642, r3643, r3644, r3645, r3646, r3647, r3648, r3649, r3650⟩ := seg52In1_rows24 rho h
  unfold Seg52.relationRow3638 at r3638

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3638

  unfold Seg52.relationRow3639 at r3639

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3639

  unfold Seg52.relationRow3640 at r3640

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3640

  unfold Seg52.relationRow3641 at r3641

  unfold Seg52.relationRow3642 at r3642

  unfold Seg52.relationRow3643 at r3643

  unfold Seg52.relationRow3644 at r3644

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3644

  unfold Seg52.relationRow3645 at r3645

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3645

  unfold Seg52.relationRow3646 at r3646

  unfold Seg52.relationRow3647 at r3647

  unfold Seg52.relationRow3648 at r3648

  unfold Seg52.relationRow3649 at r3649

  unfold Seg52.relationRow3650 at r3650

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX25 rho = seg52In1AccX24 rho + rho 48034 := by
    unfold seg52In1AccX25 seg52In1AccX24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 24]

    ring

  have hnexty : seg52In1AccY25 rho = seg52In1AccY24 rho + rho 48035 := by
    unfold seg52In1AccY25 seg52In1AccY24
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 24]

    ring

  have ha0 : (rho 48026 + rho 48027) * (seg52In1AccX24 rho + seg52In1AccY24 rho) = rho 48028 := by
    unfold seg52In1AccX24 seg52In1AccY24
    linear_combination r3638
  have ha1 : rho 48027 * seg52In1AccX24 rho = rho 48029 := by
    unfold seg52In1AccX24
    linear_combination r3639
  have ha2 : rho 48026 * seg52In1AccY24 rho = rho 48030 := by
    unfold seg52In1AccY24
    linear_combination r3640
  have ha3 : 3021 * rho 48029 * rho 48030 = rho 48031 := by
    linear_combination r3641
  have ha4 : rho 48032 * (1 + rho 48031) = rho 48029 + rho 48030 := by
    linear_combination r3642
  have ha5 : rho 48033 * (1 - rho 48031) = rho 48028 - rho 48029 - rho 48030 := by
    linear_combination r3643
  have haddx :
      rho 48032 * (1 + 3021 * (rho 48027 * seg52In1AccX24 rho) * (rho 48026 * seg52In1AccY24 rho)) =
        rho 48027 * seg52In1AccX24 rho + rho 48026 * seg52In1AccY24 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48033 * (1 - 3021 * (rho 48027 * seg52In1AccX24 rho) * (rho 48026 * seg52In1AccY24 rho)) =
        (-1) * (rho 48027 * seg52In1AccX24 rho) - rho 48026 * seg52In1AccY24 rho +
          (seg52In1AccY24 rho - seg52In1AccX24 rho * (-1)) * (rho 48026 + rho 48027) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48033 * (1 - rho 48031) = rho 48028 - rho 48029 - rho 48030 := ha5
      _ = (-1) * rho 48029 - rho 48030 + (seg52In1AccY24 rho - seg52In1AccX24 rho * (-1)) *
          (rho 48026 + rho 48027) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX25 rho = seg52In1AccX24 rho - Bool.toZMod bit * (seg52In1AccX24 rho - rho 48032) := by
    have hd : rho 48034 = Bool.toZMod bit * (rho 48032 - seg52In1AccX24 rho) := by
      rw [← hbit]
      unfold seg52In1AccX24
      linear_combination -r3644
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY25 rho = seg52In1AccY24 rho - Bool.toZMod bit * (seg52In1AccY24 rho - rho 48033) := by
    have hd : rho 48035 = Bool.toZMod bit * (rho 48033 - seg52In1AccY24 rho) := by
      rw [← hbit]
      unfold seg52In1AccY24
      linear_combination -r3645
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48026 * rho 48027 = rho 48036 := by linear_combination r3646
  have hd1 : rho 48026 * rho 48026 = rho 48037 := by linear_combination r3647
  have hd2 : rho 48027 * rho 48027 = rho 48038 := by linear_combination r3648
  have hd3 : rho 48039 * (rho 48027 * rho 48027 + rho 48026 * rho 48026 * (-1)) =
      2 * (rho 48026 * rho 48027) := by
    rw [hd0, hd1, hd2]
    linear_combination r3649
  have hd4 : rho 48040 * (2 - (rho 48027 * rho 48027 + rho 48026 * rho 48026 * (-1))) =
      rho 48027 * rho 48027 - rho 48026 * rho 48026 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3650
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX24 rho, seg52In1AccY24 rho⟩ ⟨rho 48026, rho 48027⟩
    ⟨rho 48032, rho 48033⟩ ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 48039, rho 48040⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3651 rho ∧ Seg52.relationRow3652 rho ∧ Seg52.relationRow3653 rho ∧ Seg52.relationRow3654 rho ∧ Seg52.relationRow3655 rho ∧ Seg52.relationRow3656 rho ∧ Seg52.relationRow3657 rho ∧ Seg52.relationRow3658 rho ∧ Seg52.relationRow3659 rho ∧ Seg52.relationRow3660 rho ∧ Seg52.relationRow3661 rho ∧ Seg52.relationRow3662 rho ∧ Seg52.relationRow3663 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663⟩

theorem seg52In1_rung25 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47619 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48039, rho 48040⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 48039, rho 48040⟩
        ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 48052, rho 48053⟩ := by
  obtain ⟨r3651, r3652, r3653, r3654, r3655, r3656, r3657, r3658, r3659, r3660, r3661, r3662, r3663⟩ := seg52In1_rows25 rho h
  unfold Seg52.relationRow3651 at r3651

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3651

  unfold Seg52.relationRow3652 at r3652

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3652

  unfold Seg52.relationRow3653 at r3653

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3653

  unfold Seg52.relationRow3654 at r3654

  unfold Seg52.relationRow3655 at r3655

  unfold Seg52.relationRow3656 at r3656

  unfold Seg52.relationRow3657 at r3657

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3657

  unfold Seg52.relationRow3658 at r3658

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3658

  unfold Seg52.relationRow3659 at r3659

  unfold Seg52.relationRow3660 at r3660

  unfold Seg52.relationRow3661 at r3661

  unfold Seg52.relationRow3662 at r3662

  unfold Seg52.relationRow3663 at r3663

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX26 rho = seg52In1AccX25 rho + rho 48047 := by
    unfold seg52In1AccX26 seg52In1AccX25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 25]

    ring

  have hnexty : seg52In1AccY26 rho = seg52In1AccY25 rho + rho 48048 := by
    unfold seg52In1AccY26 seg52In1AccY25
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 25]

    ring

  have ha0 : (rho 48039 + rho 48040) * (seg52In1AccX25 rho + seg52In1AccY25 rho) = rho 48041 := by
    unfold seg52In1AccX25 seg52In1AccY25
    linear_combination r3651
  have ha1 : rho 48040 * seg52In1AccX25 rho = rho 48042 := by
    unfold seg52In1AccX25
    linear_combination r3652
  have ha2 : rho 48039 * seg52In1AccY25 rho = rho 48043 := by
    unfold seg52In1AccY25
    linear_combination r3653
  have ha3 : 3021 * rho 48042 * rho 48043 = rho 48044 := by
    linear_combination r3654
  have ha4 : rho 48045 * (1 + rho 48044) = rho 48042 + rho 48043 := by
    linear_combination r3655
  have ha5 : rho 48046 * (1 - rho 48044) = rho 48041 - rho 48042 - rho 48043 := by
    linear_combination r3656
  have haddx :
      rho 48045 * (1 + 3021 * (rho 48040 * seg52In1AccX25 rho) * (rho 48039 * seg52In1AccY25 rho)) =
        rho 48040 * seg52In1AccX25 rho + rho 48039 * seg52In1AccY25 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48046 * (1 - 3021 * (rho 48040 * seg52In1AccX25 rho) * (rho 48039 * seg52In1AccY25 rho)) =
        (-1) * (rho 48040 * seg52In1AccX25 rho) - rho 48039 * seg52In1AccY25 rho +
          (seg52In1AccY25 rho - seg52In1AccX25 rho * (-1)) * (rho 48039 + rho 48040) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48046 * (1 - rho 48044) = rho 48041 - rho 48042 - rho 48043 := ha5
      _ = (-1) * rho 48042 - rho 48043 + (seg52In1AccY25 rho - seg52In1AccX25 rho * (-1)) *
          (rho 48039 + rho 48040) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX26 rho = seg52In1AccX25 rho - Bool.toZMod bit * (seg52In1AccX25 rho - rho 48045) := by
    have hd : rho 48047 = Bool.toZMod bit * (rho 48045 - seg52In1AccX25 rho) := by
      rw [← hbit]
      unfold seg52In1AccX25
      linear_combination -r3657
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY26 rho = seg52In1AccY25 rho - Bool.toZMod bit * (seg52In1AccY25 rho - rho 48046) := by
    have hd : rho 48048 = Bool.toZMod bit * (rho 48046 - seg52In1AccY25 rho) := by
      rw [← hbit]
      unfold seg52In1AccY25
      linear_combination -r3658
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48039 * rho 48040 = rho 48049 := by linear_combination r3659
  have hd1 : rho 48039 * rho 48039 = rho 48050 := by linear_combination r3660
  have hd2 : rho 48040 * rho 48040 = rho 48051 := by linear_combination r3661
  have hd3 : rho 48052 * (rho 48040 * rho 48040 + rho 48039 * rho 48039 * (-1)) =
      2 * (rho 48039 * rho 48040) := by
    rw [hd0, hd1, hd2]
    linear_combination r3662
  have hd4 : rho 48053 * (2 - (rho 48040 * rho 48040 + rho 48039 * rho 48039 * (-1))) =
      rho 48040 * rho 48040 - rho 48039 * rho 48039 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3663
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX25 rho, seg52In1AccY25 rho⟩ ⟨rho 48039, rho 48040⟩
    ⟨rho 48045, rho 48046⟩ ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 48052, rho 48053⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3664 rho ∧ Seg52.relationRow3665 rho ∧ Seg52.relationRow3666 rho ∧ Seg52.relationRow3667 rho ∧ Seg52.relationRow3668 rho ∧ Seg52.relationRow3669 rho ∧ Seg52.relationRow3670 rho ∧ Seg52.relationRow3671 rho ∧ Seg52.relationRow3672 rho ∧ Seg52.relationRow3673 rho ∧ Seg52.relationRow3674 rho ∧ Seg52.relationRow3675 rho ∧ Seg52.relationRow3676 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676, _, _, _⟩

  exact ⟨r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676⟩

theorem seg52In1_rung26 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47620 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48052, rho 48053⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 48052, rho 48053⟩
        ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 48065, rho 48066⟩ := by
  obtain ⟨r3664, r3665, r3666, r3667, r3668, r3669, r3670, r3671, r3672, r3673, r3674, r3675, r3676⟩ := seg52In1_rows26 rho h
  unfold Seg52.relationRow3664 at r3664

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3664

  unfold Seg52.relationRow3665 at r3665

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3665

  unfold Seg52.relationRow3666 at r3666

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3666

  unfold Seg52.relationRow3667 at r3667

  unfold Seg52.relationRow3668 at r3668

  unfold Seg52.relationRow3669 at r3669

  unfold Seg52.relationRow3670 at r3670

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3670

  unfold Seg52.relationRow3671 at r3671

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3671

  unfold Seg52.relationRow3672 at r3672

  unfold Seg52.relationRow3673 at r3673

  unfold Seg52.relationRow3674 at r3674

  unfold Seg52.relationRow3675 at r3675

  unfold Seg52.relationRow3676 at r3676

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX27 rho = seg52In1AccX26 rho + rho 48060 := by
    unfold seg52In1AccX27 seg52In1AccX26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 26]

    ring

  have hnexty : seg52In1AccY27 rho = seg52In1AccY26 rho + rho 48061 := by
    unfold seg52In1AccY27 seg52In1AccY26
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 26]

    ring

  have ha0 : (rho 48052 + rho 48053) * (seg52In1AccX26 rho + seg52In1AccY26 rho) = rho 48054 := by
    unfold seg52In1AccX26 seg52In1AccY26
    linear_combination r3664
  have ha1 : rho 48053 * seg52In1AccX26 rho = rho 48055 := by
    unfold seg52In1AccX26
    linear_combination r3665
  have ha2 : rho 48052 * seg52In1AccY26 rho = rho 48056 := by
    unfold seg52In1AccY26
    linear_combination r3666
  have ha3 : 3021 * rho 48055 * rho 48056 = rho 48057 := by
    linear_combination r3667
  have ha4 : rho 48058 * (1 + rho 48057) = rho 48055 + rho 48056 := by
    linear_combination r3668
  have ha5 : rho 48059 * (1 - rho 48057) = rho 48054 - rho 48055 - rho 48056 := by
    linear_combination r3669
  have haddx :
      rho 48058 * (1 + 3021 * (rho 48053 * seg52In1AccX26 rho) * (rho 48052 * seg52In1AccY26 rho)) =
        rho 48053 * seg52In1AccX26 rho + rho 48052 * seg52In1AccY26 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48059 * (1 - 3021 * (rho 48053 * seg52In1AccX26 rho) * (rho 48052 * seg52In1AccY26 rho)) =
        (-1) * (rho 48053 * seg52In1AccX26 rho) - rho 48052 * seg52In1AccY26 rho +
          (seg52In1AccY26 rho - seg52In1AccX26 rho * (-1)) * (rho 48052 + rho 48053) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48059 * (1 - rho 48057) = rho 48054 - rho 48055 - rho 48056 := ha5
      _ = (-1) * rho 48055 - rho 48056 + (seg52In1AccY26 rho - seg52In1AccX26 rho * (-1)) *
          (rho 48052 + rho 48053) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX27 rho = seg52In1AccX26 rho - Bool.toZMod bit * (seg52In1AccX26 rho - rho 48058) := by
    have hd : rho 48060 = Bool.toZMod bit * (rho 48058 - seg52In1AccX26 rho) := by
      rw [← hbit]
      unfold seg52In1AccX26
      linear_combination -r3670
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY27 rho = seg52In1AccY26 rho - Bool.toZMod bit * (seg52In1AccY26 rho - rho 48059) := by
    have hd : rho 48061 = Bool.toZMod bit * (rho 48059 - seg52In1AccY26 rho) := by
      rw [← hbit]
      unfold seg52In1AccY26
      linear_combination -r3671
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48052 * rho 48053 = rho 48062 := by linear_combination r3672
  have hd1 : rho 48052 * rho 48052 = rho 48063 := by linear_combination r3673
  have hd2 : rho 48053 * rho 48053 = rho 48064 := by linear_combination r3674
  have hd3 : rho 48065 * (rho 48053 * rho 48053 + rho 48052 * rho 48052 * (-1)) =
      2 * (rho 48052 * rho 48053) := by
    rw [hd0, hd1, hd2]
    linear_combination r3675
  have hd4 : rho 48066 * (2 - (rho 48053 * rho 48053 + rho 48052 * rho 48052 * (-1))) =
      rho 48053 * rho 48053 - rho 48052 * rho 48052 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3676
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX26 rho, seg52In1AccY26 rho⟩ ⟨rho 48052, rho 48053⟩
    ⟨rho 48058, rho 48059⟩ ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 48065, rho 48066⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3677 rho ∧ Seg52.relationRow3678 rho ∧ Seg52.relationRow3679 rho ∧ Seg52.relationRow3680 rho ∧ Seg52.relationRow3681 rho ∧ Seg52.relationRow3682 rho ∧ Seg52.relationRow3683 rho ∧ Seg52.relationRow3684 rho ∧ Seg52.relationRow3685 rho ∧ Seg52.relationRow3686 rho ∧ Seg52.relationRow3687 rho ∧ Seg52.relationRow3688 rho ∧ Seg52.relationRow3689 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p45, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart45 at p45

  rcases p45 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3677, r3678, r3679⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689⟩

theorem seg52In1_rung27 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47621 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48065, rho 48066⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 48065, rho 48066⟩
        ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 48078, rho 48079⟩ := by
  obtain ⟨r3677, r3678, r3679, r3680, r3681, r3682, r3683, r3684, r3685, r3686, r3687, r3688, r3689⟩ := seg52In1_rows27 rho h
  unfold Seg52.relationRow3677 at r3677

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3677

  unfold Seg52.relationRow3678 at r3678

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3678

  unfold Seg52.relationRow3679 at r3679

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3679

  unfold Seg52.relationRow3680 at r3680

  unfold Seg52.relationRow3681 at r3681

  unfold Seg52.relationRow3682 at r3682

  unfold Seg52.relationRow3683 at r3683

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3683

  unfold Seg52.relationRow3684 at r3684

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3684

  unfold Seg52.relationRow3685 at r3685

  unfold Seg52.relationRow3686 at r3686

  unfold Seg52.relationRow3687 at r3687

  unfold Seg52.relationRow3688 at r3688

  unfold Seg52.relationRow3689 at r3689

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX28 rho = seg52In1AccX27 rho + rho 48073 := by
    unfold seg52In1AccX28 seg52In1AccX27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 27]

    ring

  have hnexty : seg52In1AccY28 rho = seg52In1AccY27 rho + rho 48074 := by
    unfold seg52In1AccY28 seg52In1AccY27
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 27]

    ring

  have ha0 : (rho 48065 + rho 48066) * (seg52In1AccX27 rho + seg52In1AccY27 rho) = rho 48067 := by
    unfold seg52In1AccX27 seg52In1AccY27
    linear_combination r3677
  have ha1 : rho 48066 * seg52In1AccX27 rho = rho 48068 := by
    unfold seg52In1AccX27
    linear_combination r3678
  have ha2 : rho 48065 * seg52In1AccY27 rho = rho 48069 := by
    unfold seg52In1AccY27
    linear_combination r3679
  have ha3 : 3021 * rho 48068 * rho 48069 = rho 48070 := by
    linear_combination r3680
  have ha4 : rho 48071 * (1 + rho 48070) = rho 48068 + rho 48069 := by
    linear_combination r3681
  have ha5 : rho 48072 * (1 - rho 48070) = rho 48067 - rho 48068 - rho 48069 := by
    linear_combination r3682
  have haddx :
      rho 48071 * (1 + 3021 * (rho 48066 * seg52In1AccX27 rho) * (rho 48065 * seg52In1AccY27 rho)) =
        rho 48066 * seg52In1AccX27 rho + rho 48065 * seg52In1AccY27 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48072 * (1 - 3021 * (rho 48066 * seg52In1AccX27 rho) * (rho 48065 * seg52In1AccY27 rho)) =
        (-1) * (rho 48066 * seg52In1AccX27 rho) - rho 48065 * seg52In1AccY27 rho +
          (seg52In1AccY27 rho - seg52In1AccX27 rho * (-1)) * (rho 48065 + rho 48066) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48072 * (1 - rho 48070) = rho 48067 - rho 48068 - rho 48069 := ha5
      _ = (-1) * rho 48068 - rho 48069 + (seg52In1AccY27 rho - seg52In1AccX27 rho * (-1)) *
          (rho 48065 + rho 48066) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX28 rho = seg52In1AccX27 rho - Bool.toZMod bit * (seg52In1AccX27 rho - rho 48071) := by
    have hd : rho 48073 = Bool.toZMod bit * (rho 48071 - seg52In1AccX27 rho) := by
      rw [← hbit]
      unfold seg52In1AccX27
      linear_combination -r3683
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY28 rho = seg52In1AccY27 rho - Bool.toZMod bit * (seg52In1AccY27 rho - rho 48072) := by
    have hd : rho 48074 = Bool.toZMod bit * (rho 48072 - seg52In1AccY27 rho) := by
      rw [← hbit]
      unfold seg52In1AccY27
      linear_combination -r3684
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48065 * rho 48066 = rho 48075 := by linear_combination r3685
  have hd1 : rho 48065 * rho 48065 = rho 48076 := by linear_combination r3686
  have hd2 : rho 48066 * rho 48066 = rho 48077 := by linear_combination r3687
  have hd3 : rho 48078 * (rho 48066 * rho 48066 + rho 48065 * rho 48065 * (-1)) =
      2 * (rho 48065 * rho 48066) := by
    rw [hd0, hd1, hd2]
    linear_combination r3688
  have hd4 : rho 48079 * (2 - (rho 48066 * rho 48066 + rho 48065 * rho 48065 * (-1))) =
      rho 48066 * rho 48066 - rho 48065 * rho 48065 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3689
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX27 rho, seg52In1AccY27 rho⟩ ⟨rho 48065, rho 48066⟩
    ⟨rho 48071, rho 48072⟩ ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 48078, rho 48079⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3690 rho ∧ Seg52.relationRow3691 rho ∧ Seg52.relationRow3692 rho ∧ Seg52.relationRow3693 rho ∧ Seg52.relationRow3694 rho ∧ Seg52.relationRow3695 rho ∧ Seg52.relationRow3696 rho ∧ Seg52.relationRow3697 rho ∧ Seg52.relationRow3698 rho ∧ Seg52.relationRow3699 rho ∧ Seg52.relationRow3700 rho ∧ Seg52.relationRow3701 rho ∧ Seg52.relationRow3702 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702⟩

theorem seg52In1_rung28 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47622 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48078, rho 48079⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 48078, rho 48079⟩
        ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 48091, rho 48092⟩ := by
  obtain ⟨r3690, r3691, r3692, r3693, r3694, r3695, r3696, r3697, r3698, r3699, r3700, r3701, r3702⟩ := seg52In1_rows28 rho h
  unfold Seg52.relationRow3690 at r3690

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3690

  unfold Seg52.relationRow3691 at r3691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3691

  unfold Seg52.relationRow3692 at r3692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3692

  unfold Seg52.relationRow3693 at r3693

  unfold Seg52.relationRow3694 at r3694

  unfold Seg52.relationRow3695 at r3695

  unfold Seg52.relationRow3696 at r3696

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3696

  unfold Seg52.relationRow3697 at r3697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3697

  unfold Seg52.relationRow3698 at r3698

  unfold Seg52.relationRow3699 at r3699

  unfold Seg52.relationRow3700 at r3700

  unfold Seg52.relationRow3701 at r3701

  unfold Seg52.relationRow3702 at r3702

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX29 rho = seg52In1AccX28 rho + rho 48086 := by
    unfold seg52In1AccX29 seg52In1AccX28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 28]

    ring

  have hnexty : seg52In1AccY29 rho = seg52In1AccY28 rho + rho 48087 := by
    unfold seg52In1AccY29 seg52In1AccY28
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 28]

    ring

  have ha0 : (rho 48078 + rho 48079) * (seg52In1AccX28 rho + seg52In1AccY28 rho) = rho 48080 := by
    unfold seg52In1AccX28 seg52In1AccY28
    linear_combination r3690
  have ha1 : rho 48079 * seg52In1AccX28 rho = rho 48081 := by
    unfold seg52In1AccX28
    linear_combination r3691
  have ha2 : rho 48078 * seg52In1AccY28 rho = rho 48082 := by
    unfold seg52In1AccY28
    linear_combination r3692
  have ha3 : 3021 * rho 48081 * rho 48082 = rho 48083 := by
    linear_combination r3693
  have ha4 : rho 48084 * (1 + rho 48083) = rho 48081 + rho 48082 := by
    linear_combination r3694
  have ha5 : rho 48085 * (1 - rho 48083) = rho 48080 - rho 48081 - rho 48082 := by
    linear_combination r3695
  have haddx :
      rho 48084 * (1 + 3021 * (rho 48079 * seg52In1AccX28 rho) * (rho 48078 * seg52In1AccY28 rho)) =
        rho 48079 * seg52In1AccX28 rho + rho 48078 * seg52In1AccY28 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48085 * (1 - 3021 * (rho 48079 * seg52In1AccX28 rho) * (rho 48078 * seg52In1AccY28 rho)) =
        (-1) * (rho 48079 * seg52In1AccX28 rho) - rho 48078 * seg52In1AccY28 rho +
          (seg52In1AccY28 rho - seg52In1AccX28 rho * (-1)) * (rho 48078 + rho 48079) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48085 * (1 - rho 48083) = rho 48080 - rho 48081 - rho 48082 := ha5
      _ = (-1) * rho 48081 - rho 48082 + (seg52In1AccY28 rho - seg52In1AccX28 rho * (-1)) *
          (rho 48078 + rho 48079) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX29 rho = seg52In1AccX28 rho - Bool.toZMod bit * (seg52In1AccX28 rho - rho 48084) := by
    have hd : rho 48086 = Bool.toZMod bit * (rho 48084 - seg52In1AccX28 rho) := by
      rw [← hbit]
      unfold seg52In1AccX28
      linear_combination -r3696
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY29 rho = seg52In1AccY28 rho - Bool.toZMod bit * (seg52In1AccY28 rho - rho 48085) := by
    have hd : rho 48087 = Bool.toZMod bit * (rho 48085 - seg52In1AccY28 rho) := by
      rw [← hbit]
      unfold seg52In1AccY28
      linear_combination -r3697
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48078 * rho 48079 = rho 48088 := by linear_combination r3698
  have hd1 : rho 48078 * rho 48078 = rho 48089 := by linear_combination r3699
  have hd2 : rho 48079 * rho 48079 = rho 48090 := by linear_combination r3700
  have hd3 : rho 48091 * (rho 48079 * rho 48079 + rho 48078 * rho 48078 * (-1)) =
      2 * (rho 48078 * rho 48079) := by
    rw [hd0, hd1, hd2]
    linear_combination r3701
  have hd4 : rho 48092 * (2 - (rho 48079 * rho 48079 + rho 48078 * rho 48078 * (-1))) =
      rho 48079 * rho 48079 - rho 48078 * rho 48078 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3702
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX28 rho, seg52In1AccY28 rho⟩ ⟨rho 48078, rho 48079⟩
    ⟨rho 48084, rho 48085⟩ ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 48091, rho 48092⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3703 rho ∧ Seg52.relationRow3704 rho ∧ Seg52.relationRow3705 rho ∧ Seg52.relationRow3706 rho ∧ Seg52.relationRow3707 rho ∧ Seg52.relationRow3708 rho ∧ Seg52.relationRow3709 rho ∧ Seg52.relationRow3710 rho ∧ Seg52.relationRow3711 rho ∧ Seg52.relationRow3712 rho ∧ Seg52.relationRow3713 rho ∧ Seg52.relationRow3714 rho ∧ Seg52.relationRow3715 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715⟩

theorem seg52In1_rung29 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47623 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48091, rho 48092⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 48091, rho 48092⟩
        ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 48104, rho 48105⟩ := by
  obtain ⟨r3703, r3704, r3705, r3706, r3707, r3708, r3709, r3710, r3711, r3712, r3713, r3714, r3715⟩ := seg52In1_rows29 rho h
  unfold Seg52.relationRow3703 at r3703

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3703

  unfold Seg52.relationRow3704 at r3704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3704

  unfold Seg52.relationRow3705 at r3705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3705

  unfold Seg52.relationRow3706 at r3706

  unfold Seg52.relationRow3707 at r3707

  unfold Seg52.relationRow3708 at r3708

  unfold Seg52.relationRow3709 at r3709

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3709

  unfold Seg52.relationRow3710 at r3710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3710

  unfold Seg52.relationRow3711 at r3711

  unfold Seg52.relationRow3712 at r3712

  unfold Seg52.relationRow3713 at r3713

  unfold Seg52.relationRow3714 at r3714

  unfold Seg52.relationRow3715 at r3715

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX30 rho = seg52In1AccX29 rho + rho 48099 := by
    unfold seg52In1AccX30 seg52In1AccX29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 29]

    ring

  have hnexty : seg52In1AccY30 rho = seg52In1AccY29 rho + rho 48100 := by
    unfold seg52In1AccY30 seg52In1AccY29
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 29]

    ring

  have ha0 : (rho 48091 + rho 48092) * (seg52In1AccX29 rho + seg52In1AccY29 rho) = rho 48093 := by
    unfold seg52In1AccX29 seg52In1AccY29
    linear_combination r3703
  have ha1 : rho 48092 * seg52In1AccX29 rho = rho 48094 := by
    unfold seg52In1AccX29
    linear_combination r3704
  have ha2 : rho 48091 * seg52In1AccY29 rho = rho 48095 := by
    unfold seg52In1AccY29
    linear_combination r3705
  have ha3 : 3021 * rho 48094 * rho 48095 = rho 48096 := by
    linear_combination r3706
  have ha4 : rho 48097 * (1 + rho 48096) = rho 48094 + rho 48095 := by
    linear_combination r3707
  have ha5 : rho 48098 * (1 - rho 48096) = rho 48093 - rho 48094 - rho 48095 := by
    linear_combination r3708
  have haddx :
      rho 48097 * (1 + 3021 * (rho 48092 * seg52In1AccX29 rho) * (rho 48091 * seg52In1AccY29 rho)) =
        rho 48092 * seg52In1AccX29 rho + rho 48091 * seg52In1AccY29 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48098 * (1 - 3021 * (rho 48092 * seg52In1AccX29 rho) * (rho 48091 * seg52In1AccY29 rho)) =
        (-1) * (rho 48092 * seg52In1AccX29 rho) - rho 48091 * seg52In1AccY29 rho +
          (seg52In1AccY29 rho - seg52In1AccX29 rho * (-1)) * (rho 48091 + rho 48092) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48098 * (1 - rho 48096) = rho 48093 - rho 48094 - rho 48095 := ha5
      _ = (-1) * rho 48094 - rho 48095 + (seg52In1AccY29 rho - seg52In1AccX29 rho * (-1)) *
          (rho 48091 + rho 48092) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX30 rho = seg52In1AccX29 rho - Bool.toZMod bit * (seg52In1AccX29 rho - rho 48097) := by
    have hd : rho 48099 = Bool.toZMod bit * (rho 48097 - seg52In1AccX29 rho) := by
      rw [← hbit]
      unfold seg52In1AccX29
      linear_combination -r3709
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY30 rho = seg52In1AccY29 rho - Bool.toZMod bit * (seg52In1AccY29 rho - rho 48098) := by
    have hd : rho 48100 = Bool.toZMod bit * (rho 48098 - seg52In1AccY29 rho) := by
      rw [← hbit]
      unfold seg52In1AccY29
      linear_combination -r3710
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48091 * rho 48092 = rho 48101 := by linear_combination r3711
  have hd1 : rho 48091 * rho 48091 = rho 48102 := by linear_combination r3712
  have hd2 : rho 48092 * rho 48092 = rho 48103 := by linear_combination r3713
  have hd3 : rho 48104 * (rho 48092 * rho 48092 + rho 48091 * rho 48091 * (-1)) =
      2 * (rho 48091 * rho 48092) := by
    rw [hd0, hd1, hd2]
    linear_combination r3714
  have hd4 : rho 48105 * (2 - (rho 48092 * rho 48092 + rho 48091 * rho 48091 * (-1))) =
      rho 48092 * rho 48092 - rho 48091 * rho 48091 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3715
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX29 rho, seg52In1AccY29 rho⟩ ⟨rho 48091, rho 48092⟩
    ⟨rho 48097, rho 48098⟩ ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 48104, rho 48105⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3716 rho ∧ Seg52.relationRow3717 rho ∧ Seg52.relationRow3718 rho ∧ Seg52.relationRow3719 rho ∧ Seg52.relationRow3720 rho ∧ Seg52.relationRow3721 rho ∧ Seg52.relationRow3722 rho ∧ Seg52.relationRow3723 rho ∧ Seg52.relationRow3724 rho ∧ Seg52.relationRow3725 rho ∧ Seg52.relationRow3726 rho ∧ Seg52.relationRow3727 rho ∧ Seg52.relationRow3728 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728⟩

theorem seg52In1_rung30 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47624 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48104, rho 48105⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 48104, rho 48105⟩
        ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 48117, rho 48118⟩ := by
  obtain ⟨r3716, r3717, r3718, r3719, r3720, r3721, r3722, r3723, r3724, r3725, r3726, r3727, r3728⟩ := seg52In1_rows30 rho h
  unfold Seg52.relationRow3716 at r3716

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3716

  unfold Seg52.relationRow3717 at r3717

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3717

  unfold Seg52.relationRow3718 at r3718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3718

  unfold Seg52.relationRow3719 at r3719

  unfold Seg52.relationRow3720 at r3720

  unfold Seg52.relationRow3721 at r3721

  unfold Seg52.relationRow3722 at r3722

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3722

  unfold Seg52.relationRow3723 at r3723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3723

  unfold Seg52.relationRow3724 at r3724

  unfold Seg52.relationRow3725 at r3725

  unfold Seg52.relationRow3726 at r3726

  unfold Seg52.relationRow3727 at r3727

  unfold Seg52.relationRow3728 at r3728

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX31 rho = seg52In1AccX30 rho + rho 48112 := by
    unfold seg52In1AccX31 seg52In1AccX30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 30]

    ring

  have hnexty : seg52In1AccY31 rho = seg52In1AccY30 rho + rho 48113 := by
    unfold seg52In1AccY31 seg52In1AccY30
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 30]

    ring

  have ha0 : (rho 48104 + rho 48105) * (seg52In1AccX30 rho + seg52In1AccY30 rho) = rho 48106 := by
    unfold seg52In1AccX30 seg52In1AccY30
    linear_combination r3716
  have ha1 : rho 48105 * seg52In1AccX30 rho = rho 48107 := by
    unfold seg52In1AccX30
    linear_combination r3717
  have ha2 : rho 48104 * seg52In1AccY30 rho = rho 48108 := by
    unfold seg52In1AccY30
    linear_combination r3718
  have ha3 : 3021 * rho 48107 * rho 48108 = rho 48109 := by
    linear_combination r3719
  have ha4 : rho 48110 * (1 + rho 48109) = rho 48107 + rho 48108 := by
    linear_combination r3720
  have ha5 : rho 48111 * (1 - rho 48109) = rho 48106 - rho 48107 - rho 48108 := by
    linear_combination r3721
  have haddx :
      rho 48110 * (1 + 3021 * (rho 48105 * seg52In1AccX30 rho) * (rho 48104 * seg52In1AccY30 rho)) =
        rho 48105 * seg52In1AccX30 rho + rho 48104 * seg52In1AccY30 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48111 * (1 - 3021 * (rho 48105 * seg52In1AccX30 rho) * (rho 48104 * seg52In1AccY30 rho)) =
        (-1) * (rho 48105 * seg52In1AccX30 rho) - rho 48104 * seg52In1AccY30 rho +
          (seg52In1AccY30 rho - seg52In1AccX30 rho * (-1)) * (rho 48104 + rho 48105) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48111 * (1 - rho 48109) = rho 48106 - rho 48107 - rho 48108 := ha5
      _ = (-1) * rho 48107 - rho 48108 + (seg52In1AccY30 rho - seg52In1AccX30 rho * (-1)) *
          (rho 48104 + rho 48105) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX31 rho = seg52In1AccX30 rho - Bool.toZMod bit * (seg52In1AccX30 rho - rho 48110) := by
    have hd : rho 48112 = Bool.toZMod bit * (rho 48110 - seg52In1AccX30 rho) := by
      rw [← hbit]
      unfold seg52In1AccX30
      linear_combination -r3722
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY31 rho = seg52In1AccY30 rho - Bool.toZMod bit * (seg52In1AccY30 rho - rho 48111) := by
    have hd : rho 48113 = Bool.toZMod bit * (rho 48111 - seg52In1AccY30 rho) := by
      rw [← hbit]
      unfold seg52In1AccY30
      linear_combination -r3723
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48104 * rho 48105 = rho 48114 := by linear_combination r3724
  have hd1 : rho 48104 * rho 48104 = rho 48115 := by linear_combination r3725
  have hd2 : rho 48105 * rho 48105 = rho 48116 := by linear_combination r3726
  have hd3 : rho 48117 * (rho 48105 * rho 48105 + rho 48104 * rho 48104 * (-1)) =
      2 * (rho 48104 * rho 48105) := by
    rw [hd0, hd1, hd2]
    linear_combination r3727
  have hd4 : rho 48118 * (2 - (rho 48105 * rho 48105 + rho 48104 * rho 48104 * (-1))) =
      rho 48105 * rho 48105 - rho 48104 * rho 48104 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3728
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX30 rho, seg52In1AccY30 rho⟩ ⟨rho 48104, rho 48105⟩
    ⟨rho 48110, rho 48111⟩ ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 48117, rho 48118⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3729 rho ∧ Seg52.relationRow3730 rho ∧ Seg52.relationRow3731 rho ∧ Seg52.relationRow3732 rho ∧ Seg52.relationRow3733 rho ∧ Seg52.relationRow3734 rho ∧ Seg52.relationRow3735 rho ∧ Seg52.relationRow3736 rho ∧ Seg52.relationRow3737 rho ∧ Seg52.relationRow3738 rho ∧ Seg52.relationRow3739 rho ∧ Seg52.relationRow3740 rho ∧ Seg52.relationRow3741 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741⟩

theorem seg52In1_rung31 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47625 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48117, rho 48118⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 48117, rho 48118⟩
        ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 48130, rho 48131⟩ := by
  obtain ⟨r3729, r3730, r3731, r3732, r3733, r3734, r3735, r3736, r3737, r3738, r3739, r3740, r3741⟩ := seg52In1_rows31 rho h
  unfold Seg52.relationRow3729 at r3729

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3729

  unfold Seg52.relationRow3730 at r3730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3730

  unfold Seg52.relationRow3731 at r3731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3731

  unfold Seg52.relationRow3732 at r3732

  unfold Seg52.relationRow3733 at r3733

  unfold Seg52.relationRow3734 at r3734

  unfold Seg52.relationRow3735 at r3735

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3735

  unfold Seg52.relationRow3736 at r3736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3736

  unfold Seg52.relationRow3737 at r3737

  unfold Seg52.relationRow3738 at r3738

  unfold Seg52.relationRow3739 at r3739

  unfold Seg52.relationRow3740 at r3740

  unfold Seg52.relationRow3741 at r3741

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX32 rho = seg52In1AccX31 rho + rho 48125 := by
    unfold seg52In1AccX32 seg52In1AccX31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 31]

    ring

  have hnexty : seg52In1AccY32 rho = seg52In1AccY31 rho + rho 48126 := by
    unfold seg52In1AccY32 seg52In1AccY31
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 31]

    ring

  have ha0 : (rho 48117 + rho 48118) * (seg52In1AccX31 rho + seg52In1AccY31 rho) = rho 48119 := by
    unfold seg52In1AccX31 seg52In1AccY31
    linear_combination r3729
  have ha1 : rho 48118 * seg52In1AccX31 rho = rho 48120 := by
    unfold seg52In1AccX31
    linear_combination r3730
  have ha2 : rho 48117 * seg52In1AccY31 rho = rho 48121 := by
    unfold seg52In1AccY31
    linear_combination r3731
  have ha3 : 3021 * rho 48120 * rho 48121 = rho 48122 := by
    linear_combination r3732
  have ha4 : rho 48123 * (1 + rho 48122) = rho 48120 + rho 48121 := by
    linear_combination r3733
  have ha5 : rho 48124 * (1 - rho 48122) = rho 48119 - rho 48120 - rho 48121 := by
    linear_combination r3734
  have haddx :
      rho 48123 * (1 + 3021 * (rho 48118 * seg52In1AccX31 rho) * (rho 48117 * seg52In1AccY31 rho)) =
        rho 48118 * seg52In1AccX31 rho + rho 48117 * seg52In1AccY31 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48124 * (1 - 3021 * (rho 48118 * seg52In1AccX31 rho) * (rho 48117 * seg52In1AccY31 rho)) =
        (-1) * (rho 48118 * seg52In1AccX31 rho) - rho 48117 * seg52In1AccY31 rho +
          (seg52In1AccY31 rho - seg52In1AccX31 rho * (-1)) * (rho 48117 + rho 48118) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48124 * (1 - rho 48122) = rho 48119 - rho 48120 - rho 48121 := ha5
      _ = (-1) * rho 48120 - rho 48121 + (seg52In1AccY31 rho - seg52In1AccX31 rho * (-1)) *
          (rho 48117 + rho 48118) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX32 rho = seg52In1AccX31 rho - Bool.toZMod bit * (seg52In1AccX31 rho - rho 48123) := by
    have hd : rho 48125 = Bool.toZMod bit * (rho 48123 - seg52In1AccX31 rho) := by
      rw [← hbit]
      unfold seg52In1AccX31
      linear_combination -r3735
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY32 rho = seg52In1AccY31 rho - Bool.toZMod bit * (seg52In1AccY31 rho - rho 48124) := by
    have hd : rho 48126 = Bool.toZMod bit * (rho 48124 - seg52In1AccY31 rho) := by
      rw [← hbit]
      unfold seg52In1AccY31
      linear_combination -r3736
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48117 * rho 48118 = rho 48127 := by linear_combination r3737
  have hd1 : rho 48117 * rho 48117 = rho 48128 := by linear_combination r3738
  have hd2 : rho 48118 * rho 48118 = rho 48129 := by linear_combination r3739
  have hd3 : rho 48130 * (rho 48118 * rho 48118 + rho 48117 * rho 48117 * (-1)) =
      2 * (rho 48117 * rho 48118) := by
    rw [hd0, hd1, hd2]
    linear_combination r3740
  have hd4 : rho 48131 * (2 - (rho 48118 * rho 48118 + rho 48117 * rho 48117 * (-1))) =
      rho 48118 * rho 48118 - rho 48117 * rho 48117 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3741
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX31 rho, seg52In1AccY31 rho⟩ ⟨rho 48117, rho 48118⟩
    ⟨rho 48123, rho 48124⟩ ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 48130, rho 48131⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_rows32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow3742 rho ∧ Seg52.relationRow3743 rho ∧ Seg52.relationRow3744 rho ∧ Seg52.relationRow3745 rho ∧ Seg52.relationRow3746 rho ∧ Seg52.relationRow3747 rho ∧ Seg52.relationRow3748 rho ∧ Seg52.relationRow3749 rho ∧ Seg52.relationRow3750 rho ∧ Seg52.relationRow3751 rho ∧ Seg52.relationRow3752 rho ∧ Seg52.relationRow3753 rho ∧ Seg52.relationRow3754 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p46, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart46 at p46

  rcases p46 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754, _, _, _, _, _⟩

  exact ⟨r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754⟩

theorem seg52In1_rung32 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 47626 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 48130, rho 48131⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 48130, rho 48131⟩
        ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 48143, rho 48144⟩ := by
  obtain ⟨r3742, r3743, r3744, r3745, r3746, r3747, r3748, r3749, r3750, r3751, r3752, r3753, r3754⟩ := seg52In1_rows32 rho h
  unfold Seg52.relationRow3742 at r3742

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3742

  unfold Seg52.relationRow3743 at r3743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3743

  unfold Seg52.relationRow3744 at r3744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3744

  unfold Seg52.relationRow3745 at r3745

  unfold Seg52.relationRow3746 at r3746

  unfold Seg52.relationRow3747 at r3747

  unfold Seg52.relationRow3748 at r3748

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3748

  unfold Seg52.relationRow3749 at r3749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r3749

  unfold Seg52.relationRow3750 at r3750

  unfold Seg52.relationRow3751 at r3751

  unfold Seg52.relationRow3752 at r3752

  unfold Seg52.relationRow3753 at r3753

  unfold Seg52.relationRow3754 at r3754

  intro bit hbit hacc hcur
  have hnextx : seg52In1AccX33 rho = seg52In1AccX32 rho + rho 48138 := by
    unfold seg52In1AccX33 seg52In1AccX32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47722 13 32]

    ring

  have hnexty : seg52In1AccY33 rho = seg52In1AccY32 rho + rho 48139 := by
    unfold seg52In1AccY33 seg52In1AccY32
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 47723 13 32]

    ring

  have ha0 : (rho 48130 + rho 48131) * (seg52In1AccX32 rho + seg52In1AccY32 rho) = rho 48132 := by
    unfold seg52In1AccX32 seg52In1AccY32
    linear_combination r3742
  have ha1 : rho 48131 * seg52In1AccX32 rho = rho 48133 := by
    unfold seg52In1AccX32
    linear_combination r3743
  have ha2 : rho 48130 * seg52In1AccY32 rho = rho 48134 := by
    unfold seg52In1AccY32
    linear_combination r3744
  have ha3 : 3021 * rho 48133 * rho 48134 = rho 48135 := by
    linear_combination r3745
  have ha4 : rho 48136 * (1 + rho 48135) = rho 48133 + rho 48134 := by
    linear_combination r3746
  have ha5 : rho 48137 * (1 - rho 48135) = rho 48132 - rho 48133 - rho 48134 := by
    linear_combination r3747
  have haddx :
      rho 48136 * (1 + 3021 * (rho 48131 * seg52In1AccX32 rho) * (rho 48130 * seg52In1AccY32 rho)) =
        rho 48131 * seg52In1AccX32 rho + rho 48130 * seg52In1AccY32 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 48137 * (1 - 3021 * (rho 48131 * seg52In1AccX32 rho) * (rho 48130 * seg52In1AccY32 rho)) =
        (-1) * (rho 48131 * seg52In1AccX32 rho) - rho 48130 * seg52In1AccY32 rho +
          (seg52In1AccY32 rho - seg52In1AccX32 rho * (-1)) * (rho 48130 + rho 48131) := by
    rw [ha1, ha2, ha3]
    calc
      rho 48137 * (1 - rho 48135) = rho 48132 - rho 48133 - rho 48134 := ha5
      _ = (-1) * rho 48133 - rho 48134 + (seg52In1AccY32 rho - seg52In1AccX32 rho * (-1)) *
          (rho 48130 + rho 48131) := by
        rw [← ha0]
        ring
  have hselx : seg52In1AccX33 rho = seg52In1AccX32 rho - Bool.toZMod bit * (seg52In1AccX32 rho - rho 48136) := by
    have hd : rho 48138 = Bool.toZMod bit * (rho 48136 - seg52In1AccX32 rho) := by
      rw [← hbit]
      unfold seg52In1AccX32
      linear_combination -r3748
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In1AccY33 rho = seg52In1AccY32 rho - Bool.toZMod bit * (seg52In1AccY32 rho - rho 48137) := by
    have hd : rho 48139 = Bool.toZMod bit * (rho 48137 - seg52In1AccY32 rho) := by
      rw [← hbit]
      unfold seg52In1AccY32
      linear_combination -r3749
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 48130 * rho 48131 = rho 48140 := by linear_combination r3750
  have hd1 : rho 48130 * rho 48130 = rho 48141 := by linear_combination r3751
  have hd2 : rho 48131 * rho 48131 = rho 48142 := by linear_combination r3752
  have hd3 : rho 48143 * (rho 48131 * rho 48131 + rho 48130 * rho 48130 * (-1)) =
      2 * (rho 48130 * rho 48131) := by
    rw [hd0, hd1, hd2]
    linear_combination r3753
  have hd4 : rho 48144 * (2 - (rho 48131 * rho 48131 + rho 48130 * rho 48130 * (-1))) =
      rho 48131 * rho 48131 - rho 48130 * rho 48130 * (-1) := by
    rw [hd1, hd2]
    linear_combination r3754
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In1AccX32 rho, seg52In1AccY32 rho⟩ ⟨rho 48130, rho 48131⟩
    ⟨rho 48136, rho 48137⟩ ⟨seg52In1AccX33 rho, seg52In1AccY33 rho⟩ ⟨rho 48143, rho 48144⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In1_hstep_c2 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (47594 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 22 ≤ i → i < 33 →
      EdwardsBridge.onCurve (seg52In1AccState rho i) →
      EdwardsBridge.onCurve (seg52In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In1AccState rho i) (seg52In1CurState rho i)
        (seg52In1AccState rho (i + 1)) (seg52In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In1_rung22 rho h bits[22]! (hbitAt 22 (by omega)) hacc hcur
  · exact seg52In1_rung23 rho h bits[23]! (hbitAt 23 (by omega)) hacc hcur
  · exact seg52In1_rung24 rho h bits[24]! (hbitAt 24 (by omega)) hacc hcur
  · exact seg52In1_rung25 rho h bits[25]! (hbitAt 25 (by omega)) hacc hcur
  · exact seg52In1_rung26 rho h bits[26]! (hbitAt 26 (by omega)) hacc hcur
  · exact seg52In1_rung27 rho h bits[27]! (hbitAt 27 (by omega)) hacc hcur
  · exact seg52In1_rung28 rho h bits[28]! (hbitAt 28 (by omega)) hacc hcur
  · exact seg52In1_rung29 rho h bits[29]! (hbitAt 29 (by omega)) hacc hcur
  · exact seg52In1_rung30 rho h bits[30]! (hbitAt 30 (by omega)) hacc hcur
  · exact seg52In1_rung31 rho h bits[31]! (hbitAt 31 (by omega)) hacc hcur
  · exact seg52In1_rung32 rho h bits[32]! (hbitAt 32 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
