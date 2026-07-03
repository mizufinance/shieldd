import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5834 rho ∧ Seg52.relationRow5835 rho ∧ Seg52.relationRow5836 rho ∧ Seg52.relationRow5837 rho ∧ Seg52.relationRow5838 rho ∧ Seg52.relationRow5839 rho ∧ Seg52.relationRow5840 rho ∧ Seg52.relationRow5841 rho ∧ Seg52.relationRow5842 rho ∧ Seg52.relationRow5843 rho ∧ Seg52.relationRow5844 rho ∧ Seg52.relationRow5845 rho ∧ Seg52.relationRow5846 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p72, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart72 at p72

  rcases p72 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5834, r5835, r5836, r5837, r5838, r5839⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5834, r5835, r5836, r5837, r5838, r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846⟩

theorem seg52Out0_rung55 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49441 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50221, rho 50222⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 50221, rho 50222⟩
        ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 50234, rho 50235⟩ := by
  obtain ⟨r5834, r5835, r5836, r5837, r5838, r5839, r5840, r5841, r5842, r5843, r5844, r5845, r5846⟩ := seg52Out0_rows55 rho h
  unfold Seg52.relationRow5834 at r5834

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5834

  unfold Seg52.relationRow5835 at r5835

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5835

  unfold Seg52.relationRow5836 at r5836

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5836

  unfold Seg52.relationRow5837 at r5837

  unfold Seg52.relationRow5838 at r5838

  unfold Seg52.relationRow5839 at r5839

  unfold Seg52.relationRow5840 at r5840

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5840

  unfold Seg52.relationRow5841 at r5841

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5841

  unfold Seg52.relationRow5842 at r5842

  unfold Seg52.relationRow5843 at r5843

  unfold Seg52.relationRow5844 at r5844

  unfold Seg52.relationRow5845 at r5845

  unfold Seg52.relationRow5846 at r5846

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX56 rho = seg52Out0AccX55 rho + rho 50229 := by
    unfold seg52Out0AccX56 seg52Out0AccX55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 55]

    ring

  have hnexty : seg52Out0AccY56 rho = seg52Out0AccY55 rho + rho 50230 := by
    unfold seg52Out0AccY56 seg52Out0AccY55
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 55]

    ring

  have ha0 : (rho 50221 + rho 50222) * (seg52Out0AccX55 rho + seg52Out0AccY55 rho) = rho 50223 := by
    unfold seg52Out0AccX55 seg52Out0AccY55
    linear_combination r5834
  have ha1 : rho 50222 * seg52Out0AccX55 rho = rho 50224 := by
    unfold seg52Out0AccX55
    linear_combination r5835
  have ha2 : rho 50221 * seg52Out0AccY55 rho = rho 50225 := by
    unfold seg52Out0AccY55
    linear_combination r5836
  have ha3 : 3021 * rho 50224 * rho 50225 = rho 50226 := by
    linear_combination r5837
  have ha4 : rho 50227 * (1 + rho 50226) = rho 50224 + rho 50225 := by
    linear_combination r5838
  have ha5 : rho 50228 * (1 - rho 50226) = rho 50223 - rho 50224 - rho 50225 := by
    linear_combination r5839
  have haddx :
      rho 50227 * (1 + 3021 * (rho 50222 * seg52Out0AccX55 rho) * (rho 50221 * seg52Out0AccY55 rho)) =
        rho 50222 * seg52Out0AccX55 rho + rho 50221 * seg52Out0AccY55 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50228 * (1 - 3021 * (rho 50222 * seg52Out0AccX55 rho) * (rho 50221 * seg52Out0AccY55 rho)) =
        (-1) * (rho 50222 * seg52Out0AccX55 rho) - rho 50221 * seg52Out0AccY55 rho +
          (seg52Out0AccY55 rho - seg52Out0AccX55 rho * (-1)) * (rho 50221 + rho 50222) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50228 * (1 - rho 50226) = rho 50223 - rho 50224 - rho 50225 := ha5
      _ = (-1) * rho 50224 - rho 50225 + (seg52Out0AccY55 rho - seg52Out0AccX55 rho * (-1)) *
          (rho 50221 + rho 50222) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX56 rho = seg52Out0AccX55 rho - Bool.toZMod bit * (seg52Out0AccX55 rho - rho 50227) := by
    have hd : rho 50229 = Bool.toZMod bit * (rho 50227 - seg52Out0AccX55 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX55
      linear_combination -r5840
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY56 rho = seg52Out0AccY55 rho - Bool.toZMod bit * (seg52Out0AccY55 rho - rho 50228) := by
    have hd : rho 50230 = Bool.toZMod bit * (rho 50228 - seg52Out0AccY55 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY55
      linear_combination -r5841
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50221 * rho 50222 = rho 50231 := by linear_combination r5842
  have hd1 : rho 50221 * rho 50221 = rho 50232 := by linear_combination r5843
  have hd2 : rho 50222 * rho 50222 = rho 50233 := by linear_combination r5844
  have hd3 : rho 50234 * (rho 50222 * rho 50222 + rho 50221 * rho 50221 * (-1)) =
      2 * (rho 50221 * rho 50222) := by
    rw [hd0, hd1, hd2]
    linear_combination r5845
  have hd4 : rho 50235 * (2 - (rho 50222 * rho 50222 + rho 50221 * rho 50221 * (-1))) =
      rho 50222 * rho 50222 - rho 50221 * rho 50221 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5846
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX55 rho, seg52Out0AccY55 rho⟩ ⟨rho 50221, rho 50222⟩
    ⟨rho 50227, rho 50228⟩ ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 50234, rho 50235⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5847 rho ∧ Seg52.relationRow5848 rho ∧ Seg52.relationRow5849 rho ∧ Seg52.relationRow5850 rho ∧ Seg52.relationRow5851 rho ∧ Seg52.relationRow5852 rho ∧ Seg52.relationRow5853 rho ∧ Seg52.relationRow5854 rho ∧ Seg52.relationRow5855 rho ∧ Seg52.relationRow5856 rho ∧ Seg52.relationRow5857 rho ∧ Seg52.relationRow5858 rho ∧ Seg52.relationRow5859 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, r5857, r5858, r5859, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, r5857, r5858, r5859⟩

theorem seg52Out0_rung56 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49442 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50234, rho 50235⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 50234, rho 50235⟩
        ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 50247, rho 50248⟩ := by
  obtain ⟨r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, r5857, r5858, r5859⟩ := seg52Out0_rows56 rho h
  unfold Seg52.relationRow5847 at r5847

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5847

  unfold Seg52.relationRow5848 at r5848

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5848

  unfold Seg52.relationRow5849 at r5849

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5849

  unfold Seg52.relationRow5850 at r5850

  unfold Seg52.relationRow5851 at r5851

  unfold Seg52.relationRow5852 at r5852

  unfold Seg52.relationRow5853 at r5853

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5853

  unfold Seg52.relationRow5854 at r5854

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5854

  unfold Seg52.relationRow5855 at r5855

  unfold Seg52.relationRow5856 at r5856

  unfold Seg52.relationRow5857 at r5857

  unfold Seg52.relationRow5858 at r5858

  unfold Seg52.relationRow5859 at r5859

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX57 rho = seg52Out0AccX56 rho + rho 50242 := by
    unfold seg52Out0AccX57 seg52Out0AccX56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 56]

    ring

  have hnexty : seg52Out0AccY57 rho = seg52Out0AccY56 rho + rho 50243 := by
    unfold seg52Out0AccY57 seg52Out0AccY56
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 56]

    ring

  have ha0 : (rho 50234 + rho 50235) * (seg52Out0AccX56 rho + seg52Out0AccY56 rho) = rho 50236 := by
    unfold seg52Out0AccX56 seg52Out0AccY56
    linear_combination r5847
  have ha1 : rho 50235 * seg52Out0AccX56 rho = rho 50237 := by
    unfold seg52Out0AccX56
    linear_combination r5848
  have ha2 : rho 50234 * seg52Out0AccY56 rho = rho 50238 := by
    unfold seg52Out0AccY56
    linear_combination r5849
  have ha3 : 3021 * rho 50237 * rho 50238 = rho 50239 := by
    linear_combination r5850
  have ha4 : rho 50240 * (1 + rho 50239) = rho 50237 + rho 50238 := by
    linear_combination r5851
  have ha5 : rho 50241 * (1 - rho 50239) = rho 50236 - rho 50237 - rho 50238 := by
    linear_combination r5852
  have haddx :
      rho 50240 * (1 + 3021 * (rho 50235 * seg52Out0AccX56 rho) * (rho 50234 * seg52Out0AccY56 rho)) =
        rho 50235 * seg52Out0AccX56 rho + rho 50234 * seg52Out0AccY56 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50241 * (1 - 3021 * (rho 50235 * seg52Out0AccX56 rho) * (rho 50234 * seg52Out0AccY56 rho)) =
        (-1) * (rho 50235 * seg52Out0AccX56 rho) - rho 50234 * seg52Out0AccY56 rho +
          (seg52Out0AccY56 rho - seg52Out0AccX56 rho * (-1)) * (rho 50234 + rho 50235) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50241 * (1 - rho 50239) = rho 50236 - rho 50237 - rho 50238 := ha5
      _ = (-1) * rho 50237 - rho 50238 + (seg52Out0AccY56 rho - seg52Out0AccX56 rho * (-1)) *
          (rho 50234 + rho 50235) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX57 rho = seg52Out0AccX56 rho - Bool.toZMod bit * (seg52Out0AccX56 rho - rho 50240) := by
    have hd : rho 50242 = Bool.toZMod bit * (rho 50240 - seg52Out0AccX56 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX56
      linear_combination -r5853
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY57 rho = seg52Out0AccY56 rho - Bool.toZMod bit * (seg52Out0AccY56 rho - rho 50241) := by
    have hd : rho 50243 = Bool.toZMod bit * (rho 50241 - seg52Out0AccY56 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY56
      linear_combination -r5854
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50234 * rho 50235 = rho 50244 := by linear_combination r5855
  have hd1 : rho 50234 * rho 50234 = rho 50245 := by linear_combination r5856
  have hd2 : rho 50235 * rho 50235 = rho 50246 := by linear_combination r5857
  have hd3 : rho 50247 * (rho 50235 * rho 50235 + rho 50234 * rho 50234 * (-1)) =
      2 * (rho 50234 * rho 50235) := by
    rw [hd0, hd1, hd2]
    linear_combination r5858
  have hd4 : rho 50248 * (2 - (rho 50235 * rho 50235 + rho 50234 * rho 50234 * (-1))) =
      rho 50235 * rho 50235 - rho 50234 * rho 50234 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5859
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX56 rho, seg52Out0AccY56 rho⟩ ⟨rho 50234, rho 50235⟩
    ⟨rho 50240, rho 50241⟩ ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 50247, rho 50248⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5860 rho ∧ Seg52.relationRow5861 rho ∧ Seg52.relationRow5862 rho ∧ Seg52.relationRow5863 rho ∧ Seg52.relationRow5864 rho ∧ Seg52.relationRow5865 rho ∧ Seg52.relationRow5866 rho ∧ Seg52.relationRow5867 rho ∧ Seg52.relationRow5868 rho ∧ Seg52.relationRow5869 rho ∧ Seg52.relationRow5870 rho ∧ Seg52.relationRow5871 rho ∧ Seg52.relationRow5872 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, r5870, r5871, r5872, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, r5870, r5871, r5872⟩

theorem seg52Out0_rung57 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49443 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50247, rho 50248⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 50247, rho 50248⟩
        ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 50260, rho 50261⟩ := by
  obtain ⟨r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, r5870, r5871, r5872⟩ := seg52Out0_rows57 rho h
  unfold Seg52.relationRow5860 at r5860

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5860

  unfold Seg52.relationRow5861 at r5861

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5861

  unfold Seg52.relationRow5862 at r5862

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5862

  unfold Seg52.relationRow5863 at r5863

  unfold Seg52.relationRow5864 at r5864

  unfold Seg52.relationRow5865 at r5865

  unfold Seg52.relationRow5866 at r5866

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5866

  unfold Seg52.relationRow5867 at r5867

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5867

  unfold Seg52.relationRow5868 at r5868

  unfold Seg52.relationRow5869 at r5869

  unfold Seg52.relationRow5870 at r5870

  unfold Seg52.relationRow5871 at r5871

  unfold Seg52.relationRow5872 at r5872

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX58 rho = seg52Out0AccX57 rho + rho 50255 := by
    unfold seg52Out0AccX58 seg52Out0AccX57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 57]

    ring

  have hnexty : seg52Out0AccY58 rho = seg52Out0AccY57 rho + rho 50256 := by
    unfold seg52Out0AccY58 seg52Out0AccY57
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 57]

    ring

  have ha0 : (rho 50247 + rho 50248) * (seg52Out0AccX57 rho + seg52Out0AccY57 rho) = rho 50249 := by
    unfold seg52Out0AccX57 seg52Out0AccY57
    linear_combination r5860
  have ha1 : rho 50248 * seg52Out0AccX57 rho = rho 50250 := by
    unfold seg52Out0AccX57
    linear_combination r5861
  have ha2 : rho 50247 * seg52Out0AccY57 rho = rho 50251 := by
    unfold seg52Out0AccY57
    linear_combination r5862
  have ha3 : 3021 * rho 50250 * rho 50251 = rho 50252 := by
    linear_combination r5863
  have ha4 : rho 50253 * (1 + rho 50252) = rho 50250 + rho 50251 := by
    linear_combination r5864
  have ha5 : rho 50254 * (1 - rho 50252) = rho 50249 - rho 50250 - rho 50251 := by
    linear_combination r5865
  have haddx :
      rho 50253 * (1 + 3021 * (rho 50248 * seg52Out0AccX57 rho) * (rho 50247 * seg52Out0AccY57 rho)) =
        rho 50248 * seg52Out0AccX57 rho + rho 50247 * seg52Out0AccY57 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50254 * (1 - 3021 * (rho 50248 * seg52Out0AccX57 rho) * (rho 50247 * seg52Out0AccY57 rho)) =
        (-1) * (rho 50248 * seg52Out0AccX57 rho) - rho 50247 * seg52Out0AccY57 rho +
          (seg52Out0AccY57 rho - seg52Out0AccX57 rho * (-1)) * (rho 50247 + rho 50248) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50254 * (1 - rho 50252) = rho 50249 - rho 50250 - rho 50251 := ha5
      _ = (-1) * rho 50250 - rho 50251 + (seg52Out0AccY57 rho - seg52Out0AccX57 rho * (-1)) *
          (rho 50247 + rho 50248) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX58 rho = seg52Out0AccX57 rho - Bool.toZMod bit * (seg52Out0AccX57 rho - rho 50253) := by
    have hd : rho 50255 = Bool.toZMod bit * (rho 50253 - seg52Out0AccX57 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX57
      linear_combination -r5866
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY58 rho = seg52Out0AccY57 rho - Bool.toZMod bit * (seg52Out0AccY57 rho - rho 50254) := by
    have hd : rho 50256 = Bool.toZMod bit * (rho 50254 - seg52Out0AccY57 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY57
      linear_combination -r5867
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50247 * rho 50248 = rho 50257 := by linear_combination r5868
  have hd1 : rho 50247 * rho 50247 = rho 50258 := by linear_combination r5869
  have hd2 : rho 50248 * rho 50248 = rho 50259 := by linear_combination r5870
  have hd3 : rho 50260 * (rho 50248 * rho 50248 + rho 50247 * rho 50247 * (-1)) =
      2 * (rho 50247 * rho 50248) := by
    rw [hd0, hd1, hd2]
    linear_combination r5871
  have hd4 : rho 50261 * (2 - (rho 50248 * rho 50248 + rho 50247 * rho 50247 * (-1))) =
      rho 50248 * rho 50248 - rho 50247 * rho 50247 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5872
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX57 rho, seg52Out0AccY57 rho⟩ ⟨rho 50247, rho 50248⟩
    ⟨rho 50253, rho 50254⟩ ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 50260, rho 50261⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5873 rho ∧ Seg52.relationRow5874 rho ∧ Seg52.relationRow5875 rho ∧ Seg52.relationRow5876 rho ∧ Seg52.relationRow5877 rho ∧ Seg52.relationRow5878 rho ∧ Seg52.relationRow5879 rho ∧ Seg52.relationRow5880 rho ∧ Seg52.relationRow5881 rho ∧ Seg52.relationRow5882 rho ∧ Seg52.relationRow5883 rho ∧ Seg52.relationRow5884 rho ∧ Seg52.relationRow5885 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, r5883, r5884, r5885, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, r5883, r5884, r5885⟩

theorem seg52Out0_rung58 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49444 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50260, rho 50261⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 50260, rho 50261⟩
        ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 50273, rho 50274⟩ := by
  obtain ⟨r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, r5883, r5884, r5885⟩ := seg52Out0_rows58 rho h
  unfold Seg52.relationRow5873 at r5873

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5873

  unfold Seg52.relationRow5874 at r5874

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5874

  unfold Seg52.relationRow5875 at r5875

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5875

  unfold Seg52.relationRow5876 at r5876

  unfold Seg52.relationRow5877 at r5877

  unfold Seg52.relationRow5878 at r5878

  unfold Seg52.relationRow5879 at r5879

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5879

  unfold Seg52.relationRow5880 at r5880

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5880

  unfold Seg52.relationRow5881 at r5881

  unfold Seg52.relationRow5882 at r5882

  unfold Seg52.relationRow5883 at r5883

  unfold Seg52.relationRow5884 at r5884

  unfold Seg52.relationRow5885 at r5885

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX59 rho = seg52Out0AccX58 rho + rho 50268 := by
    unfold seg52Out0AccX59 seg52Out0AccX58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 58]

    ring

  have hnexty : seg52Out0AccY59 rho = seg52Out0AccY58 rho + rho 50269 := by
    unfold seg52Out0AccY59 seg52Out0AccY58
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 58]

    ring

  have ha0 : (rho 50260 + rho 50261) * (seg52Out0AccX58 rho + seg52Out0AccY58 rho) = rho 50262 := by
    unfold seg52Out0AccX58 seg52Out0AccY58
    linear_combination r5873
  have ha1 : rho 50261 * seg52Out0AccX58 rho = rho 50263 := by
    unfold seg52Out0AccX58
    linear_combination r5874
  have ha2 : rho 50260 * seg52Out0AccY58 rho = rho 50264 := by
    unfold seg52Out0AccY58
    linear_combination r5875
  have ha3 : 3021 * rho 50263 * rho 50264 = rho 50265 := by
    linear_combination r5876
  have ha4 : rho 50266 * (1 + rho 50265) = rho 50263 + rho 50264 := by
    linear_combination r5877
  have ha5 : rho 50267 * (1 - rho 50265) = rho 50262 - rho 50263 - rho 50264 := by
    linear_combination r5878
  have haddx :
      rho 50266 * (1 + 3021 * (rho 50261 * seg52Out0AccX58 rho) * (rho 50260 * seg52Out0AccY58 rho)) =
        rho 50261 * seg52Out0AccX58 rho + rho 50260 * seg52Out0AccY58 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50267 * (1 - 3021 * (rho 50261 * seg52Out0AccX58 rho) * (rho 50260 * seg52Out0AccY58 rho)) =
        (-1) * (rho 50261 * seg52Out0AccX58 rho) - rho 50260 * seg52Out0AccY58 rho +
          (seg52Out0AccY58 rho - seg52Out0AccX58 rho * (-1)) * (rho 50260 + rho 50261) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50267 * (1 - rho 50265) = rho 50262 - rho 50263 - rho 50264 := ha5
      _ = (-1) * rho 50263 - rho 50264 + (seg52Out0AccY58 rho - seg52Out0AccX58 rho * (-1)) *
          (rho 50260 + rho 50261) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX59 rho = seg52Out0AccX58 rho - Bool.toZMod bit * (seg52Out0AccX58 rho - rho 50266) := by
    have hd : rho 50268 = Bool.toZMod bit * (rho 50266 - seg52Out0AccX58 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX58
      linear_combination -r5879
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY59 rho = seg52Out0AccY58 rho - Bool.toZMod bit * (seg52Out0AccY58 rho - rho 50267) := by
    have hd : rho 50269 = Bool.toZMod bit * (rho 50267 - seg52Out0AccY58 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY58
      linear_combination -r5880
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50260 * rho 50261 = rho 50270 := by linear_combination r5881
  have hd1 : rho 50260 * rho 50260 = rho 50271 := by linear_combination r5882
  have hd2 : rho 50261 * rho 50261 = rho 50272 := by linear_combination r5883
  have hd3 : rho 50273 * (rho 50261 * rho 50261 + rho 50260 * rho 50260 * (-1)) =
      2 * (rho 50260 * rho 50261) := by
    rw [hd0, hd1, hd2]
    linear_combination r5884
  have hd4 : rho 50274 * (2 - (rho 50261 * rho 50261 + rho 50260 * rho 50260 * (-1))) =
      rho 50261 * rho 50261 - rho 50260 * rho 50260 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5885
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX58 rho, seg52Out0AccY58 rho⟩ ⟨rho 50260, rho 50261⟩
    ⟨rho 50266, rho 50267⟩ ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 50273, rho 50274⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5886 rho ∧ Seg52.relationRow5887 rho ∧ Seg52.relationRow5888 rho ∧ Seg52.relationRow5889 rho ∧ Seg52.relationRow5890 rho ∧ Seg52.relationRow5891 rho ∧ Seg52.relationRow5892 rho ∧ Seg52.relationRow5893 rho ∧ Seg52.relationRow5894 rho ∧ Seg52.relationRow5895 rho ∧ Seg52.relationRow5896 rho ∧ Seg52.relationRow5897 rho ∧ Seg52.relationRow5898 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, r5896, r5897, r5898, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, r5896, r5897, r5898⟩

theorem seg52Out0_rung59 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49445 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50273, rho 50274⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 50273, rho 50274⟩
        ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 50286, rho 50287⟩ := by
  obtain ⟨r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, r5896, r5897, r5898⟩ := seg52Out0_rows59 rho h
  unfold Seg52.relationRow5886 at r5886

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5886

  unfold Seg52.relationRow5887 at r5887

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5887

  unfold Seg52.relationRow5888 at r5888

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5888

  unfold Seg52.relationRow5889 at r5889

  unfold Seg52.relationRow5890 at r5890

  unfold Seg52.relationRow5891 at r5891

  unfold Seg52.relationRow5892 at r5892

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5892

  unfold Seg52.relationRow5893 at r5893

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5893

  unfold Seg52.relationRow5894 at r5894

  unfold Seg52.relationRow5895 at r5895

  unfold Seg52.relationRow5896 at r5896

  unfold Seg52.relationRow5897 at r5897

  unfold Seg52.relationRow5898 at r5898

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX60 rho = seg52Out0AccX59 rho + rho 50281 := by
    unfold seg52Out0AccX60 seg52Out0AccX59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 59]

    ring

  have hnexty : seg52Out0AccY60 rho = seg52Out0AccY59 rho + rho 50282 := by
    unfold seg52Out0AccY60 seg52Out0AccY59
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 59]

    ring

  have ha0 : (rho 50273 + rho 50274) * (seg52Out0AccX59 rho + seg52Out0AccY59 rho) = rho 50275 := by
    unfold seg52Out0AccX59 seg52Out0AccY59
    linear_combination r5886
  have ha1 : rho 50274 * seg52Out0AccX59 rho = rho 50276 := by
    unfold seg52Out0AccX59
    linear_combination r5887
  have ha2 : rho 50273 * seg52Out0AccY59 rho = rho 50277 := by
    unfold seg52Out0AccY59
    linear_combination r5888
  have ha3 : 3021 * rho 50276 * rho 50277 = rho 50278 := by
    linear_combination r5889
  have ha4 : rho 50279 * (1 + rho 50278) = rho 50276 + rho 50277 := by
    linear_combination r5890
  have ha5 : rho 50280 * (1 - rho 50278) = rho 50275 - rho 50276 - rho 50277 := by
    linear_combination r5891
  have haddx :
      rho 50279 * (1 + 3021 * (rho 50274 * seg52Out0AccX59 rho) * (rho 50273 * seg52Out0AccY59 rho)) =
        rho 50274 * seg52Out0AccX59 rho + rho 50273 * seg52Out0AccY59 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50280 * (1 - 3021 * (rho 50274 * seg52Out0AccX59 rho) * (rho 50273 * seg52Out0AccY59 rho)) =
        (-1) * (rho 50274 * seg52Out0AccX59 rho) - rho 50273 * seg52Out0AccY59 rho +
          (seg52Out0AccY59 rho - seg52Out0AccX59 rho * (-1)) * (rho 50273 + rho 50274) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50280 * (1 - rho 50278) = rho 50275 - rho 50276 - rho 50277 := ha5
      _ = (-1) * rho 50276 - rho 50277 + (seg52Out0AccY59 rho - seg52Out0AccX59 rho * (-1)) *
          (rho 50273 + rho 50274) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX60 rho = seg52Out0AccX59 rho - Bool.toZMod bit * (seg52Out0AccX59 rho - rho 50279) := by
    have hd : rho 50281 = Bool.toZMod bit * (rho 50279 - seg52Out0AccX59 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX59
      linear_combination -r5892
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY60 rho = seg52Out0AccY59 rho - Bool.toZMod bit * (seg52Out0AccY59 rho - rho 50280) := by
    have hd : rho 50282 = Bool.toZMod bit * (rho 50280 - seg52Out0AccY59 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY59
      linear_combination -r5893
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50273 * rho 50274 = rho 50283 := by linear_combination r5894
  have hd1 : rho 50273 * rho 50273 = rho 50284 := by linear_combination r5895
  have hd2 : rho 50274 * rho 50274 = rho 50285 := by linear_combination r5896
  have hd3 : rho 50286 * (rho 50274 * rho 50274 + rho 50273 * rho 50273 * (-1)) =
      2 * (rho 50273 * rho 50274) := by
    rw [hd0, hd1, hd2]
    linear_combination r5897
  have hd4 : rho 50287 * (2 - (rho 50274 * rho 50274 + rho 50273 * rho 50273 * (-1))) =
      rho 50274 * rho 50274 - rho 50273 * rho 50273 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5898
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX59 rho, seg52Out0AccY59 rho⟩ ⟨rho 50273, rho 50274⟩
    ⟨rho 50279, rho 50280⟩ ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 50286, rho 50287⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5899 rho ∧ Seg52.relationRow5900 rho ∧ Seg52.relationRow5901 rho ∧ Seg52.relationRow5902 rho ∧ Seg52.relationRow5903 rho ∧ Seg52.relationRow5904 rho ∧ Seg52.relationRow5905 rho ∧ Seg52.relationRow5906 rho ∧ Seg52.relationRow5907 rho ∧ Seg52.relationRow5908 rho ∧ Seg52.relationRow5909 rho ∧ Seg52.relationRow5910 rho ∧ Seg52.relationRow5911 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, r5909, r5910, r5911, _, _, _, _, _, _, _, _⟩

  exact ⟨r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, r5909, r5910, r5911⟩

theorem seg52Out0_rung60 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49446 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50286, rho 50287⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 50286, rho 50287⟩
        ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 50299, rho 50300⟩ := by
  obtain ⟨r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, r5909, r5910, r5911⟩ := seg52Out0_rows60 rho h
  unfold Seg52.relationRow5899 at r5899

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5899

  unfold Seg52.relationRow5900 at r5900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5900

  unfold Seg52.relationRow5901 at r5901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5901

  unfold Seg52.relationRow5902 at r5902

  unfold Seg52.relationRow5903 at r5903

  unfold Seg52.relationRow5904 at r5904

  unfold Seg52.relationRow5905 at r5905

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5905

  unfold Seg52.relationRow5906 at r5906

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5906

  unfold Seg52.relationRow5907 at r5907

  unfold Seg52.relationRow5908 at r5908

  unfold Seg52.relationRow5909 at r5909

  unfold Seg52.relationRow5910 at r5910

  unfold Seg52.relationRow5911 at r5911

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX61 rho = seg52Out0AccX60 rho + rho 50294 := by
    unfold seg52Out0AccX61 seg52Out0AccX60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 60]

    ring

  have hnexty : seg52Out0AccY61 rho = seg52Out0AccY60 rho + rho 50295 := by
    unfold seg52Out0AccY61 seg52Out0AccY60
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 60]

    ring

  have ha0 : (rho 50286 + rho 50287) * (seg52Out0AccX60 rho + seg52Out0AccY60 rho) = rho 50288 := by
    unfold seg52Out0AccX60 seg52Out0AccY60
    linear_combination r5899
  have ha1 : rho 50287 * seg52Out0AccX60 rho = rho 50289 := by
    unfold seg52Out0AccX60
    linear_combination r5900
  have ha2 : rho 50286 * seg52Out0AccY60 rho = rho 50290 := by
    unfold seg52Out0AccY60
    linear_combination r5901
  have ha3 : 3021 * rho 50289 * rho 50290 = rho 50291 := by
    linear_combination r5902
  have ha4 : rho 50292 * (1 + rho 50291) = rho 50289 + rho 50290 := by
    linear_combination r5903
  have ha5 : rho 50293 * (1 - rho 50291) = rho 50288 - rho 50289 - rho 50290 := by
    linear_combination r5904
  have haddx :
      rho 50292 * (1 + 3021 * (rho 50287 * seg52Out0AccX60 rho) * (rho 50286 * seg52Out0AccY60 rho)) =
        rho 50287 * seg52Out0AccX60 rho + rho 50286 * seg52Out0AccY60 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50293 * (1 - 3021 * (rho 50287 * seg52Out0AccX60 rho) * (rho 50286 * seg52Out0AccY60 rho)) =
        (-1) * (rho 50287 * seg52Out0AccX60 rho) - rho 50286 * seg52Out0AccY60 rho +
          (seg52Out0AccY60 rho - seg52Out0AccX60 rho * (-1)) * (rho 50286 + rho 50287) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50293 * (1 - rho 50291) = rho 50288 - rho 50289 - rho 50290 := ha5
      _ = (-1) * rho 50289 - rho 50290 + (seg52Out0AccY60 rho - seg52Out0AccX60 rho * (-1)) *
          (rho 50286 + rho 50287) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX61 rho = seg52Out0AccX60 rho - Bool.toZMod bit * (seg52Out0AccX60 rho - rho 50292) := by
    have hd : rho 50294 = Bool.toZMod bit * (rho 50292 - seg52Out0AccX60 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX60
      linear_combination -r5905
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY61 rho = seg52Out0AccY60 rho - Bool.toZMod bit * (seg52Out0AccY60 rho - rho 50293) := by
    have hd : rho 50295 = Bool.toZMod bit * (rho 50293 - seg52Out0AccY60 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY60
      linear_combination -r5906
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50286 * rho 50287 = rho 50296 := by linear_combination r5907
  have hd1 : rho 50286 * rho 50286 = rho 50297 := by linear_combination r5908
  have hd2 : rho 50287 * rho 50287 = rho 50298 := by linear_combination r5909
  have hd3 : rho 50299 * (rho 50287 * rho 50287 + rho 50286 * rho 50286 * (-1)) =
      2 * (rho 50286 * rho 50287) := by
    rw [hd0, hd1, hd2]
    linear_combination r5910
  have hd4 : rho 50300 * (2 - (rho 50287 * rho 50287 + rho 50286 * rho 50286 * (-1))) =
      rho 50287 * rho 50287 - rho 50286 * rho 50286 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5911
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX60 rho, seg52Out0AccY60 rho⟩ ⟨rho 50286, rho 50287⟩
    ⟨rho 50292, rho 50293⟩ ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 50299, rho 50300⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5912 rho ∧ Seg52.relationRow5913 rho ∧ Seg52.relationRow5914 rho ∧ Seg52.relationRow5915 rho ∧ Seg52.relationRow5916 rho ∧ Seg52.relationRow5917 rho ∧ Seg52.relationRow5918 rho ∧ Seg52.relationRow5919 rho ∧ Seg52.relationRow5920 rho ∧ Seg52.relationRow5921 rho ∧ Seg52.relationRow5922 rho ∧ Seg52.relationRow5923 rho ∧ Seg52.relationRow5924 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p73, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart73 at p73

  rcases p73 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨r5920, r5921, r5922, r5923, r5924, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922, r5923, r5924⟩

theorem seg52Out0_rung61 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49447 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50299, rho 50300⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 50299, rho 50300⟩
        ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 50312, rho 50313⟩ := by
  obtain ⟨r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919, r5920, r5921, r5922, r5923, r5924⟩ := seg52Out0_rows61 rho h
  unfold Seg52.relationRow5912 at r5912

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5912

  unfold Seg52.relationRow5913 at r5913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5913

  unfold Seg52.relationRow5914 at r5914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5914

  unfold Seg52.relationRow5915 at r5915

  unfold Seg52.relationRow5916 at r5916

  unfold Seg52.relationRow5917 at r5917

  unfold Seg52.relationRow5918 at r5918

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5918

  unfold Seg52.relationRow5919 at r5919

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5919

  unfold Seg52.relationRow5920 at r5920

  unfold Seg52.relationRow5921 at r5921

  unfold Seg52.relationRow5922 at r5922

  unfold Seg52.relationRow5923 at r5923

  unfold Seg52.relationRow5924 at r5924

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX62 rho = seg52Out0AccX61 rho + rho 50307 := by
    unfold seg52Out0AccX62 seg52Out0AccX61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 61]

    ring

  have hnexty : seg52Out0AccY62 rho = seg52Out0AccY61 rho + rho 50308 := by
    unfold seg52Out0AccY62 seg52Out0AccY61
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 61]

    ring

  have ha0 : (rho 50299 + rho 50300) * (seg52Out0AccX61 rho + seg52Out0AccY61 rho) = rho 50301 := by
    unfold seg52Out0AccX61 seg52Out0AccY61
    linear_combination r5912
  have ha1 : rho 50300 * seg52Out0AccX61 rho = rho 50302 := by
    unfold seg52Out0AccX61
    linear_combination r5913
  have ha2 : rho 50299 * seg52Out0AccY61 rho = rho 50303 := by
    unfold seg52Out0AccY61
    linear_combination r5914
  have ha3 : 3021 * rho 50302 * rho 50303 = rho 50304 := by
    linear_combination r5915
  have ha4 : rho 50305 * (1 + rho 50304) = rho 50302 + rho 50303 := by
    linear_combination r5916
  have ha5 : rho 50306 * (1 - rho 50304) = rho 50301 - rho 50302 - rho 50303 := by
    linear_combination r5917
  have haddx :
      rho 50305 * (1 + 3021 * (rho 50300 * seg52Out0AccX61 rho) * (rho 50299 * seg52Out0AccY61 rho)) =
        rho 50300 * seg52Out0AccX61 rho + rho 50299 * seg52Out0AccY61 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50306 * (1 - 3021 * (rho 50300 * seg52Out0AccX61 rho) * (rho 50299 * seg52Out0AccY61 rho)) =
        (-1) * (rho 50300 * seg52Out0AccX61 rho) - rho 50299 * seg52Out0AccY61 rho +
          (seg52Out0AccY61 rho - seg52Out0AccX61 rho * (-1)) * (rho 50299 + rho 50300) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50306 * (1 - rho 50304) = rho 50301 - rho 50302 - rho 50303 := ha5
      _ = (-1) * rho 50302 - rho 50303 + (seg52Out0AccY61 rho - seg52Out0AccX61 rho * (-1)) *
          (rho 50299 + rho 50300) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX62 rho = seg52Out0AccX61 rho - Bool.toZMod bit * (seg52Out0AccX61 rho - rho 50305) := by
    have hd : rho 50307 = Bool.toZMod bit * (rho 50305 - seg52Out0AccX61 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX61
      linear_combination -r5918
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY62 rho = seg52Out0AccY61 rho - Bool.toZMod bit * (seg52Out0AccY61 rho - rho 50306) := by
    have hd : rho 50308 = Bool.toZMod bit * (rho 50306 - seg52Out0AccY61 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY61
      linear_combination -r5919
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50299 * rho 50300 = rho 50309 := by linear_combination r5920
  have hd1 : rho 50299 * rho 50299 = rho 50310 := by linear_combination r5921
  have hd2 : rho 50300 * rho 50300 = rho 50311 := by linear_combination r5922
  have hd3 : rho 50312 * (rho 50300 * rho 50300 + rho 50299 * rho 50299 * (-1)) =
      2 * (rho 50299 * rho 50300) := by
    rw [hd0, hd1, hd2]
    linear_combination r5923
  have hd4 : rho 50313 * (2 - (rho 50300 * rho 50300 + rho 50299 * rho 50299 * (-1))) =
      rho 50300 * rho 50300 - rho 50299 * rho 50299 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5924
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX61 rho, seg52Out0AccY61 rho⟩ ⟨rho 50299, rho 50300⟩
    ⟨rho 50305, rho 50306⟩ ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 50312, rho 50313⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5925 rho ∧ Seg52.relationRow5926 rho ∧ Seg52.relationRow5927 rho ∧ Seg52.relationRow5928 rho ∧ Seg52.relationRow5929 rho ∧ Seg52.relationRow5930 rho ∧ Seg52.relationRow5931 rho ∧ Seg52.relationRow5932 rho ∧ Seg52.relationRow5933 rho ∧ Seg52.relationRow5934 rho ∧ Seg52.relationRow5935 rho ∧ Seg52.relationRow5936 rho ∧ Seg52.relationRow5937 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, r5937, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, r5937⟩

theorem seg52Out0_rung62 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49448 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50312, rho 50313⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 50312, rho 50313⟩
        ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 50325, rho 50326⟩ := by
  obtain ⟨r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, r5937⟩ := seg52Out0_rows62 rho h
  unfold Seg52.relationRow5925 at r5925

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925

  unfold Seg52.relationRow5926 at r5926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926

  unfold Seg52.relationRow5927 at r5927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5927

  unfold Seg52.relationRow5928 at r5928

  unfold Seg52.relationRow5929 at r5929

  unfold Seg52.relationRow5930 at r5930

  unfold Seg52.relationRow5931 at r5931

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931

  unfold Seg52.relationRow5932 at r5932

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5932

  unfold Seg52.relationRow5933 at r5933

  unfold Seg52.relationRow5934 at r5934

  unfold Seg52.relationRow5935 at r5935

  unfold Seg52.relationRow5936 at r5936

  unfold Seg52.relationRow5937 at r5937

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX63 rho = seg52Out0AccX62 rho + rho 50320 := by
    unfold seg52Out0AccX63 seg52Out0AccX62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 62]

    ring

  have hnexty : seg52Out0AccY63 rho = seg52Out0AccY62 rho + rho 50321 := by
    unfold seg52Out0AccY63 seg52Out0AccY62
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 62]

    ring

  have ha0 : (rho 50312 + rho 50313) * (seg52Out0AccX62 rho + seg52Out0AccY62 rho) = rho 50314 := by
    unfold seg52Out0AccX62 seg52Out0AccY62
    linear_combination r5925
  have ha1 : rho 50313 * seg52Out0AccX62 rho = rho 50315 := by
    unfold seg52Out0AccX62
    linear_combination r5926
  have ha2 : rho 50312 * seg52Out0AccY62 rho = rho 50316 := by
    unfold seg52Out0AccY62
    linear_combination r5927
  have ha3 : 3021 * rho 50315 * rho 50316 = rho 50317 := by
    linear_combination r5928
  have ha4 : rho 50318 * (1 + rho 50317) = rho 50315 + rho 50316 := by
    linear_combination r5929
  have ha5 : rho 50319 * (1 - rho 50317) = rho 50314 - rho 50315 - rho 50316 := by
    linear_combination r5930
  have haddx :
      rho 50318 * (1 + 3021 * (rho 50313 * seg52Out0AccX62 rho) * (rho 50312 * seg52Out0AccY62 rho)) =
        rho 50313 * seg52Out0AccX62 rho + rho 50312 * seg52Out0AccY62 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50319 * (1 - 3021 * (rho 50313 * seg52Out0AccX62 rho) * (rho 50312 * seg52Out0AccY62 rho)) =
        (-1) * (rho 50313 * seg52Out0AccX62 rho) - rho 50312 * seg52Out0AccY62 rho +
          (seg52Out0AccY62 rho - seg52Out0AccX62 rho * (-1)) * (rho 50312 + rho 50313) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50319 * (1 - rho 50317) = rho 50314 - rho 50315 - rho 50316 := ha5
      _ = (-1) * rho 50315 - rho 50316 + (seg52Out0AccY62 rho - seg52Out0AccX62 rho * (-1)) *
          (rho 50312 + rho 50313) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX63 rho = seg52Out0AccX62 rho - Bool.toZMod bit * (seg52Out0AccX62 rho - rho 50318) := by
    have hd : rho 50320 = Bool.toZMod bit * (rho 50318 - seg52Out0AccX62 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX62
      linear_combination -r5931
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY63 rho = seg52Out0AccY62 rho - Bool.toZMod bit * (seg52Out0AccY62 rho - rho 50319) := by
    have hd : rho 50321 = Bool.toZMod bit * (rho 50319 - seg52Out0AccY62 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY62
      linear_combination -r5932
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50312 * rho 50313 = rho 50322 := by linear_combination r5933
  have hd1 : rho 50312 * rho 50312 = rho 50323 := by linear_combination r5934
  have hd2 : rho 50313 * rho 50313 = rho 50324 := by linear_combination r5935
  have hd3 : rho 50325 * (rho 50313 * rho 50313 + rho 50312 * rho 50312 * (-1)) =
      2 * (rho 50312 * rho 50313) := by
    rw [hd0, hd1, hd2]
    linear_combination r5936
  have hd4 : rho 50326 * (2 - (rho 50313 * rho 50313 + rho 50312 * rho 50312 * (-1))) =
      rho 50313 * rho 50313 - rho 50312 * rho 50312 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5937
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX62 rho, seg52Out0AccY62 rho⟩ ⟨rho 50312, rho 50313⟩
    ⟨rho 50318, rho 50319⟩ ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 50325, rho 50326⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5938 rho ∧ Seg52.relationRow5939 rho ∧ Seg52.relationRow5940 rho ∧ Seg52.relationRow5941 rho ∧ Seg52.relationRow5942 rho ∧ Seg52.relationRow5943 rho ∧ Seg52.relationRow5944 rho ∧ Seg52.relationRow5945 rho ∧ Seg52.relationRow5946 rho ∧ Seg52.relationRow5947 rho ∧ Seg52.relationRow5948 rho ∧ Seg52.relationRow5949 rho ∧ Seg52.relationRow5950 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem seg52Out0_rung63 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49449 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50325, rho 50326⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 50325, rho 50326⟩
        ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 50338, rho 50339⟩ := by
  obtain ⟨r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := seg52Out0_rows63 rho h
  unfold Seg52.relationRow5938 at r5938

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5938

  unfold Seg52.relationRow5939 at r5939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939

  unfold Seg52.relationRow5940 at r5940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940

  unfold Seg52.relationRow5941 at r5941

  unfold Seg52.relationRow5942 at r5942

  unfold Seg52.relationRow5943 at r5943

  unfold Seg52.relationRow5944 at r5944

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944

  unfold Seg52.relationRow5945 at r5945

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945

  unfold Seg52.relationRow5946 at r5946

  unfold Seg52.relationRow5947 at r5947

  unfold Seg52.relationRow5948 at r5948

  unfold Seg52.relationRow5949 at r5949

  unfold Seg52.relationRow5950 at r5950

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX64 rho = seg52Out0AccX63 rho + rho 50333 := by
    unfold seg52Out0AccX64 seg52Out0AccX63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 63]

    ring

  have hnexty : seg52Out0AccY64 rho = seg52Out0AccY63 rho + rho 50334 := by
    unfold seg52Out0AccY64 seg52Out0AccY63
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 63]

    ring

  have ha0 : (rho 50325 + rho 50326) * (seg52Out0AccX63 rho + seg52Out0AccY63 rho) = rho 50327 := by
    unfold seg52Out0AccX63 seg52Out0AccY63
    linear_combination r5938
  have ha1 : rho 50326 * seg52Out0AccX63 rho = rho 50328 := by
    unfold seg52Out0AccX63
    linear_combination r5939
  have ha2 : rho 50325 * seg52Out0AccY63 rho = rho 50329 := by
    unfold seg52Out0AccY63
    linear_combination r5940
  have ha3 : 3021 * rho 50328 * rho 50329 = rho 50330 := by
    linear_combination r5941
  have ha4 : rho 50331 * (1 + rho 50330) = rho 50328 + rho 50329 := by
    linear_combination r5942
  have ha5 : rho 50332 * (1 - rho 50330) = rho 50327 - rho 50328 - rho 50329 := by
    linear_combination r5943
  have haddx :
      rho 50331 * (1 + 3021 * (rho 50326 * seg52Out0AccX63 rho) * (rho 50325 * seg52Out0AccY63 rho)) =
        rho 50326 * seg52Out0AccX63 rho + rho 50325 * seg52Out0AccY63 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50332 * (1 - 3021 * (rho 50326 * seg52Out0AccX63 rho) * (rho 50325 * seg52Out0AccY63 rho)) =
        (-1) * (rho 50326 * seg52Out0AccX63 rho) - rho 50325 * seg52Out0AccY63 rho +
          (seg52Out0AccY63 rho - seg52Out0AccX63 rho * (-1)) * (rho 50325 + rho 50326) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50332 * (1 - rho 50330) = rho 50327 - rho 50328 - rho 50329 := ha5
      _ = (-1) * rho 50328 - rho 50329 + (seg52Out0AccY63 rho - seg52Out0AccX63 rho * (-1)) *
          (rho 50325 + rho 50326) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX64 rho = seg52Out0AccX63 rho - Bool.toZMod bit * (seg52Out0AccX63 rho - rho 50331) := by
    have hd : rho 50333 = Bool.toZMod bit * (rho 50331 - seg52Out0AccX63 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX63
      linear_combination -r5944
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY64 rho = seg52Out0AccY63 rho - Bool.toZMod bit * (seg52Out0AccY63 rho - rho 50332) := by
    have hd : rho 50334 = Bool.toZMod bit * (rho 50332 - seg52Out0AccY63 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY63
      linear_combination -r5945
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50325 * rho 50326 = rho 50335 := by linear_combination r5946
  have hd1 : rho 50325 * rho 50325 = rho 50336 := by linear_combination r5947
  have hd2 : rho 50326 * rho 50326 = rho 50337 := by linear_combination r5948
  have hd3 : rho 50338 * (rho 50326 * rho 50326 + rho 50325 * rho 50325 * (-1)) =
      2 * (rho 50325 * rho 50326) := by
    rw [hd0, hd1, hd2]
    linear_combination r5949
  have hd4 : rho 50339 * (2 - (rho 50326 * rho 50326 + rho 50325 * rho 50325 * (-1))) =
      rho 50326 * rho 50326 - rho 50325 * rho 50325 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5950
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX63 rho, seg52Out0AccY63 rho⟩ ⟨rho 50325, rho 50326⟩
    ⟨rho 50331, rho 50332⟩ ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 50338, rho 50339⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5951 rho ∧ Seg52.relationRow5952 rho ∧ Seg52.relationRow5953 rho ∧ Seg52.relationRow5954 rho ∧ Seg52.relationRow5955 rho ∧ Seg52.relationRow5956 rho ∧ Seg52.relationRow5957 rho ∧ Seg52.relationRow5958 rho ∧ Seg52.relationRow5959 rho ∧ Seg52.relationRow5960 rho ∧ Seg52.relationRow5961 rho ∧ Seg52.relationRow5962 rho ∧ Seg52.relationRow5963 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963⟩

theorem seg52Out0_rung64 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49450 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50338, rho 50339⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 50338, rho 50339⟩
        ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 50351, rho 50352⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963⟩ := seg52Out0_rows64 rho h
  unfold Seg52.relationRow5951 at r5951

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951

  unfold Seg52.relationRow5952 at r5952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5952

  unfold Seg52.relationRow5953 at r5953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953

  unfold Seg52.relationRow5954 at r5954

  unfold Seg52.relationRow5955 at r5955

  unfold Seg52.relationRow5956 at r5956

  unfold Seg52.relationRow5957 at r5957

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5957

  unfold Seg52.relationRow5958 at r5958

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958

  unfold Seg52.relationRow5959 at r5959

  unfold Seg52.relationRow5960 at r5960

  unfold Seg52.relationRow5961 at r5961

  unfold Seg52.relationRow5962 at r5962

  unfold Seg52.relationRow5963 at r5963

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX65 rho = seg52Out0AccX64 rho + rho 50346 := by
    unfold seg52Out0AccX65 seg52Out0AccX64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 64]

    ring

  have hnexty : seg52Out0AccY65 rho = seg52Out0AccY64 rho + rho 50347 := by
    unfold seg52Out0AccY65 seg52Out0AccY64
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 64]

    ring

  have ha0 : (rho 50338 + rho 50339) * (seg52Out0AccX64 rho + seg52Out0AccY64 rho) = rho 50340 := by
    unfold seg52Out0AccX64 seg52Out0AccY64
    linear_combination r5951
  have ha1 : rho 50339 * seg52Out0AccX64 rho = rho 50341 := by
    unfold seg52Out0AccX64
    linear_combination r5952
  have ha2 : rho 50338 * seg52Out0AccY64 rho = rho 50342 := by
    unfold seg52Out0AccY64
    linear_combination r5953
  have ha3 : 3021 * rho 50341 * rho 50342 = rho 50343 := by
    linear_combination r5954
  have ha4 : rho 50344 * (1 + rho 50343) = rho 50341 + rho 50342 := by
    linear_combination r5955
  have ha5 : rho 50345 * (1 - rho 50343) = rho 50340 - rho 50341 - rho 50342 := by
    linear_combination r5956
  have haddx :
      rho 50344 * (1 + 3021 * (rho 50339 * seg52Out0AccX64 rho) * (rho 50338 * seg52Out0AccY64 rho)) =
        rho 50339 * seg52Out0AccX64 rho + rho 50338 * seg52Out0AccY64 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50345 * (1 - 3021 * (rho 50339 * seg52Out0AccX64 rho) * (rho 50338 * seg52Out0AccY64 rho)) =
        (-1) * (rho 50339 * seg52Out0AccX64 rho) - rho 50338 * seg52Out0AccY64 rho +
          (seg52Out0AccY64 rho - seg52Out0AccX64 rho * (-1)) * (rho 50338 + rho 50339) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50345 * (1 - rho 50343) = rho 50340 - rho 50341 - rho 50342 := ha5
      _ = (-1) * rho 50341 - rho 50342 + (seg52Out0AccY64 rho - seg52Out0AccX64 rho * (-1)) *
          (rho 50338 + rho 50339) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX65 rho = seg52Out0AccX64 rho - Bool.toZMod bit * (seg52Out0AccX64 rho - rho 50344) := by
    have hd : rho 50346 = Bool.toZMod bit * (rho 50344 - seg52Out0AccX64 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX64
      linear_combination -r5957
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY65 rho = seg52Out0AccY64 rho - Bool.toZMod bit * (seg52Out0AccY64 rho - rho 50345) := by
    have hd : rho 50347 = Bool.toZMod bit * (rho 50345 - seg52Out0AccY64 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY64
      linear_combination -r5958
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50338 * rho 50339 = rho 50348 := by linear_combination r5959
  have hd1 : rho 50338 * rho 50338 = rho 50349 := by linear_combination r5960
  have hd2 : rho 50339 * rho 50339 = rho 50350 := by linear_combination r5961
  have hd3 : rho 50351 * (rho 50339 * rho 50339 + rho 50338 * rho 50338 * (-1)) =
      2 * (rho 50338 * rho 50339) := by
    rw [hd0, hd1, hd2]
    linear_combination r5962
  have hd4 : rho 50352 * (2 - (rho 50339 * rho 50339 + rho 50338 * rho 50338 * (-1))) =
      rho 50339 * rho 50339 - rho 50338 * rho 50338 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5963
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX64 rho, seg52Out0AccY64 rho⟩ ⟨rho 50338, rho 50339⟩
    ⟨rho 50344, rho 50345⟩ ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 50351, rho 50352⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5964 rho ∧ Seg52.relationRow5965 rho ∧ Seg52.relationRow5966 rho ∧ Seg52.relationRow5967 rho ∧ Seg52.relationRow5968 rho ∧ Seg52.relationRow5969 rho ∧ Seg52.relationRow5970 rho ∧ Seg52.relationRow5971 rho ∧ Seg52.relationRow5972 rho ∧ Seg52.relationRow5973 rho ∧ Seg52.relationRow5974 rho ∧ Seg52.relationRow5975 rho ∧ Seg52.relationRow5976 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p74, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart74 at p74

  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976⟩

theorem seg52Out0_rung65 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49451 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50351, rho 50352⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 50351, rho 50352⟩
        ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 50364, rho 50365⟩ := by
  obtain ⟨r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976⟩ := seg52Out0_rows65 rho h
  unfold Seg52.relationRow5964 at r5964

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5964

  unfold Seg52.relationRow5965 at r5965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965

  unfold Seg52.relationRow5966 at r5966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5966

  unfold Seg52.relationRow5967 at r5967

  unfold Seg52.relationRow5968 at r5968

  unfold Seg52.relationRow5969 at r5969

  unfold Seg52.relationRow5970 at r5970

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5970

  unfold Seg52.relationRow5971 at r5971

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5971

  unfold Seg52.relationRow5972 at r5972

  unfold Seg52.relationRow5973 at r5973

  unfold Seg52.relationRow5974 at r5974

  unfold Seg52.relationRow5975 at r5975

  unfold Seg52.relationRow5976 at r5976

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX66 rho = seg52Out0AccX65 rho + rho 50359 := by
    unfold seg52Out0AccX66 seg52Out0AccX65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 65]

    ring

  have hnexty : seg52Out0AccY66 rho = seg52Out0AccY65 rho + rho 50360 := by
    unfold seg52Out0AccY66 seg52Out0AccY65
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 65]

    ring

  have ha0 : (rho 50351 + rho 50352) * (seg52Out0AccX65 rho + seg52Out0AccY65 rho) = rho 50353 := by
    unfold seg52Out0AccX65 seg52Out0AccY65
    linear_combination r5964
  have ha1 : rho 50352 * seg52Out0AccX65 rho = rho 50354 := by
    unfold seg52Out0AccX65
    linear_combination r5965
  have ha2 : rho 50351 * seg52Out0AccY65 rho = rho 50355 := by
    unfold seg52Out0AccY65
    linear_combination r5966
  have ha3 : 3021 * rho 50354 * rho 50355 = rho 50356 := by
    linear_combination r5967
  have ha4 : rho 50357 * (1 + rho 50356) = rho 50354 + rho 50355 := by
    linear_combination r5968
  have ha5 : rho 50358 * (1 - rho 50356) = rho 50353 - rho 50354 - rho 50355 := by
    linear_combination r5969
  have haddx :
      rho 50357 * (1 + 3021 * (rho 50352 * seg52Out0AccX65 rho) * (rho 50351 * seg52Out0AccY65 rho)) =
        rho 50352 * seg52Out0AccX65 rho + rho 50351 * seg52Out0AccY65 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50358 * (1 - 3021 * (rho 50352 * seg52Out0AccX65 rho) * (rho 50351 * seg52Out0AccY65 rho)) =
        (-1) * (rho 50352 * seg52Out0AccX65 rho) - rho 50351 * seg52Out0AccY65 rho +
          (seg52Out0AccY65 rho - seg52Out0AccX65 rho * (-1)) * (rho 50351 + rho 50352) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50358 * (1 - rho 50356) = rho 50353 - rho 50354 - rho 50355 := ha5
      _ = (-1) * rho 50354 - rho 50355 + (seg52Out0AccY65 rho - seg52Out0AccX65 rho * (-1)) *
          (rho 50351 + rho 50352) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX66 rho = seg52Out0AccX65 rho - Bool.toZMod bit * (seg52Out0AccX65 rho - rho 50357) := by
    have hd : rho 50359 = Bool.toZMod bit * (rho 50357 - seg52Out0AccX65 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX65
      linear_combination -r5970
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY66 rho = seg52Out0AccY65 rho - Bool.toZMod bit * (seg52Out0AccY65 rho - rho 50358) := by
    have hd : rho 50360 = Bool.toZMod bit * (rho 50358 - seg52Out0AccY65 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY65
      linear_combination -r5971
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50351 * rho 50352 = rho 50361 := by linear_combination r5972
  have hd1 : rho 50351 * rho 50351 = rho 50362 := by linear_combination r5973
  have hd2 : rho 50352 * rho 50352 = rho 50363 := by linear_combination r5974
  have hd3 : rho 50364 * (rho 50352 * rho 50352 + rho 50351 * rho 50351 * (-1)) =
      2 * (rho 50351 * rho 50352) := by
    rw [hd0, hd1, hd2]
    linear_combination r5975
  have hd4 : rho 50365 * (2 - (rho 50352 * rho 50352 + rho 50351 * rho 50351 * (-1))) =
      rho 50352 * rho 50352 - rho 50351 * rho 50351 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5976
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX65 rho, seg52Out0AccY65 rho⟩ ⟨rho 50351, rho 50352⟩
    ⟨rho 50357, rho 50358⟩ ⟨seg52Out0AccX66 rho, seg52Out0AccY66 rho⟩ ⟨rho 50364, rho 50365⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c5 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 55 ≤ i → i < 66 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung55 rho h bits[55]! (hbitAt 55 (by omega)) hacc hcur
  · exact seg52Out0_rung56 rho h bits[56]! (hbitAt 56 (by omega)) hacc hcur
  · exact seg52Out0_rung57 rho h bits[57]! (hbitAt 57 (by omega)) hacc hcur
  · exact seg52Out0_rung58 rho h bits[58]! (hbitAt 58 (by omega)) hacc hcur
  · exact seg52Out0_rung59 rho h bits[59]! (hbitAt 59 (by omega)) hacc hcur
  · exact seg52Out0_rung60 rho h bits[60]! (hbitAt 60 (by omega)) hacc hcur
  · exact seg52Out0_rung61 rho h bits[61]! (hbitAt 61 (by omega)) hacc hcur
  · exact seg52Out0_rung62 rho h bits[62]! (hbitAt 62 (by omega)) hacc hcur
  · exact seg52Out0_rung63 rho h bits[63]! (hbitAt 63 (by omega)) hacc hcur
  · exact seg52Out0_rung64 rho h bits[64]! (hbitAt 64 (by omega)) hacc hcur
  · exact seg52Out0_rung65 rho h bits[65]! (hbitAt 65 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
