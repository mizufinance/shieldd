import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6692 rho ∧ Seg52.relationRow6693 rho ∧ Seg52.relationRow6694 rho ∧ Seg52.relationRow6695 rho ∧ Seg52.relationRow6696 rho ∧ Seg52.relationRow6697 rho ∧ Seg52.relationRow6698 rho ∧ Seg52.relationRow6699 rho ∧ Seg52.relationRow6700 rho ∧ Seg52.relationRow6701 rho ∧ Seg52.relationRow6702 rho ∧ Seg52.relationRow6703 rho ∧ Seg52.relationRow6704 rho := by
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

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6692, r6693, r6694, r6695, r6696, r6697, r6698, r6699, r6700, r6701, r6702, r6703, r6704, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6692, r6693, r6694, r6695, r6696, r6697, r6698, r6699, r6700, r6701, r6702, r6703, r6704⟩

theorem seg52Out0_rung121 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49507 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51079, rho 51080⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 51079, rho 51080⟩
        ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 51092, rho 51093⟩ := by
  obtain ⟨r6692, r6693, r6694, r6695, r6696, r6697, r6698, r6699, r6700, r6701, r6702, r6703, r6704⟩ := seg52Out0_rows121 rho h
  unfold Seg52.relationRow6692 at r6692

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6692

  unfold Seg52.relationRow6693 at r6693

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6693

  unfold Seg52.relationRow6694 at r6694

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6694

  unfold Seg52.relationRow6695 at r6695

  unfold Seg52.relationRow6696 at r6696

  unfold Seg52.relationRow6697 at r6697

  unfold Seg52.relationRow6698 at r6698

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6698

  unfold Seg52.relationRow6699 at r6699

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6699

  unfold Seg52.relationRow6700 at r6700

  unfold Seg52.relationRow6701 at r6701

  unfold Seg52.relationRow6702 at r6702

  unfold Seg52.relationRow6703 at r6703

  unfold Seg52.relationRow6704 at r6704

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX122 rho = seg52Out0AccX121 rho + rho 51087 := by
    unfold seg52Out0AccX122 seg52Out0AccX121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 121]

    ring

  have hnexty : seg52Out0AccY122 rho = seg52Out0AccY121 rho + rho 51088 := by
    unfold seg52Out0AccY122 seg52Out0AccY121
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 121]

    ring

  have ha0 : (rho 51079 + rho 51080) * (seg52Out0AccX121 rho + seg52Out0AccY121 rho) = rho 51081 := by
    unfold seg52Out0AccX121 seg52Out0AccY121
    linear_combination r6692
  have ha1 : rho 51080 * seg52Out0AccX121 rho = rho 51082 := by
    unfold seg52Out0AccX121
    linear_combination r6693
  have ha2 : rho 51079 * seg52Out0AccY121 rho = rho 51083 := by
    unfold seg52Out0AccY121
    linear_combination r6694
  have ha3 : 3021 * rho 51082 * rho 51083 = rho 51084 := by
    linear_combination r6695
  have ha4 : rho 51085 * (1 + rho 51084) = rho 51082 + rho 51083 := by
    linear_combination r6696
  have ha5 : rho 51086 * (1 - rho 51084) = rho 51081 - rho 51082 - rho 51083 := by
    linear_combination r6697
  have haddx :
      rho 51085 * (1 + 3021 * (rho 51080 * seg52Out0AccX121 rho) * (rho 51079 * seg52Out0AccY121 rho)) =
        rho 51080 * seg52Out0AccX121 rho + rho 51079 * seg52Out0AccY121 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51086 * (1 - 3021 * (rho 51080 * seg52Out0AccX121 rho) * (rho 51079 * seg52Out0AccY121 rho)) =
        (-1) * (rho 51080 * seg52Out0AccX121 rho) - rho 51079 * seg52Out0AccY121 rho +
          (seg52Out0AccY121 rho - seg52Out0AccX121 rho * (-1)) * (rho 51079 + rho 51080) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51086 * (1 - rho 51084) = rho 51081 - rho 51082 - rho 51083 := ha5
      _ = (-1) * rho 51082 - rho 51083 + (seg52Out0AccY121 rho - seg52Out0AccX121 rho * (-1)) *
          (rho 51079 + rho 51080) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX122 rho = seg52Out0AccX121 rho - Bool.toZMod bit * (seg52Out0AccX121 rho - rho 51085) := by
    have hd : rho 51087 = Bool.toZMod bit * (rho 51085 - seg52Out0AccX121 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX121
      linear_combination -r6698
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY122 rho = seg52Out0AccY121 rho - Bool.toZMod bit * (seg52Out0AccY121 rho - rho 51086) := by
    have hd : rho 51088 = Bool.toZMod bit * (rho 51086 - seg52Out0AccY121 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY121
      linear_combination -r6699
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51079 * rho 51080 = rho 51089 := by linear_combination r6700
  have hd1 : rho 51079 * rho 51079 = rho 51090 := by linear_combination r6701
  have hd2 : rho 51080 * rho 51080 = rho 51091 := by linear_combination r6702
  have hd3 : rho 51092 * (rho 51080 * rho 51080 + rho 51079 * rho 51079 * (-1)) =
      2 * (rho 51079 * rho 51080) := by
    rw [hd0, hd1, hd2]
    linear_combination r6703
  have hd4 : rho 51093 * (2 - (rho 51080 * rho 51080 + rho 51079 * rho 51079 * (-1))) =
      rho 51080 * rho 51080 - rho 51079 * rho 51079 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6704
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX121 rho, seg52Out0AccY121 rho⟩ ⟨rho 51079, rho 51080⟩
    ⟨rho 51085, rho 51086⟩ ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 51092, rho 51093⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6705 rho ∧ Seg52.relationRow6706 rho ∧ Seg52.relationRow6707 rho ∧ Seg52.relationRow6708 rho ∧ Seg52.relationRow6709 rho ∧ Seg52.relationRow6710 rho ∧ Seg52.relationRow6711 rho ∧ Seg52.relationRow6712 rho ∧ Seg52.relationRow6713 rho ∧ Seg52.relationRow6714 rho ∧ Seg52.relationRow6715 rho ∧ Seg52.relationRow6716 rho ∧ Seg52.relationRow6717 rho := by
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

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6705, r6706, r6707, r6708, r6709, r6710, r6711, r6712, r6713, r6714, r6715, r6716, r6717, _, _⟩

  exact ⟨r6705, r6706, r6707, r6708, r6709, r6710, r6711, r6712, r6713, r6714, r6715, r6716, r6717⟩

theorem seg52Out0_rung122 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49508 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51092, rho 51093⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 51092, rho 51093⟩
        ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 51105, rho 51106⟩ := by
  obtain ⟨r6705, r6706, r6707, r6708, r6709, r6710, r6711, r6712, r6713, r6714, r6715, r6716, r6717⟩ := seg52Out0_rows122 rho h
  unfold Seg52.relationRow6705 at r6705

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6705

  unfold Seg52.relationRow6706 at r6706

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6706

  unfold Seg52.relationRow6707 at r6707

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6707

  unfold Seg52.relationRow6708 at r6708

  unfold Seg52.relationRow6709 at r6709

  unfold Seg52.relationRow6710 at r6710

  unfold Seg52.relationRow6711 at r6711

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6711

  unfold Seg52.relationRow6712 at r6712

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6712

  unfold Seg52.relationRow6713 at r6713

  unfold Seg52.relationRow6714 at r6714

  unfold Seg52.relationRow6715 at r6715

  unfold Seg52.relationRow6716 at r6716

  unfold Seg52.relationRow6717 at r6717

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX123 rho = seg52Out0AccX122 rho + rho 51100 := by
    unfold seg52Out0AccX123 seg52Out0AccX122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 122]

    ring

  have hnexty : seg52Out0AccY123 rho = seg52Out0AccY122 rho + rho 51101 := by
    unfold seg52Out0AccY123 seg52Out0AccY122
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 122]

    ring

  have ha0 : (rho 51092 + rho 51093) * (seg52Out0AccX122 rho + seg52Out0AccY122 rho) = rho 51094 := by
    unfold seg52Out0AccX122 seg52Out0AccY122
    linear_combination r6705
  have ha1 : rho 51093 * seg52Out0AccX122 rho = rho 51095 := by
    unfold seg52Out0AccX122
    linear_combination r6706
  have ha2 : rho 51092 * seg52Out0AccY122 rho = rho 51096 := by
    unfold seg52Out0AccY122
    linear_combination r6707
  have ha3 : 3021 * rho 51095 * rho 51096 = rho 51097 := by
    linear_combination r6708
  have ha4 : rho 51098 * (1 + rho 51097) = rho 51095 + rho 51096 := by
    linear_combination r6709
  have ha5 : rho 51099 * (1 - rho 51097) = rho 51094 - rho 51095 - rho 51096 := by
    linear_combination r6710
  have haddx :
      rho 51098 * (1 + 3021 * (rho 51093 * seg52Out0AccX122 rho) * (rho 51092 * seg52Out0AccY122 rho)) =
        rho 51093 * seg52Out0AccX122 rho + rho 51092 * seg52Out0AccY122 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51099 * (1 - 3021 * (rho 51093 * seg52Out0AccX122 rho) * (rho 51092 * seg52Out0AccY122 rho)) =
        (-1) * (rho 51093 * seg52Out0AccX122 rho) - rho 51092 * seg52Out0AccY122 rho +
          (seg52Out0AccY122 rho - seg52Out0AccX122 rho * (-1)) * (rho 51092 + rho 51093) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51099 * (1 - rho 51097) = rho 51094 - rho 51095 - rho 51096 := ha5
      _ = (-1) * rho 51095 - rho 51096 + (seg52Out0AccY122 rho - seg52Out0AccX122 rho * (-1)) *
          (rho 51092 + rho 51093) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX123 rho = seg52Out0AccX122 rho - Bool.toZMod bit * (seg52Out0AccX122 rho - rho 51098) := by
    have hd : rho 51100 = Bool.toZMod bit * (rho 51098 - seg52Out0AccX122 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX122
      linear_combination -r6711
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY123 rho = seg52Out0AccY122 rho - Bool.toZMod bit * (seg52Out0AccY122 rho - rho 51099) := by
    have hd : rho 51101 = Bool.toZMod bit * (rho 51099 - seg52Out0AccY122 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY122
      linear_combination -r6712
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51092 * rho 51093 = rho 51102 := by linear_combination r6713
  have hd1 : rho 51092 * rho 51092 = rho 51103 := by linear_combination r6714
  have hd2 : rho 51093 * rho 51093 = rho 51104 := by linear_combination r6715
  have hd3 : rho 51105 * (rho 51093 * rho 51093 + rho 51092 * rho 51092 * (-1)) =
      2 * (rho 51092 * rho 51093) := by
    rw [hd0, hd1, hd2]
    linear_combination r6716
  have hd4 : rho 51106 * (2 - (rho 51093 * rho 51093 + rho 51092 * rho 51092 * (-1))) =
      rho 51093 * rho 51093 - rho 51092 * rho 51092 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6717
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX122 rho, seg52Out0AccY122 rho⟩ ⟨rho 51092, rho 51093⟩
    ⟨rho 51098, rho 51099⟩ ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 51105, rho 51106⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6718 rho ∧ Seg52.relationRow6719 rho ∧ Seg52.relationRow6720 rho ∧ Seg52.relationRow6721 rho ∧ Seg52.relationRow6722 rho ∧ Seg52.relationRow6723 rho ∧ Seg52.relationRow6724 rho ∧ Seg52.relationRow6725 rho ∧ Seg52.relationRow6726 rho ∧ Seg52.relationRow6727 rho ∧ Seg52.relationRow6728 rho ∧ Seg52.relationRow6729 rho ∧ Seg52.relationRow6730 rho := by
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

    _, _, _, p83, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart83 at p83

  rcases p83 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6718, r6719⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨r6720, r6721, r6722, r6723, r6724, r6725, r6726, r6727, r6728, r6729, r6730, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6718, r6719, r6720, r6721, r6722, r6723, r6724, r6725, r6726, r6727, r6728, r6729, r6730⟩

theorem seg52Out0_rung123 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49509 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51105, rho 51106⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 51105, rho 51106⟩
        ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 51118, rho 51119⟩ := by
  obtain ⟨r6718, r6719, r6720, r6721, r6722, r6723, r6724, r6725, r6726, r6727, r6728, r6729, r6730⟩ := seg52Out0_rows123 rho h
  unfold Seg52.relationRow6718 at r6718

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6718

  unfold Seg52.relationRow6719 at r6719

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6719

  unfold Seg52.relationRow6720 at r6720

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6720

  unfold Seg52.relationRow6721 at r6721

  unfold Seg52.relationRow6722 at r6722

  unfold Seg52.relationRow6723 at r6723

  unfold Seg52.relationRow6724 at r6724

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6724

  unfold Seg52.relationRow6725 at r6725

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6725

  unfold Seg52.relationRow6726 at r6726

  unfold Seg52.relationRow6727 at r6727

  unfold Seg52.relationRow6728 at r6728

  unfold Seg52.relationRow6729 at r6729

  unfold Seg52.relationRow6730 at r6730

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX124 rho = seg52Out0AccX123 rho + rho 51113 := by
    unfold seg52Out0AccX124 seg52Out0AccX123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 123]

    ring

  have hnexty : seg52Out0AccY124 rho = seg52Out0AccY123 rho + rho 51114 := by
    unfold seg52Out0AccY124 seg52Out0AccY123
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 123]

    ring

  have ha0 : (rho 51105 + rho 51106) * (seg52Out0AccX123 rho + seg52Out0AccY123 rho) = rho 51107 := by
    unfold seg52Out0AccX123 seg52Out0AccY123
    linear_combination r6718
  have ha1 : rho 51106 * seg52Out0AccX123 rho = rho 51108 := by
    unfold seg52Out0AccX123
    linear_combination r6719
  have ha2 : rho 51105 * seg52Out0AccY123 rho = rho 51109 := by
    unfold seg52Out0AccY123
    linear_combination r6720
  have ha3 : 3021 * rho 51108 * rho 51109 = rho 51110 := by
    linear_combination r6721
  have ha4 : rho 51111 * (1 + rho 51110) = rho 51108 + rho 51109 := by
    linear_combination r6722
  have ha5 : rho 51112 * (1 - rho 51110) = rho 51107 - rho 51108 - rho 51109 := by
    linear_combination r6723
  have haddx :
      rho 51111 * (1 + 3021 * (rho 51106 * seg52Out0AccX123 rho) * (rho 51105 * seg52Out0AccY123 rho)) =
        rho 51106 * seg52Out0AccX123 rho + rho 51105 * seg52Out0AccY123 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51112 * (1 - 3021 * (rho 51106 * seg52Out0AccX123 rho) * (rho 51105 * seg52Out0AccY123 rho)) =
        (-1) * (rho 51106 * seg52Out0AccX123 rho) - rho 51105 * seg52Out0AccY123 rho +
          (seg52Out0AccY123 rho - seg52Out0AccX123 rho * (-1)) * (rho 51105 + rho 51106) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51112 * (1 - rho 51110) = rho 51107 - rho 51108 - rho 51109 := ha5
      _ = (-1) * rho 51108 - rho 51109 + (seg52Out0AccY123 rho - seg52Out0AccX123 rho * (-1)) *
          (rho 51105 + rho 51106) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX124 rho = seg52Out0AccX123 rho - Bool.toZMod bit * (seg52Out0AccX123 rho - rho 51111) := by
    have hd : rho 51113 = Bool.toZMod bit * (rho 51111 - seg52Out0AccX123 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX123
      linear_combination -r6724
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY124 rho = seg52Out0AccY123 rho - Bool.toZMod bit * (seg52Out0AccY123 rho - rho 51112) := by
    have hd : rho 51114 = Bool.toZMod bit * (rho 51112 - seg52Out0AccY123 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY123
      linear_combination -r6725
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51105 * rho 51106 = rho 51115 := by linear_combination r6726
  have hd1 : rho 51105 * rho 51105 = rho 51116 := by linear_combination r6727
  have hd2 : rho 51106 * rho 51106 = rho 51117 := by linear_combination r6728
  have hd3 : rho 51118 * (rho 51106 * rho 51106 + rho 51105 * rho 51105 * (-1)) =
      2 * (rho 51105 * rho 51106) := by
    rw [hd0, hd1, hd2]
    linear_combination r6729
  have hd4 : rho 51119 * (2 - (rho 51106 * rho 51106 + rho 51105 * rho 51105 * (-1))) =
      rho 51106 * rho 51106 - rho 51105 * rho 51105 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6730
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX123 rho, seg52Out0AccY123 rho⟩ ⟨rho 51105, rho 51106⟩
    ⟨rho 51111, rho 51112⟩ ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 51118, rho 51119⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6731 rho ∧ Seg52.relationRow6732 rho ∧ Seg52.relationRow6733 rho ∧ Seg52.relationRow6734 rho ∧ Seg52.relationRow6735 rho ∧ Seg52.relationRow6736 rho ∧ Seg52.relationRow6737 rho ∧ Seg52.relationRow6738 rho ∧ Seg52.relationRow6739 rho ∧ Seg52.relationRow6740 rho ∧ Seg52.relationRow6741 rho ∧ Seg52.relationRow6742 rho ∧ Seg52.relationRow6743 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, r6731, r6732, r6733, r6734, r6735, r6736, r6737, r6738, r6739, r6740, r6741, r6742, r6743, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6731, r6732, r6733, r6734, r6735, r6736, r6737, r6738, r6739, r6740, r6741, r6742, r6743⟩

theorem seg52Out0_rung124 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49510 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51118, rho 51119⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 51118, rho 51119⟩
        ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 51131, rho 51132⟩ := by
  obtain ⟨r6731, r6732, r6733, r6734, r6735, r6736, r6737, r6738, r6739, r6740, r6741, r6742, r6743⟩ := seg52Out0_rows124 rho h
  unfold Seg52.relationRow6731 at r6731

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6731

  unfold Seg52.relationRow6732 at r6732

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6732

  unfold Seg52.relationRow6733 at r6733

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6733

  unfold Seg52.relationRow6734 at r6734

  unfold Seg52.relationRow6735 at r6735

  unfold Seg52.relationRow6736 at r6736

  unfold Seg52.relationRow6737 at r6737

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6737

  unfold Seg52.relationRow6738 at r6738

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6738

  unfold Seg52.relationRow6739 at r6739

  unfold Seg52.relationRow6740 at r6740

  unfold Seg52.relationRow6741 at r6741

  unfold Seg52.relationRow6742 at r6742

  unfold Seg52.relationRow6743 at r6743

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX125 rho = seg52Out0AccX124 rho + rho 51126 := by
    unfold seg52Out0AccX125 seg52Out0AccX124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 124]

    ring

  have hnexty : seg52Out0AccY125 rho = seg52Out0AccY124 rho + rho 51127 := by
    unfold seg52Out0AccY125 seg52Out0AccY124
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 124]

    ring

  have ha0 : (rho 51118 + rho 51119) * (seg52Out0AccX124 rho + seg52Out0AccY124 rho) = rho 51120 := by
    unfold seg52Out0AccX124 seg52Out0AccY124
    linear_combination r6731
  have ha1 : rho 51119 * seg52Out0AccX124 rho = rho 51121 := by
    unfold seg52Out0AccX124
    linear_combination r6732
  have ha2 : rho 51118 * seg52Out0AccY124 rho = rho 51122 := by
    unfold seg52Out0AccY124
    linear_combination r6733
  have ha3 : 3021 * rho 51121 * rho 51122 = rho 51123 := by
    linear_combination r6734
  have ha4 : rho 51124 * (1 + rho 51123) = rho 51121 + rho 51122 := by
    linear_combination r6735
  have ha5 : rho 51125 * (1 - rho 51123) = rho 51120 - rho 51121 - rho 51122 := by
    linear_combination r6736
  have haddx :
      rho 51124 * (1 + 3021 * (rho 51119 * seg52Out0AccX124 rho) * (rho 51118 * seg52Out0AccY124 rho)) =
        rho 51119 * seg52Out0AccX124 rho + rho 51118 * seg52Out0AccY124 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51125 * (1 - 3021 * (rho 51119 * seg52Out0AccX124 rho) * (rho 51118 * seg52Out0AccY124 rho)) =
        (-1) * (rho 51119 * seg52Out0AccX124 rho) - rho 51118 * seg52Out0AccY124 rho +
          (seg52Out0AccY124 rho - seg52Out0AccX124 rho * (-1)) * (rho 51118 + rho 51119) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51125 * (1 - rho 51123) = rho 51120 - rho 51121 - rho 51122 := ha5
      _ = (-1) * rho 51121 - rho 51122 + (seg52Out0AccY124 rho - seg52Out0AccX124 rho * (-1)) *
          (rho 51118 + rho 51119) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX125 rho = seg52Out0AccX124 rho - Bool.toZMod bit * (seg52Out0AccX124 rho - rho 51124) := by
    have hd : rho 51126 = Bool.toZMod bit * (rho 51124 - seg52Out0AccX124 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX124
      linear_combination -r6737
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY125 rho = seg52Out0AccY124 rho - Bool.toZMod bit * (seg52Out0AccY124 rho - rho 51125) := by
    have hd : rho 51127 = Bool.toZMod bit * (rho 51125 - seg52Out0AccY124 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY124
      linear_combination -r6738
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51118 * rho 51119 = rho 51128 := by linear_combination r6739
  have hd1 : rho 51118 * rho 51118 = rho 51129 := by linear_combination r6740
  have hd2 : rho 51119 * rho 51119 = rho 51130 := by linear_combination r6741
  have hd3 : rho 51131 * (rho 51119 * rho 51119 + rho 51118 * rho 51118 * (-1)) =
      2 * (rho 51118 * rho 51119) := by
    rw [hd0, hd1, hd2]
    linear_combination r6742
  have hd4 : rho 51132 * (2 - (rho 51119 * rho 51119 + rho 51118 * rho 51118 * (-1))) =
      rho 51119 * rho 51119 - rho 51118 * rho 51118 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6743
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX124 rho, seg52Out0AccY124 rho⟩ ⟨rho 51118, rho 51119⟩
    ⟨rho 51124, rho 51125⟩ ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 51131, rho 51132⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6744 rho ∧ Seg52.relationRow6745 rho ∧ Seg52.relationRow6746 rho ∧ Seg52.relationRow6747 rho ∧ Seg52.relationRow6748 rho ∧ Seg52.relationRow6749 rho ∧ Seg52.relationRow6750 rho ∧ Seg52.relationRow6751 rho ∧ Seg52.relationRow6752 rho ∧ Seg52.relationRow6753 rho ∧ Seg52.relationRow6754 rho ∧ Seg52.relationRow6755 rho ∧ Seg52.relationRow6756 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6744, r6745, r6746, r6747, r6748, r6749, r6750, r6751, r6752, r6753, r6754, r6755, r6756, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6744, r6745, r6746, r6747, r6748, r6749, r6750, r6751, r6752, r6753, r6754, r6755, r6756⟩

theorem seg52Out0_rung125 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49511 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51131, rho 51132⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 51131, rho 51132⟩
        ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 51144, rho 51145⟩ := by
  obtain ⟨r6744, r6745, r6746, r6747, r6748, r6749, r6750, r6751, r6752, r6753, r6754, r6755, r6756⟩ := seg52Out0_rows125 rho h
  unfold Seg52.relationRow6744 at r6744

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6744

  unfold Seg52.relationRow6745 at r6745

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6745

  unfold Seg52.relationRow6746 at r6746

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6746

  unfold Seg52.relationRow6747 at r6747

  unfold Seg52.relationRow6748 at r6748

  unfold Seg52.relationRow6749 at r6749

  unfold Seg52.relationRow6750 at r6750

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6750

  unfold Seg52.relationRow6751 at r6751

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6751

  unfold Seg52.relationRow6752 at r6752

  unfold Seg52.relationRow6753 at r6753

  unfold Seg52.relationRow6754 at r6754

  unfold Seg52.relationRow6755 at r6755

  unfold Seg52.relationRow6756 at r6756

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX126 rho = seg52Out0AccX125 rho + rho 51139 := by
    unfold seg52Out0AccX126 seg52Out0AccX125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 125]

    ring

  have hnexty : seg52Out0AccY126 rho = seg52Out0AccY125 rho + rho 51140 := by
    unfold seg52Out0AccY126 seg52Out0AccY125
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 125]

    ring

  have ha0 : (rho 51131 + rho 51132) * (seg52Out0AccX125 rho + seg52Out0AccY125 rho) = rho 51133 := by
    unfold seg52Out0AccX125 seg52Out0AccY125
    linear_combination r6744
  have ha1 : rho 51132 * seg52Out0AccX125 rho = rho 51134 := by
    unfold seg52Out0AccX125
    linear_combination r6745
  have ha2 : rho 51131 * seg52Out0AccY125 rho = rho 51135 := by
    unfold seg52Out0AccY125
    linear_combination r6746
  have ha3 : 3021 * rho 51134 * rho 51135 = rho 51136 := by
    linear_combination r6747
  have ha4 : rho 51137 * (1 + rho 51136) = rho 51134 + rho 51135 := by
    linear_combination r6748
  have ha5 : rho 51138 * (1 - rho 51136) = rho 51133 - rho 51134 - rho 51135 := by
    linear_combination r6749
  have haddx :
      rho 51137 * (1 + 3021 * (rho 51132 * seg52Out0AccX125 rho) * (rho 51131 * seg52Out0AccY125 rho)) =
        rho 51132 * seg52Out0AccX125 rho + rho 51131 * seg52Out0AccY125 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51138 * (1 - 3021 * (rho 51132 * seg52Out0AccX125 rho) * (rho 51131 * seg52Out0AccY125 rho)) =
        (-1) * (rho 51132 * seg52Out0AccX125 rho) - rho 51131 * seg52Out0AccY125 rho +
          (seg52Out0AccY125 rho - seg52Out0AccX125 rho * (-1)) * (rho 51131 + rho 51132) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51138 * (1 - rho 51136) = rho 51133 - rho 51134 - rho 51135 := ha5
      _ = (-1) * rho 51134 - rho 51135 + (seg52Out0AccY125 rho - seg52Out0AccX125 rho * (-1)) *
          (rho 51131 + rho 51132) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX126 rho = seg52Out0AccX125 rho - Bool.toZMod bit * (seg52Out0AccX125 rho - rho 51137) := by
    have hd : rho 51139 = Bool.toZMod bit * (rho 51137 - seg52Out0AccX125 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX125
      linear_combination -r6750
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY126 rho = seg52Out0AccY125 rho - Bool.toZMod bit * (seg52Out0AccY125 rho - rho 51138) := by
    have hd : rho 51140 = Bool.toZMod bit * (rho 51138 - seg52Out0AccY125 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY125
      linear_combination -r6751
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51131 * rho 51132 = rho 51141 := by linear_combination r6752
  have hd1 : rho 51131 * rho 51131 = rho 51142 := by linear_combination r6753
  have hd2 : rho 51132 * rho 51132 = rho 51143 := by linear_combination r6754
  have hd3 : rho 51144 * (rho 51132 * rho 51132 + rho 51131 * rho 51131 * (-1)) =
      2 * (rho 51131 * rho 51132) := by
    rw [hd0, hd1, hd2]
    linear_combination r6755
  have hd4 : rho 51145 * (2 - (rho 51132 * rho 51132 + rho 51131 * rho 51131 * (-1))) =
      rho 51132 * rho 51132 - rho 51131 * rho 51131 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6756
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX125 rho, seg52Out0AccY125 rho⟩ ⟨rho 51131, rho 51132⟩
    ⟨rho 51137, rho 51138⟩ ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 51144, rho 51145⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6757 rho ∧ Seg52.relationRow6758 rho ∧ Seg52.relationRow6759 rho ∧ Seg52.relationRow6760 rho ∧ Seg52.relationRow6761 rho ∧ Seg52.relationRow6762 rho ∧ Seg52.relationRow6763 rho ∧ Seg52.relationRow6764 rho ∧ Seg52.relationRow6765 rho ∧ Seg52.relationRow6766 rho ∧ Seg52.relationRow6767 rho ∧ Seg52.relationRow6768 rho ∧ Seg52.relationRow6769 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6757, r6758, r6759, r6760, r6761, r6762, r6763, r6764, r6765, r6766, r6767, r6768, r6769, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6757, r6758, r6759, r6760, r6761, r6762, r6763, r6764, r6765, r6766, r6767, r6768, r6769⟩

theorem seg52Out0_rung126 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49512 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51144, rho 51145⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 51144, rho 51145⟩
        ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 51157, rho 51158⟩ := by
  obtain ⟨r6757, r6758, r6759, r6760, r6761, r6762, r6763, r6764, r6765, r6766, r6767, r6768, r6769⟩ := seg52Out0_rows126 rho h
  unfold Seg52.relationRow6757 at r6757

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6757

  unfold Seg52.relationRow6758 at r6758

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6758

  unfold Seg52.relationRow6759 at r6759

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6759

  unfold Seg52.relationRow6760 at r6760

  unfold Seg52.relationRow6761 at r6761

  unfold Seg52.relationRow6762 at r6762

  unfold Seg52.relationRow6763 at r6763

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6763

  unfold Seg52.relationRow6764 at r6764

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6764

  unfold Seg52.relationRow6765 at r6765

  unfold Seg52.relationRow6766 at r6766

  unfold Seg52.relationRow6767 at r6767

  unfold Seg52.relationRow6768 at r6768

  unfold Seg52.relationRow6769 at r6769

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX127 rho = seg52Out0AccX126 rho + rho 51152 := by
    unfold seg52Out0AccX127 seg52Out0AccX126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 126]

    ring

  have hnexty : seg52Out0AccY127 rho = seg52Out0AccY126 rho + rho 51153 := by
    unfold seg52Out0AccY127 seg52Out0AccY126
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 126]

    ring

  have ha0 : (rho 51144 + rho 51145) * (seg52Out0AccX126 rho + seg52Out0AccY126 rho) = rho 51146 := by
    unfold seg52Out0AccX126 seg52Out0AccY126
    linear_combination r6757
  have ha1 : rho 51145 * seg52Out0AccX126 rho = rho 51147 := by
    unfold seg52Out0AccX126
    linear_combination r6758
  have ha2 : rho 51144 * seg52Out0AccY126 rho = rho 51148 := by
    unfold seg52Out0AccY126
    linear_combination r6759
  have ha3 : 3021 * rho 51147 * rho 51148 = rho 51149 := by
    linear_combination r6760
  have ha4 : rho 51150 * (1 + rho 51149) = rho 51147 + rho 51148 := by
    linear_combination r6761
  have ha5 : rho 51151 * (1 - rho 51149) = rho 51146 - rho 51147 - rho 51148 := by
    linear_combination r6762
  have haddx :
      rho 51150 * (1 + 3021 * (rho 51145 * seg52Out0AccX126 rho) * (rho 51144 * seg52Out0AccY126 rho)) =
        rho 51145 * seg52Out0AccX126 rho + rho 51144 * seg52Out0AccY126 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51151 * (1 - 3021 * (rho 51145 * seg52Out0AccX126 rho) * (rho 51144 * seg52Out0AccY126 rho)) =
        (-1) * (rho 51145 * seg52Out0AccX126 rho) - rho 51144 * seg52Out0AccY126 rho +
          (seg52Out0AccY126 rho - seg52Out0AccX126 rho * (-1)) * (rho 51144 + rho 51145) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51151 * (1 - rho 51149) = rho 51146 - rho 51147 - rho 51148 := ha5
      _ = (-1) * rho 51147 - rho 51148 + (seg52Out0AccY126 rho - seg52Out0AccX126 rho * (-1)) *
          (rho 51144 + rho 51145) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX127 rho = seg52Out0AccX126 rho - Bool.toZMod bit * (seg52Out0AccX126 rho - rho 51150) := by
    have hd : rho 51152 = Bool.toZMod bit * (rho 51150 - seg52Out0AccX126 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX126
      linear_combination -r6763
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY127 rho = seg52Out0AccY126 rho - Bool.toZMod bit * (seg52Out0AccY126 rho - rho 51151) := by
    have hd : rho 51153 = Bool.toZMod bit * (rho 51151 - seg52Out0AccY126 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY126
      linear_combination -r6764
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51144 * rho 51145 = rho 51154 := by linear_combination r6765
  have hd1 : rho 51144 * rho 51144 = rho 51155 := by linear_combination r6766
  have hd2 : rho 51145 * rho 51145 = rho 51156 := by linear_combination r6767
  have hd3 : rho 51157 * (rho 51145 * rho 51145 + rho 51144 * rho 51144 * (-1)) =
      2 * (rho 51144 * rho 51145) := by
    rw [hd0, hd1, hd2]
    linear_combination r6768
  have hd4 : rho 51158 * (2 - (rho 51145 * rho 51145 + rho 51144 * rho 51144 * (-1))) =
      rho 51145 * rho 51145 - rho 51144 * rho 51144 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6769
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX126 rho, seg52Out0AccY126 rho⟩ ⟨rho 51144, rho 51145⟩
    ⟨rho 51150, rho 51151⟩ ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 51157, rho 51158⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6770 rho ∧ Seg52.relationRow6771 rho ∧ Seg52.relationRow6772 rho ∧ Seg52.relationRow6773 rho ∧ Seg52.relationRow6774 rho ∧ Seg52.relationRow6775 rho ∧ Seg52.relationRow6776 rho ∧ Seg52.relationRow6777 rho ∧ Seg52.relationRow6778 rho ∧ Seg52.relationRow6779 rho ∧ Seg52.relationRow6780 rho ∧ Seg52.relationRow6781 rho ∧ Seg52.relationRow6782 rho := by
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

    _, _, _, _, p84, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6770, r6771, r6772, r6773, r6774, r6775, r6776, r6777, r6778, r6779, r6780, r6781, r6782, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6770, r6771, r6772, r6773, r6774, r6775, r6776, r6777, r6778, r6779, r6780, r6781, r6782⟩

theorem seg52Out0_rung127 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49513 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 51157, rho 51158⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 51157, rho 51158⟩
        ⟨seg52Out0AccX128 rho, seg52Out0AccY128 rho⟩ ⟨rho 51170, rho 51171⟩ := by
  obtain ⟨r6770, r6771, r6772, r6773, r6774, r6775, r6776, r6777, r6778, r6779, r6780, r6781, r6782⟩ := seg52Out0_rows127 rho h
  unfold Seg52.relationRow6770 at r6770

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6770

  unfold Seg52.relationRow6771 at r6771

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6771

  unfold Seg52.relationRow6772 at r6772

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6772

  unfold Seg52.relationRow6773 at r6773

  unfold Seg52.relationRow6774 at r6774

  unfold Seg52.relationRow6775 at r6775

  unfold Seg52.relationRow6776 at r6776

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6776

  unfold Seg52.relationRow6777 at r6777

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6777

  unfold Seg52.relationRow6778 at r6778

  unfold Seg52.relationRow6779 at r6779

  unfold Seg52.relationRow6780 at r6780

  unfold Seg52.relationRow6781 at r6781

  unfold Seg52.relationRow6782 at r6782

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX128 rho = seg52Out0AccX127 rho + rho 51165 := by
    unfold seg52Out0AccX128 seg52Out0AccX127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 127]

    ring

  have hnexty : seg52Out0AccY128 rho = seg52Out0AccY127 rho + rho 51166 := by
    unfold seg52Out0AccY128 seg52Out0AccY127
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 127]

    ring

  have ha0 : (rho 51157 + rho 51158) * (seg52Out0AccX127 rho + seg52Out0AccY127 rho) = rho 51159 := by
    unfold seg52Out0AccX127 seg52Out0AccY127
    linear_combination r6770
  have ha1 : rho 51158 * seg52Out0AccX127 rho = rho 51160 := by
    unfold seg52Out0AccX127
    linear_combination r6771
  have ha2 : rho 51157 * seg52Out0AccY127 rho = rho 51161 := by
    unfold seg52Out0AccY127
    linear_combination r6772
  have ha3 : 3021 * rho 51160 * rho 51161 = rho 51162 := by
    linear_combination r6773
  have ha4 : rho 51163 * (1 + rho 51162) = rho 51160 + rho 51161 := by
    linear_combination r6774
  have ha5 : rho 51164 * (1 - rho 51162) = rho 51159 - rho 51160 - rho 51161 := by
    linear_combination r6775
  have haddx :
      rho 51163 * (1 + 3021 * (rho 51158 * seg52Out0AccX127 rho) * (rho 51157 * seg52Out0AccY127 rho)) =
        rho 51158 * seg52Out0AccX127 rho + rho 51157 * seg52Out0AccY127 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 51164 * (1 - 3021 * (rho 51158 * seg52Out0AccX127 rho) * (rho 51157 * seg52Out0AccY127 rho)) =
        (-1) * (rho 51158 * seg52Out0AccX127 rho) - rho 51157 * seg52Out0AccY127 rho +
          (seg52Out0AccY127 rho - seg52Out0AccX127 rho * (-1)) * (rho 51157 + rho 51158) := by
    rw [ha1, ha2, ha3]
    calc
      rho 51164 * (1 - rho 51162) = rho 51159 - rho 51160 - rho 51161 := ha5
      _ = (-1) * rho 51160 - rho 51161 + (seg52Out0AccY127 rho - seg52Out0AccX127 rho * (-1)) *
          (rho 51157 + rho 51158) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX128 rho = seg52Out0AccX127 rho - Bool.toZMod bit * (seg52Out0AccX127 rho - rho 51163) := by
    have hd : rho 51165 = Bool.toZMod bit * (rho 51163 - seg52Out0AccX127 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX127
      linear_combination -r6776
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY128 rho = seg52Out0AccY127 rho - Bool.toZMod bit * (seg52Out0AccY127 rho - rho 51164) := by
    have hd : rho 51166 = Bool.toZMod bit * (rho 51164 - seg52Out0AccY127 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY127
      linear_combination -r6777
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 51157 * rho 51158 = rho 51167 := by linear_combination r6778
  have hd1 : rho 51157 * rho 51157 = rho 51168 := by linear_combination r6779
  have hd2 : rho 51158 * rho 51158 = rho 51169 := by linear_combination r6780
  have hd3 : rho 51170 * (rho 51158 * rho 51158 + rho 51157 * rho 51157 * (-1)) =
      2 * (rho 51157 * rho 51158) := by
    rw [hd0, hd1, hd2]
    linear_combination r6781
  have hd4 : rho 51171 * (2 - (rho 51158 * rho 51158 + rho 51157 * rho 51157 * (-1))) =
      rho 51158 * rho 51158 - rho 51157 * rho 51157 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6782
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX127 rho, seg52Out0AccY127 rho⟩ ⟨rho 51157, rho 51158⟩
    ⟨rho 51163, rho 51164⟩ ⟨seg52Out0AccX128 rho, seg52Out0AccY128 rho⟩ ⟨rho 51170, rho 51171⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c11 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 121 ≤ i → i < 128 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung121 rho h bits[121]! (hbitAt 121 (by omega)) hacc hcur
  · exact seg52Out0_rung122 rho h bits[122]! (hbitAt 122 (by omega)) hacc hcur
  · exact seg52Out0_rung123 rho h bits[123]! (hbitAt 123 (by omega)) hacc hcur
  · exact seg52Out0_rung124 rho h bits[124]! (hbitAt 124 (by omega)) hacc hcur
  · exact seg52Out0_rung125 rho h bits[125]! (hbitAt 125 (by omega)) hacc hcur
  · exact seg52Out0_rung126 rho h bits[126]! (hbitAt 126 (by omega)) hacc hcur
  · exact seg52Out0_rung127 rho h bits[127]! (hbitAt 127 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
