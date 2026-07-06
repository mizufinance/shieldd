import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0_rows11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1042 rho ∧ Seg52.relationRow1043 rho ∧ Seg52.relationRow1044 rho ∧ Seg52.relationRow1045 rho ∧ Seg52.relationRow1046 rho ∧ Seg52.relationRow1047 rho ∧ Seg52.relationRow1048 rho ∧ Seg52.relationRow1049 rho ∧ Seg52.relationRow1050 rho ∧ Seg52.relationRow1051 rho ∧ Seg52.relationRow1052 rho ∧ Seg52.relationRow1053 rho ∧ Seg52.relationRow1054 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨_, _, r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054⟩

theorem seg52In0_rung11 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45179 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45431, rho 45432⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 45431, rho 45432⟩
        ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 45444, rho 45445⟩ := by
  obtain ⟨r1042, r1043, r1044, r1045, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054⟩ := seg52In0_rows11 rho h
  unfold Seg52.relationRow1042 at r1042

  unfold Seg52.relationRow1043 at r1043

  unfold Seg52.relationRow1044 at r1044

  unfold Seg52.relationRow1045 at r1045

  unfold Seg52.relationRow1046 at r1046

  unfold Seg52.relationRow1047 at r1047

  unfold Seg52.relationRow1048 at r1048

  unfold Seg52.relationRow1049 at r1049

  unfold Seg52.relationRow1050 at r1050

  unfold Seg52.relationRow1051 at r1051

  unfold Seg52.relationRow1052 at r1052

  unfold Seg52.relationRow1053 at r1053

  unfold Seg52.relationRow1054 at r1054

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX12 rho = seg52In0AccX11 rho + rho 45439 := by
    unfold seg52In0AccX12 seg52In0AccX11
    ring

  have hnexty : seg52In0AccY12 rho = seg52In0AccY11 rho + rho 45440 := by
    unfold seg52In0AccY12 seg52In0AccY11
    ring

  have ha0 : (rho 45431 + rho 45432) * (seg52In0AccX11 rho + seg52In0AccY11 rho) = rho 45433 := by
    unfold seg52In0AccX11 seg52In0AccY11
    linear_combination r1042
  have ha1 : rho 45432 * seg52In0AccX11 rho = rho 45434 := by
    unfold seg52In0AccX11
    linear_combination r1043
  have ha2 : rho 45431 * seg52In0AccY11 rho = rho 45435 := by
    unfold seg52In0AccY11
    linear_combination r1044
  have ha3 : 3021 * rho 45434 * rho 45435 = rho 45436 := by
    linear_combination r1045
  have ha4 : rho 45437 * (1 + rho 45436) = rho 45434 + rho 45435 := by
    linear_combination r1046
  have ha5 : rho 45438 * (1 - rho 45436) = rho 45433 - rho 45434 - rho 45435 := by
    linear_combination r1047
  have haddx :
      rho 45437 * (1 + 3021 * (rho 45432 * seg52In0AccX11 rho) * (rho 45431 * seg52In0AccY11 rho)) =
        rho 45432 * seg52In0AccX11 rho + rho 45431 * seg52In0AccY11 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45438 * (1 - 3021 * (rho 45432 * seg52In0AccX11 rho) * (rho 45431 * seg52In0AccY11 rho)) =
        (-1) * (rho 45432 * seg52In0AccX11 rho) - rho 45431 * seg52In0AccY11 rho +
          (seg52In0AccY11 rho - seg52In0AccX11 rho * (-1)) * (rho 45431 + rho 45432) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45438 * (1 - rho 45436) = rho 45433 - rho 45434 - rho 45435 := ha5
      _ = (-1) * rho 45434 - rho 45435 + (seg52In0AccY11 rho - seg52In0AccX11 rho * (-1)) *
          (rho 45431 + rho 45432) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX12 rho = seg52In0AccX11 rho - Bool.toZMod bit * (seg52In0AccX11 rho - rho 45437) := by
    have hd : rho 45439 = Bool.toZMod bit * (rho 45437 - seg52In0AccX11 rho) := by
      rw [← hbit]
      unfold seg52In0AccX11
      linear_combination -r1048
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY12 rho = seg52In0AccY11 rho - Bool.toZMod bit * (seg52In0AccY11 rho - rho 45438) := by
    have hd : rho 45440 = Bool.toZMod bit * (rho 45438 - seg52In0AccY11 rho) := by
      rw [← hbit]
      unfold seg52In0AccY11
      linear_combination -r1049
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45431 * rho 45432 = rho 45441 := by linear_combination r1050
  have hd1 : rho 45431 * rho 45431 = rho 45442 := by linear_combination r1051
  have hd2 : rho 45432 * rho 45432 = rho 45443 := by linear_combination r1052
  have hd3 : rho 45444 * (rho 45432 * rho 45432 + rho 45431 * rho 45431 * (-1)) =
      2 * (rho 45431 * rho 45432) := by
    rw [hd0, hd1, hd2]
    linear_combination r1053
  have hd4 : rho 45445 * (2 - (rho 45432 * rho 45432 + rho 45431 * rho 45431 * (-1))) =
      rho 45432 * rho 45432 - rho 45431 * rho 45431 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1054
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX11 rho, seg52In0AccY11 rho⟩ ⟨rho 45431, rho 45432⟩
    ⟨rho 45437, rho 45438⟩ ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 45444, rho 45445⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1055 rho ∧ Seg52.relationRow1056 rho ∧ Seg52.relationRow1057 rho ∧ Seg52.relationRow1058 rho ∧ Seg52.relationRow1059 rho ∧ Seg52.relationRow1060 rho ∧ Seg52.relationRow1061 rho ∧ Seg52.relationRow1062 rho ∧ Seg52.relationRow1063 rho ∧ Seg52.relationRow1064 rho ∧ Seg52.relationRow1065 rho ∧ Seg52.relationRow1066 rho ∧ Seg52.relationRow1067 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067⟩

theorem seg52In0_rung12 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45180 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45444, rho 45445⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 45444, rho 45445⟩
        ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 45457, rho 45458⟩ := by
  obtain ⟨r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067⟩ := seg52In0_rows12 rho h
  unfold Seg52.relationRow1055 at r1055

  unfold Seg52.relationRow1056 at r1056

  unfold Seg52.relationRow1057 at r1057

  unfold Seg52.relationRow1058 at r1058

  unfold Seg52.relationRow1059 at r1059

  unfold Seg52.relationRow1060 at r1060

  unfold Seg52.relationRow1061 at r1061

  unfold Seg52.relationRow1062 at r1062

  unfold Seg52.relationRow1063 at r1063

  unfold Seg52.relationRow1064 at r1064

  unfold Seg52.relationRow1065 at r1065

  unfold Seg52.relationRow1066 at r1066

  unfold Seg52.relationRow1067 at r1067

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX13 rho = seg52In0AccX12 rho + rho 45452 := by
    unfold seg52In0AccX13 seg52In0AccX12
    ring

  have hnexty : seg52In0AccY13 rho = seg52In0AccY12 rho + rho 45453 := by
    unfold seg52In0AccY13 seg52In0AccY12
    ring

  have ha0 : (rho 45444 + rho 45445) * (seg52In0AccX12 rho + seg52In0AccY12 rho) = rho 45446 := by
    unfold seg52In0AccX12 seg52In0AccY12
    linear_combination r1055
  have ha1 : rho 45445 * seg52In0AccX12 rho = rho 45447 := by
    unfold seg52In0AccX12
    linear_combination r1056
  have ha2 : rho 45444 * seg52In0AccY12 rho = rho 45448 := by
    unfold seg52In0AccY12
    linear_combination r1057
  have ha3 : 3021 * rho 45447 * rho 45448 = rho 45449 := by
    linear_combination r1058
  have ha4 : rho 45450 * (1 + rho 45449) = rho 45447 + rho 45448 := by
    linear_combination r1059
  have ha5 : rho 45451 * (1 - rho 45449) = rho 45446 - rho 45447 - rho 45448 := by
    linear_combination r1060
  have haddx :
      rho 45450 * (1 + 3021 * (rho 45445 * seg52In0AccX12 rho) * (rho 45444 * seg52In0AccY12 rho)) =
        rho 45445 * seg52In0AccX12 rho + rho 45444 * seg52In0AccY12 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45451 * (1 - 3021 * (rho 45445 * seg52In0AccX12 rho) * (rho 45444 * seg52In0AccY12 rho)) =
        (-1) * (rho 45445 * seg52In0AccX12 rho) - rho 45444 * seg52In0AccY12 rho +
          (seg52In0AccY12 rho - seg52In0AccX12 rho * (-1)) * (rho 45444 + rho 45445) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45451 * (1 - rho 45449) = rho 45446 - rho 45447 - rho 45448 := ha5
      _ = (-1) * rho 45447 - rho 45448 + (seg52In0AccY12 rho - seg52In0AccX12 rho * (-1)) *
          (rho 45444 + rho 45445) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX13 rho = seg52In0AccX12 rho - Bool.toZMod bit * (seg52In0AccX12 rho - rho 45450) := by
    have hd : rho 45452 = Bool.toZMod bit * (rho 45450 - seg52In0AccX12 rho) := by
      rw [← hbit]
      unfold seg52In0AccX12
      linear_combination -r1061
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY13 rho = seg52In0AccY12 rho - Bool.toZMod bit * (seg52In0AccY12 rho - rho 45451) := by
    have hd : rho 45453 = Bool.toZMod bit * (rho 45451 - seg52In0AccY12 rho) := by
      rw [← hbit]
      unfold seg52In0AccY12
      linear_combination -r1062
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45444 * rho 45445 = rho 45454 := by linear_combination r1063
  have hd1 : rho 45444 * rho 45444 = rho 45455 := by linear_combination r1064
  have hd2 : rho 45445 * rho 45445 = rho 45456 := by linear_combination r1065
  have hd3 : rho 45457 * (rho 45445 * rho 45445 + rho 45444 * rho 45444 * (-1)) =
      2 * (rho 45444 * rho 45445) := by
    rw [hd0, hd1, hd2]
    linear_combination r1066
  have hd4 : rho 45458 * (2 - (rho 45445 * rho 45445 + rho 45444 * rho 45444 * (-1))) =
      rho 45445 * rho 45445 - rho 45444 * rho 45444 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1067
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX12 rho, seg52In0AccY12 rho⟩ ⟨rho 45444, rho 45445⟩
    ⟨rho 45450, rho 45451⟩ ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 45457, rho 45458⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1068 rho ∧ Seg52.relationRow1069 rho ∧ Seg52.relationRow1070 rho ∧ Seg52.relationRow1071 rho ∧ Seg52.relationRow1072 rho ∧ Seg52.relationRow1073 rho ∧ Seg52.relationRow1074 rho ∧ Seg52.relationRow1075 rho ∧ Seg52.relationRow1076 rho ∧ Seg52.relationRow1077 rho ∧ Seg52.relationRow1078 rho ∧ Seg52.relationRow1079 rho ∧ Seg52.relationRow1080 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080⟩

theorem seg52In0_rung13 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45181 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45457, rho 45458⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 45457, rho 45458⟩
        ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 45470, rho 45471⟩ := by
  obtain ⟨r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080⟩ := seg52In0_rows13 rho h
  unfold Seg52.relationRow1068 at r1068

  unfold Seg52.relationRow1069 at r1069

  unfold Seg52.relationRow1070 at r1070

  unfold Seg52.relationRow1071 at r1071

  unfold Seg52.relationRow1072 at r1072

  unfold Seg52.relationRow1073 at r1073

  unfold Seg52.relationRow1074 at r1074

  unfold Seg52.relationRow1075 at r1075

  unfold Seg52.relationRow1076 at r1076

  unfold Seg52.relationRow1077 at r1077

  unfold Seg52.relationRow1078 at r1078

  unfold Seg52.relationRow1079 at r1079

  unfold Seg52.relationRow1080 at r1080

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX14 rho = seg52In0AccX13 rho + rho 45465 := by
    unfold seg52In0AccX14 seg52In0AccX13
    ring

  have hnexty : seg52In0AccY14 rho = seg52In0AccY13 rho + rho 45466 := by
    unfold seg52In0AccY14 seg52In0AccY13
    ring

  have ha0 : (rho 45457 + rho 45458) * (seg52In0AccX13 rho + seg52In0AccY13 rho) = rho 45459 := by
    unfold seg52In0AccX13 seg52In0AccY13
    linear_combination r1068
  have ha1 : rho 45458 * seg52In0AccX13 rho = rho 45460 := by
    unfold seg52In0AccX13
    linear_combination r1069
  have ha2 : rho 45457 * seg52In0AccY13 rho = rho 45461 := by
    unfold seg52In0AccY13
    linear_combination r1070
  have ha3 : 3021 * rho 45460 * rho 45461 = rho 45462 := by
    linear_combination r1071
  have ha4 : rho 45463 * (1 + rho 45462) = rho 45460 + rho 45461 := by
    linear_combination r1072
  have ha5 : rho 45464 * (1 - rho 45462) = rho 45459 - rho 45460 - rho 45461 := by
    linear_combination r1073
  have haddx :
      rho 45463 * (1 + 3021 * (rho 45458 * seg52In0AccX13 rho) * (rho 45457 * seg52In0AccY13 rho)) =
        rho 45458 * seg52In0AccX13 rho + rho 45457 * seg52In0AccY13 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45464 * (1 - 3021 * (rho 45458 * seg52In0AccX13 rho) * (rho 45457 * seg52In0AccY13 rho)) =
        (-1) * (rho 45458 * seg52In0AccX13 rho) - rho 45457 * seg52In0AccY13 rho +
          (seg52In0AccY13 rho - seg52In0AccX13 rho * (-1)) * (rho 45457 + rho 45458) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45464 * (1 - rho 45462) = rho 45459 - rho 45460 - rho 45461 := ha5
      _ = (-1) * rho 45460 - rho 45461 + (seg52In0AccY13 rho - seg52In0AccX13 rho * (-1)) *
          (rho 45457 + rho 45458) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX14 rho = seg52In0AccX13 rho - Bool.toZMod bit * (seg52In0AccX13 rho - rho 45463) := by
    have hd : rho 45465 = Bool.toZMod bit * (rho 45463 - seg52In0AccX13 rho) := by
      rw [← hbit]
      unfold seg52In0AccX13
      linear_combination -r1074
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY14 rho = seg52In0AccY13 rho - Bool.toZMod bit * (seg52In0AccY13 rho - rho 45464) := by
    have hd : rho 45466 = Bool.toZMod bit * (rho 45464 - seg52In0AccY13 rho) := by
      rw [← hbit]
      unfold seg52In0AccY13
      linear_combination -r1075
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45457 * rho 45458 = rho 45467 := by linear_combination r1076
  have hd1 : rho 45457 * rho 45457 = rho 45468 := by linear_combination r1077
  have hd2 : rho 45458 * rho 45458 = rho 45469 := by linear_combination r1078
  have hd3 : rho 45470 * (rho 45458 * rho 45458 + rho 45457 * rho 45457 * (-1)) =
      2 * (rho 45457 * rho 45458) := by
    rw [hd0, hd1, hd2]
    linear_combination r1079
  have hd4 : rho 45471 * (2 - (rho 45458 * rho 45458 + rho 45457 * rho 45457 * (-1))) =
      rho 45458 * rho 45458 - rho 45457 * rho 45457 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1080
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX13 rho, seg52In0AccY13 rho⟩ ⟨rho 45457, rho 45458⟩
    ⟨rho 45463, rho 45464⟩ ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 45470, rho 45471⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1081 rho ∧ Seg52.relationRow1082 rho ∧ Seg52.relationRow1083 rho ∧ Seg52.relationRow1084 rho ∧ Seg52.relationRow1085 rho ∧ Seg52.relationRow1086 rho ∧ Seg52.relationRow1087 rho ∧ Seg52.relationRow1088 rho ∧ Seg52.relationRow1089 rho ∧ Seg52.relationRow1090 rho ∧ Seg52.relationRow1091 rho ∧ Seg52.relationRow1092 rho ∧ Seg52.relationRow1093 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093⟩

theorem seg52In0_rung14 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45182 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45470, rho 45471⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 45470, rho 45471⟩
        ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 45483, rho 45484⟩ := by
  obtain ⟨r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093⟩ := seg52In0_rows14 rho h
  unfold Seg52.relationRow1081 at r1081

  unfold Seg52.relationRow1082 at r1082

  unfold Seg52.relationRow1083 at r1083

  unfold Seg52.relationRow1084 at r1084

  unfold Seg52.relationRow1085 at r1085

  unfold Seg52.relationRow1086 at r1086

  unfold Seg52.relationRow1087 at r1087

  unfold Seg52.relationRow1088 at r1088

  unfold Seg52.relationRow1089 at r1089

  unfold Seg52.relationRow1090 at r1090

  unfold Seg52.relationRow1091 at r1091

  unfold Seg52.relationRow1092 at r1092

  unfold Seg52.relationRow1093 at r1093

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX15 rho = seg52In0AccX14 rho + rho 45478 := by
    unfold seg52In0AccX15 seg52In0AccX14
    ring

  have hnexty : seg52In0AccY15 rho = seg52In0AccY14 rho + rho 45479 := by
    unfold seg52In0AccY15 seg52In0AccY14
    ring

  have ha0 : (rho 45470 + rho 45471) * (seg52In0AccX14 rho + seg52In0AccY14 rho) = rho 45472 := by
    unfold seg52In0AccX14 seg52In0AccY14
    linear_combination r1081
  have ha1 : rho 45471 * seg52In0AccX14 rho = rho 45473 := by
    unfold seg52In0AccX14
    linear_combination r1082
  have ha2 : rho 45470 * seg52In0AccY14 rho = rho 45474 := by
    unfold seg52In0AccY14
    linear_combination r1083
  have ha3 : 3021 * rho 45473 * rho 45474 = rho 45475 := by
    linear_combination r1084
  have ha4 : rho 45476 * (1 + rho 45475) = rho 45473 + rho 45474 := by
    linear_combination r1085
  have ha5 : rho 45477 * (1 - rho 45475) = rho 45472 - rho 45473 - rho 45474 := by
    linear_combination r1086
  have haddx :
      rho 45476 * (1 + 3021 * (rho 45471 * seg52In0AccX14 rho) * (rho 45470 * seg52In0AccY14 rho)) =
        rho 45471 * seg52In0AccX14 rho + rho 45470 * seg52In0AccY14 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45477 * (1 - 3021 * (rho 45471 * seg52In0AccX14 rho) * (rho 45470 * seg52In0AccY14 rho)) =
        (-1) * (rho 45471 * seg52In0AccX14 rho) - rho 45470 * seg52In0AccY14 rho +
          (seg52In0AccY14 rho - seg52In0AccX14 rho * (-1)) * (rho 45470 + rho 45471) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45477 * (1 - rho 45475) = rho 45472 - rho 45473 - rho 45474 := ha5
      _ = (-1) * rho 45473 - rho 45474 + (seg52In0AccY14 rho - seg52In0AccX14 rho * (-1)) *
          (rho 45470 + rho 45471) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX15 rho = seg52In0AccX14 rho - Bool.toZMod bit * (seg52In0AccX14 rho - rho 45476) := by
    have hd : rho 45478 = Bool.toZMod bit * (rho 45476 - seg52In0AccX14 rho) := by
      rw [← hbit]
      unfold seg52In0AccX14
      linear_combination -r1087
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY15 rho = seg52In0AccY14 rho - Bool.toZMod bit * (seg52In0AccY14 rho - rho 45477) := by
    have hd : rho 45479 = Bool.toZMod bit * (rho 45477 - seg52In0AccY14 rho) := by
      rw [← hbit]
      unfold seg52In0AccY14
      linear_combination -r1088
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45470 * rho 45471 = rho 45480 := by linear_combination r1089
  have hd1 : rho 45470 * rho 45470 = rho 45481 := by linear_combination r1090
  have hd2 : rho 45471 * rho 45471 = rho 45482 := by linear_combination r1091
  have hd3 : rho 45483 * (rho 45471 * rho 45471 + rho 45470 * rho 45470 * (-1)) =
      2 * (rho 45470 * rho 45471) := by
    rw [hd0, hd1, hd2]
    linear_combination r1092
  have hd4 : rho 45484 * (2 - (rho 45471 * rho 45471 + rho 45470 * rho 45470 * (-1))) =
      rho 45471 * rho 45471 - rho 45470 * rho 45470 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1093
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX14 rho, seg52In0AccY14 rho⟩ ⟨rho 45470, rho 45471⟩
    ⟨rho 45476, rho 45477⟩ ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 45483, rho 45484⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1094 rho ∧ Seg52.relationRow1095 rho ∧ Seg52.relationRow1096 rho ∧ Seg52.relationRow1097 rho ∧ Seg52.relationRow1098 rho ∧ Seg52.relationRow1099 rho ∧ Seg52.relationRow1100 rho ∧ Seg52.relationRow1101 rho ∧ Seg52.relationRow1102 rho ∧ Seg52.relationRow1103 rho ∧ Seg52.relationRow1104 rho ∧ Seg52.relationRow1105 rho ∧ Seg52.relationRow1106 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106⟩

theorem seg52In0_rung15 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45183 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45483, rho 45484⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 45483, rho 45484⟩
        ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 45496, rho 45497⟩ := by
  obtain ⟨r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106⟩ := seg52In0_rows15 rho h
  unfold Seg52.relationRow1094 at r1094

  unfold Seg52.relationRow1095 at r1095

  unfold Seg52.relationRow1096 at r1096

  unfold Seg52.relationRow1097 at r1097

  unfold Seg52.relationRow1098 at r1098

  unfold Seg52.relationRow1099 at r1099

  unfold Seg52.relationRow1100 at r1100

  unfold Seg52.relationRow1101 at r1101

  unfold Seg52.relationRow1102 at r1102

  unfold Seg52.relationRow1103 at r1103

  unfold Seg52.relationRow1104 at r1104

  unfold Seg52.relationRow1105 at r1105

  unfold Seg52.relationRow1106 at r1106

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX16 rho = seg52In0AccX15 rho + rho 45491 := by
    unfold seg52In0AccX16 seg52In0AccX15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 45296 13]

    ring

  have hnexty : seg52In0AccY16 rho = seg52In0AccY15 rho + rho 45492 := by
    unfold seg52In0AccY16 seg52In0AccY15
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 45297 13]

    ring

  have ha0 : (rho 45483 + rho 45484) * (seg52In0AccX15 rho + seg52In0AccY15 rho) = rho 45485 := by
    unfold seg52In0AccX15 seg52In0AccY15
    linear_combination r1094
  have ha1 : rho 45484 * seg52In0AccX15 rho = rho 45486 := by
    unfold seg52In0AccX15
    linear_combination r1095
  have ha2 : rho 45483 * seg52In0AccY15 rho = rho 45487 := by
    unfold seg52In0AccY15
    linear_combination r1096
  have ha3 : 3021 * rho 45486 * rho 45487 = rho 45488 := by
    linear_combination r1097
  have ha4 : rho 45489 * (1 + rho 45488) = rho 45486 + rho 45487 := by
    linear_combination r1098
  have ha5 : rho 45490 * (1 - rho 45488) = rho 45485 - rho 45486 - rho 45487 := by
    linear_combination r1099
  have haddx :
      rho 45489 * (1 + 3021 * (rho 45484 * seg52In0AccX15 rho) * (rho 45483 * seg52In0AccY15 rho)) =
        rho 45484 * seg52In0AccX15 rho + rho 45483 * seg52In0AccY15 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45490 * (1 - 3021 * (rho 45484 * seg52In0AccX15 rho) * (rho 45483 * seg52In0AccY15 rho)) =
        (-1) * (rho 45484 * seg52In0AccX15 rho) - rho 45483 * seg52In0AccY15 rho +
          (seg52In0AccY15 rho - seg52In0AccX15 rho * (-1)) * (rho 45483 + rho 45484) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45490 * (1 - rho 45488) = rho 45485 - rho 45486 - rho 45487 := ha5
      _ = (-1) * rho 45486 - rho 45487 + (seg52In0AccY15 rho - seg52In0AccX15 rho * (-1)) *
          (rho 45483 + rho 45484) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX16 rho = seg52In0AccX15 rho - Bool.toZMod bit * (seg52In0AccX15 rho - rho 45489) := by
    have hd : rho 45491 = Bool.toZMod bit * (rho 45489 - seg52In0AccX15 rho) := by
      rw [← hbit]
      unfold seg52In0AccX15
      linear_combination -r1100
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY16 rho = seg52In0AccY15 rho - Bool.toZMod bit * (seg52In0AccY15 rho - rho 45490) := by
    have hd : rho 45492 = Bool.toZMod bit * (rho 45490 - seg52In0AccY15 rho) := by
      rw [← hbit]
      unfold seg52In0AccY15
      linear_combination -r1101
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45483 * rho 45484 = rho 45493 := by linear_combination r1102
  have hd1 : rho 45483 * rho 45483 = rho 45494 := by linear_combination r1103
  have hd2 : rho 45484 * rho 45484 = rho 45495 := by linear_combination r1104
  have hd3 : rho 45496 * (rho 45484 * rho 45484 + rho 45483 * rho 45483 * (-1)) =
      2 * (rho 45483 * rho 45484) := by
    rw [hd0, hd1, hd2]
    linear_combination r1105
  have hd4 : rho 45497 * (2 - (rho 45484 * rho 45484 + rho 45483 * rho 45483 * (-1))) =
      rho 45484 * rho 45484 - rho 45483 * rho 45483 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1106
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX15 rho, seg52In0AccY15 rho⟩ ⟨rho 45483, rho 45484⟩
    ⟨rho 45489, rho 45490⟩ ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 45496, rho 45497⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1107 rho ∧ Seg52.relationRow1108 rho ∧ Seg52.relationRow1109 rho ∧ Seg52.relationRow1110 rho ∧ Seg52.relationRow1111 rho ∧ Seg52.relationRow1112 rho ∧ Seg52.relationRow1113 rho ∧ Seg52.relationRow1114 rho ∧ Seg52.relationRow1115 rho ∧ Seg52.relationRow1116 rho ∧ Seg52.relationRow1117 rho ∧ Seg52.relationRow1118 rho ∧ Seg52.relationRow1119 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart13 at p13

  rcases p13 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩

  exact ⟨r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩

theorem seg52In0_rung16 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45184 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45496, rho 45497⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 45496, rho 45497⟩
        ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 45509, rho 45510⟩ := by
  obtain ⟨r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩ := seg52In0_rows16 rho h
  unfold Seg52.relationRow1107 at r1107

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1107

  unfold Seg52.relationRow1108 at r1108

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1108

  unfold Seg52.relationRow1109 at r1109

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1109

  unfold Seg52.relationRow1110 at r1110

  unfold Seg52.relationRow1111 at r1111

  unfold Seg52.relationRow1112 at r1112

  unfold Seg52.relationRow1113 at r1113

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1113

  unfold Seg52.relationRow1114 at r1114

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1114

  unfold Seg52.relationRow1115 at r1115

  unfold Seg52.relationRow1116 at r1116

  unfold Seg52.relationRow1117 at r1117

  unfold Seg52.relationRow1118 at r1118

  unfold Seg52.relationRow1119 at r1119

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX17 rho = seg52In0AccX16 rho + rho 45504 := by
    unfold seg52In0AccX17 seg52In0AccX16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 16]

    ring

  have hnexty : seg52In0AccY17 rho = seg52In0AccY16 rho + rho 45505 := by
    unfold seg52In0AccY17 seg52In0AccY16
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 16]

    ring

  have ha0 : (rho 45496 + rho 45497) * (seg52In0AccX16 rho + seg52In0AccY16 rho) = rho 45498 := by
    unfold seg52In0AccX16 seg52In0AccY16
    linear_combination r1107
  have ha1 : rho 45497 * seg52In0AccX16 rho = rho 45499 := by
    unfold seg52In0AccX16
    linear_combination r1108
  have ha2 : rho 45496 * seg52In0AccY16 rho = rho 45500 := by
    unfold seg52In0AccY16
    linear_combination r1109
  have ha3 : 3021 * rho 45499 * rho 45500 = rho 45501 := by
    linear_combination r1110
  have ha4 : rho 45502 * (1 + rho 45501) = rho 45499 + rho 45500 := by
    linear_combination r1111
  have ha5 : rho 45503 * (1 - rho 45501) = rho 45498 - rho 45499 - rho 45500 := by
    linear_combination r1112
  have haddx :
      rho 45502 * (1 + 3021 * (rho 45497 * seg52In0AccX16 rho) * (rho 45496 * seg52In0AccY16 rho)) =
        rho 45497 * seg52In0AccX16 rho + rho 45496 * seg52In0AccY16 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45503 * (1 - 3021 * (rho 45497 * seg52In0AccX16 rho) * (rho 45496 * seg52In0AccY16 rho)) =
        (-1) * (rho 45497 * seg52In0AccX16 rho) - rho 45496 * seg52In0AccY16 rho +
          (seg52In0AccY16 rho - seg52In0AccX16 rho * (-1)) * (rho 45496 + rho 45497) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45503 * (1 - rho 45501) = rho 45498 - rho 45499 - rho 45500 := ha5
      _ = (-1) * rho 45499 - rho 45500 + (seg52In0AccY16 rho - seg52In0AccX16 rho * (-1)) *
          (rho 45496 + rho 45497) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX17 rho = seg52In0AccX16 rho - Bool.toZMod bit * (seg52In0AccX16 rho - rho 45502) := by
    have hd : rho 45504 = Bool.toZMod bit * (rho 45502 - seg52In0AccX16 rho) := by
      rw [← hbit]
      unfold seg52In0AccX16
      linear_combination -r1113
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY17 rho = seg52In0AccY16 rho - Bool.toZMod bit * (seg52In0AccY16 rho - rho 45503) := by
    have hd : rho 45505 = Bool.toZMod bit * (rho 45503 - seg52In0AccY16 rho) := by
      rw [← hbit]
      unfold seg52In0AccY16
      linear_combination -r1114
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45496 * rho 45497 = rho 45506 := by linear_combination r1115
  have hd1 : rho 45496 * rho 45496 = rho 45507 := by linear_combination r1116
  have hd2 : rho 45497 * rho 45497 = rho 45508 := by linear_combination r1117
  have hd3 : rho 45509 * (rho 45497 * rho 45497 + rho 45496 * rho 45496 * (-1)) =
      2 * (rho 45496 * rho 45497) := by
    rw [hd0, hd1, hd2]
    linear_combination r1118
  have hd4 : rho 45510 * (2 - (rho 45497 * rho 45497 + rho 45496 * rho 45496 * (-1))) =
      rho 45497 * rho 45497 - rho 45496 * rho 45496 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1119
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX16 rho, seg52In0AccY16 rho⟩ ⟨rho 45496, rho 45497⟩
    ⟨rho 45502, rho 45503⟩ ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 45509, rho 45510⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1120 rho ∧ Seg52.relationRow1121 rho ∧ Seg52.relationRow1122 rho ∧ Seg52.relationRow1123 rho ∧ Seg52.relationRow1124 rho ∧ Seg52.relationRow1125 rho ∧ Seg52.relationRow1126 rho ∧ Seg52.relationRow1127 rho ∧ Seg52.relationRow1128 rho ∧ Seg52.relationRow1129 rho ∧ Seg52.relationRow1130 rho ∧ Seg52.relationRow1131 rho ∧ Seg52.relationRow1132 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132⟩

theorem seg52In0_rung17 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45185 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45509, rho 45510⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 45509, rho 45510⟩
        ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 45522, rho 45523⟩ := by
  obtain ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132⟩ := seg52In0_rows17 rho h
  unfold Seg52.relationRow1120 at r1120

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1120

  unfold Seg52.relationRow1121 at r1121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1121

  unfold Seg52.relationRow1122 at r1122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1122

  unfold Seg52.relationRow1123 at r1123

  unfold Seg52.relationRow1124 at r1124

  unfold Seg52.relationRow1125 at r1125

  unfold Seg52.relationRow1126 at r1126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1126

  unfold Seg52.relationRow1127 at r1127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1127

  unfold Seg52.relationRow1128 at r1128

  unfold Seg52.relationRow1129 at r1129

  unfold Seg52.relationRow1130 at r1130

  unfold Seg52.relationRow1131 at r1131

  unfold Seg52.relationRow1132 at r1132

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX18 rho = seg52In0AccX17 rho + rho 45517 := by
    unfold seg52In0AccX18 seg52In0AccX17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 17]

    ring

  have hnexty : seg52In0AccY18 rho = seg52In0AccY17 rho + rho 45518 := by
    unfold seg52In0AccY18 seg52In0AccY17
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 17]

    ring

  have ha0 : (rho 45509 + rho 45510) * (seg52In0AccX17 rho + seg52In0AccY17 rho) = rho 45511 := by
    unfold seg52In0AccX17 seg52In0AccY17
    linear_combination r1120
  have ha1 : rho 45510 * seg52In0AccX17 rho = rho 45512 := by
    unfold seg52In0AccX17
    linear_combination r1121
  have ha2 : rho 45509 * seg52In0AccY17 rho = rho 45513 := by
    unfold seg52In0AccY17
    linear_combination r1122
  have ha3 : 3021 * rho 45512 * rho 45513 = rho 45514 := by
    linear_combination r1123
  have ha4 : rho 45515 * (1 + rho 45514) = rho 45512 + rho 45513 := by
    linear_combination r1124
  have ha5 : rho 45516 * (1 - rho 45514) = rho 45511 - rho 45512 - rho 45513 := by
    linear_combination r1125
  have haddx :
      rho 45515 * (1 + 3021 * (rho 45510 * seg52In0AccX17 rho) * (rho 45509 * seg52In0AccY17 rho)) =
        rho 45510 * seg52In0AccX17 rho + rho 45509 * seg52In0AccY17 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45516 * (1 - 3021 * (rho 45510 * seg52In0AccX17 rho) * (rho 45509 * seg52In0AccY17 rho)) =
        (-1) * (rho 45510 * seg52In0AccX17 rho) - rho 45509 * seg52In0AccY17 rho +
          (seg52In0AccY17 rho - seg52In0AccX17 rho * (-1)) * (rho 45509 + rho 45510) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45516 * (1 - rho 45514) = rho 45511 - rho 45512 - rho 45513 := ha5
      _ = (-1) * rho 45512 - rho 45513 + (seg52In0AccY17 rho - seg52In0AccX17 rho * (-1)) *
          (rho 45509 + rho 45510) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX18 rho = seg52In0AccX17 rho - Bool.toZMod bit * (seg52In0AccX17 rho - rho 45515) := by
    have hd : rho 45517 = Bool.toZMod bit * (rho 45515 - seg52In0AccX17 rho) := by
      rw [← hbit]
      unfold seg52In0AccX17
      linear_combination -r1126
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY18 rho = seg52In0AccY17 rho - Bool.toZMod bit * (seg52In0AccY17 rho - rho 45516) := by
    have hd : rho 45518 = Bool.toZMod bit * (rho 45516 - seg52In0AccY17 rho) := by
      rw [← hbit]
      unfold seg52In0AccY17
      linear_combination -r1127
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45509 * rho 45510 = rho 45519 := by linear_combination r1128
  have hd1 : rho 45509 * rho 45509 = rho 45520 := by linear_combination r1129
  have hd2 : rho 45510 * rho 45510 = rho 45521 := by linear_combination r1130
  have hd3 : rho 45522 * (rho 45510 * rho 45510 + rho 45509 * rho 45509 * (-1)) =
      2 * (rho 45509 * rho 45510) := by
    rw [hd0, hd1, hd2]
    linear_combination r1131
  have hd4 : rho 45523 * (2 - (rho 45510 * rho 45510 + rho 45509 * rho 45509 * (-1))) =
      rho 45510 * rho 45510 - rho 45509 * rho 45509 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1132
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX17 rho, seg52In0AccY17 rho⟩ ⟨rho 45509, rho 45510⟩
    ⟨rho 45515, rho 45516⟩ ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 45522, rho 45523⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1133 rho ∧ Seg52.relationRow1134 rho ∧ Seg52.relationRow1135 rho ∧ Seg52.relationRow1136 rho ∧ Seg52.relationRow1137 rho ∧ Seg52.relationRow1138 rho ∧ Seg52.relationRow1139 rho ∧ Seg52.relationRow1140 rho ∧ Seg52.relationRow1141 rho ∧ Seg52.relationRow1142 rho ∧ Seg52.relationRow1143 rho ∧ Seg52.relationRow1144 rho ∧ Seg52.relationRow1145 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145⟩

theorem seg52In0_rung18 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45186 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45522, rho 45523⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 45522, rho 45523⟩
        ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 45535, rho 45536⟩ := by
  obtain ⟨r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145⟩ := seg52In0_rows18 rho h
  unfold Seg52.relationRow1133 at r1133

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1133

  unfold Seg52.relationRow1134 at r1134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1134

  unfold Seg52.relationRow1135 at r1135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1135

  unfold Seg52.relationRow1136 at r1136

  unfold Seg52.relationRow1137 at r1137

  unfold Seg52.relationRow1138 at r1138

  unfold Seg52.relationRow1139 at r1139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1139

  unfold Seg52.relationRow1140 at r1140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1140

  unfold Seg52.relationRow1141 at r1141

  unfold Seg52.relationRow1142 at r1142

  unfold Seg52.relationRow1143 at r1143

  unfold Seg52.relationRow1144 at r1144

  unfold Seg52.relationRow1145 at r1145

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX19 rho = seg52In0AccX18 rho + rho 45530 := by
    unfold seg52In0AccX19 seg52In0AccX18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 18]

    ring

  have hnexty : seg52In0AccY19 rho = seg52In0AccY18 rho + rho 45531 := by
    unfold seg52In0AccY19 seg52In0AccY18
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 18]

    ring

  have ha0 : (rho 45522 + rho 45523) * (seg52In0AccX18 rho + seg52In0AccY18 rho) = rho 45524 := by
    unfold seg52In0AccX18 seg52In0AccY18
    linear_combination r1133
  have ha1 : rho 45523 * seg52In0AccX18 rho = rho 45525 := by
    unfold seg52In0AccX18
    linear_combination r1134
  have ha2 : rho 45522 * seg52In0AccY18 rho = rho 45526 := by
    unfold seg52In0AccY18
    linear_combination r1135
  have ha3 : 3021 * rho 45525 * rho 45526 = rho 45527 := by
    linear_combination r1136
  have ha4 : rho 45528 * (1 + rho 45527) = rho 45525 + rho 45526 := by
    linear_combination r1137
  have ha5 : rho 45529 * (1 - rho 45527) = rho 45524 - rho 45525 - rho 45526 := by
    linear_combination r1138
  have haddx :
      rho 45528 * (1 + 3021 * (rho 45523 * seg52In0AccX18 rho) * (rho 45522 * seg52In0AccY18 rho)) =
        rho 45523 * seg52In0AccX18 rho + rho 45522 * seg52In0AccY18 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45529 * (1 - 3021 * (rho 45523 * seg52In0AccX18 rho) * (rho 45522 * seg52In0AccY18 rho)) =
        (-1) * (rho 45523 * seg52In0AccX18 rho) - rho 45522 * seg52In0AccY18 rho +
          (seg52In0AccY18 rho - seg52In0AccX18 rho * (-1)) * (rho 45522 + rho 45523) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45529 * (1 - rho 45527) = rho 45524 - rho 45525 - rho 45526 := ha5
      _ = (-1) * rho 45525 - rho 45526 + (seg52In0AccY18 rho - seg52In0AccX18 rho * (-1)) *
          (rho 45522 + rho 45523) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX19 rho = seg52In0AccX18 rho - Bool.toZMod bit * (seg52In0AccX18 rho - rho 45528) := by
    have hd : rho 45530 = Bool.toZMod bit * (rho 45528 - seg52In0AccX18 rho) := by
      rw [← hbit]
      unfold seg52In0AccX18
      linear_combination -r1139
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY19 rho = seg52In0AccY18 rho - Bool.toZMod bit * (seg52In0AccY18 rho - rho 45529) := by
    have hd : rho 45531 = Bool.toZMod bit * (rho 45529 - seg52In0AccY18 rho) := by
      rw [← hbit]
      unfold seg52In0AccY18
      linear_combination -r1140
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45522 * rho 45523 = rho 45532 := by linear_combination r1141
  have hd1 : rho 45522 * rho 45522 = rho 45533 := by linear_combination r1142
  have hd2 : rho 45523 * rho 45523 = rho 45534 := by linear_combination r1143
  have hd3 : rho 45535 * (rho 45523 * rho 45523 + rho 45522 * rho 45522 * (-1)) =
      2 * (rho 45522 * rho 45523) := by
    rw [hd0, hd1, hd2]
    linear_combination r1144
  have hd4 : rho 45536 * (2 - (rho 45523 * rho 45523 + rho 45522 * rho 45522 * (-1))) =
      rho 45523 * rho 45523 - rho 45522 * rho 45522 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1145
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX18 rho, seg52In0AccY18 rho⟩ ⟨rho 45522, rho 45523⟩
    ⟨rho 45528, rho 45529⟩ ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 45535, rho 45536⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1146 rho ∧ Seg52.relationRow1147 rho ∧ Seg52.relationRow1148 rho ∧ Seg52.relationRow1149 rho ∧ Seg52.relationRow1150 rho ∧ Seg52.relationRow1151 rho ∧ Seg52.relationRow1152 rho ∧ Seg52.relationRow1153 rho ∧ Seg52.relationRow1154 rho ∧ Seg52.relationRow1155 rho ∧ Seg52.relationRow1156 rho ∧ Seg52.relationRow1157 rho ∧ Seg52.relationRow1158 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158⟩

theorem seg52In0_rung19 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45187 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45535, rho 45536⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 45535, rho 45536⟩
        ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 45548, rho 45549⟩ := by
  obtain ⟨r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158⟩ := seg52In0_rows19 rho h
  unfold Seg52.relationRow1146 at r1146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1146

  unfold Seg52.relationRow1147 at r1147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1147

  unfold Seg52.relationRow1148 at r1148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1148

  unfold Seg52.relationRow1149 at r1149

  unfold Seg52.relationRow1150 at r1150

  unfold Seg52.relationRow1151 at r1151

  unfold Seg52.relationRow1152 at r1152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1152

  unfold Seg52.relationRow1153 at r1153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1153

  unfold Seg52.relationRow1154 at r1154

  unfold Seg52.relationRow1155 at r1155

  unfold Seg52.relationRow1156 at r1156

  unfold Seg52.relationRow1157 at r1157

  unfold Seg52.relationRow1158 at r1158

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX20 rho = seg52In0AccX19 rho + rho 45543 := by
    unfold seg52In0AccX20 seg52In0AccX19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 19]

    ring

  have hnexty : seg52In0AccY20 rho = seg52In0AccY19 rho + rho 45544 := by
    unfold seg52In0AccY20 seg52In0AccY19
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 19]

    ring

  have ha0 : (rho 45535 + rho 45536) * (seg52In0AccX19 rho + seg52In0AccY19 rho) = rho 45537 := by
    unfold seg52In0AccX19 seg52In0AccY19
    linear_combination r1146
  have ha1 : rho 45536 * seg52In0AccX19 rho = rho 45538 := by
    unfold seg52In0AccX19
    linear_combination r1147
  have ha2 : rho 45535 * seg52In0AccY19 rho = rho 45539 := by
    unfold seg52In0AccY19
    linear_combination r1148
  have ha3 : 3021 * rho 45538 * rho 45539 = rho 45540 := by
    linear_combination r1149
  have ha4 : rho 45541 * (1 + rho 45540) = rho 45538 + rho 45539 := by
    linear_combination r1150
  have ha5 : rho 45542 * (1 - rho 45540) = rho 45537 - rho 45538 - rho 45539 := by
    linear_combination r1151
  have haddx :
      rho 45541 * (1 + 3021 * (rho 45536 * seg52In0AccX19 rho) * (rho 45535 * seg52In0AccY19 rho)) =
        rho 45536 * seg52In0AccX19 rho + rho 45535 * seg52In0AccY19 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45542 * (1 - 3021 * (rho 45536 * seg52In0AccX19 rho) * (rho 45535 * seg52In0AccY19 rho)) =
        (-1) * (rho 45536 * seg52In0AccX19 rho) - rho 45535 * seg52In0AccY19 rho +
          (seg52In0AccY19 rho - seg52In0AccX19 rho * (-1)) * (rho 45535 + rho 45536) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45542 * (1 - rho 45540) = rho 45537 - rho 45538 - rho 45539 := ha5
      _ = (-1) * rho 45538 - rho 45539 + (seg52In0AccY19 rho - seg52In0AccX19 rho * (-1)) *
          (rho 45535 + rho 45536) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX20 rho = seg52In0AccX19 rho - Bool.toZMod bit * (seg52In0AccX19 rho - rho 45541) := by
    have hd : rho 45543 = Bool.toZMod bit * (rho 45541 - seg52In0AccX19 rho) := by
      rw [← hbit]
      unfold seg52In0AccX19
      linear_combination -r1152
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY20 rho = seg52In0AccY19 rho - Bool.toZMod bit * (seg52In0AccY19 rho - rho 45542) := by
    have hd : rho 45544 = Bool.toZMod bit * (rho 45542 - seg52In0AccY19 rho) := by
      rw [← hbit]
      unfold seg52In0AccY19
      linear_combination -r1153
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45535 * rho 45536 = rho 45545 := by linear_combination r1154
  have hd1 : rho 45535 * rho 45535 = rho 45546 := by linear_combination r1155
  have hd2 : rho 45536 * rho 45536 = rho 45547 := by linear_combination r1156
  have hd3 : rho 45548 * (rho 45536 * rho 45536 + rho 45535 * rho 45535 * (-1)) =
      2 * (rho 45535 * rho 45536) := by
    rw [hd0, hd1, hd2]
    linear_combination r1157
  have hd4 : rho 45549 * (2 - (rho 45536 * rho 45536 + rho 45535 * rho 45535 * (-1))) =
      rho 45536 * rho 45536 - rho 45535 * rho 45535 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1158
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX19 rho, seg52In0AccY19 rho⟩ ⟨rho 45535, rho 45536⟩
    ⟨rho 45541, rho 45542⟩ ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 45548, rho 45549⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1159 rho ∧ Seg52.relationRow1160 rho ∧ Seg52.relationRow1161 rho ∧ Seg52.relationRow1162 rho ∧ Seg52.relationRow1163 rho ∧ Seg52.relationRow1164 rho ∧ Seg52.relationRow1165 rho ∧ Seg52.relationRow1166 rho ∧ Seg52.relationRow1167 rho ∧ Seg52.relationRow1168 rho ∧ Seg52.relationRow1169 rho ∧ Seg52.relationRow1170 rho ∧ Seg52.relationRow1171 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171⟩

theorem seg52In0_rung20 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45188 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45548, rho 45549⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 45548, rho 45549⟩
        ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 45561, rho 45562⟩ := by
  obtain ⟨r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171⟩ := seg52In0_rows20 rho h
  unfold Seg52.relationRow1159 at r1159

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1159

  unfold Seg52.relationRow1160 at r1160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1160

  unfold Seg52.relationRow1161 at r1161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1161

  unfold Seg52.relationRow1162 at r1162

  unfold Seg52.relationRow1163 at r1163

  unfold Seg52.relationRow1164 at r1164

  unfold Seg52.relationRow1165 at r1165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1165

  unfold Seg52.relationRow1166 at r1166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1166

  unfold Seg52.relationRow1167 at r1167

  unfold Seg52.relationRow1168 at r1168

  unfold Seg52.relationRow1169 at r1169

  unfold Seg52.relationRow1170 at r1170

  unfold Seg52.relationRow1171 at r1171

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX21 rho = seg52In0AccX20 rho + rho 45556 := by
    unfold seg52In0AccX21 seg52In0AccX20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 20]

    ring

  have hnexty : seg52In0AccY21 rho = seg52In0AccY20 rho + rho 45557 := by
    unfold seg52In0AccY21 seg52In0AccY20
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 20]

    ring

  have ha0 : (rho 45548 + rho 45549) * (seg52In0AccX20 rho + seg52In0AccY20 rho) = rho 45550 := by
    unfold seg52In0AccX20 seg52In0AccY20
    linear_combination r1159
  have ha1 : rho 45549 * seg52In0AccX20 rho = rho 45551 := by
    unfold seg52In0AccX20
    linear_combination r1160
  have ha2 : rho 45548 * seg52In0AccY20 rho = rho 45552 := by
    unfold seg52In0AccY20
    linear_combination r1161
  have ha3 : 3021 * rho 45551 * rho 45552 = rho 45553 := by
    linear_combination r1162
  have ha4 : rho 45554 * (1 + rho 45553) = rho 45551 + rho 45552 := by
    linear_combination r1163
  have ha5 : rho 45555 * (1 - rho 45553) = rho 45550 - rho 45551 - rho 45552 := by
    linear_combination r1164
  have haddx :
      rho 45554 * (1 + 3021 * (rho 45549 * seg52In0AccX20 rho) * (rho 45548 * seg52In0AccY20 rho)) =
        rho 45549 * seg52In0AccX20 rho + rho 45548 * seg52In0AccY20 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45555 * (1 - 3021 * (rho 45549 * seg52In0AccX20 rho) * (rho 45548 * seg52In0AccY20 rho)) =
        (-1) * (rho 45549 * seg52In0AccX20 rho) - rho 45548 * seg52In0AccY20 rho +
          (seg52In0AccY20 rho - seg52In0AccX20 rho * (-1)) * (rho 45548 + rho 45549) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45555 * (1 - rho 45553) = rho 45550 - rho 45551 - rho 45552 := ha5
      _ = (-1) * rho 45551 - rho 45552 + (seg52In0AccY20 rho - seg52In0AccX20 rho * (-1)) *
          (rho 45548 + rho 45549) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX21 rho = seg52In0AccX20 rho - Bool.toZMod bit * (seg52In0AccX20 rho - rho 45554) := by
    have hd : rho 45556 = Bool.toZMod bit * (rho 45554 - seg52In0AccX20 rho) := by
      rw [← hbit]
      unfold seg52In0AccX20
      linear_combination -r1165
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY21 rho = seg52In0AccY20 rho - Bool.toZMod bit * (seg52In0AccY20 rho - rho 45555) := by
    have hd : rho 45557 = Bool.toZMod bit * (rho 45555 - seg52In0AccY20 rho) := by
      rw [← hbit]
      unfold seg52In0AccY20
      linear_combination -r1166
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45548 * rho 45549 = rho 45558 := by linear_combination r1167
  have hd1 : rho 45548 * rho 45548 = rho 45559 := by linear_combination r1168
  have hd2 : rho 45549 * rho 45549 = rho 45560 := by linear_combination r1169
  have hd3 : rho 45561 * (rho 45549 * rho 45549 + rho 45548 * rho 45548 * (-1)) =
      2 * (rho 45548 * rho 45549) := by
    rw [hd0, hd1, hd2]
    linear_combination r1170
  have hd4 : rho 45562 * (2 - (rho 45549 * rho 45549 + rho 45548 * rho 45548 * (-1))) =
      rho 45549 * rho 45549 - rho 45548 * rho 45548 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1171
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX20 rho, seg52In0AccY20 rho⟩ ⟨rho 45548, rho 45549⟩
    ⟨rho 45554, rho 45555⟩ ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 45561, rho 45562⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_rows21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow1172 rho ∧ Seg52.relationRow1173 rho ∧ Seg52.relationRow1174 rho ∧ Seg52.relationRow1175 rho ∧ Seg52.relationRow1176 rho ∧ Seg52.relationRow1177 rho ∧ Seg52.relationRow1178 rho ∧ Seg52.relationRow1179 rho ∧ Seg52.relationRow1180 rho ∧ Seg52.relationRow1181 rho ∧ Seg52.relationRow1182 rho ∧ Seg52.relationRow1183 rho ∧ Seg52.relationRow1184 rho := by
  unfold Seg52.relation at h

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

  unfold Seg52.relationPart14 at p14

  rcases p14 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184⟩

theorem seg52In0_rung21 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 45189 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45561, rho 45562⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 45561, rho 45562⟩
        ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 45574, rho 45575⟩ := by
  obtain ⟨r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184⟩ := seg52In0_rows21 rho h
  unfold Seg52.relationRow1172 at r1172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1172

  unfold Seg52.relationRow1173 at r1173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1173

  unfold Seg52.relationRow1174 at r1174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1174

  unfold Seg52.relationRow1175 at r1175

  unfold Seg52.relationRow1176 at r1176

  unfold Seg52.relationRow1177 at r1177

  unfold Seg52.relationRow1178 at r1178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1178

  unfold Seg52.relationRow1179 at r1179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r1179

  unfold Seg52.relationRow1180 at r1180

  unfold Seg52.relationRow1181 at r1181

  unfold Seg52.relationRow1182 at r1182

  unfold Seg52.relationRow1183 at r1183

  unfold Seg52.relationRow1184 at r1184

  intro bit hbit hacc hcur
  have hnextx : seg52In0AccX22 rho = seg52In0AccX21 rho + rho 45569 := by
    unfold seg52In0AccX22 seg52In0AccX21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45296 13 21]

    ring

  have hnexty : seg52In0AccY22 rho = seg52In0AccY21 rho + rho 45570 := by
    unfold seg52In0AccY22 seg52In0AccY21
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 45297 13 21]

    ring

  have ha0 : (rho 45561 + rho 45562) * (seg52In0AccX21 rho + seg52In0AccY21 rho) = rho 45563 := by
    unfold seg52In0AccX21 seg52In0AccY21
    linear_combination r1172
  have ha1 : rho 45562 * seg52In0AccX21 rho = rho 45564 := by
    unfold seg52In0AccX21
    linear_combination r1173
  have ha2 : rho 45561 * seg52In0AccY21 rho = rho 45565 := by
    unfold seg52In0AccY21
    linear_combination r1174
  have ha3 : 3021 * rho 45564 * rho 45565 = rho 45566 := by
    linear_combination r1175
  have ha4 : rho 45567 * (1 + rho 45566) = rho 45564 + rho 45565 := by
    linear_combination r1176
  have ha5 : rho 45568 * (1 - rho 45566) = rho 45563 - rho 45564 - rho 45565 := by
    linear_combination r1177
  have haddx :
      rho 45567 * (1 + 3021 * (rho 45562 * seg52In0AccX21 rho) * (rho 45561 * seg52In0AccY21 rho)) =
        rho 45562 * seg52In0AccX21 rho + rho 45561 * seg52In0AccY21 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 45568 * (1 - 3021 * (rho 45562 * seg52In0AccX21 rho) * (rho 45561 * seg52In0AccY21 rho)) =
        (-1) * (rho 45562 * seg52In0AccX21 rho) - rho 45561 * seg52In0AccY21 rho +
          (seg52In0AccY21 rho - seg52In0AccX21 rho * (-1)) * (rho 45561 + rho 45562) := by
    rw [ha1, ha2, ha3]
    calc
      rho 45568 * (1 - rho 45566) = rho 45563 - rho 45564 - rho 45565 := ha5
      _ = (-1) * rho 45564 - rho 45565 + (seg52In0AccY21 rho - seg52In0AccX21 rho * (-1)) *
          (rho 45561 + rho 45562) := by
        rw [← ha0]
        ring
  have hselx : seg52In0AccX22 rho = seg52In0AccX21 rho - Bool.toZMod bit * (seg52In0AccX21 rho - rho 45567) := by
    have hd : rho 45569 = Bool.toZMod bit * (rho 45567 - seg52In0AccX21 rho) := by
      rw [← hbit]
      unfold seg52In0AccX21
      linear_combination -r1178
    rw [hnextx]
    linear_combination hd
  have hsely : seg52In0AccY22 rho = seg52In0AccY21 rho - Bool.toZMod bit * (seg52In0AccY21 rho - rho 45568) := by
    have hd : rho 45570 = Bool.toZMod bit * (rho 45568 - seg52In0AccY21 rho) := by
      rw [← hbit]
      unfold seg52In0AccY21
      linear_combination -r1179
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45561 * rho 45562 = rho 45571 := by linear_combination r1180
  have hd1 : rho 45561 * rho 45561 = rho 45572 := by linear_combination r1181
  have hd2 : rho 45562 * rho 45562 = rho 45573 := by linear_combination r1182
  have hd3 : rho 45574 * (rho 45562 * rho 45562 + rho 45561 * rho 45561 * (-1)) =
      2 * (rho 45561 * rho 45562) := by
    rw [hd0, hd1, hd2]
    linear_combination r1183
  have hd4 : rho 45575 * (2 - (rho 45562 * rho 45562 + rho 45561 * rho 45561 * (-1))) =
      rho 45562 * rho 45562 - rho 45561 * rho 45561 * (-1) := by
    rw [hd1, hd2]
    linear_combination r1184
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52In0AccX21 rho, seg52In0AccY21 rho⟩ ⟨rho 45561, rho 45562⟩
    ⟨rho 45567, rho 45568⟩ ⟨seg52In0AccX22 rho, seg52In0AccY22 rho⟩ ⟨rho 45574, rho 45575⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52In0_hstep_c1 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (45168 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg52In0AccState rho i) →
      EdwardsBridge.onCurve (seg52In0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52In0AccState rho i) (seg52In0CurState rho i)
        (seg52In0AccState rho (i + 1)) (seg52In0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52In0_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg52In0_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg52In0_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg52In0_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg52In0_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg52In0_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg52In0_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg52In0_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg52In0_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg52In0_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg52In0_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
