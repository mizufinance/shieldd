import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In1_rows11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2829 rho ∧ Seg48.relationRow2830 rho ∧ Seg48.relationRow2831 rho ∧ Seg48.relationRow2832 rho ∧ Seg48.relationRow2833 rho ∧ Seg48.relationRow2834 rho ∧ Seg48.relationRow2835 rho ∧ Seg48.relationRow2836 rho ∧ Seg48.relationRow2837 rho ∧ Seg48.relationRow2838 rho ∧ Seg48.relationRow2839 rho ∧ Seg48.relationRow2840 rho ∧ Seg48.relationRow2841 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841⟩

theorem seg48In1_rung11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35333 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX11 rho, seg48In1AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35585, rho 35586⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX11 rho, seg48In1AccY11 rho⟩ ⟨rho 35585, rho 35586⟩
        ⟨seg48In1AccX12 rho, seg48In1AccY12 rho⟩ ⟨rho 35598, rho 35599⟩ := by
  obtain ⟨r2829, r2830, r2831, r2832, r2833, r2834, r2835, r2836, r2837, r2838, r2839, r2840, r2841⟩ := seg48In1_rows11 rho h
  unfold Seg48.relationRow2829 at r2829

  unfold Seg48.relationRow2830 at r2830

  unfold Seg48.relationRow2831 at r2831

  unfold Seg48.relationRow2832 at r2832

  unfold Seg48.relationRow2833 at r2833

  unfold Seg48.relationRow2834 at r2834

  unfold Seg48.relationRow2835 at r2835

  unfold Seg48.relationRow2836 at r2836

  unfold Seg48.relationRow2837 at r2837

  unfold Seg48.relationRow2838 at r2838

  unfold Seg48.relationRow2839 at r2839

  unfold Seg48.relationRow2840 at r2840

  unfold Seg48.relationRow2841 at r2841

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX12 rho = seg48In1AccX11 rho + rho 35593 := by
    unfold seg48In1AccX12 seg48In1AccX11
    ring

  have hnexty : seg48In1AccY12 rho = seg48In1AccY11 rho + rho 35594 := by
    unfold seg48In1AccY12 seg48In1AccY11
    ring

  have ha0 : (rho 35585 + rho 35586) * (seg48In1AccX11 rho + seg48In1AccY11 rho) = rho 35587 := by
    unfold seg48In1AccX11 seg48In1AccY11
    linear_combination r2829
  have ha1 : rho 35586 * seg48In1AccX11 rho = rho 35588 := by
    unfold seg48In1AccX11
    linear_combination r2830
  have ha2 : rho 35585 * seg48In1AccY11 rho = rho 35589 := by
    unfold seg48In1AccY11
    linear_combination r2831
  have ha3 : 3021 * rho 35588 * rho 35589 = rho 35590 := by
    linear_combination r2832
  have ha4 : rho 35591 * (1 + rho 35590) = rho 35588 + rho 35589 := by
    linear_combination r2833
  have ha5 : rho 35592 * (1 - rho 35590) = rho 35587 - rho 35588 - rho 35589 := by
    linear_combination r2834
  have haddx :
      rho 35591 * (1 + 3021 * (rho 35586 * seg48In1AccX11 rho) * (rho 35585 * seg48In1AccY11 rho)) =
        rho 35586 * seg48In1AccX11 rho + rho 35585 * seg48In1AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35592 * (1 - 3021 * (rho 35586 * seg48In1AccX11 rho) * (rho 35585 * seg48In1AccY11 rho)) =
        (-1) * (rho 35586 * seg48In1AccX11 rho) - rho 35585 * seg48In1AccY11 rho +
          (seg48In1AccY11 rho - seg48In1AccX11 rho * (-1)) * (rho 35585 + rho 35586) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35592 * (1 - rho 35590) = rho 35587 - rho 35588 - rho 35589 := ha5
      _ = (-1) * rho 35588 - rho 35589 + (seg48In1AccY11 rho - seg48In1AccX11 rho * (-1)) *
          (rho 35585 + rho 35586) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX12 rho = seg48In1AccX11 rho - Bool.toZMod bit * (seg48In1AccX11 rho - rho 35591) := by
    have hd : rho 35593 = Bool.toZMod bit * (rho 35591 - seg48In1AccX11 rho) := by
      rw [← hbit]
      unfold seg48In1AccX11
      linear_combination -r2835
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY12 rho = seg48In1AccY11 rho - Bool.toZMod bit * (seg48In1AccY11 rho - rho 35592) := by
    have hd : rho 35594 = Bool.toZMod bit * (rho 35592 - seg48In1AccY11 rho) := by
      rw [← hbit]
      unfold seg48In1AccY11
      linear_combination -r2836
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35585 * rho 35586 = rho 35595 := by linear_combination r2837
  have hd1 : rho 35585 * rho 35585 = rho 35596 := by linear_combination r2838
  have hd2 : rho 35586 * rho 35586 = rho 35597 := by linear_combination r2839
  have hd3 : rho 35598 * (rho 35586 * rho 35586 + rho 35585 * rho 35585 * (-1)) =
      2 * (rho 35585 * rho 35586) := by
    rw [hd0, hd1, hd2]
    linear_combination r2840
  have hd4 : rho 35599 * (2 - (rho 35586 * rho 35586 + rho 35585 * rho 35585 * (-1))) =
      rho 35586 * rho 35586 - rho 35585 * rho 35585 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2841
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX11 rho, seg48In1AccY11 rho⟩ ⟨rho 35585, rho 35586⟩
    ⟨rho 35591, rho 35592⟩ ⟨seg48In1AccX12 rho, seg48In1AccY12 rho⟩ ⟨rho 35598, rho 35599⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2842 rho ∧ Seg48.relationRow2843 rho ∧ Seg48.relationRow2844 rho ∧ Seg48.relationRow2845 rho ∧ Seg48.relationRow2846 rho ∧ Seg48.relationRow2847 rho ∧ Seg48.relationRow2848 rho ∧ Seg48.relationRow2849 rho ∧ Seg48.relationRow2850 rho ∧ Seg48.relationRow2851 rho ∧ Seg48.relationRow2852 rho ∧ Seg48.relationRow2853 rho ∧ Seg48.relationRow2854 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854⟩

theorem seg48In1_rung12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35334 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX12 rho, seg48In1AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35598, rho 35599⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX12 rho, seg48In1AccY12 rho⟩ ⟨rho 35598, rho 35599⟩
        ⟨seg48In1AccX13 rho, seg48In1AccY13 rho⟩ ⟨rho 35611, rho 35612⟩ := by
  obtain ⟨r2842, r2843, r2844, r2845, r2846, r2847, r2848, r2849, r2850, r2851, r2852, r2853, r2854⟩ := seg48In1_rows12 rho h
  unfold Seg48.relationRow2842 at r2842

  unfold Seg48.relationRow2843 at r2843

  unfold Seg48.relationRow2844 at r2844

  unfold Seg48.relationRow2845 at r2845

  unfold Seg48.relationRow2846 at r2846

  unfold Seg48.relationRow2847 at r2847

  unfold Seg48.relationRow2848 at r2848

  unfold Seg48.relationRow2849 at r2849

  unfold Seg48.relationRow2850 at r2850

  unfold Seg48.relationRow2851 at r2851

  unfold Seg48.relationRow2852 at r2852

  unfold Seg48.relationRow2853 at r2853

  unfold Seg48.relationRow2854 at r2854

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX13 rho = seg48In1AccX12 rho + rho 35606 := by
    unfold seg48In1AccX13 seg48In1AccX12
    ring

  have hnexty : seg48In1AccY13 rho = seg48In1AccY12 rho + rho 35607 := by
    unfold seg48In1AccY13 seg48In1AccY12
    ring

  have ha0 : (rho 35598 + rho 35599) * (seg48In1AccX12 rho + seg48In1AccY12 rho) = rho 35600 := by
    unfold seg48In1AccX12 seg48In1AccY12
    linear_combination r2842
  have ha1 : rho 35599 * seg48In1AccX12 rho = rho 35601 := by
    unfold seg48In1AccX12
    linear_combination r2843
  have ha2 : rho 35598 * seg48In1AccY12 rho = rho 35602 := by
    unfold seg48In1AccY12
    linear_combination r2844
  have ha3 : 3021 * rho 35601 * rho 35602 = rho 35603 := by
    linear_combination r2845
  have ha4 : rho 35604 * (1 + rho 35603) = rho 35601 + rho 35602 := by
    linear_combination r2846
  have ha5 : rho 35605 * (1 - rho 35603) = rho 35600 - rho 35601 - rho 35602 := by
    linear_combination r2847
  have haddx :
      rho 35604 * (1 + 3021 * (rho 35599 * seg48In1AccX12 rho) * (rho 35598 * seg48In1AccY12 rho)) =
        rho 35599 * seg48In1AccX12 rho + rho 35598 * seg48In1AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35605 * (1 - 3021 * (rho 35599 * seg48In1AccX12 rho) * (rho 35598 * seg48In1AccY12 rho)) =
        (-1) * (rho 35599 * seg48In1AccX12 rho) - rho 35598 * seg48In1AccY12 rho +
          (seg48In1AccY12 rho - seg48In1AccX12 rho * (-1)) * (rho 35598 + rho 35599) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35605 * (1 - rho 35603) = rho 35600 - rho 35601 - rho 35602 := ha5
      _ = (-1) * rho 35601 - rho 35602 + (seg48In1AccY12 rho - seg48In1AccX12 rho * (-1)) *
          (rho 35598 + rho 35599) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX13 rho = seg48In1AccX12 rho - Bool.toZMod bit * (seg48In1AccX12 rho - rho 35604) := by
    have hd : rho 35606 = Bool.toZMod bit * (rho 35604 - seg48In1AccX12 rho) := by
      rw [← hbit]
      unfold seg48In1AccX12
      linear_combination -r2848
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY13 rho = seg48In1AccY12 rho - Bool.toZMod bit * (seg48In1AccY12 rho - rho 35605) := by
    have hd : rho 35607 = Bool.toZMod bit * (rho 35605 - seg48In1AccY12 rho) := by
      rw [← hbit]
      unfold seg48In1AccY12
      linear_combination -r2849
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35598 * rho 35599 = rho 35608 := by linear_combination r2850
  have hd1 : rho 35598 * rho 35598 = rho 35609 := by linear_combination r2851
  have hd2 : rho 35599 * rho 35599 = rho 35610 := by linear_combination r2852
  have hd3 : rho 35611 * (rho 35599 * rho 35599 + rho 35598 * rho 35598 * (-1)) =
      2 * (rho 35598 * rho 35599) := by
    rw [hd0, hd1, hd2]
    linear_combination r2853
  have hd4 : rho 35612 * (2 - (rho 35599 * rho 35599 + rho 35598 * rho 35598 * (-1))) =
      rho 35599 * rho 35599 - rho 35598 * rho 35598 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2854
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX12 rho, seg48In1AccY12 rho⟩ ⟨rho 35598, rho 35599⟩
    ⟨rho 35604, rho 35605⟩ ⟨seg48In1AccX13 rho, seg48In1AccY13 rho⟩ ⟨rho 35611, rho 35612⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2855 rho ∧ Seg48.relationRow2856 rho ∧ Seg48.relationRow2857 rho ∧ Seg48.relationRow2858 rho ∧ Seg48.relationRow2859 rho ∧ Seg48.relationRow2860 rho ∧ Seg48.relationRow2861 rho ∧ Seg48.relationRow2862 rho ∧ Seg48.relationRow2863 rho ∧ Seg48.relationRow2864 rho ∧ Seg48.relationRow2865 rho ∧ Seg48.relationRow2866 rho ∧ Seg48.relationRow2867 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867⟩

theorem seg48In1_rung13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35335 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX13 rho, seg48In1AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35611, rho 35612⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX13 rho, seg48In1AccY13 rho⟩ ⟨rho 35611, rho 35612⟩
        ⟨seg48In1AccX14 rho, seg48In1AccY14 rho⟩ ⟨rho 35624, rho 35625⟩ := by
  obtain ⟨r2855, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867⟩ := seg48In1_rows13 rho h
  unfold Seg48.relationRow2855 at r2855

  unfold Seg48.relationRow2856 at r2856

  unfold Seg48.relationRow2857 at r2857

  unfold Seg48.relationRow2858 at r2858

  unfold Seg48.relationRow2859 at r2859

  unfold Seg48.relationRow2860 at r2860

  unfold Seg48.relationRow2861 at r2861

  unfold Seg48.relationRow2862 at r2862

  unfold Seg48.relationRow2863 at r2863

  unfold Seg48.relationRow2864 at r2864

  unfold Seg48.relationRow2865 at r2865

  unfold Seg48.relationRow2866 at r2866

  unfold Seg48.relationRow2867 at r2867

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX14 rho = seg48In1AccX13 rho + rho 35619 := by
    unfold seg48In1AccX14 seg48In1AccX13
    ring

  have hnexty : seg48In1AccY14 rho = seg48In1AccY13 rho + rho 35620 := by
    unfold seg48In1AccY14 seg48In1AccY13
    ring

  have ha0 : (rho 35611 + rho 35612) * (seg48In1AccX13 rho + seg48In1AccY13 rho) = rho 35613 := by
    unfold seg48In1AccX13 seg48In1AccY13
    linear_combination r2855
  have ha1 : rho 35612 * seg48In1AccX13 rho = rho 35614 := by
    unfold seg48In1AccX13
    linear_combination r2856
  have ha2 : rho 35611 * seg48In1AccY13 rho = rho 35615 := by
    unfold seg48In1AccY13
    linear_combination r2857
  have ha3 : 3021 * rho 35614 * rho 35615 = rho 35616 := by
    linear_combination r2858
  have ha4 : rho 35617 * (1 + rho 35616) = rho 35614 + rho 35615 := by
    linear_combination r2859
  have ha5 : rho 35618 * (1 - rho 35616) = rho 35613 - rho 35614 - rho 35615 := by
    linear_combination r2860
  have haddx :
      rho 35617 * (1 + 3021 * (rho 35612 * seg48In1AccX13 rho) * (rho 35611 * seg48In1AccY13 rho)) =
        rho 35612 * seg48In1AccX13 rho + rho 35611 * seg48In1AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35618 * (1 - 3021 * (rho 35612 * seg48In1AccX13 rho) * (rho 35611 * seg48In1AccY13 rho)) =
        (-1) * (rho 35612 * seg48In1AccX13 rho) - rho 35611 * seg48In1AccY13 rho +
          (seg48In1AccY13 rho - seg48In1AccX13 rho * (-1)) * (rho 35611 + rho 35612) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35618 * (1 - rho 35616) = rho 35613 - rho 35614 - rho 35615 := ha5
      _ = (-1) * rho 35614 - rho 35615 + (seg48In1AccY13 rho - seg48In1AccX13 rho * (-1)) *
          (rho 35611 + rho 35612) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX14 rho = seg48In1AccX13 rho - Bool.toZMod bit * (seg48In1AccX13 rho - rho 35617) := by
    have hd : rho 35619 = Bool.toZMod bit * (rho 35617 - seg48In1AccX13 rho) := by
      rw [← hbit]
      unfold seg48In1AccX13
      linear_combination -r2861
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY14 rho = seg48In1AccY13 rho - Bool.toZMod bit * (seg48In1AccY13 rho - rho 35618) := by
    have hd : rho 35620 = Bool.toZMod bit * (rho 35618 - seg48In1AccY13 rho) := by
      rw [← hbit]
      unfold seg48In1AccY13
      linear_combination -r2862
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35611 * rho 35612 = rho 35621 := by linear_combination r2863
  have hd1 : rho 35611 * rho 35611 = rho 35622 := by linear_combination r2864
  have hd2 : rho 35612 * rho 35612 = rho 35623 := by linear_combination r2865
  have hd3 : rho 35624 * (rho 35612 * rho 35612 + rho 35611 * rho 35611 * (-1)) =
      2 * (rho 35611 * rho 35612) := by
    rw [hd0, hd1, hd2]
    linear_combination r2866
  have hd4 : rho 35625 * (2 - (rho 35612 * rho 35612 + rho 35611 * rho 35611 * (-1))) =
      rho 35612 * rho 35612 - rho 35611 * rho 35611 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2867
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX13 rho, seg48In1AccY13 rho⟩ ⟨rho 35611, rho 35612⟩
    ⟨rho 35617, rho 35618⟩ ⟨seg48In1AccX14 rho, seg48In1AccY14 rho⟩ ⟨rho 35624, rho 35625⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2868 rho ∧ Seg48.relationRow2869 rho ∧ Seg48.relationRow2870 rho ∧ Seg48.relationRow2871 rho ∧ Seg48.relationRow2872 rho ∧ Seg48.relationRow2873 rho ∧ Seg48.relationRow2874 rho ∧ Seg48.relationRow2875 rho ∧ Seg48.relationRow2876 rho ∧ Seg48.relationRow2877 rho ∧ Seg48.relationRow2878 rho ∧ Seg48.relationRow2879 rho ∧ Seg48.relationRow2880 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p35, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart35 at p35

  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨r2880, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880⟩

theorem seg48In1_rung14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35336 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX14 rho, seg48In1AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35624, rho 35625⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX14 rho, seg48In1AccY14 rho⟩ ⟨rho 35624, rho 35625⟩
        ⟨seg48In1AccX15 rho, seg48In1AccY15 rho⟩ ⟨rho 35637, rho 35638⟩ := by
  obtain ⟨r2868, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880⟩ := seg48In1_rows14 rho h
  unfold Seg48.relationRow2868 at r2868

  unfold Seg48.relationRow2869 at r2869

  unfold Seg48.relationRow2870 at r2870

  unfold Seg48.relationRow2871 at r2871

  unfold Seg48.relationRow2872 at r2872

  unfold Seg48.relationRow2873 at r2873

  unfold Seg48.relationRow2874 at r2874

  unfold Seg48.relationRow2875 at r2875

  unfold Seg48.relationRow2876 at r2876

  unfold Seg48.relationRow2877 at r2877

  unfold Seg48.relationRow2878 at r2878

  unfold Seg48.relationRow2879 at r2879

  unfold Seg48.relationRow2880 at r2880

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX15 rho = seg48In1AccX14 rho + rho 35632 := by
    unfold seg48In1AccX15 seg48In1AccX14
    ring

  have hnexty : seg48In1AccY15 rho = seg48In1AccY14 rho + rho 35633 := by
    unfold seg48In1AccY15 seg48In1AccY14
    ring

  have ha0 : (rho 35624 + rho 35625) * (seg48In1AccX14 rho + seg48In1AccY14 rho) = rho 35626 := by
    unfold seg48In1AccX14 seg48In1AccY14
    linear_combination r2868
  have ha1 : rho 35625 * seg48In1AccX14 rho = rho 35627 := by
    unfold seg48In1AccX14
    linear_combination r2869
  have ha2 : rho 35624 * seg48In1AccY14 rho = rho 35628 := by
    unfold seg48In1AccY14
    linear_combination r2870
  have ha3 : 3021 * rho 35627 * rho 35628 = rho 35629 := by
    linear_combination r2871
  have ha4 : rho 35630 * (1 + rho 35629) = rho 35627 + rho 35628 := by
    linear_combination r2872
  have ha5 : rho 35631 * (1 - rho 35629) = rho 35626 - rho 35627 - rho 35628 := by
    linear_combination r2873
  have haddx :
      rho 35630 * (1 + 3021 * (rho 35625 * seg48In1AccX14 rho) * (rho 35624 * seg48In1AccY14 rho)) =
        rho 35625 * seg48In1AccX14 rho + rho 35624 * seg48In1AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35631 * (1 - 3021 * (rho 35625 * seg48In1AccX14 rho) * (rho 35624 * seg48In1AccY14 rho)) =
        (-1) * (rho 35625 * seg48In1AccX14 rho) - rho 35624 * seg48In1AccY14 rho +
          (seg48In1AccY14 rho - seg48In1AccX14 rho * (-1)) * (rho 35624 + rho 35625) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35631 * (1 - rho 35629) = rho 35626 - rho 35627 - rho 35628 := ha5
      _ = (-1) * rho 35627 - rho 35628 + (seg48In1AccY14 rho - seg48In1AccX14 rho * (-1)) *
          (rho 35624 + rho 35625) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX15 rho = seg48In1AccX14 rho - Bool.toZMod bit * (seg48In1AccX14 rho - rho 35630) := by
    have hd : rho 35632 = Bool.toZMod bit * (rho 35630 - seg48In1AccX14 rho) := by
      rw [← hbit]
      unfold seg48In1AccX14
      linear_combination -r2874
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY15 rho = seg48In1AccY14 rho - Bool.toZMod bit * (seg48In1AccY14 rho - rho 35631) := by
    have hd : rho 35633 = Bool.toZMod bit * (rho 35631 - seg48In1AccY14 rho) := by
      rw [← hbit]
      unfold seg48In1AccY14
      linear_combination -r2875
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35624 * rho 35625 = rho 35634 := by linear_combination r2876
  have hd1 : rho 35624 * rho 35624 = rho 35635 := by linear_combination r2877
  have hd2 : rho 35625 * rho 35625 = rho 35636 := by linear_combination r2878
  have hd3 : rho 35637 * (rho 35625 * rho 35625 + rho 35624 * rho 35624 * (-1)) =
      2 * (rho 35624 * rho 35625) := by
    rw [hd0, hd1, hd2]
    linear_combination r2879
  have hd4 : rho 35638 * (2 - (rho 35625 * rho 35625 + rho 35624 * rho 35624 * (-1))) =
      rho 35625 * rho 35625 - rho 35624 * rho 35624 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2880
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX14 rho, seg48In1AccY14 rho⟩ ⟨rho 35624, rho 35625⟩
    ⟨rho 35630, rho 35631⟩ ⟨seg48In1AccX15 rho, seg48In1AccY15 rho⟩ ⟨rho 35637, rho 35638⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2881 rho ∧ Seg48.relationRow2882 rho ∧ Seg48.relationRow2883 rho ∧ Seg48.relationRow2884 rho ∧ Seg48.relationRow2885 rho ∧ Seg48.relationRow2886 rho ∧ Seg48.relationRow2887 rho ∧ Seg48.relationRow2888 rho ∧ Seg48.relationRow2889 rho ∧ Seg48.relationRow2890 rho ∧ Seg48.relationRow2891 rho ∧ Seg48.relationRow2892 rho ∧ Seg48.relationRow2893 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893⟩

theorem seg48In1_rung15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35337 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX15 rho, seg48In1AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35637, rho 35638⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX15 rho, seg48In1AccY15 rho⟩ ⟨rho 35637, rho 35638⟩
        ⟨seg48In1AccX16 rho, seg48In1AccY16 rho⟩ ⟨rho 35650, rho 35651⟩ := by
  obtain ⟨r2881, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893⟩ := seg48In1_rows15 rho h
  unfold Seg48.relationRow2881 at r2881

  unfold Seg48.relationRow2882 at r2882

  unfold Seg48.relationRow2883 at r2883

  unfold Seg48.relationRow2884 at r2884

  unfold Seg48.relationRow2885 at r2885

  unfold Seg48.relationRow2886 at r2886

  unfold Seg48.relationRow2887 at r2887

  unfold Seg48.relationRow2888 at r2888

  unfold Seg48.relationRow2889 at r2889

  unfold Seg48.relationRow2890 at r2890

  unfold Seg48.relationRow2891 at r2891

  unfold Seg48.relationRow2892 at r2892

  unfold Seg48.relationRow2893 at r2893

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX16 rho = seg48In1AccX15 rho + rho 35645 := by
    unfold seg48In1AccX16 seg48In1AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 35450 13]

    ring

  have hnexty : seg48In1AccY16 rho = seg48In1AccY15 rho + rho 35646 := by
    unfold seg48In1AccY16 seg48In1AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 35451 13]

    ring

  have ha0 : (rho 35637 + rho 35638) * (seg48In1AccX15 rho + seg48In1AccY15 rho) = rho 35639 := by
    unfold seg48In1AccX15 seg48In1AccY15
    linear_combination r2881
  have ha1 : rho 35638 * seg48In1AccX15 rho = rho 35640 := by
    unfold seg48In1AccX15
    linear_combination r2882
  have ha2 : rho 35637 * seg48In1AccY15 rho = rho 35641 := by
    unfold seg48In1AccY15
    linear_combination r2883
  have ha3 : 3021 * rho 35640 * rho 35641 = rho 35642 := by
    linear_combination r2884
  have ha4 : rho 35643 * (1 + rho 35642) = rho 35640 + rho 35641 := by
    linear_combination r2885
  have ha5 : rho 35644 * (1 - rho 35642) = rho 35639 - rho 35640 - rho 35641 := by
    linear_combination r2886
  have haddx :
      rho 35643 * (1 + 3021 * (rho 35638 * seg48In1AccX15 rho) * (rho 35637 * seg48In1AccY15 rho)) =
        rho 35638 * seg48In1AccX15 rho + rho 35637 * seg48In1AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35644 * (1 - 3021 * (rho 35638 * seg48In1AccX15 rho) * (rho 35637 * seg48In1AccY15 rho)) =
        (-1) * (rho 35638 * seg48In1AccX15 rho) - rho 35637 * seg48In1AccY15 rho +
          (seg48In1AccY15 rho - seg48In1AccX15 rho * (-1)) * (rho 35637 + rho 35638) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35644 * (1 - rho 35642) = rho 35639 - rho 35640 - rho 35641 := ha5
      _ = (-1) * rho 35640 - rho 35641 + (seg48In1AccY15 rho - seg48In1AccX15 rho * (-1)) *
          (rho 35637 + rho 35638) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX16 rho = seg48In1AccX15 rho - Bool.toZMod bit * (seg48In1AccX15 rho - rho 35643) := by
    have hd : rho 35645 = Bool.toZMod bit * (rho 35643 - seg48In1AccX15 rho) := by
      rw [← hbit]
      unfold seg48In1AccX15
      linear_combination -r2887
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY16 rho = seg48In1AccY15 rho - Bool.toZMod bit * (seg48In1AccY15 rho - rho 35644) := by
    have hd : rho 35646 = Bool.toZMod bit * (rho 35644 - seg48In1AccY15 rho) := by
      rw [← hbit]
      unfold seg48In1AccY15
      linear_combination -r2888
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35637 * rho 35638 = rho 35647 := by linear_combination r2889
  have hd1 : rho 35637 * rho 35637 = rho 35648 := by linear_combination r2890
  have hd2 : rho 35638 * rho 35638 = rho 35649 := by linear_combination r2891
  have hd3 : rho 35650 * (rho 35638 * rho 35638 + rho 35637 * rho 35637 * (-1)) =
      2 * (rho 35637 * rho 35638) := by
    rw [hd0, hd1, hd2]
    linear_combination r2892
  have hd4 : rho 35651 * (2 - (rho 35638 * rho 35638 + rho 35637 * rho 35637 * (-1))) =
      rho 35638 * rho 35638 - rho 35637 * rho 35637 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2893
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX15 rho, seg48In1AccY15 rho⟩ ⟨rho 35637, rho 35638⟩
    ⟨rho 35643, rho 35644⟩ ⟨seg48In1AccX16 rho, seg48In1AccY16 rho⟩ ⟨rho 35650, rho 35651⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2894 rho ∧ Seg48.relationRow2895 rho ∧ Seg48.relationRow2896 rho ∧ Seg48.relationRow2897 rho ∧ Seg48.relationRow2898 rho ∧ Seg48.relationRow2899 rho ∧ Seg48.relationRow2900 rho ∧ Seg48.relationRow2901 rho ∧ Seg48.relationRow2902 rho ∧ Seg48.relationRow2903 rho ∧ Seg48.relationRow2904 rho ∧ Seg48.relationRow2905 rho ∧ Seg48.relationRow2906 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906⟩

theorem seg48In1_rung16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35338 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX16 rho, seg48In1AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35650, rho 35651⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX16 rho, seg48In1AccY16 rho⟩ ⟨rho 35650, rho 35651⟩
        ⟨seg48In1AccX17 rho, seg48In1AccY17 rho⟩ ⟨rho 35663, rho 35664⟩ := by
  obtain ⟨r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906⟩ := seg48In1_rows16 rho h
  unfold Seg48.relationRow2894 at r2894

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2894

  unfold Seg48.relationRow2895 at r2895

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2895

  unfold Seg48.relationRow2896 at r2896

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2896

  unfold Seg48.relationRow2897 at r2897

  unfold Seg48.relationRow2898 at r2898

  unfold Seg48.relationRow2899 at r2899

  unfold Seg48.relationRow2900 at r2900

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2900

  unfold Seg48.relationRow2901 at r2901

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2901

  unfold Seg48.relationRow2902 at r2902

  unfold Seg48.relationRow2903 at r2903

  unfold Seg48.relationRow2904 at r2904

  unfold Seg48.relationRow2905 at r2905

  unfold Seg48.relationRow2906 at r2906

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX17 rho = seg48In1AccX16 rho + rho 35658 := by
    unfold seg48In1AccX17 seg48In1AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 16]

    ring

  have hnexty : seg48In1AccY17 rho = seg48In1AccY16 rho + rho 35659 := by
    unfold seg48In1AccY17 seg48In1AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 16]

    ring

  have ha0 : (rho 35650 + rho 35651) * (seg48In1AccX16 rho + seg48In1AccY16 rho) = rho 35652 := by
    unfold seg48In1AccX16 seg48In1AccY16
    linear_combination r2894
  have ha1 : rho 35651 * seg48In1AccX16 rho = rho 35653 := by
    unfold seg48In1AccX16
    linear_combination r2895
  have ha2 : rho 35650 * seg48In1AccY16 rho = rho 35654 := by
    unfold seg48In1AccY16
    linear_combination r2896
  have ha3 : 3021 * rho 35653 * rho 35654 = rho 35655 := by
    linear_combination r2897
  have ha4 : rho 35656 * (1 + rho 35655) = rho 35653 + rho 35654 := by
    linear_combination r2898
  have ha5 : rho 35657 * (1 - rho 35655) = rho 35652 - rho 35653 - rho 35654 := by
    linear_combination r2899
  have haddx :
      rho 35656 * (1 + 3021 * (rho 35651 * seg48In1AccX16 rho) * (rho 35650 * seg48In1AccY16 rho)) =
        rho 35651 * seg48In1AccX16 rho + rho 35650 * seg48In1AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35657 * (1 - 3021 * (rho 35651 * seg48In1AccX16 rho) * (rho 35650 * seg48In1AccY16 rho)) =
        (-1) * (rho 35651 * seg48In1AccX16 rho) - rho 35650 * seg48In1AccY16 rho +
          (seg48In1AccY16 rho - seg48In1AccX16 rho * (-1)) * (rho 35650 + rho 35651) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35657 * (1 - rho 35655) = rho 35652 - rho 35653 - rho 35654 := ha5
      _ = (-1) * rho 35653 - rho 35654 + (seg48In1AccY16 rho - seg48In1AccX16 rho * (-1)) *
          (rho 35650 + rho 35651) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX17 rho = seg48In1AccX16 rho - Bool.toZMod bit * (seg48In1AccX16 rho - rho 35656) := by
    have hd : rho 35658 = Bool.toZMod bit * (rho 35656 - seg48In1AccX16 rho) := by
      rw [← hbit]
      unfold seg48In1AccX16
      linear_combination -r2900
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY17 rho = seg48In1AccY16 rho - Bool.toZMod bit * (seg48In1AccY16 rho - rho 35657) := by
    have hd : rho 35659 = Bool.toZMod bit * (rho 35657 - seg48In1AccY16 rho) := by
      rw [← hbit]
      unfold seg48In1AccY16
      linear_combination -r2901
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35650 * rho 35651 = rho 35660 := by linear_combination r2902
  have hd1 : rho 35650 * rho 35650 = rho 35661 := by linear_combination r2903
  have hd2 : rho 35651 * rho 35651 = rho 35662 := by linear_combination r2904
  have hd3 : rho 35663 * (rho 35651 * rho 35651 + rho 35650 * rho 35650 * (-1)) =
      2 * (rho 35650 * rho 35651) := by
    rw [hd0, hd1, hd2]
    linear_combination r2905
  have hd4 : rho 35664 * (2 - (rho 35651 * rho 35651 + rho 35650 * rho 35650 * (-1))) =
      rho 35651 * rho 35651 - rho 35650 * rho 35650 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2906
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX16 rho, seg48In1AccY16 rho⟩ ⟨rho 35650, rho 35651⟩
    ⟨rho 35656, rho 35657⟩ ⟨seg48In1AccX17 rho, seg48In1AccY17 rho⟩ ⟨rho 35663, rho 35664⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2907 rho ∧ Seg48.relationRow2908 rho ∧ Seg48.relationRow2909 rho ∧ Seg48.relationRow2910 rho ∧ Seg48.relationRow2911 rho ∧ Seg48.relationRow2912 rho ∧ Seg48.relationRow2913 rho ∧ Seg48.relationRow2914 rho ∧ Seg48.relationRow2915 rho ∧ Seg48.relationRow2916 rho ∧ Seg48.relationRow2917 rho ∧ Seg48.relationRow2918 rho ∧ Seg48.relationRow2919 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919⟩

theorem seg48In1_rung17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35339 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX17 rho, seg48In1AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35663, rho 35664⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX17 rho, seg48In1AccY17 rho⟩ ⟨rho 35663, rho 35664⟩
        ⟨seg48In1AccX18 rho, seg48In1AccY18 rho⟩ ⟨rho 35676, rho 35677⟩ := by
  obtain ⟨r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919⟩ := seg48In1_rows17 rho h
  unfold Seg48.relationRow2907 at r2907

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2907

  unfold Seg48.relationRow2908 at r2908

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2908

  unfold Seg48.relationRow2909 at r2909

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2909

  unfold Seg48.relationRow2910 at r2910

  unfold Seg48.relationRow2911 at r2911

  unfold Seg48.relationRow2912 at r2912

  unfold Seg48.relationRow2913 at r2913

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2913

  unfold Seg48.relationRow2914 at r2914

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2914

  unfold Seg48.relationRow2915 at r2915

  unfold Seg48.relationRow2916 at r2916

  unfold Seg48.relationRow2917 at r2917

  unfold Seg48.relationRow2918 at r2918

  unfold Seg48.relationRow2919 at r2919

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX18 rho = seg48In1AccX17 rho + rho 35671 := by
    unfold seg48In1AccX18 seg48In1AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 17]

    ring

  have hnexty : seg48In1AccY18 rho = seg48In1AccY17 rho + rho 35672 := by
    unfold seg48In1AccY18 seg48In1AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 17]

    ring

  have ha0 : (rho 35663 + rho 35664) * (seg48In1AccX17 rho + seg48In1AccY17 rho) = rho 35665 := by
    unfold seg48In1AccX17 seg48In1AccY17
    linear_combination r2907
  have ha1 : rho 35664 * seg48In1AccX17 rho = rho 35666 := by
    unfold seg48In1AccX17
    linear_combination r2908
  have ha2 : rho 35663 * seg48In1AccY17 rho = rho 35667 := by
    unfold seg48In1AccY17
    linear_combination r2909
  have ha3 : 3021 * rho 35666 * rho 35667 = rho 35668 := by
    linear_combination r2910
  have ha4 : rho 35669 * (1 + rho 35668) = rho 35666 + rho 35667 := by
    linear_combination r2911
  have ha5 : rho 35670 * (1 - rho 35668) = rho 35665 - rho 35666 - rho 35667 := by
    linear_combination r2912
  have haddx :
      rho 35669 * (1 + 3021 * (rho 35664 * seg48In1AccX17 rho) * (rho 35663 * seg48In1AccY17 rho)) =
        rho 35664 * seg48In1AccX17 rho + rho 35663 * seg48In1AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35670 * (1 - 3021 * (rho 35664 * seg48In1AccX17 rho) * (rho 35663 * seg48In1AccY17 rho)) =
        (-1) * (rho 35664 * seg48In1AccX17 rho) - rho 35663 * seg48In1AccY17 rho +
          (seg48In1AccY17 rho - seg48In1AccX17 rho * (-1)) * (rho 35663 + rho 35664) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35670 * (1 - rho 35668) = rho 35665 - rho 35666 - rho 35667 := ha5
      _ = (-1) * rho 35666 - rho 35667 + (seg48In1AccY17 rho - seg48In1AccX17 rho * (-1)) *
          (rho 35663 + rho 35664) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX18 rho = seg48In1AccX17 rho - Bool.toZMod bit * (seg48In1AccX17 rho - rho 35669) := by
    have hd : rho 35671 = Bool.toZMod bit * (rho 35669 - seg48In1AccX17 rho) := by
      rw [← hbit]
      unfold seg48In1AccX17
      linear_combination -r2913
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY18 rho = seg48In1AccY17 rho - Bool.toZMod bit * (seg48In1AccY17 rho - rho 35670) := by
    have hd : rho 35672 = Bool.toZMod bit * (rho 35670 - seg48In1AccY17 rho) := by
      rw [← hbit]
      unfold seg48In1AccY17
      linear_combination -r2914
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35663 * rho 35664 = rho 35673 := by linear_combination r2915
  have hd1 : rho 35663 * rho 35663 = rho 35674 := by linear_combination r2916
  have hd2 : rho 35664 * rho 35664 = rho 35675 := by linear_combination r2917
  have hd3 : rho 35676 * (rho 35664 * rho 35664 + rho 35663 * rho 35663 * (-1)) =
      2 * (rho 35663 * rho 35664) := by
    rw [hd0, hd1, hd2]
    linear_combination r2918
  have hd4 : rho 35677 * (2 - (rho 35664 * rho 35664 + rho 35663 * rho 35663 * (-1))) =
      rho 35664 * rho 35664 - rho 35663 * rho 35663 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2919
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX17 rho, seg48In1AccY17 rho⟩ ⟨rho 35663, rho 35664⟩
    ⟨rho 35669, rho 35670⟩ ⟨seg48In1AccX18 rho, seg48In1AccY18 rho⟩ ⟨rho 35676, rho 35677⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2920 rho ∧ Seg48.relationRow2921 rho ∧ Seg48.relationRow2922 rho ∧ Seg48.relationRow2923 rho ∧ Seg48.relationRow2924 rho ∧ Seg48.relationRow2925 rho ∧ Seg48.relationRow2926 rho ∧ Seg48.relationRow2927 rho ∧ Seg48.relationRow2928 rho ∧ Seg48.relationRow2929 rho ∧ Seg48.relationRow2930 rho ∧ Seg48.relationRow2931 rho ∧ Seg48.relationRow2932 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932⟩

theorem seg48In1_rung18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35340 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX18 rho, seg48In1AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35676, rho 35677⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX18 rho, seg48In1AccY18 rho⟩ ⟨rho 35676, rho 35677⟩
        ⟨seg48In1AccX19 rho, seg48In1AccY19 rho⟩ ⟨rho 35689, rho 35690⟩ := by
  obtain ⟨r2920, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932⟩ := seg48In1_rows18 rho h
  unfold Seg48.relationRow2920 at r2920

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2920

  unfold Seg48.relationRow2921 at r2921

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2921

  unfold Seg48.relationRow2922 at r2922

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2922

  unfold Seg48.relationRow2923 at r2923

  unfold Seg48.relationRow2924 at r2924

  unfold Seg48.relationRow2925 at r2925

  unfold Seg48.relationRow2926 at r2926

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2926

  unfold Seg48.relationRow2927 at r2927

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2927

  unfold Seg48.relationRow2928 at r2928

  unfold Seg48.relationRow2929 at r2929

  unfold Seg48.relationRow2930 at r2930

  unfold Seg48.relationRow2931 at r2931

  unfold Seg48.relationRow2932 at r2932

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX19 rho = seg48In1AccX18 rho + rho 35684 := by
    unfold seg48In1AccX19 seg48In1AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 18]

    ring

  have hnexty : seg48In1AccY19 rho = seg48In1AccY18 rho + rho 35685 := by
    unfold seg48In1AccY19 seg48In1AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 18]

    ring

  have ha0 : (rho 35676 + rho 35677) * (seg48In1AccX18 rho + seg48In1AccY18 rho) = rho 35678 := by
    unfold seg48In1AccX18 seg48In1AccY18
    linear_combination r2920
  have ha1 : rho 35677 * seg48In1AccX18 rho = rho 35679 := by
    unfold seg48In1AccX18
    linear_combination r2921
  have ha2 : rho 35676 * seg48In1AccY18 rho = rho 35680 := by
    unfold seg48In1AccY18
    linear_combination r2922
  have ha3 : 3021 * rho 35679 * rho 35680 = rho 35681 := by
    linear_combination r2923
  have ha4 : rho 35682 * (1 + rho 35681) = rho 35679 + rho 35680 := by
    linear_combination r2924
  have ha5 : rho 35683 * (1 - rho 35681) = rho 35678 - rho 35679 - rho 35680 := by
    linear_combination r2925
  have haddx :
      rho 35682 * (1 + 3021 * (rho 35677 * seg48In1AccX18 rho) * (rho 35676 * seg48In1AccY18 rho)) =
        rho 35677 * seg48In1AccX18 rho + rho 35676 * seg48In1AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35683 * (1 - 3021 * (rho 35677 * seg48In1AccX18 rho) * (rho 35676 * seg48In1AccY18 rho)) =
        (-1) * (rho 35677 * seg48In1AccX18 rho) - rho 35676 * seg48In1AccY18 rho +
          (seg48In1AccY18 rho - seg48In1AccX18 rho * (-1)) * (rho 35676 + rho 35677) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35683 * (1 - rho 35681) = rho 35678 - rho 35679 - rho 35680 := ha5
      _ = (-1) * rho 35679 - rho 35680 + (seg48In1AccY18 rho - seg48In1AccX18 rho * (-1)) *
          (rho 35676 + rho 35677) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX19 rho = seg48In1AccX18 rho - Bool.toZMod bit * (seg48In1AccX18 rho - rho 35682) := by
    have hd : rho 35684 = Bool.toZMod bit * (rho 35682 - seg48In1AccX18 rho) := by
      rw [← hbit]
      unfold seg48In1AccX18
      linear_combination -r2926
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY19 rho = seg48In1AccY18 rho - Bool.toZMod bit * (seg48In1AccY18 rho - rho 35683) := by
    have hd : rho 35685 = Bool.toZMod bit * (rho 35683 - seg48In1AccY18 rho) := by
      rw [← hbit]
      unfold seg48In1AccY18
      linear_combination -r2927
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35676 * rho 35677 = rho 35686 := by linear_combination r2928
  have hd1 : rho 35676 * rho 35676 = rho 35687 := by linear_combination r2929
  have hd2 : rho 35677 * rho 35677 = rho 35688 := by linear_combination r2930
  have hd3 : rho 35689 * (rho 35677 * rho 35677 + rho 35676 * rho 35676 * (-1)) =
      2 * (rho 35676 * rho 35677) := by
    rw [hd0, hd1, hd2]
    linear_combination r2931
  have hd4 : rho 35690 * (2 - (rho 35677 * rho 35677 + rho 35676 * rho 35676 * (-1))) =
      rho 35677 * rho 35677 - rho 35676 * rho 35676 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2932
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX18 rho, seg48In1AccY18 rho⟩ ⟨rho 35676, rho 35677⟩
    ⟨rho 35682, rho 35683⟩ ⟨seg48In1AccX19 rho, seg48In1AccY19 rho⟩ ⟨rho 35689, rho 35690⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2933 rho ∧ Seg48.relationRow2934 rho ∧ Seg48.relationRow2935 rho ∧ Seg48.relationRow2936 rho ∧ Seg48.relationRow2937 rho ∧ Seg48.relationRow2938 rho ∧ Seg48.relationRow2939 rho ∧ Seg48.relationRow2940 rho ∧ Seg48.relationRow2941 rho ∧ Seg48.relationRow2942 rho ∧ Seg48.relationRow2943 rho ∧ Seg48.relationRow2944 rho ∧ Seg48.relationRow2945 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945⟩

theorem seg48In1_rung19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35341 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX19 rho, seg48In1AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35689, rho 35690⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX19 rho, seg48In1AccY19 rho⟩ ⟨rho 35689, rho 35690⟩
        ⟨seg48In1AccX20 rho, seg48In1AccY20 rho⟩ ⟨rho 35702, rho 35703⟩ := by
  obtain ⟨r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945⟩ := seg48In1_rows19 rho h
  unfold Seg48.relationRow2933 at r2933

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2933

  unfold Seg48.relationRow2934 at r2934

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2934

  unfold Seg48.relationRow2935 at r2935

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2935

  unfold Seg48.relationRow2936 at r2936

  unfold Seg48.relationRow2937 at r2937

  unfold Seg48.relationRow2938 at r2938

  unfold Seg48.relationRow2939 at r2939

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2939

  unfold Seg48.relationRow2940 at r2940

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2940

  unfold Seg48.relationRow2941 at r2941

  unfold Seg48.relationRow2942 at r2942

  unfold Seg48.relationRow2943 at r2943

  unfold Seg48.relationRow2944 at r2944

  unfold Seg48.relationRow2945 at r2945

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX20 rho = seg48In1AccX19 rho + rho 35697 := by
    unfold seg48In1AccX20 seg48In1AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 19]

    ring

  have hnexty : seg48In1AccY20 rho = seg48In1AccY19 rho + rho 35698 := by
    unfold seg48In1AccY20 seg48In1AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 19]

    ring

  have ha0 : (rho 35689 + rho 35690) * (seg48In1AccX19 rho + seg48In1AccY19 rho) = rho 35691 := by
    unfold seg48In1AccX19 seg48In1AccY19
    linear_combination r2933
  have ha1 : rho 35690 * seg48In1AccX19 rho = rho 35692 := by
    unfold seg48In1AccX19
    linear_combination r2934
  have ha2 : rho 35689 * seg48In1AccY19 rho = rho 35693 := by
    unfold seg48In1AccY19
    linear_combination r2935
  have ha3 : 3021 * rho 35692 * rho 35693 = rho 35694 := by
    linear_combination r2936
  have ha4 : rho 35695 * (1 + rho 35694) = rho 35692 + rho 35693 := by
    linear_combination r2937
  have ha5 : rho 35696 * (1 - rho 35694) = rho 35691 - rho 35692 - rho 35693 := by
    linear_combination r2938
  have haddx :
      rho 35695 * (1 + 3021 * (rho 35690 * seg48In1AccX19 rho) * (rho 35689 * seg48In1AccY19 rho)) =
        rho 35690 * seg48In1AccX19 rho + rho 35689 * seg48In1AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35696 * (1 - 3021 * (rho 35690 * seg48In1AccX19 rho) * (rho 35689 * seg48In1AccY19 rho)) =
        (-1) * (rho 35690 * seg48In1AccX19 rho) - rho 35689 * seg48In1AccY19 rho +
          (seg48In1AccY19 rho - seg48In1AccX19 rho * (-1)) * (rho 35689 + rho 35690) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35696 * (1 - rho 35694) = rho 35691 - rho 35692 - rho 35693 := ha5
      _ = (-1) * rho 35692 - rho 35693 + (seg48In1AccY19 rho - seg48In1AccX19 rho * (-1)) *
          (rho 35689 + rho 35690) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX20 rho = seg48In1AccX19 rho - Bool.toZMod bit * (seg48In1AccX19 rho - rho 35695) := by
    have hd : rho 35697 = Bool.toZMod bit * (rho 35695 - seg48In1AccX19 rho) := by
      rw [← hbit]
      unfold seg48In1AccX19
      linear_combination -r2939
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY20 rho = seg48In1AccY19 rho - Bool.toZMod bit * (seg48In1AccY19 rho - rho 35696) := by
    have hd : rho 35698 = Bool.toZMod bit * (rho 35696 - seg48In1AccY19 rho) := by
      rw [← hbit]
      unfold seg48In1AccY19
      linear_combination -r2940
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35689 * rho 35690 = rho 35699 := by linear_combination r2941
  have hd1 : rho 35689 * rho 35689 = rho 35700 := by linear_combination r2942
  have hd2 : rho 35690 * rho 35690 = rho 35701 := by linear_combination r2943
  have hd3 : rho 35702 * (rho 35690 * rho 35690 + rho 35689 * rho 35689 * (-1)) =
      2 * (rho 35689 * rho 35690) := by
    rw [hd0, hd1, hd2]
    linear_combination r2944
  have hd4 : rho 35703 * (2 - (rho 35690 * rho 35690 + rho 35689 * rho 35689 * (-1))) =
      rho 35690 * rho 35690 - rho 35689 * rho 35689 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2945
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX19 rho, seg48In1AccY19 rho⟩ ⟨rho 35689, rho 35690⟩
    ⟨rho 35695, rho 35696⟩ ⟨seg48In1AccX20 rho, seg48In1AccY20 rho⟩ ⟨rho 35702, rho 35703⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2946 rho ∧ Seg48.relationRow2947 rho ∧ Seg48.relationRow2948 rho ∧ Seg48.relationRow2949 rho ∧ Seg48.relationRow2950 rho ∧ Seg48.relationRow2951 rho ∧ Seg48.relationRow2952 rho ∧ Seg48.relationRow2953 rho ∧ Seg48.relationRow2954 rho ∧ Seg48.relationRow2955 rho ∧ Seg48.relationRow2956 rho ∧ Seg48.relationRow2957 rho ∧ Seg48.relationRow2958 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, _⟩

  exact ⟨r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958⟩

theorem seg48In1_rung20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35342 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX20 rho, seg48In1AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35702, rho 35703⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX20 rho, seg48In1AccY20 rho⟩ ⟨rho 35702, rho 35703⟩
        ⟨seg48In1AccX21 rho, seg48In1AccY21 rho⟩ ⟨rho 35715, rho 35716⟩ := by
  obtain ⟨r2946, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958⟩ := seg48In1_rows20 rho h
  unfold Seg48.relationRow2946 at r2946

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2946

  unfold Seg48.relationRow2947 at r2947

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2947

  unfold Seg48.relationRow2948 at r2948

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2948

  unfold Seg48.relationRow2949 at r2949

  unfold Seg48.relationRow2950 at r2950

  unfold Seg48.relationRow2951 at r2951

  unfold Seg48.relationRow2952 at r2952

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2952

  unfold Seg48.relationRow2953 at r2953

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2953

  unfold Seg48.relationRow2954 at r2954

  unfold Seg48.relationRow2955 at r2955

  unfold Seg48.relationRow2956 at r2956

  unfold Seg48.relationRow2957 at r2957

  unfold Seg48.relationRow2958 at r2958

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX21 rho = seg48In1AccX20 rho + rho 35710 := by
    unfold seg48In1AccX21 seg48In1AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 20]

    ring

  have hnexty : seg48In1AccY21 rho = seg48In1AccY20 rho + rho 35711 := by
    unfold seg48In1AccY21 seg48In1AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 20]

    ring

  have ha0 : (rho 35702 + rho 35703) * (seg48In1AccX20 rho + seg48In1AccY20 rho) = rho 35704 := by
    unfold seg48In1AccX20 seg48In1AccY20
    linear_combination r2946
  have ha1 : rho 35703 * seg48In1AccX20 rho = rho 35705 := by
    unfold seg48In1AccX20
    linear_combination r2947
  have ha2 : rho 35702 * seg48In1AccY20 rho = rho 35706 := by
    unfold seg48In1AccY20
    linear_combination r2948
  have ha3 : 3021 * rho 35705 * rho 35706 = rho 35707 := by
    linear_combination r2949
  have ha4 : rho 35708 * (1 + rho 35707) = rho 35705 + rho 35706 := by
    linear_combination r2950
  have ha5 : rho 35709 * (1 - rho 35707) = rho 35704 - rho 35705 - rho 35706 := by
    linear_combination r2951
  have haddx :
      rho 35708 * (1 + 3021 * (rho 35703 * seg48In1AccX20 rho) * (rho 35702 * seg48In1AccY20 rho)) =
        rho 35703 * seg48In1AccX20 rho + rho 35702 * seg48In1AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35709 * (1 - 3021 * (rho 35703 * seg48In1AccX20 rho) * (rho 35702 * seg48In1AccY20 rho)) =
        (-1) * (rho 35703 * seg48In1AccX20 rho) - rho 35702 * seg48In1AccY20 rho +
          (seg48In1AccY20 rho - seg48In1AccX20 rho * (-1)) * (rho 35702 + rho 35703) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35709 * (1 - rho 35707) = rho 35704 - rho 35705 - rho 35706 := ha5
      _ = (-1) * rho 35705 - rho 35706 + (seg48In1AccY20 rho - seg48In1AccX20 rho * (-1)) *
          (rho 35702 + rho 35703) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX21 rho = seg48In1AccX20 rho - Bool.toZMod bit * (seg48In1AccX20 rho - rho 35708) := by
    have hd : rho 35710 = Bool.toZMod bit * (rho 35708 - seg48In1AccX20 rho) := by
      rw [← hbit]
      unfold seg48In1AccX20
      linear_combination -r2952
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY21 rho = seg48In1AccY20 rho - Bool.toZMod bit * (seg48In1AccY20 rho - rho 35709) := by
    have hd : rho 35711 = Bool.toZMod bit * (rho 35709 - seg48In1AccY20 rho) := by
      rw [← hbit]
      unfold seg48In1AccY20
      linear_combination -r2953
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35702 * rho 35703 = rho 35712 := by linear_combination r2954
  have hd1 : rho 35702 * rho 35702 = rho 35713 := by linear_combination r2955
  have hd2 : rho 35703 * rho 35703 = rho 35714 := by linear_combination r2956
  have hd3 : rho 35715 * (rho 35703 * rho 35703 + rho 35702 * rho 35702 * (-1)) =
      2 * (rho 35702 * rho 35703) := by
    rw [hd0, hd1, hd2]
    linear_combination r2957
  have hd4 : rho 35716 * (2 - (rho 35703 * rho 35703 + rho 35702 * rho 35702 * (-1))) =
      rho 35703 * rho 35703 - rho 35702 * rho 35702 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2958
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX20 rho, seg48In1AccY20 rho⟩ ⟨rho 35702, rho 35703⟩
    ⟨rho 35708, rho 35709⟩ ⟨seg48In1AccX21 rho, seg48In1AccY21 rho⟩ ⟨rho 35715, rho 35716⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_rows21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow2959 rho ∧ Seg48.relationRow2960 rho ∧ Seg48.relationRow2961 rho ∧ Seg48.relationRow2962 rho ∧ Seg48.relationRow2963 rho ∧ Seg48.relationRow2964 rho ∧ Seg48.relationRow2965 rho ∧ Seg48.relationRow2966 rho ∧ Seg48.relationRow2967 rho ∧ Seg48.relationRow2968 rho ∧ Seg48.relationRow2969 rho ∧ Seg48.relationRow2970 rho ∧ Seg48.relationRow2971 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p36, p37, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart36 at p36

  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2959⟩

  unfold Seg48.relationPart37 at p37

  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r2959, r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971⟩

theorem seg48In1_rung21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 35343 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In1AccX21 rho, seg48In1AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 35715, rho 35716⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In1AccX21 rho, seg48In1AccY21 rho⟩ ⟨rho 35715, rho 35716⟩
        ⟨seg48In1AccX22 rho, seg48In1AccY22 rho⟩ ⟨rho 35728, rho 35729⟩ := by
  obtain ⟨r2959, r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971⟩ := seg48In1_rows21 rho h
  unfold Seg48.relationRow2959 at r2959

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2959

  unfold Seg48.relationRow2960 at r2960

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2960

  unfold Seg48.relationRow2961 at r2961

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2961

  unfold Seg48.relationRow2962 at r2962

  unfold Seg48.relationRow2963 at r2963

  unfold Seg48.relationRow2964 at r2964

  unfold Seg48.relationRow2965 at r2965

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2965

  unfold Seg48.relationRow2966 at r2966

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2966

  unfold Seg48.relationRow2967 at r2967

  unfold Seg48.relationRow2968 at r2968

  unfold Seg48.relationRow2969 at r2969

  unfold Seg48.relationRow2970 at r2970

  unfold Seg48.relationRow2971 at r2971

  intro bit hbit hacc hcur
  have hnextx : seg48In1AccX22 rho = seg48In1AccX21 rho + rho 35723 := by
    unfold seg48In1AccX22 seg48In1AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35450 13 21]

    ring

  have hnexty : seg48In1AccY22 rho = seg48In1AccY21 rho + rho 35724 := by
    unfold seg48In1AccY22 seg48In1AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 35451 13 21]

    ring

  have ha0 : (rho 35715 + rho 35716) * (seg48In1AccX21 rho + seg48In1AccY21 rho) = rho 35717 := by
    unfold seg48In1AccX21 seg48In1AccY21
    linear_combination r2959
  have ha1 : rho 35716 * seg48In1AccX21 rho = rho 35718 := by
    unfold seg48In1AccX21
    linear_combination r2960
  have ha2 : rho 35715 * seg48In1AccY21 rho = rho 35719 := by
    unfold seg48In1AccY21
    linear_combination r2961
  have ha3 : 3021 * rho 35718 * rho 35719 = rho 35720 := by
    linear_combination r2962
  have ha4 : rho 35721 * (1 + rho 35720) = rho 35718 + rho 35719 := by
    linear_combination r2963
  have ha5 : rho 35722 * (1 - rho 35720) = rho 35717 - rho 35718 - rho 35719 := by
    linear_combination r2964
  have haddx :
      rho 35721 * (1 + 3021 * (rho 35716 * seg48In1AccX21 rho) * (rho 35715 * seg48In1AccY21 rho)) =
        rho 35716 * seg48In1AccX21 rho + rho 35715 * seg48In1AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 35722 * (1 - 3021 * (rho 35716 * seg48In1AccX21 rho) * (rho 35715 * seg48In1AccY21 rho)) =
        (-1) * (rho 35716 * seg48In1AccX21 rho) - rho 35715 * seg48In1AccY21 rho +
          (seg48In1AccY21 rho - seg48In1AccX21 rho * (-1)) * (rho 35715 + rho 35716) := by
    rw [ha1, ha2, ha3]
    calc
      rho 35722 * (1 - rho 35720) = rho 35717 - rho 35718 - rho 35719 := ha5
      _ = (-1) * rho 35718 - rho 35719 + (seg48In1AccY21 rho - seg48In1AccX21 rho * (-1)) *
          (rho 35715 + rho 35716) := by
        rw [← ha0]
        ring
  have hselx : seg48In1AccX22 rho = seg48In1AccX21 rho - Bool.toZMod bit * (seg48In1AccX21 rho - rho 35721) := by
    have hd : rho 35723 = Bool.toZMod bit * (rho 35721 - seg48In1AccX21 rho) := by
      rw [← hbit]
      unfold seg48In1AccX21
      linear_combination -r2965
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In1AccY22 rho = seg48In1AccY21 rho - Bool.toZMod bit * (seg48In1AccY21 rho - rho 35722) := by
    have hd : rho 35724 = Bool.toZMod bit * (rho 35722 - seg48In1AccY21 rho) := by
      rw [← hbit]
      unfold seg48In1AccY21
      linear_combination -r2966
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 35715 * rho 35716 = rho 35725 := by linear_combination r2967
  have hd1 : rho 35715 * rho 35715 = rho 35726 := by linear_combination r2968
  have hd2 : rho 35716 * rho 35716 = rho 35727 := by linear_combination r2969
  have hd3 : rho 35728 * (rho 35716 * rho 35716 + rho 35715 * rho 35715 * (-1)) =
      2 * (rho 35715 * rho 35716) := by
    rw [hd0, hd1, hd2]
    linear_combination r2970
  have hd4 : rho 35729 * (2 - (rho 35716 * rho 35716 + rho 35715 * rho 35715 * (-1))) =
      rho 35716 * rho 35716 - rho 35715 * rho 35715 * (-1) := by
    rw [hd1, hd2]
    linear_combination r2971
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In1AccX21 rho, seg48In1AccY21 rho⟩ ⟨rho 35715, rho 35716⟩
    ⟨rho 35721, rho 35722⟩ ⟨seg48In1AccX22 rho, seg48In1AccY22 rho⟩ ⟨rho 35728, rho 35729⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In1_hstep_c1 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (35322 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg48In1AccState rho i) →
      EdwardsBridge.onCurve (seg48In1CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In1AccState rho i) (seg48In1CurState rho i)
        (seg48In1AccState rho (i + 1)) (seg48In1CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In1_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg48In1_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg48In1_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg48In1_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg48In1_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg48In1_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg48In1_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg48In1_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg48In1_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg48In1_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg48In1_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
