import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5691 rho ∧ Seg52.relationRow5692 rho ∧ Seg52.relationRow5693 rho ∧ Seg52.relationRow5694 rho ∧ Seg52.relationRow5695 rho ∧ Seg52.relationRow5696 rho ∧ Seg52.relationRow5697 rho ∧ Seg52.relationRow5698 rho ∧ Seg52.relationRow5699 rho ∧ Seg52.relationRow5700 rho ∧ Seg52.relationRow5701 rho ∧ Seg52.relationRow5702 rho ∧ Seg52.relationRow5703 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703⟩

theorem seg52Out0_rung44 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49430 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50078, rho 50079⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 50078, rho 50079⟩
        ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 50091, rho 50092⟩ := by
  obtain ⟨r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703⟩ := seg52Out0_rows44 rho h
  unfold Seg52.relationRow5691 at r5691

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5691

  unfold Seg52.relationRow5692 at r5692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5692

  unfold Seg52.relationRow5693 at r5693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5693

  unfold Seg52.relationRow5694 at r5694

  unfold Seg52.relationRow5695 at r5695

  unfold Seg52.relationRow5696 at r5696

  unfold Seg52.relationRow5697 at r5697

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5697

  unfold Seg52.relationRow5698 at r5698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5698

  unfold Seg52.relationRow5699 at r5699

  unfold Seg52.relationRow5700 at r5700

  unfold Seg52.relationRow5701 at r5701

  unfold Seg52.relationRow5702 at r5702

  unfold Seg52.relationRow5703 at r5703

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX45 rho = seg52Out0AccX44 rho + rho 50086 := by
    unfold seg52Out0AccX45 seg52Out0AccX44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 44]

    ring

  have hnexty : seg52Out0AccY45 rho = seg52Out0AccY44 rho + rho 50087 := by
    unfold seg52Out0AccY45 seg52Out0AccY44
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 44]

    ring

  have ha0 : (rho 50078 + rho 50079) * (seg52Out0AccX44 rho + seg52Out0AccY44 rho) = rho 50080 := by
    unfold seg52Out0AccX44 seg52Out0AccY44
    linear_combination r5691
  have ha1 : rho 50079 * seg52Out0AccX44 rho = rho 50081 := by
    unfold seg52Out0AccX44
    linear_combination r5692
  have ha2 : rho 50078 * seg52Out0AccY44 rho = rho 50082 := by
    unfold seg52Out0AccY44
    linear_combination r5693
  have ha3 : 3021 * rho 50081 * rho 50082 = rho 50083 := by
    linear_combination r5694
  have ha4 : rho 50084 * (1 + rho 50083) = rho 50081 + rho 50082 := by
    linear_combination r5695
  have ha5 : rho 50085 * (1 - rho 50083) = rho 50080 - rho 50081 - rho 50082 := by
    linear_combination r5696
  have haddx :
      rho 50084 * (1 + 3021 * (rho 50079 * seg52Out0AccX44 rho) * (rho 50078 * seg52Out0AccY44 rho)) =
        rho 50079 * seg52Out0AccX44 rho + rho 50078 * seg52Out0AccY44 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50085 * (1 - 3021 * (rho 50079 * seg52Out0AccX44 rho) * (rho 50078 * seg52Out0AccY44 rho)) =
        (-1) * (rho 50079 * seg52Out0AccX44 rho) - rho 50078 * seg52Out0AccY44 rho +
          (seg52Out0AccY44 rho - seg52Out0AccX44 rho * (-1)) * (rho 50078 + rho 50079) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50085 * (1 - rho 50083) = rho 50080 - rho 50081 - rho 50082 := ha5
      _ = (-1) * rho 50081 - rho 50082 + (seg52Out0AccY44 rho - seg52Out0AccX44 rho * (-1)) *
          (rho 50078 + rho 50079) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX45 rho = seg52Out0AccX44 rho - Bool.toZMod bit * (seg52Out0AccX44 rho - rho 50084) := by
    have hd : rho 50086 = Bool.toZMod bit * (rho 50084 - seg52Out0AccX44 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX44
      linear_combination -r5697
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY45 rho = seg52Out0AccY44 rho - Bool.toZMod bit * (seg52Out0AccY44 rho - rho 50085) := by
    have hd : rho 50087 = Bool.toZMod bit * (rho 50085 - seg52Out0AccY44 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY44
      linear_combination -r5698
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50078 * rho 50079 = rho 50088 := by linear_combination r5699
  have hd1 : rho 50078 * rho 50078 = rho 50089 := by linear_combination r5700
  have hd2 : rho 50079 * rho 50079 = rho 50090 := by linear_combination r5701
  have hd3 : rho 50091 * (rho 50079 * rho 50079 + rho 50078 * rho 50078 * (-1)) =
      2 * (rho 50078 * rho 50079) := by
    rw [hd0, hd1, hd2]
    linear_combination r5702
  have hd4 : rho 50092 * (2 - (rho 50079 * rho 50079 + rho 50078 * rho 50078 * (-1))) =
      rho 50079 * rho 50079 - rho 50078 * rho 50078 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5703
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX44 rho, seg52Out0AccY44 rho⟩ ⟨rho 50078, rho 50079⟩
    ⟨rho 50084, rho 50085⟩ ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 50091, rho 50092⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5704 rho ∧ Seg52.relationRow5705 rho ∧ Seg52.relationRow5706 rho ∧ Seg52.relationRow5707 rho ∧ Seg52.relationRow5708 rho ∧ Seg52.relationRow5709 rho ∧ Seg52.relationRow5710 rho ∧ Seg52.relationRow5711 rho ∧ Seg52.relationRow5712 rho ∧ Seg52.relationRow5713 rho ∧ Seg52.relationRow5714 rho ∧ Seg52.relationRow5715 rho ∧ Seg52.relationRow5716 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716⟩

theorem seg52Out0_rung45 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49431 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50091, rho 50092⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 50091, rho 50092⟩
        ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 50104, rho 50105⟩ := by
  obtain ⟨r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716⟩ := seg52Out0_rows45 rho h
  unfold Seg52.relationRow5704 at r5704

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5704

  unfold Seg52.relationRow5705 at r5705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5705

  unfold Seg52.relationRow5706 at r5706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5706

  unfold Seg52.relationRow5707 at r5707

  unfold Seg52.relationRow5708 at r5708

  unfold Seg52.relationRow5709 at r5709

  unfold Seg52.relationRow5710 at r5710

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5710

  unfold Seg52.relationRow5711 at r5711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5711

  unfold Seg52.relationRow5712 at r5712

  unfold Seg52.relationRow5713 at r5713

  unfold Seg52.relationRow5714 at r5714

  unfold Seg52.relationRow5715 at r5715

  unfold Seg52.relationRow5716 at r5716

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX46 rho = seg52Out0AccX45 rho + rho 50099 := by
    unfold seg52Out0AccX46 seg52Out0AccX45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 45]

    ring

  have hnexty : seg52Out0AccY46 rho = seg52Out0AccY45 rho + rho 50100 := by
    unfold seg52Out0AccY46 seg52Out0AccY45
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 45]

    ring

  have ha0 : (rho 50091 + rho 50092) * (seg52Out0AccX45 rho + seg52Out0AccY45 rho) = rho 50093 := by
    unfold seg52Out0AccX45 seg52Out0AccY45
    linear_combination r5704
  have ha1 : rho 50092 * seg52Out0AccX45 rho = rho 50094 := by
    unfold seg52Out0AccX45
    linear_combination r5705
  have ha2 : rho 50091 * seg52Out0AccY45 rho = rho 50095 := by
    unfold seg52Out0AccY45
    linear_combination r5706
  have ha3 : 3021 * rho 50094 * rho 50095 = rho 50096 := by
    linear_combination r5707
  have ha4 : rho 50097 * (1 + rho 50096) = rho 50094 + rho 50095 := by
    linear_combination r5708
  have ha5 : rho 50098 * (1 - rho 50096) = rho 50093 - rho 50094 - rho 50095 := by
    linear_combination r5709
  have haddx :
      rho 50097 * (1 + 3021 * (rho 50092 * seg52Out0AccX45 rho) * (rho 50091 * seg52Out0AccY45 rho)) =
        rho 50092 * seg52Out0AccX45 rho + rho 50091 * seg52Out0AccY45 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50098 * (1 - 3021 * (rho 50092 * seg52Out0AccX45 rho) * (rho 50091 * seg52Out0AccY45 rho)) =
        (-1) * (rho 50092 * seg52Out0AccX45 rho) - rho 50091 * seg52Out0AccY45 rho +
          (seg52Out0AccY45 rho - seg52Out0AccX45 rho * (-1)) * (rho 50091 + rho 50092) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50098 * (1 - rho 50096) = rho 50093 - rho 50094 - rho 50095 := ha5
      _ = (-1) * rho 50094 - rho 50095 + (seg52Out0AccY45 rho - seg52Out0AccX45 rho * (-1)) *
          (rho 50091 + rho 50092) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX46 rho = seg52Out0AccX45 rho - Bool.toZMod bit * (seg52Out0AccX45 rho - rho 50097) := by
    have hd : rho 50099 = Bool.toZMod bit * (rho 50097 - seg52Out0AccX45 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX45
      linear_combination -r5710
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY46 rho = seg52Out0AccY45 rho - Bool.toZMod bit * (seg52Out0AccY45 rho - rho 50098) := by
    have hd : rho 50100 = Bool.toZMod bit * (rho 50098 - seg52Out0AccY45 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY45
      linear_combination -r5711
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50091 * rho 50092 = rho 50101 := by linear_combination r5712
  have hd1 : rho 50091 * rho 50091 = rho 50102 := by linear_combination r5713
  have hd2 : rho 50092 * rho 50092 = rho 50103 := by linear_combination r5714
  have hd3 : rho 50104 * (rho 50092 * rho 50092 + rho 50091 * rho 50091 * (-1)) =
      2 * (rho 50091 * rho 50092) := by
    rw [hd0, hd1, hd2]
    linear_combination r5715
  have hd4 : rho 50105 * (2 - (rho 50092 * rho 50092 + rho 50091 * rho 50091 * (-1))) =
      rho 50092 * rho 50092 - rho 50091 * rho 50091 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5716
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX45 rho, seg52Out0AccY45 rho⟩ ⟨rho 50091, rho 50092⟩
    ⟨rho 50097, rho 50098⟩ ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 50104, rho 50105⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5717 rho ∧ Seg52.relationRow5718 rho ∧ Seg52.relationRow5719 rho ∧ Seg52.relationRow5720 rho ∧ Seg52.relationRow5721 rho ∧ Seg52.relationRow5722 rho ∧ Seg52.relationRow5723 rho ∧ Seg52.relationRow5724 rho ∧ Seg52.relationRow5725 rho ∧ Seg52.relationRow5726 rho ∧ Seg52.relationRow5727 rho ∧ Seg52.relationRow5728 rho ∧ Seg52.relationRow5729 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729⟩

theorem seg52Out0_rung46 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49432 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50104, rho 50105⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 50104, rho 50105⟩
        ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 50117, rho 50118⟩ := by
  obtain ⟨r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729⟩ := seg52Out0_rows46 rho h
  unfold Seg52.relationRow5717 at r5717

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5717

  unfold Seg52.relationRow5718 at r5718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5718

  unfold Seg52.relationRow5719 at r5719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5719

  unfold Seg52.relationRow5720 at r5720

  unfold Seg52.relationRow5721 at r5721

  unfold Seg52.relationRow5722 at r5722

  unfold Seg52.relationRow5723 at r5723

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5723

  unfold Seg52.relationRow5724 at r5724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5724

  unfold Seg52.relationRow5725 at r5725

  unfold Seg52.relationRow5726 at r5726

  unfold Seg52.relationRow5727 at r5727

  unfold Seg52.relationRow5728 at r5728

  unfold Seg52.relationRow5729 at r5729

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX47 rho = seg52Out0AccX46 rho + rho 50112 := by
    unfold seg52Out0AccX47 seg52Out0AccX46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 46]

    ring

  have hnexty : seg52Out0AccY47 rho = seg52Out0AccY46 rho + rho 50113 := by
    unfold seg52Out0AccY47 seg52Out0AccY46
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 46]

    ring

  have ha0 : (rho 50104 + rho 50105) * (seg52Out0AccX46 rho + seg52Out0AccY46 rho) = rho 50106 := by
    unfold seg52Out0AccX46 seg52Out0AccY46
    linear_combination r5717
  have ha1 : rho 50105 * seg52Out0AccX46 rho = rho 50107 := by
    unfold seg52Out0AccX46
    linear_combination r5718
  have ha2 : rho 50104 * seg52Out0AccY46 rho = rho 50108 := by
    unfold seg52Out0AccY46
    linear_combination r5719
  have ha3 : 3021 * rho 50107 * rho 50108 = rho 50109 := by
    linear_combination r5720
  have ha4 : rho 50110 * (1 + rho 50109) = rho 50107 + rho 50108 := by
    linear_combination r5721
  have ha5 : rho 50111 * (1 - rho 50109) = rho 50106 - rho 50107 - rho 50108 := by
    linear_combination r5722
  have haddx :
      rho 50110 * (1 + 3021 * (rho 50105 * seg52Out0AccX46 rho) * (rho 50104 * seg52Out0AccY46 rho)) =
        rho 50105 * seg52Out0AccX46 rho + rho 50104 * seg52Out0AccY46 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50111 * (1 - 3021 * (rho 50105 * seg52Out0AccX46 rho) * (rho 50104 * seg52Out0AccY46 rho)) =
        (-1) * (rho 50105 * seg52Out0AccX46 rho) - rho 50104 * seg52Out0AccY46 rho +
          (seg52Out0AccY46 rho - seg52Out0AccX46 rho * (-1)) * (rho 50104 + rho 50105) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50111 * (1 - rho 50109) = rho 50106 - rho 50107 - rho 50108 := ha5
      _ = (-1) * rho 50107 - rho 50108 + (seg52Out0AccY46 rho - seg52Out0AccX46 rho * (-1)) *
          (rho 50104 + rho 50105) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX47 rho = seg52Out0AccX46 rho - Bool.toZMod bit * (seg52Out0AccX46 rho - rho 50110) := by
    have hd : rho 50112 = Bool.toZMod bit * (rho 50110 - seg52Out0AccX46 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX46
      linear_combination -r5723
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY47 rho = seg52Out0AccY46 rho - Bool.toZMod bit * (seg52Out0AccY46 rho - rho 50111) := by
    have hd : rho 50113 = Bool.toZMod bit * (rho 50111 - seg52Out0AccY46 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY46
      linear_combination -r5724
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50104 * rho 50105 = rho 50114 := by linear_combination r5725
  have hd1 : rho 50104 * rho 50104 = rho 50115 := by linear_combination r5726
  have hd2 : rho 50105 * rho 50105 = rho 50116 := by linear_combination r5727
  have hd3 : rho 50117 * (rho 50105 * rho 50105 + rho 50104 * rho 50104 * (-1)) =
      2 * (rho 50104 * rho 50105) := by
    rw [hd0, hd1, hd2]
    linear_combination r5728
  have hd4 : rho 50118 * (2 - (rho 50105 * rho 50105 + rho 50104 * rho 50104 * (-1))) =
      rho 50105 * rho 50105 - rho 50104 * rho 50104 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5729
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX46 rho, seg52Out0AccY46 rho⟩ ⟨rho 50104, rho 50105⟩
    ⟨rho 50110, rho 50111⟩ ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 50117, rho 50118⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5730 rho ∧ Seg52.relationRow5731 rho ∧ Seg52.relationRow5732 rho ∧ Seg52.relationRow5733 rho ∧ Seg52.relationRow5734 rho ∧ Seg52.relationRow5735 rho ∧ Seg52.relationRow5736 rho ∧ Seg52.relationRow5737 rho ∧ Seg52.relationRow5738 rho ∧ Seg52.relationRow5739 rho ∧ Seg52.relationRow5740 rho ∧ Seg52.relationRow5741 rho ∧ Seg52.relationRow5742 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, r5741, r5742, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, r5741, r5742⟩

theorem seg52Out0_rung47 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49433 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50117, rho 50118⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 50117, rho 50118⟩
        ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 50130, rho 50131⟩ := by
  obtain ⟨r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, r5739, r5740, r5741, r5742⟩ := seg52Out0_rows47 rho h
  unfold Seg52.relationRow5730 at r5730

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5730

  unfold Seg52.relationRow5731 at r5731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5731

  unfold Seg52.relationRow5732 at r5732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5732

  unfold Seg52.relationRow5733 at r5733

  unfold Seg52.relationRow5734 at r5734

  unfold Seg52.relationRow5735 at r5735

  unfold Seg52.relationRow5736 at r5736

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5736

  unfold Seg52.relationRow5737 at r5737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5737

  unfold Seg52.relationRow5738 at r5738

  unfold Seg52.relationRow5739 at r5739

  unfold Seg52.relationRow5740 at r5740

  unfold Seg52.relationRow5741 at r5741

  unfold Seg52.relationRow5742 at r5742

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX48 rho = seg52Out0AccX47 rho + rho 50125 := by
    unfold seg52Out0AccX48 seg52Out0AccX47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 47]

    ring

  have hnexty : seg52Out0AccY48 rho = seg52Out0AccY47 rho + rho 50126 := by
    unfold seg52Out0AccY48 seg52Out0AccY47
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 47]

    ring

  have ha0 : (rho 50117 + rho 50118) * (seg52Out0AccX47 rho + seg52Out0AccY47 rho) = rho 50119 := by
    unfold seg52Out0AccX47 seg52Out0AccY47
    linear_combination r5730
  have ha1 : rho 50118 * seg52Out0AccX47 rho = rho 50120 := by
    unfold seg52Out0AccX47
    linear_combination r5731
  have ha2 : rho 50117 * seg52Out0AccY47 rho = rho 50121 := by
    unfold seg52Out0AccY47
    linear_combination r5732
  have ha3 : 3021 * rho 50120 * rho 50121 = rho 50122 := by
    linear_combination r5733
  have ha4 : rho 50123 * (1 + rho 50122) = rho 50120 + rho 50121 := by
    linear_combination r5734
  have ha5 : rho 50124 * (1 - rho 50122) = rho 50119 - rho 50120 - rho 50121 := by
    linear_combination r5735
  have haddx :
      rho 50123 * (1 + 3021 * (rho 50118 * seg52Out0AccX47 rho) * (rho 50117 * seg52Out0AccY47 rho)) =
        rho 50118 * seg52Out0AccX47 rho + rho 50117 * seg52Out0AccY47 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50124 * (1 - 3021 * (rho 50118 * seg52Out0AccX47 rho) * (rho 50117 * seg52Out0AccY47 rho)) =
        (-1) * (rho 50118 * seg52Out0AccX47 rho) - rho 50117 * seg52Out0AccY47 rho +
          (seg52Out0AccY47 rho - seg52Out0AccX47 rho * (-1)) * (rho 50117 + rho 50118) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50124 * (1 - rho 50122) = rho 50119 - rho 50120 - rho 50121 := ha5
      _ = (-1) * rho 50120 - rho 50121 + (seg52Out0AccY47 rho - seg52Out0AccX47 rho * (-1)) *
          (rho 50117 + rho 50118) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX48 rho = seg52Out0AccX47 rho - Bool.toZMod bit * (seg52Out0AccX47 rho - rho 50123) := by
    have hd : rho 50125 = Bool.toZMod bit * (rho 50123 - seg52Out0AccX47 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX47
      linear_combination -r5736
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY48 rho = seg52Out0AccY47 rho - Bool.toZMod bit * (seg52Out0AccY47 rho - rho 50124) := by
    have hd : rho 50126 = Bool.toZMod bit * (rho 50124 - seg52Out0AccY47 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY47
      linear_combination -r5737
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50117 * rho 50118 = rho 50127 := by linear_combination r5738
  have hd1 : rho 50117 * rho 50117 = rho 50128 := by linear_combination r5739
  have hd2 : rho 50118 * rho 50118 = rho 50129 := by linear_combination r5740
  have hd3 : rho 50130 * (rho 50118 * rho 50118 + rho 50117 * rho 50117 * (-1)) =
      2 * (rho 50117 * rho 50118) := by
    rw [hd0, hd1, hd2]
    linear_combination r5741
  have hd4 : rho 50131 * (2 - (rho 50118 * rho 50118 + rho 50117 * rho 50117 * (-1))) =
      rho 50118 * rho 50118 - rho 50117 * rho 50117 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5742
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX47 rho, seg52Out0AccY47 rho⟩ ⟨rho 50117, rho 50118⟩
    ⟨rho 50123, rho 50124⟩ ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 50130, rho 50131⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5743 rho ∧ Seg52.relationRow5744 rho ∧ Seg52.relationRow5745 rho ∧ Seg52.relationRow5746 rho ∧ Seg52.relationRow5747 rho ∧ Seg52.relationRow5748 rho ∧ Seg52.relationRow5749 rho ∧ Seg52.relationRow5750 rho ∧ Seg52.relationRow5751 rho ∧ Seg52.relationRow5752 rho ∧ Seg52.relationRow5753 rho ∧ Seg52.relationRow5754 rho ∧ Seg52.relationRow5755 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, r5755, _, _, _, _⟩

  exact ⟨r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, r5755⟩

theorem seg52Out0_rung48 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49434 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50130, rho 50131⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 50130, rho 50131⟩
        ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 50143, rho 50144⟩ := by
  obtain ⟨r5743, r5744, r5745, r5746, r5747, r5748, r5749, r5750, r5751, r5752, r5753, r5754, r5755⟩ := seg52Out0_rows48 rho h
  unfold Seg52.relationRow5743 at r5743

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5743

  unfold Seg52.relationRow5744 at r5744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5744

  unfold Seg52.relationRow5745 at r5745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5745

  unfold Seg52.relationRow5746 at r5746

  unfold Seg52.relationRow5747 at r5747

  unfold Seg52.relationRow5748 at r5748

  unfold Seg52.relationRow5749 at r5749

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5749

  unfold Seg52.relationRow5750 at r5750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5750

  unfold Seg52.relationRow5751 at r5751

  unfold Seg52.relationRow5752 at r5752

  unfold Seg52.relationRow5753 at r5753

  unfold Seg52.relationRow5754 at r5754

  unfold Seg52.relationRow5755 at r5755

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX49 rho = seg52Out0AccX48 rho + rho 50138 := by
    unfold seg52Out0AccX49 seg52Out0AccX48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 48]

    ring

  have hnexty : seg52Out0AccY49 rho = seg52Out0AccY48 rho + rho 50139 := by
    unfold seg52Out0AccY49 seg52Out0AccY48
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 48]

    ring

  have ha0 : (rho 50130 + rho 50131) * (seg52Out0AccX48 rho + seg52Out0AccY48 rho) = rho 50132 := by
    unfold seg52Out0AccX48 seg52Out0AccY48
    linear_combination r5743
  have ha1 : rho 50131 * seg52Out0AccX48 rho = rho 50133 := by
    unfold seg52Out0AccX48
    linear_combination r5744
  have ha2 : rho 50130 * seg52Out0AccY48 rho = rho 50134 := by
    unfold seg52Out0AccY48
    linear_combination r5745
  have ha3 : 3021 * rho 50133 * rho 50134 = rho 50135 := by
    linear_combination r5746
  have ha4 : rho 50136 * (1 + rho 50135) = rho 50133 + rho 50134 := by
    linear_combination r5747
  have ha5 : rho 50137 * (1 - rho 50135) = rho 50132 - rho 50133 - rho 50134 := by
    linear_combination r5748
  have haddx :
      rho 50136 * (1 + 3021 * (rho 50131 * seg52Out0AccX48 rho) * (rho 50130 * seg52Out0AccY48 rho)) =
        rho 50131 * seg52Out0AccX48 rho + rho 50130 * seg52Out0AccY48 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50137 * (1 - 3021 * (rho 50131 * seg52Out0AccX48 rho) * (rho 50130 * seg52Out0AccY48 rho)) =
        (-1) * (rho 50131 * seg52Out0AccX48 rho) - rho 50130 * seg52Out0AccY48 rho +
          (seg52Out0AccY48 rho - seg52Out0AccX48 rho * (-1)) * (rho 50130 + rho 50131) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50137 * (1 - rho 50135) = rho 50132 - rho 50133 - rho 50134 := ha5
      _ = (-1) * rho 50133 - rho 50134 + (seg52Out0AccY48 rho - seg52Out0AccX48 rho * (-1)) *
          (rho 50130 + rho 50131) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX49 rho = seg52Out0AccX48 rho - Bool.toZMod bit * (seg52Out0AccX48 rho - rho 50136) := by
    have hd : rho 50138 = Bool.toZMod bit * (rho 50136 - seg52Out0AccX48 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX48
      linear_combination -r5749
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY49 rho = seg52Out0AccY48 rho - Bool.toZMod bit * (seg52Out0AccY48 rho - rho 50137) := by
    have hd : rho 50139 = Bool.toZMod bit * (rho 50137 - seg52Out0AccY48 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY48
      linear_combination -r5750
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50130 * rho 50131 = rho 50140 := by linear_combination r5751
  have hd1 : rho 50130 * rho 50130 = rho 50141 := by linear_combination r5752
  have hd2 : rho 50131 * rho 50131 = rho 50142 := by linear_combination r5753
  have hd3 : rho 50143 * (rho 50131 * rho 50131 + rho 50130 * rho 50130 * (-1)) =
      2 * (rho 50130 * rho 50131) := by
    rw [hd0, hd1, hd2]
    linear_combination r5754
  have hd4 : rho 50144 * (2 - (rho 50131 * rho 50131 + rho 50130 * rho 50130 * (-1))) =
      rho 50131 * rho 50131 - rho 50130 * rho 50130 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5755
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX48 rho, seg52Out0AccY48 rho⟩ ⟨rho 50130, rho 50131⟩
    ⟨rho 50136, rho 50137⟩ ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 50143, rho 50144⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5756 rho ∧ Seg52.relationRow5757 rho ∧ Seg52.relationRow5758 rho ∧ Seg52.relationRow5759 rho ∧ Seg52.relationRow5760 rho ∧ Seg52.relationRow5761 rho ∧ Seg52.relationRow5762 rho ∧ Seg52.relationRow5763 rho ∧ Seg52.relationRow5764 rho ∧ Seg52.relationRow5765 rho ∧ Seg52.relationRow5766 rho ∧ Seg52.relationRow5767 rho ∧ Seg52.relationRow5768 rho := by
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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart71 at p71

  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5756, r5757, r5758, r5759⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩

theorem seg52Out0_rung49 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49435 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50143, rho 50144⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 50143, rho 50144⟩
        ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 50156, rho 50157⟩ := by
  obtain ⟨r5756, r5757, r5758, r5759, r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768⟩ := seg52Out0_rows49 rho h
  unfold Seg52.relationRow5756 at r5756

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5756

  unfold Seg52.relationRow5757 at r5757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5757

  unfold Seg52.relationRow5758 at r5758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5758

  unfold Seg52.relationRow5759 at r5759

  unfold Seg52.relationRow5760 at r5760

  unfold Seg52.relationRow5761 at r5761

  unfold Seg52.relationRow5762 at r5762

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5762

  unfold Seg52.relationRow5763 at r5763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5763

  unfold Seg52.relationRow5764 at r5764

  unfold Seg52.relationRow5765 at r5765

  unfold Seg52.relationRow5766 at r5766

  unfold Seg52.relationRow5767 at r5767

  unfold Seg52.relationRow5768 at r5768

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX50 rho = seg52Out0AccX49 rho + rho 50151 := by
    unfold seg52Out0AccX50 seg52Out0AccX49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 49]

    ring

  have hnexty : seg52Out0AccY50 rho = seg52Out0AccY49 rho + rho 50152 := by
    unfold seg52Out0AccY50 seg52Out0AccY49
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 49]

    ring

  have ha0 : (rho 50143 + rho 50144) * (seg52Out0AccX49 rho + seg52Out0AccY49 rho) = rho 50145 := by
    unfold seg52Out0AccX49 seg52Out0AccY49
    linear_combination r5756
  have ha1 : rho 50144 * seg52Out0AccX49 rho = rho 50146 := by
    unfold seg52Out0AccX49
    linear_combination r5757
  have ha2 : rho 50143 * seg52Out0AccY49 rho = rho 50147 := by
    unfold seg52Out0AccY49
    linear_combination r5758
  have ha3 : 3021 * rho 50146 * rho 50147 = rho 50148 := by
    linear_combination r5759
  have ha4 : rho 50149 * (1 + rho 50148) = rho 50146 + rho 50147 := by
    linear_combination r5760
  have ha5 : rho 50150 * (1 - rho 50148) = rho 50145 - rho 50146 - rho 50147 := by
    linear_combination r5761
  have haddx :
      rho 50149 * (1 + 3021 * (rho 50144 * seg52Out0AccX49 rho) * (rho 50143 * seg52Out0AccY49 rho)) =
        rho 50144 * seg52Out0AccX49 rho + rho 50143 * seg52Out0AccY49 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50150 * (1 - 3021 * (rho 50144 * seg52Out0AccX49 rho) * (rho 50143 * seg52Out0AccY49 rho)) =
        (-1) * (rho 50144 * seg52Out0AccX49 rho) - rho 50143 * seg52Out0AccY49 rho +
          (seg52Out0AccY49 rho - seg52Out0AccX49 rho * (-1)) * (rho 50143 + rho 50144) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50150 * (1 - rho 50148) = rho 50145 - rho 50146 - rho 50147 := ha5
      _ = (-1) * rho 50146 - rho 50147 + (seg52Out0AccY49 rho - seg52Out0AccX49 rho * (-1)) *
          (rho 50143 + rho 50144) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX50 rho = seg52Out0AccX49 rho - Bool.toZMod bit * (seg52Out0AccX49 rho - rho 50149) := by
    have hd : rho 50151 = Bool.toZMod bit * (rho 50149 - seg52Out0AccX49 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX49
      linear_combination -r5762
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY50 rho = seg52Out0AccY49 rho - Bool.toZMod bit * (seg52Out0AccY49 rho - rho 50150) := by
    have hd : rho 50152 = Bool.toZMod bit * (rho 50150 - seg52Out0AccY49 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY49
      linear_combination -r5763
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50143 * rho 50144 = rho 50153 := by linear_combination r5764
  have hd1 : rho 50143 * rho 50143 = rho 50154 := by linear_combination r5765
  have hd2 : rho 50144 * rho 50144 = rho 50155 := by linear_combination r5766
  have hd3 : rho 50156 * (rho 50144 * rho 50144 + rho 50143 * rho 50143 * (-1)) =
      2 * (rho 50143 * rho 50144) := by
    rw [hd0, hd1, hd2]
    linear_combination r5767
  have hd4 : rho 50157 * (2 - (rho 50144 * rho 50144 + rho 50143 * rho 50143 * (-1))) =
      rho 50144 * rho 50144 - rho 50143 * rho 50143 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5768
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX49 rho, seg52Out0AccY49 rho⟩ ⟨rho 50143, rho 50144⟩
    ⟨rho 50149, rho 50150⟩ ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 50156, rho 50157⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5769 rho ∧ Seg52.relationRow5770 rho ∧ Seg52.relationRow5771 rho ∧ Seg52.relationRow5772 rho ∧ Seg52.relationRow5773 rho ∧ Seg52.relationRow5774 rho ∧ Seg52.relationRow5775 rho ∧ Seg52.relationRow5776 rho ∧ Seg52.relationRow5777 rho ∧ Seg52.relationRow5778 rho ∧ Seg52.relationRow5779 rho ∧ Seg52.relationRow5780 rho ∧ Seg52.relationRow5781 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781⟩

theorem seg52Out0_rung50 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49436 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50156, rho 50157⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 50156, rho 50157⟩
        ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 50169, rho 50170⟩ := by
  obtain ⟨r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781⟩ := seg52Out0_rows50 rho h
  unfold Seg52.relationRow5769 at r5769

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5769

  unfold Seg52.relationRow5770 at r5770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5770

  unfold Seg52.relationRow5771 at r5771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5771

  unfold Seg52.relationRow5772 at r5772

  unfold Seg52.relationRow5773 at r5773

  unfold Seg52.relationRow5774 at r5774

  unfold Seg52.relationRow5775 at r5775

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5775

  unfold Seg52.relationRow5776 at r5776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5776

  unfold Seg52.relationRow5777 at r5777

  unfold Seg52.relationRow5778 at r5778

  unfold Seg52.relationRow5779 at r5779

  unfold Seg52.relationRow5780 at r5780

  unfold Seg52.relationRow5781 at r5781

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX51 rho = seg52Out0AccX50 rho + rho 50164 := by
    unfold seg52Out0AccX51 seg52Out0AccX50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 50]

    ring

  have hnexty : seg52Out0AccY51 rho = seg52Out0AccY50 rho + rho 50165 := by
    unfold seg52Out0AccY51 seg52Out0AccY50
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 50]

    ring

  have ha0 : (rho 50156 + rho 50157) * (seg52Out0AccX50 rho + seg52Out0AccY50 rho) = rho 50158 := by
    unfold seg52Out0AccX50 seg52Out0AccY50
    linear_combination r5769
  have ha1 : rho 50157 * seg52Out0AccX50 rho = rho 50159 := by
    unfold seg52Out0AccX50
    linear_combination r5770
  have ha2 : rho 50156 * seg52Out0AccY50 rho = rho 50160 := by
    unfold seg52Out0AccY50
    linear_combination r5771
  have ha3 : 3021 * rho 50159 * rho 50160 = rho 50161 := by
    linear_combination r5772
  have ha4 : rho 50162 * (1 + rho 50161) = rho 50159 + rho 50160 := by
    linear_combination r5773
  have ha5 : rho 50163 * (1 - rho 50161) = rho 50158 - rho 50159 - rho 50160 := by
    linear_combination r5774
  have haddx :
      rho 50162 * (1 + 3021 * (rho 50157 * seg52Out0AccX50 rho) * (rho 50156 * seg52Out0AccY50 rho)) =
        rho 50157 * seg52Out0AccX50 rho + rho 50156 * seg52Out0AccY50 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50163 * (1 - 3021 * (rho 50157 * seg52Out0AccX50 rho) * (rho 50156 * seg52Out0AccY50 rho)) =
        (-1) * (rho 50157 * seg52Out0AccX50 rho) - rho 50156 * seg52Out0AccY50 rho +
          (seg52Out0AccY50 rho - seg52Out0AccX50 rho * (-1)) * (rho 50156 + rho 50157) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50163 * (1 - rho 50161) = rho 50158 - rho 50159 - rho 50160 := ha5
      _ = (-1) * rho 50159 - rho 50160 + (seg52Out0AccY50 rho - seg52Out0AccX50 rho * (-1)) *
          (rho 50156 + rho 50157) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX51 rho = seg52Out0AccX50 rho - Bool.toZMod bit * (seg52Out0AccX50 rho - rho 50162) := by
    have hd : rho 50164 = Bool.toZMod bit * (rho 50162 - seg52Out0AccX50 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX50
      linear_combination -r5775
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY51 rho = seg52Out0AccY50 rho - Bool.toZMod bit * (seg52Out0AccY50 rho - rho 50163) := by
    have hd : rho 50165 = Bool.toZMod bit * (rho 50163 - seg52Out0AccY50 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY50
      linear_combination -r5776
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50156 * rho 50157 = rho 50166 := by linear_combination r5777
  have hd1 : rho 50156 * rho 50156 = rho 50167 := by linear_combination r5778
  have hd2 : rho 50157 * rho 50157 = rho 50168 := by linear_combination r5779
  have hd3 : rho 50169 * (rho 50157 * rho 50157 + rho 50156 * rho 50156 * (-1)) =
      2 * (rho 50156 * rho 50157) := by
    rw [hd0, hd1, hd2]
    linear_combination r5780
  have hd4 : rho 50170 * (2 - (rho 50157 * rho 50157 + rho 50156 * rho 50156 * (-1))) =
      rho 50157 * rho 50157 - rho 50156 * rho 50156 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5781
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX50 rho, seg52Out0AccY50 rho⟩ ⟨rho 50156, rho 50157⟩
    ⟨rho 50162, rho 50163⟩ ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 50169, rho 50170⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5782 rho ∧ Seg52.relationRow5783 rho ∧ Seg52.relationRow5784 rho ∧ Seg52.relationRow5785 rho ∧ Seg52.relationRow5786 rho ∧ Seg52.relationRow5787 rho ∧ Seg52.relationRow5788 rho ∧ Seg52.relationRow5789 rho ∧ Seg52.relationRow5790 rho ∧ Seg52.relationRow5791 rho ∧ Seg52.relationRow5792 rho ∧ Seg52.relationRow5793 rho ∧ Seg52.relationRow5794 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794⟩

theorem seg52Out0_rung51 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49437 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50169, rho 50170⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 50169, rho 50170⟩
        ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 50182, rho 50183⟩ := by
  obtain ⟨r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794⟩ := seg52Out0_rows51 rho h
  unfold Seg52.relationRow5782 at r5782

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5782

  unfold Seg52.relationRow5783 at r5783

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5783

  unfold Seg52.relationRow5784 at r5784

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5784

  unfold Seg52.relationRow5785 at r5785

  unfold Seg52.relationRow5786 at r5786

  unfold Seg52.relationRow5787 at r5787

  unfold Seg52.relationRow5788 at r5788

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5788

  unfold Seg52.relationRow5789 at r5789

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5789

  unfold Seg52.relationRow5790 at r5790

  unfold Seg52.relationRow5791 at r5791

  unfold Seg52.relationRow5792 at r5792

  unfold Seg52.relationRow5793 at r5793

  unfold Seg52.relationRow5794 at r5794

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX52 rho = seg52Out0AccX51 rho + rho 50177 := by
    unfold seg52Out0AccX52 seg52Out0AccX51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 51]

    ring

  have hnexty : seg52Out0AccY52 rho = seg52Out0AccY51 rho + rho 50178 := by
    unfold seg52Out0AccY52 seg52Out0AccY51
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 51]

    ring

  have ha0 : (rho 50169 + rho 50170) * (seg52Out0AccX51 rho + seg52Out0AccY51 rho) = rho 50171 := by
    unfold seg52Out0AccX51 seg52Out0AccY51
    linear_combination r5782
  have ha1 : rho 50170 * seg52Out0AccX51 rho = rho 50172 := by
    unfold seg52Out0AccX51
    linear_combination r5783
  have ha2 : rho 50169 * seg52Out0AccY51 rho = rho 50173 := by
    unfold seg52Out0AccY51
    linear_combination r5784
  have ha3 : 3021 * rho 50172 * rho 50173 = rho 50174 := by
    linear_combination r5785
  have ha4 : rho 50175 * (1 + rho 50174) = rho 50172 + rho 50173 := by
    linear_combination r5786
  have ha5 : rho 50176 * (1 - rho 50174) = rho 50171 - rho 50172 - rho 50173 := by
    linear_combination r5787
  have haddx :
      rho 50175 * (1 + 3021 * (rho 50170 * seg52Out0AccX51 rho) * (rho 50169 * seg52Out0AccY51 rho)) =
        rho 50170 * seg52Out0AccX51 rho + rho 50169 * seg52Out0AccY51 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50176 * (1 - 3021 * (rho 50170 * seg52Out0AccX51 rho) * (rho 50169 * seg52Out0AccY51 rho)) =
        (-1) * (rho 50170 * seg52Out0AccX51 rho) - rho 50169 * seg52Out0AccY51 rho +
          (seg52Out0AccY51 rho - seg52Out0AccX51 rho * (-1)) * (rho 50169 + rho 50170) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50176 * (1 - rho 50174) = rho 50171 - rho 50172 - rho 50173 := ha5
      _ = (-1) * rho 50172 - rho 50173 + (seg52Out0AccY51 rho - seg52Out0AccX51 rho * (-1)) *
          (rho 50169 + rho 50170) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX52 rho = seg52Out0AccX51 rho - Bool.toZMod bit * (seg52Out0AccX51 rho - rho 50175) := by
    have hd : rho 50177 = Bool.toZMod bit * (rho 50175 - seg52Out0AccX51 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX51
      linear_combination -r5788
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY52 rho = seg52Out0AccY51 rho - Bool.toZMod bit * (seg52Out0AccY51 rho - rho 50176) := by
    have hd : rho 50178 = Bool.toZMod bit * (rho 50176 - seg52Out0AccY51 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY51
      linear_combination -r5789
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50169 * rho 50170 = rho 50179 := by linear_combination r5790
  have hd1 : rho 50169 * rho 50169 = rho 50180 := by linear_combination r5791
  have hd2 : rho 50170 * rho 50170 = rho 50181 := by linear_combination r5792
  have hd3 : rho 50182 * (rho 50170 * rho 50170 + rho 50169 * rho 50169 * (-1)) =
      2 * (rho 50169 * rho 50170) := by
    rw [hd0, hd1, hd2]
    linear_combination r5793
  have hd4 : rho 50183 * (2 - (rho 50170 * rho 50170 + rho 50169 * rho 50169 * (-1))) =
      rho 50170 * rho 50170 - rho 50169 * rho 50169 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5794
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX51 rho, seg52Out0AccY51 rho⟩ ⟨rho 50169, rho 50170⟩
    ⟨rho 50175, rho 50176⟩ ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 50182, rho 50183⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5795 rho ∧ Seg52.relationRow5796 rho ∧ Seg52.relationRow5797 rho ∧ Seg52.relationRow5798 rho ∧ Seg52.relationRow5799 rho ∧ Seg52.relationRow5800 rho ∧ Seg52.relationRow5801 rho ∧ Seg52.relationRow5802 rho ∧ Seg52.relationRow5803 rho ∧ Seg52.relationRow5804 rho ∧ Seg52.relationRow5805 rho ∧ Seg52.relationRow5806 rho ∧ Seg52.relationRow5807 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807⟩

theorem seg52Out0_rung52 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49438 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50182, rho 50183⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 50182, rho 50183⟩
        ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 50195, rho 50196⟩ := by
  obtain ⟨r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807⟩ := seg52Out0_rows52 rho h
  unfold Seg52.relationRow5795 at r5795

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5795

  unfold Seg52.relationRow5796 at r5796

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5796

  unfold Seg52.relationRow5797 at r5797

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5797

  unfold Seg52.relationRow5798 at r5798

  unfold Seg52.relationRow5799 at r5799

  unfold Seg52.relationRow5800 at r5800

  unfold Seg52.relationRow5801 at r5801

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5801

  unfold Seg52.relationRow5802 at r5802

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5802

  unfold Seg52.relationRow5803 at r5803

  unfold Seg52.relationRow5804 at r5804

  unfold Seg52.relationRow5805 at r5805

  unfold Seg52.relationRow5806 at r5806

  unfold Seg52.relationRow5807 at r5807

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX53 rho = seg52Out0AccX52 rho + rho 50190 := by
    unfold seg52Out0AccX53 seg52Out0AccX52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 52]

    ring

  have hnexty : seg52Out0AccY53 rho = seg52Out0AccY52 rho + rho 50191 := by
    unfold seg52Out0AccY53 seg52Out0AccY52
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 52]

    ring

  have ha0 : (rho 50182 + rho 50183) * (seg52Out0AccX52 rho + seg52Out0AccY52 rho) = rho 50184 := by
    unfold seg52Out0AccX52 seg52Out0AccY52
    linear_combination r5795
  have ha1 : rho 50183 * seg52Out0AccX52 rho = rho 50185 := by
    unfold seg52Out0AccX52
    linear_combination r5796
  have ha2 : rho 50182 * seg52Out0AccY52 rho = rho 50186 := by
    unfold seg52Out0AccY52
    linear_combination r5797
  have ha3 : 3021 * rho 50185 * rho 50186 = rho 50187 := by
    linear_combination r5798
  have ha4 : rho 50188 * (1 + rho 50187) = rho 50185 + rho 50186 := by
    linear_combination r5799
  have ha5 : rho 50189 * (1 - rho 50187) = rho 50184 - rho 50185 - rho 50186 := by
    linear_combination r5800
  have haddx :
      rho 50188 * (1 + 3021 * (rho 50183 * seg52Out0AccX52 rho) * (rho 50182 * seg52Out0AccY52 rho)) =
        rho 50183 * seg52Out0AccX52 rho + rho 50182 * seg52Out0AccY52 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50189 * (1 - 3021 * (rho 50183 * seg52Out0AccX52 rho) * (rho 50182 * seg52Out0AccY52 rho)) =
        (-1) * (rho 50183 * seg52Out0AccX52 rho) - rho 50182 * seg52Out0AccY52 rho +
          (seg52Out0AccY52 rho - seg52Out0AccX52 rho * (-1)) * (rho 50182 + rho 50183) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50189 * (1 - rho 50187) = rho 50184 - rho 50185 - rho 50186 := ha5
      _ = (-1) * rho 50185 - rho 50186 + (seg52Out0AccY52 rho - seg52Out0AccX52 rho * (-1)) *
          (rho 50182 + rho 50183) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX53 rho = seg52Out0AccX52 rho - Bool.toZMod bit * (seg52Out0AccX52 rho - rho 50188) := by
    have hd : rho 50190 = Bool.toZMod bit * (rho 50188 - seg52Out0AccX52 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX52
      linear_combination -r5801
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY53 rho = seg52Out0AccY52 rho - Bool.toZMod bit * (seg52Out0AccY52 rho - rho 50189) := by
    have hd : rho 50191 = Bool.toZMod bit * (rho 50189 - seg52Out0AccY52 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY52
      linear_combination -r5802
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50182 * rho 50183 = rho 50192 := by linear_combination r5803
  have hd1 : rho 50182 * rho 50182 = rho 50193 := by linear_combination r5804
  have hd2 : rho 50183 * rho 50183 = rho 50194 := by linear_combination r5805
  have hd3 : rho 50195 * (rho 50183 * rho 50183 + rho 50182 * rho 50182 * (-1)) =
      2 * (rho 50182 * rho 50183) := by
    rw [hd0, hd1, hd2]
    linear_combination r5806
  have hd4 : rho 50196 * (2 - (rho 50183 * rho 50183 + rho 50182 * rho 50182 * (-1))) =
      rho 50183 * rho 50183 - rho 50182 * rho 50182 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5807
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX52 rho, seg52Out0AccY52 rho⟩ ⟨rho 50182, rho 50183⟩
    ⟨rho 50188, rho 50189⟩ ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 50195, rho 50196⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5808 rho ∧ Seg52.relationRow5809 rho ∧ Seg52.relationRow5810 rho ∧ Seg52.relationRow5811 rho ∧ Seg52.relationRow5812 rho ∧ Seg52.relationRow5813 rho ∧ Seg52.relationRow5814 rho ∧ Seg52.relationRow5815 rho ∧ Seg52.relationRow5816 rho ∧ Seg52.relationRow5817 rho ∧ Seg52.relationRow5818 rho ∧ Seg52.relationRow5819 rho ∧ Seg52.relationRow5820 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820⟩

theorem seg52Out0_rung53 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49439 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50195, rho 50196⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 50195, rho 50196⟩
        ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 50208, rho 50209⟩ := by
  obtain ⟨r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820⟩ := seg52Out0_rows53 rho h
  unfold Seg52.relationRow5808 at r5808

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5808

  unfold Seg52.relationRow5809 at r5809

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5809

  unfold Seg52.relationRow5810 at r5810

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5810

  unfold Seg52.relationRow5811 at r5811

  unfold Seg52.relationRow5812 at r5812

  unfold Seg52.relationRow5813 at r5813

  unfold Seg52.relationRow5814 at r5814

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5814

  unfold Seg52.relationRow5815 at r5815

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5815

  unfold Seg52.relationRow5816 at r5816

  unfold Seg52.relationRow5817 at r5817

  unfold Seg52.relationRow5818 at r5818

  unfold Seg52.relationRow5819 at r5819

  unfold Seg52.relationRow5820 at r5820

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX54 rho = seg52Out0AccX53 rho + rho 50203 := by
    unfold seg52Out0AccX54 seg52Out0AccX53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 53]

    ring

  have hnexty : seg52Out0AccY54 rho = seg52Out0AccY53 rho + rho 50204 := by
    unfold seg52Out0AccY54 seg52Out0AccY53
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 53]

    ring

  have ha0 : (rho 50195 + rho 50196) * (seg52Out0AccX53 rho + seg52Out0AccY53 rho) = rho 50197 := by
    unfold seg52Out0AccX53 seg52Out0AccY53
    linear_combination r5808
  have ha1 : rho 50196 * seg52Out0AccX53 rho = rho 50198 := by
    unfold seg52Out0AccX53
    linear_combination r5809
  have ha2 : rho 50195 * seg52Out0AccY53 rho = rho 50199 := by
    unfold seg52Out0AccY53
    linear_combination r5810
  have ha3 : 3021 * rho 50198 * rho 50199 = rho 50200 := by
    linear_combination r5811
  have ha4 : rho 50201 * (1 + rho 50200) = rho 50198 + rho 50199 := by
    linear_combination r5812
  have ha5 : rho 50202 * (1 - rho 50200) = rho 50197 - rho 50198 - rho 50199 := by
    linear_combination r5813
  have haddx :
      rho 50201 * (1 + 3021 * (rho 50196 * seg52Out0AccX53 rho) * (rho 50195 * seg52Out0AccY53 rho)) =
        rho 50196 * seg52Out0AccX53 rho + rho 50195 * seg52Out0AccY53 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50202 * (1 - 3021 * (rho 50196 * seg52Out0AccX53 rho) * (rho 50195 * seg52Out0AccY53 rho)) =
        (-1) * (rho 50196 * seg52Out0AccX53 rho) - rho 50195 * seg52Out0AccY53 rho +
          (seg52Out0AccY53 rho - seg52Out0AccX53 rho * (-1)) * (rho 50195 + rho 50196) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50202 * (1 - rho 50200) = rho 50197 - rho 50198 - rho 50199 := ha5
      _ = (-1) * rho 50198 - rho 50199 + (seg52Out0AccY53 rho - seg52Out0AccX53 rho * (-1)) *
          (rho 50195 + rho 50196) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX54 rho = seg52Out0AccX53 rho - Bool.toZMod bit * (seg52Out0AccX53 rho - rho 50201) := by
    have hd : rho 50203 = Bool.toZMod bit * (rho 50201 - seg52Out0AccX53 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX53
      linear_combination -r5814
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY54 rho = seg52Out0AccY53 rho - Bool.toZMod bit * (seg52Out0AccY53 rho - rho 50202) := by
    have hd : rho 50204 = Bool.toZMod bit * (rho 50202 - seg52Out0AccY53 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY53
      linear_combination -r5815
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50195 * rho 50196 = rho 50205 := by linear_combination r5816
  have hd1 : rho 50195 * rho 50195 = rho 50206 := by linear_combination r5817
  have hd2 : rho 50196 * rho 50196 = rho 50207 := by linear_combination r5818
  have hd3 : rho 50208 * (rho 50196 * rho 50196 + rho 50195 * rho 50195 * (-1)) =
      2 * (rho 50195 * rho 50196) := by
    rw [hd0, hd1, hd2]
    linear_combination r5819
  have hd4 : rho 50209 * (2 - (rho 50196 * rho 50196 + rho 50195 * rho 50195 * (-1))) =
      rho 50196 * rho 50196 - rho 50195 * rho 50195 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5820
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX53 rho, seg52Out0AccY53 rho⟩ ⟨rho 50195, rho 50196⟩
    ⟨rho 50201, rho 50202⟩ ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 50208, rho 50209⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5821 rho ∧ Seg52.relationRow5822 rho ∧ Seg52.relationRow5823 rho ∧ Seg52.relationRow5824 rho ∧ Seg52.relationRow5825 rho ∧ Seg52.relationRow5826 rho ∧ Seg52.relationRow5827 rho ∧ Seg52.relationRow5828 rho ∧ Seg52.relationRow5829 rho ∧ Seg52.relationRow5830 rho ∧ Seg52.relationRow5831 rho ∧ Seg52.relationRow5832 rho ∧ Seg52.relationRow5833 rho := by
  unfold Seg52.relation at h

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

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, _, _, _, _, _, _⟩

  exact ⟨r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833⟩

theorem seg52Out0_rung54 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49440 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50208, rho 50209⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 50208, rho 50209⟩
        ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 50221, rho 50222⟩ := by
  obtain ⟨r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833⟩ := seg52Out0_rows54 rho h
  unfold Seg52.relationRow5821 at r5821

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5821

  unfold Seg52.relationRow5822 at r5822

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5822

  unfold Seg52.relationRow5823 at r5823

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5823

  unfold Seg52.relationRow5824 at r5824

  unfold Seg52.relationRow5825 at r5825

  unfold Seg52.relationRow5826 at r5826

  unfold Seg52.relationRow5827 at r5827

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5827

  unfold Seg52.relationRow5828 at r5828

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5828

  unfold Seg52.relationRow5829 at r5829

  unfold Seg52.relationRow5830 at r5830

  unfold Seg52.relationRow5831 at r5831

  unfold Seg52.relationRow5832 at r5832

  unfold Seg52.relationRow5833 at r5833

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX55 rho = seg52Out0AccX54 rho + rho 50216 := by
    unfold seg52Out0AccX55 seg52Out0AccX54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 54]

    ring

  have hnexty : seg52Out0AccY55 rho = seg52Out0AccY54 rho + rho 50217 := by
    unfold seg52Out0AccY55 seg52Out0AccY54
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 54]

    ring

  have ha0 : (rho 50208 + rho 50209) * (seg52Out0AccX54 rho + seg52Out0AccY54 rho) = rho 50210 := by
    unfold seg52Out0AccX54 seg52Out0AccY54
    linear_combination r5821
  have ha1 : rho 50209 * seg52Out0AccX54 rho = rho 50211 := by
    unfold seg52Out0AccX54
    linear_combination r5822
  have ha2 : rho 50208 * seg52Out0AccY54 rho = rho 50212 := by
    unfold seg52Out0AccY54
    linear_combination r5823
  have ha3 : 3021 * rho 50211 * rho 50212 = rho 50213 := by
    linear_combination r5824
  have ha4 : rho 50214 * (1 + rho 50213) = rho 50211 + rho 50212 := by
    linear_combination r5825
  have ha5 : rho 50215 * (1 - rho 50213) = rho 50210 - rho 50211 - rho 50212 := by
    linear_combination r5826
  have haddx :
      rho 50214 * (1 + 3021 * (rho 50209 * seg52Out0AccX54 rho) * (rho 50208 * seg52Out0AccY54 rho)) =
        rho 50209 * seg52Out0AccX54 rho + rho 50208 * seg52Out0AccY54 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50215 * (1 - 3021 * (rho 50209 * seg52Out0AccX54 rho) * (rho 50208 * seg52Out0AccY54 rho)) =
        (-1) * (rho 50209 * seg52Out0AccX54 rho) - rho 50208 * seg52Out0AccY54 rho +
          (seg52Out0AccY54 rho - seg52Out0AccX54 rho * (-1)) * (rho 50208 + rho 50209) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50215 * (1 - rho 50213) = rho 50210 - rho 50211 - rho 50212 := ha5
      _ = (-1) * rho 50211 - rho 50212 + (seg52Out0AccY54 rho - seg52Out0AccX54 rho * (-1)) *
          (rho 50208 + rho 50209) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX55 rho = seg52Out0AccX54 rho - Bool.toZMod bit * (seg52Out0AccX54 rho - rho 50214) := by
    have hd : rho 50216 = Bool.toZMod bit * (rho 50214 - seg52Out0AccX54 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX54
      linear_combination -r5827
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY55 rho = seg52Out0AccY54 rho - Bool.toZMod bit * (seg52Out0AccY54 rho - rho 50215) := by
    have hd : rho 50217 = Bool.toZMod bit * (rho 50215 - seg52Out0AccY54 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY54
      linear_combination -r5828
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50208 * rho 50209 = rho 50218 := by linear_combination r5829
  have hd1 : rho 50208 * rho 50208 = rho 50219 := by linear_combination r5830
  have hd2 : rho 50209 * rho 50209 = rho 50220 := by linear_combination r5831
  have hd3 : rho 50221 * (rho 50209 * rho 50209 + rho 50208 * rho 50208 * (-1)) =
      2 * (rho 50208 * rho 50209) := by
    rw [hd0, hd1, hd2]
    linear_combination r5832
  have hd4 : rho 50222 * (2 - (rho 50209 * rho 50209 + rho 50208 * rho 50208 * (-1))) =
      rho 50209 * rho 50209 - rho 50208 * rho 50208 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5833
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX54 rho, seg52Out0AccY54 rho⟩ ⟨rho 50208, rho 50209⟩
    ⟨rho 50214, rho 50215⟩ ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 50221, rho 50222⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c4 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 44 ≤ i → i < 55 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung44 rho h bits[44]! (hbitAt 44 (by omega)) hacc hcur
  · exact seg52Out0_rung45 rho h bits[45]! (hbitAt 45 (by omega)) hacc hcur
  · exact seg52Out0_rung46 rho h bits[46]! (hbitAt 46 (by omega)) hacc hcur
  · exact seg52Out0_rung47 rho h bits[47]! (hbitAt 47 (by omega)) hacc hcur
  · exact seg52Out0_rung48 rho h bits[48]! (hbitAt 48 (by omega)) hacc hcur
  · exact seg52Out0_rung49 rho h bits[49]! (hbitAt 49 (by omega)) hacc hcur
  · exact seg52Out0_rung50 rho h bits[50]! (hbitAt 50 (by omega)) hacc hcur
  · exact seg52Out0_rung51 rho h bits[51]! (hbitAt 51 (by omega)) hacc hcur
  · exact seg52Out0_rung52 rho h bits[52]! (hbitAt 52 (by omega)) hacc hcur
  · exact seg52Out0_rung53 rho h bits[53]! (hbitAt 53 (by omega)) hacc hcur
  · exact seg52Out0_rung54 rho h bits[54]! (hbitAt 54 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
