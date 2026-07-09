import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg48In0_rows11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1042 rho ∧ Seg48.relationRow1043 rho ∧ Seg48.relationRow1044 rho ∧ Seg48.relationRow1045 rho ∧ Seg48.relationRow1046 rho ∧ Seg48.relationRow1047 rho ∧ Seg48.relationRow1048 rho ∧ Seg48.relationRow1049 rho ∧ Seg48.relationRow1050 rho ∧ Seg48.relationRow1051 rho ∧ Seg48.relationRow1052 rho ∧ Seg48.relationRow1053 rho ∧ Seg48.relationRow1054 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨_, _, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054⟩

theorem seg48In0_rung11 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33547 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX11 rho, seg48In0AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33799, rho 33800⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX11 rho, seg48In0AccY11 rho⟩ ⟨rho 33799, rho 33800⟩
        ⟨seg48In0AccX12 rho, seg48In0AccY12 rho⟩ ⟨rho 33812, rho 33813⟩ := by
  obtain ⟨r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054⟩ := seg48In0_rows11 rho h
  unfold Seg48.relationRow1042 at r1042

  unfold Seg48.relationRow1043 at r1043

  unfold Seg48.relationRow1044 at r1044

  unfold Seg48.relationRow1045 at r1045

  unfold Seg48.relationRow1046 at r1046

  unfold Seg48.relationRow1047 at r1047

  unfold Seg48.relationRow1048 at r1048

  unfold Seg48.relationRow1049 at r1049

  unfold Seg48.relationRow1050 at r1050

  unfold Seg48.relationRow1051 at r1051

  unfold Seg48.relationRow1052 at r1052

  unfold Seg48.relationRow1053 at r1053

  unfold Seg48.relationRow1054 at r1054

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX12 rho = seg48In0AccX11 rho + rho 33807 := by
    unfold seg48In0AccX12 seg48In0AccX11
    ring

  have hnexty : seg48In0AccY12 rho = seg48In0AccY11 rho + rho 33808 := by
    unfold seg48In0AccY12 seg48In0AccY11
    ring

  have ha0 : (rho 33799 + rho 33800) * (seg48In0AccX11 rho + seg48In0AccY11 rho) = rho 33801 := by
    unfold seg48In0AccX11 seg48In0AccY11
    linear_combination r1042
  have ha1 : rho 33800 * seg48In0AccX11 rho = rho 33802 := by
    unfold seg48In0AccX11
    linear_combination r1043
  have ha2 : rho 33799 * seg48In0AccY11 rho = rho 33803 := by
    unfold seg48In0AccY11
    linear_combination r1044
  have ha3 : 3021 * rho 33802 * rho 33803 = rho 33804 := by
    linear_combination r1045
  have ha4 : rho 33805 * (1 + rho 33804) = rho 33802 + rho 33803 := by
    linear_combination r1046
  have ha5 : rho 33806 * (1 - rho 33804) = rho 33801 - rho 33802 - rho 33803 := by
    linear_combination r1047
  have haddx :
      rho 33805 * (1 + 3021 * (rho 33800 * seg48In0AccX11 rho) * (rho 33799 * seg48In0AccY11 rho)) =
        rho 33800 * seg48In0AccX11 rho + rho 33799 * seg48In0AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33806 * (1 - 3021 * (rho 33800 * seg48In0AccX11 rho) * (rho 33799 * seg48In0AccY11 rho)) =
        (-1) * (rho 33800 * seg48In0AccX11 rho) - rho 33799 * seg48In0AccY11 rho +
          (seg48In0AccY11 rho - seg48In0AccX11 rho * (-1)) * (rho 33799 + rho 33800) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33806 * (1 - rho 33804) = rho 33801 - rho 33802 - rho 33803 := ha5
      _ = (-1) * rho 33802 - rho 33803 + (seg48In0AccY11 rho - seg48In0AccX11 rho * (-1)) *
          (rho 33799 + rho 33800) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX12 rho = seg48In0AccX11 rho - Bool.toZMod bit * (seg48In0AccX11 rho - rho 33805) := by
    have hd : rho 33807 = Bool.toZMod bit * (rho 33805 - seg48In0AccX11 rho) := by
      rw [← hbit]
      unfold seg48In0AccX11
      linear_combination -r1048
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY12 rho = seg48In0AccY11 rho - Bool.toZMod bit * (seg48In0AccY11 rho - rho 33806) := by
    have hd : rho 33808 = Bool.toZMod bit * (rho 33806 - seg48In0AccY11 rho) := by
      rw [← hbit]
      unfold seg48In0AccY11
      linear_combination -r1049
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33799 * rho 33800 = rho 33809 := by linear_combination r1050
  have hd1 : rho 33799 * rho 33799 = rho 33810 := by linear_combination r1051
  have hd2 : rho 33800 * rho 33800 = rho 33811 := by linear_combination r1052
  have hd3 : rho 33812 * (rho 33800 * rho 33800 + rho 33799 * rho 33799 * (-1)) =
      2 * (rho 33799 * rho 33800) := by
    rw [hd0, hd1, hd2]
    linear_combination r1053
  have hd4 : rho 33813 * (2 - (rho 33800 * rho 33800 + rho 33799 * rho 33799 * (-1))) =
      rho 33800 * rho 33800 - rho 33799 * rho 33799 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1054
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX11 rho, seg48In0AccY11 rho⟩ ⟨rho 33799, rho 33800⟩
    ⟨rho 33805, rho 33806⟩ ⟨seg48In0AccX12 rho, seg48In0AccY12 rho⟩ ⟨rho 33812, rho 33813⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1055 rho ∧ Seg48.relationRow1056 rho ∧ Seg48.relationRow1057 rho ∧ Seg48.relationRow1058 rho ∧ Seg48.relationRow1059 rho ∧ Seg48.relationRow1060 rho ∧ Seg48.relationRow1061 rho ∧ Seg48.relationRow1062 rho ∧ Seg48.relationRow1063 rho ∧ Seg48.relationRow1064 rho ∧ Seg48.relationRow1065 rho ∧ Seg48.relationRow1066 rho ∧ Seg48.relationRow1067 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067⟩

theorem seg48In0_rung12 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33548 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX12 rho, seg48In0AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33812, rho 33813⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX12 rho, seg48In0AccY12 rho⟩ ⟨rho 33812, rho 33813⟩
        ⟨seg48In0AccX13 rho, seg48In0AccY13 rho⟩ ⟨rho 33825, rho 33826⟩ := by
  obtain ⟨r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067⟩ := seg48In0_rows12 rho h
  unfold Seg48.relationRow1055 at r1055

  unfold Seg48.relationRow1056 at r1056

  unfold Seg48.relationRow1057 at r1057

  unfold Seg48.relationRow1058 at r1058

  unfold Seg48.relationRow1059 at r1059

  unfold Seg48.relationRow1060 at r1060

  unfold Seg48.relationRow1061 at r1061

  unfold Seg48.relationRow1062 at r1062

  unfold Seg48.relationRow1063 at r1063

  unfold Seg48.relationRow1064 at r1064

  unfold Seg48.relationRow1065 at r1065

  unfold Seg48.relationRow1066 at r1066

  unfold Seg48.relationRow1067 at r1067

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX13 rho = seg48In0AccX12 rho + rho 33820 := by
    unfold seg48In0AccX13 seg48In0AccX12
    ring

  have hnexty : seg48In0AccY13 rho = seg48In0AccY12 rho + rho 33821 := by
    unfold seg48In0AccY13 seg48In0AccY12
    ring

  have ha0 : (rho 33812 + rho 33813) * (seg48In0AccX12 rho + seg48In0AccY12 rho) = rho 33814 := by
    unfold seg48In0AccX12 seg48In0AccY12
    linear_combination r1055
  have ha1 : rho 33813 * seg48In0AccX12 rho = rho 33815 := by
    unfold seg48In0AccX12
    linear_combination r1056
  have ha2 : rho 33812 * seg48In0AccY12 rho = rho 33816 := by
    unfold seg48In0AccY12
    linear_combination r1057
  have ha3 : 3021 * rho 33815 * rho 33816 = rho 33817 := by
    linear_combination r1058
  have ha4 : rho 33818 * (1 + rho 33817) = rho 33815 + rho 33816 := by
    linear_combination r1059
  have ha5 : rho 33819 * (1 - rho 33817) = rho 33814 - rho 33815 - rho 33816 := by
    linear_combination r1060
  have haddx :
      rho 33818 * (1 + 3021 * (rho 33813 * seg48In0AccX12 rho) * (rho 33812 * seg48In0AccY12 rho)) =
        rho 33813 * seg48In0AccX12 rho + rho 33812 * seg48In0AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33819 * (1 - 3021 * (rho 33813 * seg48In0AccX12 rho) * (rho 33812 * seg48In0AccY12 rho)) =
        (-1) * (rho 33813 * seg48In0AccX12 rho) - rho 33812 * seg48In0AccY12 rho +
          (seg48In0AccY12 rho - seg48In0AccX12 rho * (-1)) * (rho 33812 + rho 33813) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33819 * (1 - rho 33817) = rho 33814 - rho 33815 - rho 33816 := ha5
      _ = (-1) * rho 33815 - rho 33816 + (seg48In0AccY12 rho - seg48In0AccX12 rho * (-1)) *
          (rho 33812 + rho 33813) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX13 rho = seg48In0AccX12 rho - Bool.toZMod bit * (seg48In0AccX12 rho - rho 33818) := by
    have hd : rho 33820 = Bool.toZMod bit * (rho 33818 - seg48In0AccX12 rho) := by
      rw [← hbit]
      unfold seg48In0AccX12
      linear_combination -r1061
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY13 rho = seg48In0AccY12 rho - Bool.toZMod bit * (seg48In0AccY12 rho - rho 33819) := by
    have hd : rho 33821 = Bool.toZMod bit * (rho 33819 - seg48In0AccY12 rho) := by
      rw [← hbit]
      unfold seg48In0AccY12
      linear_combination -r1062
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33812 * rho 33813 = rho 33822 := by linear_combination r1063
  have hd1 : rho 33812 * rho 33812 = rho 33823 := by linear_combination r1064
  have hd2 : rho 33813 * rho 33813 = rho 33824 := by linear_combination r1065
  have hd3 : rho 33825 * (rho 33813 * rho 33813 + rho 33812 * rho 33812 * (-1)) =
      2 * (rho 33812 * rho 33813) := by
    rw [hd0, hd1, hd2]
    linear_combination r1066
  have hd4 : rho 33826 * (2 - (rho 33813 * rho 33813 + rho 33812 * rho 33812 * (-1))) =
      rho 33813 * rho 33813 - rho 33812 * rho 33812 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1067
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX12 rho, seg48In0AccY12 rho⟩ ⟨rho 33812, rho 33813⟩
    ⟨rho 33818, rho 33819⟩ ⟨seg48In0AccX13 rho, seg48In0AccY13 rho⟩ ⟨rho 33825, rho 33826⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1068 rho ∧ Seg48.relationRow1069 rho ∧ Seg48.relationRow1070 rho ∧ Seg48.relationRow1071 rho ∧ Seg48.relationRow1072 rho ∧ Seg48.relationRow1073 rho ∧ Seg48.relationRow1074 rho ∧ Seg48.relationRow1075 rho ∧ Seg48.relationRow1076 rho ∧ Seg48.relationRow1077 rho ∧ Seg48.relationRow1078 rho ∧ Seg48.relationRow1079 rho ∧ Seg48.relationRow1080 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080⟩

theorem seg48In0_rung13 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33549 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX13 rho, seg48In0AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33825, rho 33826⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX13 rho, seg48In0AccY13 rho⟩ ⟨rho 33825, rho 33826⟩
        ⟨seg48In0AccX14 rho, seg48In0AccY14 rho⟩ ⟨rho 33838, rho 33839⟩ := by
  obtain ⟨r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080⟩ := seg48In0_rows13 rho h
  unfold Seg48.relationRow1068 at r1068

  unfold Seg48.relationRow1069 at r1069

  unfold Seg48.relationRow1070 at r1070

  unfold Seg48.relationRow1071 at r1071

  unfold Seg48.relationRow1072 at r1072

  unfold Seg48.relationRow1073 at r1073

  unfold Seg48.relationRow1074 at r1074

  unfold Seg48.relationRow1075 at r1075

  unfold Seg48.relationRow1076 at r1076

  unfold Seg48.relationRow1077 at r1077

  unfold Seg48.relationRow1078 at r1078

  unfold Seg48.relationRow1079 at r1079

  unfold Seg48.relationRow1080 at r1080

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX14 rho = seg48In0AccX13 rho + rho 33833 := by
    unfold seg48In0AccX14 seg48In0AccX13
    ring

  have hnexty : seg48In0AccY14 rho = seg48In0AccY13 rho + rho 33834 := by
    unfold seg48In0AccY14 seg48In0AccY13
    ring

  have ha0 : (rho 33825 + rho 33826) * (seg48In0AccX13 rho + seg48In0AccY13 rho) = rho 33827 := by
    unfold seg48In0AccX13 seg48In0AccY13
    linear_combination r1068
  have ha1 : rho 33826 * seg48In0AccX13 rho = rho 33828 := by
    unfold seg48In0AccX13
    linear_combination r1069
  have ha2 : rho 33825 * seg48In0AccY13 rho = rho 33829 := by
    unfold seg48In0AccY13
    linear_combination r1070
  have ha3 : 3021 * rho 33828 * rho 33829 = rho 33830 := by
    linear_combination r1071
  have ha4 : rho 33831 * (1 + rho 33830) = rho 33828 + rho 33829 := by
    linear_combination r1072
  have ha5 : rho 33832 * (1 - rho 33830) = rho 33827 - rho 33828 - rho 33829 := by
    linear_combination r1073
  have haddx :
      rho 33831 * (1 + 3021 * (rho 33826 * seg48In0AccX13 rho) * (rho 33825 * seg48In0AccY13 rho)) =
        rho 33826 * seg48In0AccX13 rho + rho 33825 * seg48In0AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33832 * (1 - 3021 * (rho 33826 * seg48In0AccX13 rho) * (rho 33825 * seg48In0AccY13 rho)) =
        (-1) * (rho 33826 * seg48In0AccX13 rho) - rho 33825 * seg48In0AccY13 rho +
          (seg48In0AccY13 rho - seg48In0AccX13 rho * (-1)) * (rho 33825 + rho 33826) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33832 * (1 - rho 33830) = rho 33827 - rho 33828 - rho 33829 := ha5
      _ = (-1) * rho 33828 - rho 33829 + (seg48In0AccY13 rho - seg48In0AccX13 rho * (-1)) *
          (rho 33825 + rho 33826) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX14 rho = seg48In0AccX13 rho - Bool.toZMod bit * (seg48In0AccX13 rho - rho 33831) := by
    have hd : rho 33833 = Bool.toZMod bit * (rho 33831 - seg48In0AccX13 rho) := by
      rw [← hbit]
      unfold seg48In0AccX13
      linear_combination -r1074
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY14 rho = seg48In0AccY13 rho - Bool.toZMod bit * (seg48In0AccY13 rho - rho 33832) := by
    have hd : rho 33834 = Bool.toZMod bit * (rho 33832 - seg48In0AccY13 rho) := by
      rw [← hbit]
      unfold seg48In0AccY13
      linear_combination -r1075
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33825 * rho 33826 = rho 33835 := by linear_combination r1076
  have hd1 : rho 33825 * rho 33825 = rho 33836 := by linear_combination r1077
  have hd2 : rho 33826 * rho 33826 = rho 33837 := by linear_combination r1078
  have hd3 : rho 33838 * (rho 33826 * rho 33826 + rho 33825 * rho 33825 * (-1)) =
      2 * (rho 33825 * rho 33826) := by
    rw [hd0, hd1, hd2]
    linear_combination r1079
  have hd4 : rho 33839 * (2 - (rho 33826 * rho 33826 + rho 33825 * rho 33825 * (-1))) =
      rho 33826 * rho 33826 - rho 33825 * rho 33825 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1080
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX13 rho, seg48In0AccY13 rho⟩ ⟨rho 33825, rho 33826⟩
    ⟨rho 33831, rho 33832⟩ ⟨seg48In0AccX14 rho, seg48In0AccY14 rho⟩ ⟨rho 33838, rho 33839⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1081 rho ∧ Seg48.relationRow1082 rho ∧ Seg48.relationRow1083 rho ∧ Seg48.relationRow1084 rho ∧ Seg48.relationRow1085 rho ∧ Seg48.relationRow1086 rho ∧ Seg48.relationRow1087 rho ∧ Seg48.relationRow1088 rho ∧ Seg48.relationRow1089 rho ∧ Seg48.relationRow1090 rho ∧ Seg48.relationRow1091 rho ∧ Seg48.relationRow1092 rho ∧ Seg48.relationRow1093 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093⟩

theorem seg48In0_rung14 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33550 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX14 rho, seg48In0AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33838, rho 33839⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX14 rho, seg48In0AccY14 rho⟩ ⟨rho 33838, rho 33839⟩
        ⟨seg48In0AccX15 rho, seg48In0AccY15 rho⟩ ⟨rho 33851, rho 33852⟩ := by
  obtain ⟨r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093⟩ := seg48In0_rows14 rho h
  unfold Seg48.relationRow1081 at r1081

  unfold Seg48.relationRow1082 at r1082

  unfold Seg48.relationRow1083 at r1083

  unfold Seg48.relationRow1084 at r1084

  unfold Seg48.relationRow1085 at r1085

  unfold Seg48.relationRow1086 at r1086

  unfold Seg48.relationRow1087 at r1087

  unfold Seg48.relationRow1088 at r1088

  unfold Seg48.relationRow1089 at r1089

  unfold Seg48.relationRow1090 at r1090

  unfold Seg48.relationRow1091 at r1091

  unfold Seg48.relationRow1092 at r1092

  unfold Seg48.relationRow1093 at r1093

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX15 rho = seg48In0AccX14 rho + rho 33846 := by
    unfold seg48In0AccX15 seg48In0AccX14
    ring

  have hnexty : seg48In0AccY15 rho = seg48In0AccY14 rho + rho 33847 := by
    unfold seg48In0AccY15 seg48In0AccY14
    ring

  have ha0 : (rho 33838 + rho 33839) * (seg48In0AccX14 rho + seg48In0AccY14 rho) = rho 33840 := by
    unfold seg48In0AccX14 seg48In0AccY14
    linear_combination r1081
  have ha1 : rho 33839 * seg48In0AccX14 rho = rho 33841 := by
    unfold seg48In0AccX14
    linear_combination r1082
  have ha2 : rho 33838 * seg48In0AccY14 rho = rho 33842 := by
    unfold seg48In0AccY14
    linear_combination r1083
  have ha3 : 3021 * rho 33841 * rho 33842 = rho 33843 := by
    linear_combination r1084
  have ha4 : rho 33844 * (1 + rho 33843) = rho 33841 + rho 33842 := by
    linear_combination r1085
  have ha5 : rho 33845 * (1 - rho 33843) = rho 33840 - rho 33841 - rho 33842 := by
    linear_combination r1086
  have haddx :
      rho 33844 * (1 + 3021 * (rho 33839 * seg48In0AccX14 rho) * (rho 33838 * seg48In0AccY14 rho)) =
        rho 33839 * seg48In0AccX14 rho + rho 33838 * seg48In0AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33845 * (1 - 3021 * (rho 33839 * seg48In0AccX14 rho) * (rho 33838 * seg48In0AccY14 rho)) =
        (-1) * (rho 33839 * seg48In0AccX14 rho) - rho 33838 * seg48In0AccY14 rho +
          (seg48In0AccY14 rho - seg48In0AccX14 rho * (-1)) * (rho 33838 + rho 33839) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33845 * (1 - rho 33843) = rho 33840 - rho 33841 - rho 33842 := ha5
      _ = (-1) * rho 33841 - rho 33842 + (seg48In0AccY14 rho - seg48In0AccX14 rho * (-1)) *
          (rho 33838 + rho 33839) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX15 rho = seg48In0AccX14 rho - Bool.toZMod bit * (seg48In0AccX14 rho - rho 33844) := by
    have hd : rho 33846 = Bool.toZMod bit * (rho 33844 - seg48In0AccX14 rho) := by
      rw [← hbit]
      unfold seg48In0AccX14
      linear_combination -r1087
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY15 rho = seg48In0AccY14 rho - Bool.toZMod bit * (seg48In0AccY14 rho - rho 33845) := by
    have hd : rho 33847 = Bool.toZMod bit * (rho 33845 - seg48In0AccY14 rho) := by
      rw [← hbit]
      unfold seg48In0AccY14
      linear_combination -r1088
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33838 * rho 33839 = rho 33848 := by linear_combination r1089
  have hd1 : rho 33838 * rho 33838 = rho 33849 := by linear_combination r1090
  have hd2 : rho 33839 * rho 33839 = rho 33850 := by linear_combination r1091
  have hd3 : rho 33851 * (rho 33839 * rho 33839 + rho 33838 * rho 33838 * (-1)) =
      2 * (rho 33838 * rho 33839) := by
    rw [hd0, hd1, hd2]
    linear_combination r1092
  have hd4 : rho 33852 * (2 - (rho 33839 * rho 33839 + rho 33838 * rho 33838 * (-1))) =
      rho 33839 * rho 33839 - rho 33838 * rho 33838 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1093
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX14 rho, seg48In0AccY14 rho⟩ ⟨rho 33838, rho 33839⟩
    ⟨rho 33844, rho 33845⟩ ⟨seg48In0AccX15 rho, seg48In0AccY15 rho⟩ ⟨rho 33851, rho 33852⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1094 rho ∧ Seg48.relationRow1095 rho ∧ Seg48.relationRow1096 rho ∧ Seg48.relationRow1097 rho ∧ Seg48.relationRow1098 rho ∧ Seg48.relationRow1099 rho ∧ Seg48.relationRow1100 rho ∧ Seg48.relationRow1101 rho ∧ Seg48.relationRow1102 rho ∧ Seg48.relationRow1103 rho ∧ Seg48.relationRow1104 rho ∧ Seg48.relationRow1105 rho ∧ Seg48.relationRow1106 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106⟩

theorem seg48In0_rung15 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33551 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX15 rho, seg48In0AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33851, rho 33852⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX15 rho, seg48In0AccY15 rho⟩ ⟨rho 33851, rho 33852⟩
        ⟨seg48In0AccX16 rho, seg48In0AccY16 rho⟩ ⟨rho 33864, rho 33865⟩ := by
  obtain ⟨r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106⟩ := seg48In0_rows15 rho h
  unfold Seg48.relationRow1094 at r1094

  unfold Seg48.relationRow1095 at r1095

  unfold Seg48.relationRow1096 at r1096

  unfold Seg48.relationRow1097 at r1097

  unfold Seg48.relationRow1098 at r1098

  unfold Seg48.relationRow1099 at r1099

  unfold Seg48.relationRow1100 at r1100

  unfold Seg48.relationRow1101 at r1101

  unfold Seg48.relationRow1102 at r1102

  unfold Seg48.relationRow1103 at r1103

  unfold Seg48.relationRow1104 at r1104

  unfold Seg48.relationRow1105 at r1105

  unfold Seg48.relationRow1106 at r1106

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX16 rho = seg48In0AccX15 rho + rho 33859 := by
    unfold seg48In0AccX16 seg48In0AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 33664 13]

    ring

  have hnexty : seg48In0AccY16 rho = seg48In0AccY15 rho + rho 33860 := by
    unfold seg48In0AccY16 seg48In0AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 33665 13]

    ring

  have ha0 : (rho 33851 + rho 33852) * (seg48In0AccX15 rho + seg48In0AccY15 rho) = rho 33853 := by
    unfold seg48In0AccX15 seg48In0AccY15
    linear_combination r1094
  have ha1 : rho 33852 * seg48In0AccX15 rho = rho 33854 := by
    unfold seg48In0AccX15
    linear_combination r1095
  have ha2 : rho 33851 * seg48In0AccY15 rho = rho 33855 := by
    unfold seg48In0AccY15
    linear_combination r1096
  have ha3 : 3021 * rho 33854 * rho 33855 = rho 33856 := by
    linear_combination r1097
  have ha4 : rho 33857 * (1 + rho 33856) = rho 33854 + rho 33855 := by
    linear_combination r1098
  have ha5 : rho 33858 * (1 - rho 33856) = rho 33853 - rho 33854 - rho 33855 := by
    linear_combination r1099
  have haddx :
      rho 33857 * (1 + 3021 * (rho 33852 * seg48In0AccX15 rho) * (rho 33851 * seg48In0AccY15 rho)) =
        rho 33852 * seg48In0AccX15 rho + rho 33851 * seg48In0AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33858 * (1 - 3021 * (rho 33852 * seg48In0AccX15 rho) * (rho 33851 * seg48In0AccY15 rho)) =
        (-1) * (rho 33852 * seg48In0AccX15 rho) - rho 33851 * seg48In0AccY15 rho +
          (seg48In0AccY15 rho - seg48In0AccX15 rho * (-1)) * (rho 33851 + rho 33852) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33858 * (1 - rho 33856) = rho 33853 - rho 33854 - rho 33855 := ha5
      _ = (-1) * rho 33854 - rho 33855 + (seg48In0AccY15 rho - seg48In0AccX15 rho * (-1)) *
          (rho 33851 + rho 33852) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX16 rho = seg48In0AccX15 rho - Bool.toZMod bit * (seg48In0AccX15 rho - rho 33857) := by
    have hd : rho 33859 = Bool.toZMod bit * (rho 33857 - seg48In0AccX15 rho) := by
      rw [← hbit]
      unfold seg48In0AccX15
      linear_combination -r1100
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY16 rho = seg48In0AccY15 rho - Bool.toZMod bit * (seg48In0AccY15 rho - rho 33858) := by
    have hd : rho 33860 = Bool.toZMod bit * (rho 33858 - seg48In0AccY15 rho) := by
      rw [← hbit]
      unfold seg48In0AccY15
      linear_combination -r1101
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33851 * rho 33852 = rho 33861 := by linear_combination r1102
  have hd1 : rho 33851 * rho 33851 = rho 33862 := by linear_combination r1103
  have hd2 : rho 33852 * rho 33852 = rho 33863 := by linear_combination r1104
  have hd3 : rho 33864 * (rho 33852 * rho 33852 + rho 33851 * rho 33851 * (-1)) =
      2 * (rho 33851 * rho 33852) := by
    rw [hd0, hd1, hd2]
    linear_combination r1105
  have hd4 : rho 33865 * (2 - (rho 33852 * rho 33852 + rho 33851 * rho 33851 * (-1))) =
      rho 33852 * rho 33852 - rho 33851 * rho 33851 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1106
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX15 rho, seg48In0AccY15 rho⟩ ⟨rho 33851, rho 33852⟩
    ⟨rho 33857, rho 33858⟩ ⟨seg48In0AccX16 rho, seg48In0AccY16 rho⟩ ⟨rho 33864, rho 33865⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1107 rho ∧ Seg48.relationRow1108 rho ∧ Seg48.relationRow1109 rho ∧ Seg48.relationRow1110 rho ∧ Seg48.relationRow1111 rho ∧ Seg48.relationRow1112 rho ∧ Seg48.relationRow1113 rho ∧ Seg48.relationRow1114 rho ∧ Seg48.relationRow1115 rho ∧ Seg48.relationRow1116 rho ∧ Seg48.relationRow1117 rho ∧ Seg48.relationRow1118 rho ∧ Seg48.relationRow1119 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, p13, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩

  exact ⟨r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩

theorem seg48In0_rung16 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33552 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX16 rho, seg48In0AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33864, rho 33865⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX16 rho, seg48In0AccY16 rho⟩ ⟨rho 33864, rho 33865⟩
        ⟨seg48In0AccX17 rho, seg48In0AccY17 rho⟩ ⟨rho 33877, rho 33878⟩ := by
  obtain ⟨r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩ := seg48In0_rows16 rho h
  unfold Seg48.relationRow1107 at r1107

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1107

  unfold Seg48.relationRow1108 at r1108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1108

  unfold Seg48.relationRow1109 at r1109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1109

  unfold Seg48.relationRow1110 at r1110

  unfold Seg48.relationRow1111 at r1111

  unfold Seg48.relationRow1112 at r1112

  unfold Seg48.relationRow1113 at r1113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1113

  unfold Seg48.relationRow1114 at r1114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1114

  unfold Seg48.relationRow1115 at r1115

  unfold Seg48.relationRow1116 at r1116

  unfold Seg48.relationRow1117 at r1117

  unfold Seg48.relationRow1118 at r1118

  unfold Seg48.relationRow1119 at r1119

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX17 rho = seg48In0AccX16 rho + rho 33872 := by
    unfold seg48In0AccX17 seg48In0AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 16]

    ring

  have hnexty : seg48In0AccY17 rho = seg48In0AccY16 rho + rho 33873 := by
    unfold seg48In0AccY17 seg48In0AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 16]

    ring

  have ha0 : (rho 33864 + rho 33865) * (seg48In0AccX16 rho + seg48In0AccY16 rho) = rho 33866 := by
    unfold seg48In0AccX16 seg48In0AccY16
    linear_combination r1107
  have ha1 : rho 33865 * seg48In0AccX16 rho = rho 33867 := by
    unfold seg48In0AccX16
    linear_combination r1108
  have ha2 : rho 33864 * seg48In0AccY16 rho = rho 33868 := by
    unfold seg48In0AccY16
    linear_combination r1109
  have ha3 : 3021 * rho 33867 * rho 33868 = rho 33869 := by
    linear_combination r1110
  have ha4 : rho 33870 * (1 + rho 33869) = rho 33867 + rho 33868 := by
    linear_combination r1111
  have ha5 : rho 33871 * (1 - rho 33869) = rho 33866 - rho 33867 - rho 33868 := by
    linear_combination r1112
  have haddx :
      rho 33870 * (1 + 3021 * (rho 33865 * seg48In0AccX16 rho) * (rho 33864 * seg48In0AccY16 rho)) =
        rho 33865 * seg48In0AccX16 rho + rho 33864 * seg48In0AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33871 * (1 - 3021 * (rho 33865 * seg48In0AccX16 rho) * (rho 33864 * seg48In0AccY16 rho)) =
        (-1) * (rho 33865 * seg48In0AccX16 rho) - rho 33864 * seg48In0AccY16 rho +
          (seg48In0AccY16 rho - seg48In0AccX16 rho * (-1)) * (rho 33864 + rho 33865) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33871 * (1 - rho 33869) = rho 33866 - rho 33867 - rho 33868 := ha5
      _ = (-1) * rho 33867 - rho 33868 + (seg48In0AccY16 rho - seg48In0AccX16 rho * (-1)) *
          (rho 33864 + rho 33865) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX17 rho = seg48In0AccX16 rho - Bool.toZMod bit * (seg48In0AccX16 rho - rho 33870) := by
    have hd : rho 33872 = Bool.toZMod bit * (rho 33870 - seg48In0AccX16 rho) := by
      rw [← hbit]
      unfold seg48In0AccX16
      linear_combination -r1113
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY17 rho = seg48In0AccY16 rho - Bool.toZMod bit * (seg48In0AccY16 rho - rho 33871) := by
    have hd : rho 33873 = Bool.toZMod bit * (rho 33871 - seg48In0AccY16 rho) := by
      rw [← hbit]
      unfold seg48In0AccY16
      linear_combination -r1114
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33864 * rho 33865 = rho 33874 := by linear_combination r1115
  have hd1 : rho 33864 * rho 33864 = rho 33875 := by linear_combination r1116
  have hd2 : rho 33865 * rho 33865 = rho 33876 := by linear_combination r1117
  have hd3 : rho 33877 * (rho 33865 * rho 33865 + rho 33864 * rho 33864 * (-1)) =
      2 * (rho 33864 * rho 33865) := by
    rw [hd0, hd1, hd2]
    linear_combination r1118
  have hd4 : rho 33878 * (2 - (rho 33865 * rho 33865 + rho 33864 * rho 33864 * (-1))) =
      rho 33865 * rho 33865 - rho 33864 * rho 33864 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1119
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX16 rho, seg48In0AccY16 rho⟩ ⟨rho 33864, rho 33865⟩
    ⟨rho 33870, rho 33871⟩ ⟨seg48In0AccX17 rho, seg48In0AccY17 rho⟩ ⟨rho 33877, rho 33878⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1120 rho ∧ Seg48.relationRow1121 rho ∧ Seg48.relationRow1122 rho ∧ Seg48.relationRow1123 rho ∧ Seg48.relationRow1124 rho ∧ Seg48.relationRow1125 rho ∧ Seg48.relationRow1126 rho ∧ Seg48.relationRow1127 rho ∧ Seg48.relationRow1128 rho ∧ Seg48.relationRow1129 rho ∧ Seg48.relationRow1130 rho ∧ Seg48.relationRow1131 rho ∧ Seg48.relationRow1132 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132⟩

theorem seg48In0_rung17 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33553 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX17 rho, seg48In0AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33877, rho 33878⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX17 rho, seg48In0AccY17 rho⟩ ⟨rho 33877, rho 33878⟩
        ⟨seg48In0AccX18 rho, seg48In0AccY18 rho⟩ ⟨rho 33890, rho 33891⟩ := by
  obtain ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132⟩ := seg48In0_rows17 rho h
  unfold Seg48.relationRow1120 at r1120

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1120

  unfold Seg48.relationRow1121 at r1121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1121

  unfold Seg48.relationRow1122 at r1122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1122

  unfold Seg48.relationRow1123 at r1123

  unfold Seg48.relationRow1124 at r1124

  unfold Seg48.relationRow1125 at r1125

  unfold Seg48.relationRow1126 at r1126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1126

  unfold Seg48.relationRow1127 at r1127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1127

  unfold Seg48.relationRow1128 at r1128

  unfold Seg48.relationRow1129 at r1129

  unfold Seg48.relationRow1130 at r1130

  unfold Seg48.relationRow1131 at r1131

  unfold Seg48.relationRow1132 at r1132

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX18 rho = seg48In0AccX17 rho + rho 33885 := by
    unfold seg48In0AccX18 seg48In0AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 17]

    ring

  have hnexty : seg48In0AccY18 rho = seg48In0AccY17 rho + rho 33886 := by
    unfold seg48In0AccY18 seg48In0AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 17]

    ring

  have ha0 : (rho 33877 + rho 33878) * (seg48In0AccX17 rho + seg48In0AccY17 rho) = rho 33879 := by
    unfold seg48In0AccX17 seg48In0AccY17
    linear_combination r1120
  have ha1 : rho 33878 * seg48In0AccX17 rho = rho 33880 := by
    unfold seg48In0AccX17
    linear_combination r1121
  have ha2 : rho 33877 * seg48In0AccY17 rho = rho 33881 := by
    unfold seg48In0AccY17
    linear_combination r1122
  have ha3 : 3021 * rho 33880 * rho 33881 = rho 33882 := by
    linear_combination r1123
  have ha4 : rho 33883 * (1 + rho 33882) = rho 33880 + rho 33881 := by
    linear_combination r1124
  have ha5 : rho 33884 * (1 - rho 33882) = rho 33879 - rho 33880 - rho 33881 := by
    linear_combination r1125
  have haddx :
      rho 33883 * (1 + 3021 * (rho 33878 * seg48In0AccX17 rho) * (rho 33877 * seg48In0AccY17 rho)) =
        rho 33878 * seg48In0AccX17 rho + rho 33877 * seg48In0AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33884 * (1 - 3021 * (rho 33878 * seg48In0AccX17 rho) * (rho 33877 * seg48In0AccY17 rho)) =
        (-1) * (rho 33878 * seg48In0AccX17 rho) - rho 33877 * seg48In0AccY17 rho +
          (seg48In0AccY17 rho - seg48In0AccX17 rho * (-1)) * (rho 33877 + rho 33878) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33884 * (1 - rho 33882) = rho 33879 - rho 33880 - rho 33881 := ha5
      _ = (-1) * rho 33880 - rho 33881 + (seg48In0AccY17 rho - seg48In0AccX17 rho * (-1)) *
          (rho 33877 + rho 33878) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX18 rho = seg48In0AccX17 rho - Bool.toZMod bit * (seg48In0AccX17 rho - rho 33883) := by
    have hd : rho 33885 = Bool.toZMod bit * (rho 33883 - seg48In0AccX17 rho) := by
      rw [← hbit]
      unfold seg48In0AccX17
      linear_combination -r1126
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY18 rho = seg48In0AccY17 rho - Bool.toZMod bit * (seg48In0AccY17 rho - rho 33884) := by
    have hd : rho 33886 = Bool.toZMod bit * (rho 33884 - seg48In0AccY17 rho) := by
      rw [← hbit]
      unfold seg48In0AccY17
      linear_combination -r1127
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33877 * rho 33878 = rho 33887 := by linear_combination r1128
  have hd1 : rho 33877 * rho 33877 = rho 33888 := by linear_combination r1129
  have hd2 : rho 33878 * rho 33878 = rho 33889 := by linear_combination r1130
  have hd3 : rho 33890 * (rho 33878 * rho 33878 + rho 33877 * rho 33877 * (-1)) =
      2 * (rho 33877 * rho 33878) := by
    rw [hd0, hd1, hd2]
    linear_combination r1131
  have hd4 : rho 33891 * (2 - (rho 33878 * rho 33878 + rho 33877 * rho 33877 * (-1))) =
      rho 33878 * rho 33878 - rho 33877 * rho 33877 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1132
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX17 rho, seg48In0AccY17 rho⟩ ⟨rho 33877, rho 33878⟩
    ⟨rho 33883, rho 33884⟩ ⟨seg48In0AccX18 rho, seg48In0AccY18 rho⟩ ⟨rho 33890, rho 33891⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1133 rho ∧ Seg48.relationRow1134 rho ∧ Seg48.relationRow1135 rho ∧ Seg48.relationRow1136 rho ∧ Seg48.relationRow1137 rho ∧ Seg48.relationRow1138 rho ∧ Seg48.relationRow1139 rho ∧ Seg48.relationRow1140 rho ∧ Seg48.relationRow1141 rho ∧ Seg48.relationRow1142 rho ∧ Seg48.relationRow1143 rho ∧ Seg48.relationRow1144 rho ∧ Seg48.relationRow1145 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145⟩

theorem seg48In0_rung18 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33554 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX18 rho, seg48In0AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33890, rho 33891⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX18 rho, seg48In0AccY18 rho⟩ ⟨rho 33890, rho 33891⟩
        ⟨seg48In0AccX19 rho, seg48In0AccY19 rho⟩ ⟨rho 33903, rho 33904⟩ := by
  obtain ⟨r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145⟩ := seg48In0_rows18 rho h
  unfold Seg48.relationRow1133 at r1133

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1133

  unfold Seg48.relationRow1134 at r1134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1134

  unfold Seg48.relationRow1135 at r1135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1135

  unfold Seg48.relationRow1136 at r1136

  unfold Seg48.relationRow1137 at r1137

  unfold Seg48.relationRow1138 at r1138

  unfold Seg48.relationRow1139 at r1139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1139

  unfold Seg48.relationRow1140 at r1140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1140

  unfold Seg48.relationRow1141 at r1141

  unfold Seg48.relationRow1142 at r1142

  unfold Seg48.relationRow1143 at r1143

  unfold Seg48.relationRow1144 at r1144

  unfold Seg48.relationRow1145 at r1145

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX19 rho = seg48In0AccX18 rho + rho 33898 := by
    unfold seg48In0AccX19 seg48In0AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 18]

    ring

  have hnexty : seg48In0AccY19 rho = seg48In0AccY18 rho + rho 33899 := by
    unfold seg48In0AccY19 seg48In0AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 18]

    ring

  have ha0 : (rho 33890 + rho 33891) * (seg48In0AccX18 rho + seg48In0AccY18 rho) = rho 33892 := by
    unfold seg48In0AccX18 seg48In0AccY18
    linear_combination r1133
  have ha1 : rho 33891 * seg48In0AccX18 rho = rho 33893 := by
    unfold seg48In0AccX18
    linear_combination r1134
  have ha2 : rho 33890 * seg48In0AccY18 rho = rho 33894 := by
    unfold seg48In0AccY18
    linear_combination r1135
  have ha3 : 3021 * rho 33893 * rho 33894 = rho 33895 := by
    linear_combination r1136
  have ha4 : rho 33896 * (1 + rho 33895) = rho 33893 + rho 33894 := by
    linear_combination r1137
  have ha5 : rho 33897 * (1 - rho 33895) = rho 33892 - rho 33893 - rho 33894 := by
    linear_combination r1138
  have haddx :
      rho 33896 * (1 + 3021 * (rho 33891 * seg48In0AccX18 rho) * (rho 33890 * seg48In0AccY18 rho)) =
        rho 33891 * seg48In0AccX18 rho + rho 33890 * seg48In0AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33897 * (1 - 3021 * (rho 33891 * seg48In0AccX18 rho) * (rho 33890 * seg48In0AccY18 rho)) =
        (-1) * (rho 33891 * seg48In0AccX18 rho) - rho 33890 * seg48In0AccY18 rho +
          (seg48In0AccY18 rho - seg48In0AccX18 rho * (-1)) * (rho 33890 + rho 33891) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33897 * (1 - rho 33895) = rho 33892 - rho 33893 - rho 33894 := ha5
      _ = (-1) * rho 33893 - rho 33894 + (seg48In0AccY18 rho - seg48In0AccX18 rho * (-1)) *
          (rho 33890 + rho 33891) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX19 rho = seg48In0AccX18 rho - Bool.toZMod bit * (seg48In0AccX18 rho - rho 33896) := by
    have hd : rho 33898 = Bool.toZMod bit * (rho 33896 - seg48In0AccX18 rho) := by
      rw [← hbit]
      unfold seg48In0AccX18
      linear_combination -r1139
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY19 rho = seg48In0AccY18 rho - Bool.toZMod bit * (seg48In0AccY18 rho - rho 33897) := by
    have hd : rho 33899 = Bool.toZMod bit * (rho 33897 - seg48In0AccY18 rho) := by
      rw [← hbit]
      unfold seg48In0AccY18
      linear_combination -r1140
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33890 * rho 33891 = rho 33900 := by linear_combination r1141
  have hd1 : rho 33890 * rho 33890 = rho 33901 := by linear_combination r1142
  have hd2 : rho 33891 * rho 33891 = rho 33902 := by linear_combination r1143
  have hd3 : rho 33903 * (rho 33891 * rho 33891 + rho 33890 * rho 33890 * (-1)) =
      2 * (rho 33890 * rho 33891) := by
    rw [hd0, hd1, hd2]
    linear_combination r1144
  have hd4 : rho 33904 * (2 - (rho 33891 * rho 33891 + rho 33890 * rho 33890 * (-1))) =
      rho 33891 * rho 33891 - rho 33890 * rho 33890 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1145
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX18 rho, seg48In0AccY18 rho⟩ ⟨rho 33890, rho 33891⟩
    ⟨rho 33896, rho 33897⟩ ⟨seg48In0AccX19 rho, seg48In0AccY19 rho⟩ ⟨rho 33903, rho 33904⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1146 rho ∧ Seg48.relationRow1147 rho ∧ Seg48.relationRow1148 rho ∧ Seg48.relationRow1149 rho ∧ Seg48.relationRow1150 rho ∧ Seg48.relationRow1151 rho ∧ Seg48.relationRow1152 rho ∧ Seg48.relationRow1153 rho ∧ Seg48.relationRow1154 rho ∧ Seg48.relationRow1155 rho ∧ Seg48.relationRow1156 rho ∧ Seg48.relationRow1157 rho ∧ Seg48.relationRow1158 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158⟩

theorem seg48In0_rung19 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33555 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX19 rho, seg48In0AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33903, rho 33904⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX19 rho, seg48In0AccY19 rho⟩ ⟨rho 33903, rho 33904⟩
        ⟨seg48In0AccX20 rho, seg48In0AccY20 rho⟩ ⟨rho 33916, rho 33917⟩ := by
  obtain ⟨r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158⟩ := seg48In0_rows19 rho h
  unfold Seg48.relationRow1146 at r1146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1146

  unfold Seg48.relationRow1147 at r1147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1147

  unfold Seg48.relationRow1148 at r1148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1148

  unfold Seg48.relationRow1149 at r1149

  unfold Seg48.relationRow1150 at r1150

  unfold Seg48.relationRow1151 at r1151

  unfold Seg48.relationRow1152 at r1152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1152

  unfold Seg48.relationRow1153 at r1153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1153

  unfold Seg48.relationRow1154 at r1154

  unfold Seg48.relationRow1155 at r1155

  unfold Seg48.relationRow1156 at r1156

  unfold Seg48.relationRow1157 at r1157

  unfold Seg48.relationRow1158 at r1158

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX20 rho = seg48In0AccX19 rho + rho 33911 := by
    unfold seg48In0AccX20 seg48In0AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 19]

    ring

  have hnexty : seg48In0AccY20 rho = seg48In0AccY19 rho + rho 33912 := by
    unfold seg48In0AccY20 seg48In0AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 19]

    ring

  have ha0 : (rho 33903 + rho 33904) * (seg48In0AccX19 rho + seg48In0AccY19 rho) = rho 33905 := by
    unfold seg48In0AccX19 seg48In0AccY19
    linear_combination r1146
  have ha1 : rho 33904 * seg48In0AccX19 rho = rho 33906 := by
    unfold seg48In0AccX19
    linear_combination r1147
  have ha2 : rho 33903 * seg48In0AccY19 rho = rho 33907 := by
    unfold seg48In0AccY19
    linear_combination r1148
  have ha3 : 3021 * rho 33906 * rho 33907 = rho 33908 := by
    linear_combination r1149
  have ha4 : rho 33909 * (1 + rho 33908) = rho 33906 + rho 33907 := by
    linear_combination r1150
  have ha5 : rho 33910 * (1 - rho 33908) = rho 33905 - rho 33906 - rho 33907 := by
    linear_combination r1151
  have haddx :
      rho 33909 * (1 + 3021 * (rho 33904 * seg48In0AccX19 rho) * (rho 33903 * seg48In0AccY19 rho)) =
        rho 33904 * seg48In0AccX19 rho + rho 33903 * seg48In0AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33910 * (1 - 3021 * (rho 33904 * seg48In0AccX19 rho) * (rho 33903 * seg48In0AccY19 rho)) =
        (-1) * (rho 33904 * seg48In0AccX19 rho) - rho 33903 * seg48In0AccY19 rho +
          (seg48In0AccY19 rho - seg48In0AccX19 rho * (-1)) * (rho 33903 + rho 33904) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33910 * (1 - rho 33908) = rho 33905 - rho 33906 - rho 33907 := ha5
      _ = (-1) * rho 33906 - rho 33907 + (seg48In0AccY19 rho - seg48In0AccX19 rho * (-1)) *
          (rho 33903 + rho 33904) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX20 rho = seg48In0AccX19 rho - Bool.toZMod bit * (seg48In0AccX19 rho - rho 33909) := by
    have hd : rho 33911 = Bool.toZMod bit * (rho 33909 - seg48In0AccX19 rho) := by
      rw [← hbit]
      unfold seg48In0AccX19
      linear_combination -r1152
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY20 rho = seg48In0AccY19 rho - Bool.toZMod bit * (seg48In0AccY19 rho - rho 33910) := by
    have hd : rho 33912 = Bool.toZMod bit * (rho 33910 - seg48In0AccY19 rho) := by
      rw [← hbit]
      unfold seg48In0AccY19
      linear_combination -r1153
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33903 * rho 33904 = rho 33913 := by linear_combination r1154
  have hd1 : rho 33903 * rho 33903 = rho 33914 := by linear_combination r1155
  have hd2 : rho 33904 * rho 33904 = rho 33915 := by linear_combination r1156
  have hd3 : rho 33916 * (rho 33904 * rho 33904 + rho 33903 * rho 33903 * (-1)) =
      2 * (rho 33903 * rho 33904) := by
    rw [hd0, hd1, hd2]
    linear_combination r1157
  have hd4 : rho 33917 * (2 - (rho 33904 * rho 33904 + rho 33903 * rho 33903 * (-1))) =
      rho 33904 * rho 33904 - rho 33903 * rho 33903 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1158
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX19 rho, seg48In0AccY19 rho⟩ ⟨rho 33903, rho 33904⟩
    ⟨rho 33909, rho 33910⟩ ⟨seg48In0AccX20 rho, seg48In0AccY20 rho⟩ ⟨rho 33916, rho 33917⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1159 rho ∧ Seg48.relationRow1160 rho ∧ Seg48.relationRow1161 rho ∧ Seg48.relationRow1162 rho ∧ Seg48.relationRow1163 rho ∧ Seg48.relationRow1164 rho ∧ Seg48.relationRow1165 rho ∧ Seg48.relationRow1166 rho ∧ Seg48.relationRow1167 rho ∧ Seg48.relationRow1168 rho ∧ Seg48.relationRow1169 rho ∧ Seg48.relationRow1170 rho ∧ Seg48.relationRow1171 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171⟩

theorem seg48In0_rung20 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33556 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX20 rho, seg48In0AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33916, rho 33917⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX20 rho, seg48In0AccY20 rho⟩ ⟨rho 33916, rho 33917⟩
        ⟨seg48In0AccX21 rho, seg48In0AccY21 rho⟩ ⟨rho 33929, rho 33930⟩ := by
  obtain ⟨r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171⟩ := seg48In0_rows20 rho h
  unfold Seg48.relationRow1159 at r1159

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1159

  unfold Seg48.relationRow1160 at r1160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1160

  unfold Seg48.relationRow1161 at r1161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1161

  unfold Seg48.relationRow1162 at r1162

  unfold Seg48.relationRow1163 at r1163

  unfold Seg48.relationRow1164 at r1164

  unfold Seg48.relationRow1165 at r1165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1165

  unfold Seg48.relationRow1166 at r1166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1166

  unfold Seg48.relationRow1167 at r1167

  unfold Seg48.relationRow1168 at r1168

  unfold Seg48.relationRow1169 at r1169

  unfold Seg48.relationRow1170 at r1170

  unfold Seg48.relationRow1171 at r1171

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX21 rho = seg48In0AccX20 rho + rho 33924 := by
    unfold seg48In0AccX21 seg48In0AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 20]

    ring

  have hnexty : seg48In0AccY21 rho = seg48In0AccY20 rho + rho 33925 := by
    unfold seg48In0AccY21 seg48In0AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 20]

    ring

  have ha0 : (rho 33916 + rho 33917) * (seg48In0AccX20 rho + seg48In0AccY20 rho) = rho 33918 := by
    unfold seg48In0AccX20 seg48In0AccY20
    linear_combination r1159
  have ha1 : rho 33917 * seg48In0AccX20 rho = rho 33919 := by
    unfold seg48In0AccX20
    linear_combination r1160
  have ha2 : rho 33916 * seg48In0AccY20 rho = rho 33920 := by
    unfold seg48In0AccY20
    linear_combination r1161
  have ha3 : 3021 * rho 33919 * rho 33920 = rho 33921 := by
    linear_combination r1162
  have ha4 : rho 33922 * (1 + rho 33921) = rho 33919 + rho 33920 := by
    linear_combination r1163
  have ha5 : rho 33923 * (1 - rho 33921) = rho 33918 - rho 33919 - rho 33920 := by
    linear_combination r1164
  have haddx :
      rho 33922 * (1 + 3021 * (rho 33917 * seg48In0AccX20 rho) * (rho 33916 * seg48In0AccY20 rho)) =
        rho 33917 * seg48In0AccX20 rho + rho 33916 * seg48In0AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33923 * (1 - 3021 * (rho 33917 * seg48In0AccX20 rho) * (rho 33916 * seg48In0AccY20 rho)) =
        (-1) * (rho 33917 * seg48In0AccX20 rho) - rho 33916 * seg48In0AccY20 rho +
          (seg48In0AccY20 rho - seg48In0AccX20 rho * (-1)) * (rho 33916 + rho 33917) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33923 * (1 - rho 33921) = rho 33918 - rho 33919 - rho 33920 := ha5
      _ = (-1) * rho 33919 - rho 33920 + (seg48In0AccY20 rho - seg48In0AccX20 rho * (-1)) *
          (rho 33916 + rho 33917) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX21 rho = seg48In0AccX20 rho - Bool.toZMod bit * (seg48In0AccX20 rho - rho 33922) := by
    have hd : rho 33924 = Bool.toZMod bit * (rho 33922 - seg48In0AccX20 rho) := by
      rw [← hbit]
      unfold seg48In0AccX20
      linear_combination -r1165
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY21 rho = seg48In0AccY20 rho - Bool.toZMod bit * (seg48In0AccY20 rho - rho 33923) := by
    have hd : rho 33925 = Bool.toZMod bit * (rho 33923 - seg48In0AccY20 rho) := by
      rw [← hbit]
      unfold seg48In0AccY20
      linear_combination -r1166
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33916 * rho 33917 = rho 33926 := by linear_combination r1167
  have hd1 : rho 33916 * rho 33916 = rho 33927 := by linear_combination r1168
  have hd2 : rho 33917 * rho 33917 = rho 33928 := by linear_combination r1169
  have hd3 : rho 33929 * (rho 33917 * rho 33917 + rho 33916 * rho 33916 * (-1)) =
      2 * (rho 33916 * rho 33917) := by
    rw [hd0, hd1, hd2]
    linear_combination r1170
  have hd4 : rho 33930 * (2 - (rho 33917 * rho 33917 + rho 33916 * rho 33916 * (-1))) =
      rho 33917 * rho 33917 - rho 33916 * rho 33916 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1171
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX20 rho, seg48In0AccY20 rho⟩ ⟨rho 33916, rho 33917⟩
    ⟨rho 33922, rho 33923⟩ ⟨seg48In0AccX21 rho, seg48In0AccY21 rho⟩ ⟨rho 33929, rho 33930⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_rows21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    Seg48.relationRow1172 rho ∧ Seg48.relationRow1173 rho ∧ Seg48.relationRow1174 rho ∧ Seg48.relationRow1175 rho ∧ Seg48.relationRow1176 rho ∧ Seg48.relationRow1177 rho ∧ Seg48.relationRow1178 rho ∧ Seg48.relationRow1179 rho ∧ Seg48.relationRow1180 rho ∧ Seg48.relationRow1181 rho ∧ Seg48.relationRow1182 rho ∧ Seg48.relationRow1183 rho ∧ Seg48.relationRow1184 rho := by
  unfold Seg48.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p14, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg48.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184⟩

theorem seg48In0_rung21 (rho : Nat -> Seg48.F) (h : Seg48.relation rho) :
    ∀ (bit : Bool), rho 33557 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg48In0AccX21 rho, seg48In0AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 33929, rho 33930⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg48In0AccX21 rho, seg48In0AccY21 rho⟩ ⟨rho 33929, rho 33930⟩
        ⟨seg48In0AccX22 rho, seg48In0AccY22 rho⟩ ⟨rho 33942, rho 33943⟩ := by
  obtain ⟨r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184⟩ := seg48In0_rows21 rho h
  unfold Seg48.relationRow1172 at r1172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1172

  unfold Seg48.relationRow1173 at r1173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1173

  unfold Seg48.relationRow1174 at r1174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1174

  unfold Seg48.relationRow1175 at r1175

  unfold Seg48.relationRow1176 at r1176

  unfold Seg48.relationRow1177 at r1177

  unfold Seg48.relationRow1178 at r1178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1178

  unfold Seg48.relationRow1179 at r1179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1179

  unfold Seg48.relationRow1180 at r1180

  unfold Seg48.relationRow1181 at r1181

  unfold Seg48.relationRow1182 at r1182

  unfold Seg48.relationRow1183 at r1183

  unfold Seg48.relationRow1184 at r1184

  intro bit hbit hacc hcur
  have hnextx : seg48In0AccX22 rho = seg48In0AccX21 rho + rho 33937 := by
    unfold seg48In0AccX22 seg48In0AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33664 13 21]

    ring

  have hnexty : seg48In0AccY22 rho = seg48In0AccY21 rho + rho 33938 := by
    unfold seg48In0AccY22 seg48In0AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 33665 13 21]

    ring

  have ha0 : (rho 33929 + rho 33930) * (seg48In0AccX21 rho + seg48In0AccY21 rho) = rho 33931 := by
    unfold seg48In0AccX21 seg48In0AccY21
    linear_combination r1172
  have ha1 : rho 33930 * seg48In0AccX21 rho = rho 33932 := by
    unfold seg48In0AccX21
    linear_combination r1173
  have ha2 : rho 33929 * seg48In0AccY21 rho = rho 33933 := by
    unfold seg48In0AccY21
    linear_combination r1174
  have ha3 : 3021 * rho 33932 * rho 33933 = rho 33934 := by
    linear_combination r1175
  have ha4 : rho 33935 * (1 + rho 33934) = rho 33932 + rho 33933 := by
    linear_combination r1176
  have ha5 : rho 33936 * (1 - rho 33934) = rho 33931 - rho 33932 - rho 33933 := by
    linear_combination r1177
  have haddx :
      rho 33935 * (1 + 3021 * (rho 33930 * seg48In0AccX21 rho) * (rho 33929 * seg48In0AccY21 rho)) =
        rho 33930 * seg48In0AccX21 rho + rho 33929 * seg48In0AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 33936 * (1 - 3021 * (rho 33930 * seg48In0AccX21 rho) * (rho 33929 * seg48In0AccY21 rho)) =
        (-1) * (rho 33930 * seg48In0AccX21 rho) - rho 33929 * seg48In0AccY21 rho +
          (seg48In0AccY21 rho - seg48In0AccX21 rho * (-1)) * (rho 33929 + rho 33930) := by
    rw [ha1, ha2, ha3]
    calc
      rho 33936 * (1 - rho 33934) = rho 33931 - rho 33932 - rho 33933 := ha5
      _ = (-1) * rho 33932 - rho 33933 + (seg48In0AccY21 rho - seg48In0AccX21 rho * (-1)) *
          (rho 33929 + rho 33930) := by
        rw [← ha0]
        ring
  have hselx : seg48In0AccX22 rho = seg48In0AccX21 rho - Bool.toZMod bit * (seg48In0AccX21 rho - rho 33935) := by
    have hd : rho 33937 = Bool.toZMod bit * (rho 33935 - seg48In0AccX21 rho) := by
      rw [← hbit]
      unfold seg48In0AccX21
      linear_combination -r1178
    rw [hnextx]
    linear_combination hd
  have hsely : seg48In0AccY22 rho = seg48In0AccY21 rho - Bool.toZMod bit * (seg48In0AccY21 rho - rho 33936) := by
    have hd : rho 33938 = Bool.toZMod bit * (rho 33936 - seg48In0AccY21 rho) := by
      rw [← hbit]
      unfold seg48In0AccY21
      linear_combination -r1179
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 33929 * rho 33930 = rho 33939 := by linear_combination r1180
  have hd1 : rho 33929 * rho 33929 = rho 33940 := by linear_combination r1181
  have hd2 : rho 33930 * rho 33930 = rho 33941 := by linear_combination r1182
  have hd3 : rho 33942 * (rho 33930 * rho 33930 + rho 33929 * rho 33929 * (-1)) =
      2 * (rho 33929 * rho 33930) := by
    rw [hd0, hd1, hd2]
    linear_combination r1183
  have hd4 : rho 33943 * (2 - (rho 33930 * rho 33930 + rho 33929 * rho 33929 * (-1))) =
      rho 33930 * rho 33930 - rho 33929 * rho 33929 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1184
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg48In0AccX21 rho, seg48In0AccY21 rho⟩ ⟨rho 33929, rho 33930⟩
    ⟨rho 33935, rho 33936⟩ ⟨seg48In0AccX22 rho, seg48In0AccY22 rho⟩ ⟨rho 33942, rho 33943⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg48In0_hstep_c1 (rho : Nat -> Seg48.F)
    (h : Seg48.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (33536 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg48In0AccState rho i) →
      EdwardsBridge.onCurve (seg48In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg48In0AccState rho i) (seg48In0CurState rho i)
        (seg48In0AccState rho (i + 1)) (seg48In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg48In0_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg48In0_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg48In0_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg48In0_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg48In0_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg48In0_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg48In0_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg48In0_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg48In0_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg48In0_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg48In0_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
