import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6120 rho ∧ Seg52.relationRow6121 rho ∧ Seg52.relationRow6122 rho ∧ Seg52.relationRow6123 rho ∧ Seg52.relationRow6124 rho ∧ Seg52.relationRow6125 rho ∧ Seg52.relationRow6126 rho ∧ Seg52.relationRow6127 rho ∧ Seg52.relationRow6128 rho ∧ Seg52.relationRow6129 rho ∧ Seg52.relationRow6130 rho ∧ Seg52.relationRow6131 rho ∧ Seg52.relationRow6132 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩

theorem seg52Out0_rung77 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49463 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50507, rho 50508⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 50507, rho 50508⟩
        ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 50520, rho 50521⟩ := by
  obtain ⟨r6120, r6121, r6122, r6123, r6124, r6125, r6126, r6127, r6128, r6129, r6130, r6131, r6132⟩ := seg52Out0_rows77 rho h
  unfold Seg52.relationRow6120 at r6120

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6120

  unfold Seg52.relationRow6121 at r6121

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6121

  unfold Seg52.relationRow6122 at r6122

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6122

  unfold Seg52.relationRow6123 at r6123

  unfold Seg52.relationRow6124 at r6124

  unfold Seg52.relationRow6125 at r6125

  unfold Seg52.relationRow6126 at r6126

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6126

  unfold Seg52.relationRow6127 at r6127

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6127

  unfold Seg52.relationRow6128 at r6128

  unfold Seg52.relationRow6129 at r6129

  unfold Seg52.relationRow6130 at r6130

  unfold Seg52.relationRow6131 at r6131

  unfold Seg52.relationRow6132 at r6132

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX78 rho = seg52Out0AccX77 rho + rho 50515 := by
    unfold seg52Out0AccX78 seg52Out0AccX77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 77]

    ring

  have hnexty : seg52Out0AccY78 rho = seg52Out0AccY77 rho + rho 50516 := by
    unfold seg52Out0AccY78 seg52Out0AccY77
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 77]

    ring

  have ha0 : (rho 50507 + rho 50508) * (seg52Out0AccX77 rho + seg52Out0AccY77 rho) = rho 50509 := by
    unfold seg52Out0AccX77 seg52Out0AccY77
    linear_combination r6120
  have ha1 : rho 50508 * seg52Out0AccX77 rho = rho 50510 := by
    unfold seg52Out0AccX77
    linear_combination r6121
  have ha2 : rho 50507 * seg52Out0AccY77 rho = rho 50511 := by
    unfold seg52Out0AccY77
    linear_combination r6122
  have ha3 : 3021 * rho 50510 * rho 50511 = rho 50512 := by
    linear_combination r6123
  have ha4 : rho 50513 * (1 + rho 50512) = rho 50510 + rho 50511 := by
    linear_combination r6124
  have ha5 : rho 50514 * (1 - rho 50512) = rho 50509 - rho 50510 - rho 50511 := by
    linear_combination r6125
  have haddx :
      rho 50513 * (1 + 3021 * (rho 50508 * seg52Out0AccX77 rho) * (rho 50507 * seg52Out0AccY77 rho)) =
        rho 50508 * seg52Out0AccX77 rho + rho 50507 * seg52Out0AccY77 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50514 * (1 - 3021 * (rho 50508 * seg52Out0AccX77 rho) * (rho 50507 * seg52Out0AccY77 rho)) =
        (-1) * (rho 50508 * seg52Out0AccX77 rho) - rho 50507 * seg52Out0AccY77 rho +
          (seg52Out0AccY77 rho - seg52Out0AccX77 rho * (-1)) * (rho 50507 + rho 50508) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50514 * (1 - rho 50512) = rho 50509 - rho 50510 - rho 50511 := ha5
      _ = (-1) * rho 50510 - rho 50511 + (seg52Out0AccY77 rho - seg52Out0AccX77 rho * (-1)) *
          (rho 50507 + rho 50508) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX78 rho = seg52Out0AccX77 rho - Bool.toZMod bit * (seg52Out0AccX77 rho - rho 50513) := by
    have hd : rho 50515 = Bool.toZMod bit * (rho 50513 - seg52Out0AccX77 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX77
      linear_combination -r6126
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY78 rho = seg52Out0AccY77 rho - Bool.toZMod bit * (seg52Out0AccY77 rho - rho 50514) := by
    have hd : rho 50516 = Bool.toZMod bit * (rho 50514 - seg52Out0AccY77 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY77
      linear_combination -r6127
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50507 * rho 50508 = rho 50517 := by linear_combination r6128
  have hd1 : rho 50507 * rho 50507 = rho 50518 := by linear_combination r6129
  have hd2 : rho 50508 * rho 50508 = rho 50519 := by linear_combination r6130
  have hd3 : rho 50520 * (rho 50508 * rho 50508 + rho 50507 * rho 50507 * (-1)) =
      2 * (rho 50507 * rho 50508) := by
    rw [hd0, hd1, hd2]
    linear_combination r6131
  have hd4 : rho 50521 * (2 - (rho 50508 * rho 50508 + rho 50507 * rho 50507 * (-1))) =
      rho 50508 * rho 50508 - rho 50507 * rho 50507 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6132
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX77 rho, seg52Out0AccY77 rho⟩ ⟨rho 50507, rho 50508⟩
    ⟨rho 50513, rho 50514⟩ ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 50520, rho 50521⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6133 rho ∧ Seg52.relationRow6134 rho ∧ Seg52.relationRow6135 rho ∧ Seg52.relationRow6136 rho ∧ Seg52.relationRow6137 rho ∧ Seg52.relationRow6138 rho ∧ Seg52.relationRow6139 rho ∧ Seg52.relationRow6140 rho ∧ Seg52.relationRow6141 rho ∧ Seg52.relationRow6142 rho ∧ Seg52.relationRow6143 rho ∧ Seg52.relationRow6144 rho ∧ Seg52.relationRow6145 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145⟩

theorem seg52Out0_rung78 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49464 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50520, rho 50521⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 50520, rho 50521⟩
        ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 50533, rho 50534⟩ := by
  obtain ⟨r6133, r6134, r6135, r6136, r6137, r6138, r6139, r6140, r6141, r6142, r6143, r6144, r6145⟩ := seg52Out0_rows78 rho h
  unfold Seg52.relationRow6133 at r6133

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6133

  unfold Seg52.relationRow6134 at r6134

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6134

  unfold Seg52.relationRow6135 at r6135

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6135

  unfold Seg52.relationRow6136 at r6136

  unfold Seg52.relationRow6137 at r6137

  unfold Seg52.relationRow6138 at r6138

  unfold Seg52.relationRow6139 at r6139

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6139

  unfold Seg52.relationRow6140 at r6140

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6140

  unfold Seg52.relationRow6141 at r6141

  unfold Seg52.relationRow6142 at r6142

  unfold Seg52.relationRow6143 at r6143

  unfold Seg52.relationRow6144 at r6144

  unfold Seg52.relationRow6145 at r6145

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX79 rho = seg52Out0AccX78 rho + rho 50528 := by
    unfold seg52Out0AccX79 seg52Out0AccX78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 78]

    ring

  have hnexty : seg52Out0AccY79 rho = seg52Out0AccY78 rho + rho 50529 := by
    unfold seg52Out0AccY79 seg52Out0AccY78
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 78]

    ring

  have ha0 : (rho 50520 + rho 50521) * (seg52Out0AccX78 rho + seg52Out0AccY78 rho) = rho 50522 := by
    unfold seg52Out0AccX78 seg52Out0AccY78
    linear_combination r6133
  have ha1 : rho 50521 * seg52Out0AccX78 rho = rho 50523 := by
    unfold seg52Out0AccX78
    linear_combination r6134
  have ha2 : rho 50520 * seg52Out0AccY78 rho = rho 50524 := by
    unfold seg52Out0AccY78
    linear_combination r6135
  have ha3 : 3021 * rho 50523 * rho 50524 = rho 50525 := by
    linear_combination r6136
  have ha4 : rho 50526 * (1 + rho 50525) = rho 50523 + rho 50524 := by
    linear_combination r6137
  have ha5 : rho 50527 * (1 - rho 50525) = rho 50522 - rho 50523 - rho 50524 := by
    linear_combination r6138
  have haddx :
      rho 50526 * (1 + 3021 * (rho 50521 * seg52Out0AccX78 rho) * (rho 50520 * seg52Out0AccY78 rho)) =
        rho 50521 * seg52Out0AccX78 rho + rho 50520 * seg52Out0AccY78 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50527 * (1 - 3021 * (rho 50521 * seg52Out0AccX78 rho) * (rho 50520 * seg52Out0AccY78 rho)) =
        (-1) * (rho 50521 * seg52Out0AccX78 rho) - rho 50520 * seg52Out0AccY78 rho +
          (seg52Out0AccY78 rho - seg52Out0AccX78 rho * (-1)) * (rho 50520 + rho 50521) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50527 * (1 - rho 50525) = rho 50522 - rho 50523 - rho 50524 := ha5
      _ = (-1) * rho 50523 - rho 50524 + (seg52Out0AccY78 rho - seg52Out0AccX78 rho * (-1)) *
          (rho 50520 + rho 50521) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX79 rho = seg52Out0AccX78 rho - Bool.toZMod bit * (seg52Out0AccX78 rho - rho 50526) := by
    have hd : rho 50528 = Bool.toZMod bit * (rho 50526 - seg52Out0AccX78 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX78
      linear_combination -r6139
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY79 rho = seg52Out0AccY78 rho - Bool.toZMod bit * (seg52Out0AccY78 rho - rho 50527) := by
    have hd : rho 50529 = Bool.toZMod bit * (rho 50527 - seg52Out0AccY78 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY78
      linear_combination -r6140
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50520 * rho 50521 = rho 50530 := by linear_combination r6141
  have hd1 : rho 50520 * rho 50520 = rho 50531 := by linear_combination r6142
  have hd2 : rho 50521 * rho 50521 = rho 50532 := by linear_combination r6143
  have hd3 : rho 50533 * (rho 50521 * rho 50521 + rho 50520 * rho 50520 * (-1)) =
      2 * (rho 50520 * rho 50521) := by
    rw [hd0, hd1, hd2]
    linear_combination r6144
  have hd4 : rho 50534 * (2 - (rho 50521 * rho 50521 + rho 50520 * rho 50520 * (-1))) =
      rho 50521 * rho 50521 - rho 50520 * rho 50520 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6145
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX78 rho, seg52Out0AccY78 rho⟩ ⟨rho 50520, rho 50521⟩
    ⟨rho 50526, rho 50527⟩ ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 50533, rho 50534⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6146 rho ∧ Seg52.relationRow6147 rho ∧ Seg52.relationRow6148 rho ∧ Seg52.relationRow6149 rho ∧ Seg52.relationRow6150 rho ∧ Seg52.relationRow6151 rho ∧ Seg52.relationRow6152 rho ∧ Seg52.relationRow6153 rho ∧ Seg52.relationRow6154 rho ∧ Seg52.relationRow6155 rho ∧ Seg52.relationRow6156 rho ∧ Seg52.relationRow6157 rho ∧ Seg52.relationRow6158 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158, _⟩

  exact ⟨r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158⟩

theorem seg52Out0_rung79 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49465 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50533, rho 50534⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 50533, rho 50534⟩
        ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 50546, rho 50547⟩ := by
  obtain ⟨r6146, r6147, r6148, r6149, r6150, r6151, r6152, r6153, r6154, r6155, r6156, r6157, r6158⟩ := seg52Out0_rows79 rho h
  unfold Seg52.relationRow6146 at r6146

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6146

  unfold Seg52.relationRow6147 at r6147

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6147

  unfold Seg52.relationRow6148 at r6148

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6148

  unfold Seg52.relationRow6149 at r6149

  unfold Seg52.relationRow6150 at r6150

  unfold Seg52.relationRow6151 at r6151

  unfold Seg52.relationRow6152 at r6152

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6152

  unfold Seg52.relationRow6153 at r6153

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6153

  unfold Seg52.relationRow6154 at r6154

  unfold Seg52.relationRow6155 at r6155

  unfold Seg52.relationRow6156 at r6156

  unfold Seg52.relationRow6157 at r6157

  unfold Seg52.relationRow6158 at r6158

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX80 rho = seg52Out0AccX79 rho + rho 50541 := by
    unfold seg52Out0AccX80 seg52Out0AccX79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 79]

    ring

  have hnexty : seg52Out0AccY80 rho = seg52Out0AccY79 rho + rho 50542 := by
    unfold seg52Out0AccY80 seg52Out0AccY79
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 79]

    ring

  have ha0 : (rho 50533 + rho 50534) * (seg52Out0AccX79 rho + seg52Out0AccY79 rho) = rho 50535 := by
    unfold seg52Out0AccX79 seg52Out0AccY79
    linear_combination r6146
  have ha1 : rho 50534 * seg52Out0AccX79 rho = rho 50536 := by
    unfold seg52Out0AccX79
    linear_combination r6147
  have ha2 : rho 50533 * seg52Out0AccY79 rho = rho 50537 := by
    unfold seg52Out0AccY79
    linear_combination r6148
  have ha3 : 3021 * rho 50536 * rho 50537 = rho 50538 := by
    linear_combination r6149
  have ha4 : rho 50539 * (1 + rho 50538) = rho 50536 + rho 50537 := by
    linear_combination r6150
  have ha5 : rho 50540 * (1 - rho 50538) = rho 50535 - rho 50536 - rho 50537 := by
    linear_combination r6151
  have haddx :
      rho 50539 * (1 + 3021 * (rho 50534 * seg52Out0AccX79 rho) * (rho 50533 * seg52Out0AccY79 rho)) =
        rho 50534 * seg52Out0AccX79 rho + rho 50533 * seg52Out0AccY79 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50540 * (1 - 3021 * (rho 50534 * seg52Out0AccX79 rho) * (rho 50533 * seg52Out0AccY79 rho)) =
        (-1) * (rho 50534 * seg52Out0AccX79 rho) - rho 50533 * seg52Out0AccY79 rho +
          (seg52Out0AccY79 rho - seg52Out0AccX79 rho * (-1)) * (rho 50533 + rho 50534) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50540 * (1 - rho 50538) = rho 50535 - rho 50536 - rho 50537 := ha5
      _ = (-1) * rho 50536 - rho 50537 + (seg52Out0AccY79 rho - seg52Out0AccX79 rho * (-1)) *
          (rho 50533 + rho 50534) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX80 rho = seg52Out0AccX79 rho - Bool.toZMod bit * (seg52Out0AccX79 rho - rho 50539) := by
    have hd : rho 50541 = Bool.toZMod bit * (rho 50539 - seg52Out0AccX79 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX79
      linear_combination -r6152
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY80 rho = seg52Out0AccY79 rho - Bool.toZMod bit * (seg52Out0AccY79 rho - rho 50540) := by
    have hd : rho 50542 = Bool.toZMod bit * (rho 50540 - seg52Out0AccY79 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY79
      linear_combination -r6153
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50533 * rho 50534 = rho 50543 := by linear_combination r6154
  have hd1 : rho 50533 * rho 50533 = rho 50544 := by linear_combination r6155
  have hd2 : rho 50534 * rho 50534 = rho 50545 := by linear_combination r6156
  have hd3 : rho 50546 * (rho 50534 * rho 50534 + rho 50533 * rho 50533 * (-1)) =
      2 * (rho 50533 * rho 50534) := by
    rw [hd0, hd1, hd2]
    linear_combination r6157
  have hd4 : rho 50547 * (2 - (rho 50534 * rho 50534 + rho 50533 * rho 50533 * (-1))) =
      rho 50534 * rho 50534 - rho 50533 * rho 50533 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6158
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX79 rho, seg52Out0AccY79 rho⟩ ⟨rho 50533, rho 50534⟩
    ⟨rho 50539, rho 50540⟩ ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 50546, rho 50547⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6159 rho ∧ Seg52.relationRow6160 rho ∧ Seg52.relationRow6161 rho ∧ Seg52.relationRow6162 rho ∧ Seg52.relationRow6163 rho ∧ Seg52.relationRow6164 rho ∧ Seg52.relationRow6165 rho ∧ Seg52.relationRow6166 rho ∧ Seg52.relationRow6167 rho ∧ Seg52.relationRow6168 rho ∧ Seg52.relationRow6169 rho ∧ Seg52.relationRow6170 rho ∧ Seg52.relationRow6171 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, p76, p77, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart76 at p76

  rcases p76 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6159⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6159, r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171⟩

theorem seg52Out0_rung80 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49466 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50546, rho 50547⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 50546, rho 50547⟩
        ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 50559, rho 50560⟩ := by
  obtain ⟨r6159, r6160, r6161, r6162, r6163, r6164, r6165, r6166, r6167, r6168, r6169, r6170, r6171⟩ := seg52Out0_rows80 rho h
  unfold Seg52.relationRow6159 at r6159

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6159

  unfold Seg52.relationRow6160 at r6160

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6160

  unfold Seg52.relationRow6161 at r6161

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6161

  unfold Seg52.relationRow6162 at r6162

  unfold Seg52.relationRow6163 at r6163

  unfold Seg52.relationRow6164 at r6164

  unfold Seg52.relationRow6165 at r6165

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6165

  unfold Seg52.relationRow6166 at r6166

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6166

  unfold Seg52.relationRow6167 at r6167

  unfold Seg52.relationRow6168 at r6168

  unfold Seg52.relationRow6169 at r6169

  unfold Seg52.relationRow6170 at r6170

  unfold Seg52.relationRow6171 at r6171

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX81 rho = seg52Out0AccX80 rho + rho 50554 := by
    unfold seg52Out0AccX81 seg52Out0AccX80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 80]

    ring

  have hnexty : seg52Out0AccY81 rho = seg52Out0AccY80 rho + rho 50555 := by
    unfold seg52Out0AccY81 seg52Out0AccY80
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 80]

    ring

  have ha0 : (rho 50546 + rho 50547) * (seg52Out0AccX80 rho + seg52Out0AccY80 rho) = rho 50548 := by
    unfold seg52Out0AccX80 seg52Out0AccY80
    linear_combination r6159
  have ha1 : rho 50547 * seg52Out0AccX80 rho = rho 50549 := by
    unfold seg52Out0AccX80
    linear_combination r6160
  have ha2 : rho 50546 * seg52Out0AccY80 rho = rho 50550 := by
    unfold seg52Out0AccY80
    linear_combination r6161
  have ha3 : 3021 * rho 50549 * rho 50550 = rho 50551 := by
    linear_combination r6162
  have ha4 : rho 50552 * (1 + rho 50551) = rho 50549 + rho 50550 := by
    linear_combination r6163
  have ha5 : rho 50553 * (1 - rho 50551) = rho 50548 - rho 50549 - rho 50550 := by
    linear_combination r6164
  have haddx :
      rho 50552 * (1 + 3021 * (rho 50547 * seg52Out0AccX80 rho) * (rho 50546 * seg52Out0AccY80 rho)) =
        rho 50547 * seg52Out0AccX80 rho + rho 50546 * seg52Out0AccY80 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50553 * (1 - 3021 * (rho 50547 * seg52Out0AccX80 rho) * (rho 50546 * seg52Out0AccY80 rho)) =
        (-1) * (rho 50547 * seg52Out0AccX80 rho) - rho 50546 * seg52Out0AccY80 rho +
          (seg52Out0AccY80 rho - seg52Out0AccX80 rho * (-1)) * (rho 50546 + rho 50547) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50553 * (1 - rho 50551) = rho 50548 - rho 50549 - rho 50550 := ha5
      _ = (-1) * rho 50549 - rho 50550 + (seg52Out0AccY80 rho - seg52Out0AccX80 rho * (-1)) *
          (rho 50546 + rho 50547) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX81 rho = seg52Out0AccX80 rho - Bool.toZMod bit * (seg52Out0AccX80 rho - rho 50552) := by
    have hd : rho 50554 = Bool.toZMod bit * (rho 50552 - seg52Out0AccX80 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX80
      linear_combination -r6165
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY81 rho = seg52Out0AccY80 rho - Bool.toZMod bit * (seg52Out0AccY80 rho - rho 50553) := by
    have hd : rho 50555 = Bool.toZMod bit * (rho 50553 - seg52Out0AccY80 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY80
      linear_combination -r6166
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50546 * rho 50547 = rho 50556 := by linear_combination r6167
  have hd1 : rho 50546 * rho 50546 = rho 50557 := by linear_combination r6168
  have hd2 : rho 50547 * rho 50547 = rho 50558 := by linear_combination r6169
  have hd3 : rho 50559 * (rho 50547 * rho 50547 + rho 50546 * rho 50546 * (-1)) =
      2 * (rho 50546 * rho 50547) := by
    rw [hd0, hd1, hd2]
    linear_combination r6170
  have hd4 : rho 50560 * (2 - (rho 50547 * rho 50547 + rho 50546 * rho 50546 * (-1))) =
      rho 50547 * rho 50547 - rho 50546 * rho 50546 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6171
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX80 rho, seg52Out0AccY80 rho⟩ ⟨rho 50546, rho 50547⟩
    ⟨rho 50552, rho 50553⟩ ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 50559, rho 50560⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6172 rho ∧ Seg52.relationRow6173 rho ∧ Seg52.relationRow6174 rho ∧ Seg52.relationRow6175 rho ∧ Seg52.relationRow6176 rho ∧ Seg52.relationRow6177 rho ∧ Seg52.relationRow6178 rho ∧ Seg52.relationRow6179 rho ∧ Seg52.relationRow6180 rho ∧ Seg52.relationRow6181 rho ∧ Seg52.relationRow6182 rho ∧ Seg52.relationRow6183 rho ∧ Seg52.relationRow6184 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184⟩

theorem seg52Out0_rung81 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49467 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50559, rho 50560⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 50559, rho 50560⟩
        ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 50572, rho 50573⟩ := by
  obtain ⟨r6172, r6173, r6174, r6175, r6176, r6177, r6178, r6179, r6180, r6181, r6182, r6183, r6184⟩ := seg52Out0_rows81 rho h
  unfold Seg52.relationRow6172 at r6172

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6172

  unfold Seg52.relationRow6173 at r6173

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6173

  unfold Seg52.relationRow6174 at r6174

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6174

  unfold Seg52.relationRow6175 at r6175

  unfold Seg52.relationRow6176 at r6176

  unfold Seg52.relationRow6177 at r6177

  unfold Seg52.relationRow6178 at r6178

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6178

  unfold Seg52.relationRow6179 at r6179

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6179

  unfold Seg52.relationRow6180 at r6180

  unfold Seg52.relationRow6181 at r6181

  unfold Seg52.relationRow6182 at r6182

  unfold Seg52.relationRow6183 at r6183

  unfold Seg52.relationRow6184 at r6184

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX82 rho = seg52Out0AccX81 rho + rho 50567 := by
    unfold seg52Out0AccX82 seg52Out0AccX81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 81]

    ring

  have hnexty : seg52Out0AccY82 rho = seg52Out0AccY81 rho + rho 50568 := by
    unfold seg52Out0AccY82 seg52Out0AccY81
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 81]

    ring

  have ha0 : (rho 50559 + rho 50560) * (seg52Out0AccX81 rho + seg52Out0AccY81 rho) = rho 50561 := by
    unfold seg52Out0AccX81 seg52Out0AccY81
    linear_combination r6172
  have ha1 : rho 50560 * seg52Out0AccX81 rho = rho 50562 := by
    unfold seg52Out0AccX81
    linear_combination r6173
  have ha2 : rho 50559 * seg52Out0AccY81 rho = rho 50563 := by
    unfold seg52Out0AccY81
    linear_combination r6174
  have ha3 : 3021 * rho 50562 * rho 50563 = rho 50564 := by
    linear_combination r6175
  have ha4 : rho 50565 * (1 + rho 50564) = rho 50562 + rho 50563 := by
    linear_combination r6176
  have ha5 : rho 50566 * (1 - rho 50564) = rho 50561 - rho 50562 - rho 50563 := by
    linear_combination r6177
  have haddx :
      rho 50565 * (1 + 3021 * (rho 50560 * seg52Out0AccX81 rho) * (rho 50559 * seg52Out0AccY81 rho)) =
        rho 50560 * seg52Out0AccX81 rho + rho 50559 * seg52Out0AccY81 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50566 * (1 - 3021 * (rho 50560 * seg52Out0AccX81 rho) * (rho 50559 * seg52Out0AccY81 rho)) =
        (-1) * (rho 50560 * seg52Out0AccX81 rho) - rho 50559 * seg52Out0AccY81 rho +
          (seg52Out0AccY81 rho - seg52Out0AccX81 rho * (-1)) * (rho 50559 + rho 50560) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50566 * (1 - rho 50564) = rho 50561 - rho 50562 - rho 50563 := ha5
      _ = (-1) * rho 50562 - rho 50563 + (seg52Out0AccY81 rho - seg52Out0AccX81 rho * (-1)) *
          (rho 50559 + rho 50560) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX82 rho = seg52Out0AccX81 rho - Bool.toZMod bit * (seg52Out0AccX81 rho - rho 50565) := by
    have hd : rho 50567 = Bool.toZMod bit * (rho 50565 - seg52Out0AccX81 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX81
      linear_combination -r6178
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY82 rho = seg52Out0AccY81 rho - Bool.toZMod bit * (seg52Out0AccY81 rho - rho 50566) := by
    have hd : rho 50568 = Bool.toZMod bit * (rho 50566 - seg52Out0AccY81 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY81
      linear_combination -r6179
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50559 * rho 50560 = rho 50569 := by linear_combination r6180
  have hd1 : rho 50559 * rho 50559 = rho 50570 := by linear_combination r6181
  have hd2 : rho 50560 * rho 50560 = rho 50571 := by linear_combination r6182
  have hd3 : rho 50572 * (rho 50560 * rho 50560 + rho 50559 * rho 50559 * (-1)) =
      2 * (rho 50559 * rho 50560) := by
    rw [hd0, hd1, hd2]
    linear_combination r6183
  have hd4 : rho 50573 * (2 - (rho 50560 * rho 50560 + rho 50559 * rho 50559 * (-1))) =
      rho 50560 * rho 50560 - rho 50559 * rho 50559 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6184
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX81 rho, seg52Out0AccY81 rho⟩ ⟨rho 50559, rho 50560⟩
    ⟨rho 50565, rho 50566⟩ ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 50572, rho 50573⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6185 rho ∧ Seg52.relationRow6186 rho ∧ Seg52.relationRow6187 rho ∧ Seg52.relationRow6188 rho ∧ Seg52.relationRow6189 rho ∧ Seg52.relationRow6190 rho ∧ Seg52.relationRow6191 rho ∧ Seg52.relationRow6192 rho ∧ Seg52.relationRow6193 rho ∧ Seg52.relationRow6194 rho ∧ Seg52.relationRow6195 rho ∧ Seg52.relationRow6196 rho ∧ Seg52.relationRow6197 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197⟩

theorem seg52Out0_rung82 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49468 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50572, rho 50573⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 50572, rho 50573⟩
        ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 50585, rho 50586⟩ := by
  obtain ⟨r6185, r6186, r6187, r6188, r6189, r6190, r6191, r6192, r6193, r6194, r6195, r6196, r6197⟩ := seg52Out0_rows82 rho h
  unfold Seg52.relationRow6185 at r6185

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6185

  unfold Seg52.relationRow6186 at r6186

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6186

  unfold Seg52.relationRow6187 at r6187

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6187

  unfold Seg52.relationRow6188 at r6188

  unfold Seg52.relationRow6189 at r6189

  unfold Seg52.relationRow6190 at r6190

  unfold Seg52.relationRow6191 at r6191

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6191

  unfold Seg52.relationRow6192 at r6192

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6192

  unfold Seg52.relationRow6193 at r6193

  unfold Seg52.relationRow6194 at r6194

  unfold Seg52.relationRow6195 at r6195

  unfold Seg52.relationRow6196 at r6196

  unfold Seg52.relationRow6197 at r6197

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX83 rho = seg52Out0AccX82 rho + rho 50580 := by
    unfold seg52Out0AccX83 seg52Out0AccX82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 82]

    ring

  have hnexty : seg52Out0AccY83 rho = seg52Out0AccY82 rho + rho 50581 := by
    unfold seg52Out0AccY83 seg52Out0AccY82
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 82]

    ring

  have ha0 : (rho 50572 + rho 50573) * (seg52Out0AccX82 rho + seg52Out0AccY82 rho) = rho 50574 := by
    unfold seg52Out0AccX82 seg52Out0AccY82
    linear_combination r6185
  have ha1 : rho 50573 * seg52Out0AccX82 rho = rho 50575 := by
    unfold seg52Out0AccX82
    linear_combination r6186
  have ha2 : rho 50572 * seg52Out0AccY82 rho = rho 50576 := by
    unfold seg52Out0AccY82
    linear_combination r6187
  have ha3 : 3021 * rho 50575 * rho 50576 = rho 50577 := by
    linear_combination r6188
  have ha4 : rho 50578 * (1 + rho 50577) = rho 50575 + rho 50576 := by
    linear_combination r6189
  have ha5 : rho 50579 * (1 - rho 50577) = rho 50574 - rho 50575 - rho 50576 := by
    linear_combination r6190
  have haddx :
      rho 50578 * (1 + 3021 * (rho 50573 * seg52Out0AccX82 rho) * (rho 50572 * seg52Out0AccY82 rho)) =
        rho 50573 * seg52Out0AccX82 rho + rho 50572 * seg52Out0AccY82 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50579 * (1 - 3021 * (rho 50573 * seg52Out0AccX82 rho) * (rho 50572 * seg52Out0AccY82 rho)) =
        (-1) * (rho 50573 * seg52Out0AccX82 rho) - rho 50572 * seg52Out0AccY82 rho +
          (seg52Out0AccY82 rho - seg52Out0AccX82 rho * (-1)) * (rho 50572 + rho 50573) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50579 * (1 - rho 50577) = rho 50574 - rho 50575 - rho 50576 := ha5
      _ = (-1) * rho 50575 - rho 50576 + (seg52Out0AccY82 rho - seg52Out0AccX82 rho * (-1)) *
          (rho 50572 + rho 50573) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX83 rho = seg52Out0AccX82 rho - Bool.toZMod bit * (seg52Out0AccX82 rho - rho 50578) := by
    have hd : rho 50580 = Bool.toZMod bit * (rho 50578 - seg52Out0AccX82 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX82
      linear_combination -r6191
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY83 rho = seg52Out0AccY82 rho - Bool.toZMod bit * (seg52Out0AccY82 rho - rho 50579) := by
    have hd : rho 50581 = Bool.toZMod bit * (rho 50579 - seg52Out0AccY82 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY82
      linear_combination -r6192
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50572 * rho 50573 = rho 50582 := by linear_combination r6193
  have hd1 : rho 50572 * rho 50572 = rho 50583 := by linear_combination r6194
  have hd2 : rho 50573 * rho 50573 = rho 50584 := by linear_combination r6195
  have hd3 : rho 50585 * (rho 50573 * rho 50573 + rho 50572 * rho 50572 * (-1)) =
      2 * (rho 50572 * rho 50573) := by
    rw [hd0, hd1, hd2]
    linear_combination r6196
  have hd4 : rho 50586 * (2 - (rho 50573 * rho 50573 + rho 50572 * rho 50572 * (-1))) =
      rho 50573 * rho 50573 - rho 50572 * rho 50572 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6197
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX82 rho, seg52Out0AccY82 rho⟩ ⟨rho 50572, rho 50573⟩
    ⟨rho 50578, rho 50579⟩ ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 50585, rho 50586⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6198 rho ∧ Seg52.relationRow6199 rho ∧ Seg52.relationRow6200 rho ∧ Seg52.relationRow6201 rho ∧ Seg52.relationRow6202 rho ∧ Seg52.relationRow6203 rho ∧ Seg52.relationRow6204 rho ∧ Seg52.relationRow6205 rho ∧ Seg52.relationRow6206 rho ∧ Seg52.relationRow6207 rho ∧ Seg52.relationRow6208 rho ∧ Seg52.relationRow6209 rho ∧ Seg52.relationRow6210 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210⟩

theorem seg52Out0_rung83 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49469 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50585, rho 50586⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 50585, rho 50586⟩
        ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 50598, rho 50599⟩ := by
  obtain ⟨r6198, r6199, r6200, r6201, r6202, r6203, r6204, r6205, r6206, r6207, r6208, r6209, r6210⟩ := seg52Out0_rows83 rho h
  unfold Seg52.relationRow6198 at r6198

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6198

  unfold Seg52.relationRow6199 at r6199

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6199

  unfold Seg52.relationRow6200 at r6200

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6200

  unfold Seg52.relationRow6201 at r6201

  unfold Seg52.relationRow6202 at r6202

  unfold Seg52.relationRow6203 at r6203

  unfold Seg52.relationRow6204 at r6204

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6204

  unfold Seg52.relationRow6205 at r6205

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6205

  unfold Seg52.relationRow6206 at r6206

  unfold Seg52.relationRow6207 at r6207

  unfold Seg52.relationRow6208 at r6208

  unfold Seg52.relationRow6209 at r6209

  unfold Seg52.relationRow6210 at r6210

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX84 rho = seg52Out0AccX83 rho + rho 50593 := by
    unfold seg52Out0AccX84 seg52Out0AccX83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 83]

    ring

  have hnexty : seg52Out0AccY84 rho = seg52Out0AccY83 rho + rho 50594 := by
    unfold seg52Out0AccY84 seg52Out0AccY83
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 83]

    ring

  have ha0 : (rho 50585 + rho 50586) * (seg52Out0AccX83 rho + seg52Out0AccY83 rho) = rho 50587 := by
    unfold seg52Out0AccX83 seg52Out0AccY83
    linear_combination r6198
  have ha1 : rho 50586 * seg52Out0AccX83 rho = rho 50588 := by
    unfold seg52Out0AccX83
    linear_combination r6199
  have ha2 : rho 50585 * seg52Out0AccY83 rho = rho 50589 := by
    unfold seg52Out0AccY83
    linear_combination r6200
  have ha3 : 3021 * rho 50588 * rho 50589 = rho 50590 := by
    linear_combination r6201
  have ha4 : rho 50591 * (1 + rho 50590) = rho 50588 + rho 50589 := by
    linear_combination r6202
  have ha5 : rho 50592 * (1 - rho 50590) = rho 50587 - rho 50588 - rho 50589 := by
    linear_combination r6203
  have haddx :
      rho 50591 * (1 + 3021 * (rho 50586 * seg52Out0AccX83 rho) * (rho 50585 * seg52Out0AccY83 rho)) =
        rho 50586 * seg52Out0AccX83 rho + rho 50585 * seg52Out0AccY83 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50592 * (1 - 3021 * (rho 50586 * seg52Out0AccX83 rho) * (rho 50585 * seg52Out0AccY83 rho)) =
        (-1) * (rho 50586 * seg52Out0AccX83 rho) - rho 50585 * seg52Out0AccY83 rho +
          (seg52Out0AccY83 rho - seg52Out0AccX83 rho * (-1)) * (rho 50585 + rho 50586) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50592 * (1 - rho 50590) = rho 50587 - rho 50588 - rho 50589 := ha5
      _ = (-1) * rho 50588 - rho 50589 + (seg52Out0AccY83 rho - seg52Out0AccX83 rho * (-1)) *
          (rho 50585 + rho 50586) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX84 rho = seg52Out0AccX83 rho - Bool.toZMod bit * (seg52Out0AccX83 rho - rho 50591) := by
    have hd : rho 50593 = Bool.toZMod bit * (rho 50591 - seg52Out0AccX83 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX83
      linear_combination -r6204
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY84 rho = seg52Out0AccY83 rho - Bool.toZMod bit * (seg52Out0AccY83 rho - rho 50592) := by
    have hd : rho 50594 = Bool.toZMod bit * (rho 50592 - seg52Out0AccY83 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY83
      linear_combination -r6205
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50585 * rho 50586 = rho 50595 := by linear_combination r6206
  have hd1 : rho 50585 * rho 50585 = rho 50596 := by linear_combination r6207
  have hd2 : rho 50586 * rho 50586 = rho 50597 := by linear_combination r6208
  have hd3 : rho 50598 * (rho 50586 * rho 50586 + rho 50585 * rho 50585 * (-1)) =
      2 * (rho 50585 * rho 50586) := by
    rw [hd0, hd1, hd2]
    linear_combination r6209
  have hd4 : rho 50599 * (2 - (rho 50586 * rho 50586 + rho 50585 * rho 50585 * (-1))) =
      rho 50586 * rho 50586 - rho 50585 * rho 50585 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6210
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX83 rho, seg52Out0AccY83 rho⟩ ⟨rho 50585, rho 50586⟩
    ⟨rho 50591, rho 50592⟩ ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 50598, rho 50599⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6211 rho ∧ Seg52.relationRow6212 rho ∧ Seg52.relationRow6213 rho ∧ Seg52.relationRow6214 rho ∧ Seg52.relationRow6215 rho ∧ Seg52.relationRow6216 rho ∧ Seg52.relationRow6217 rho ∧ Seg52.relationRow6218 rho ∧ Seg52.relationRow6219 rho ∧ Seg52.relationRow6220 rho ∧ Seg52.relationRow6221 rho ∧ Seg52.relationRow6222 rho ∧ Seg52.relationRow6223 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223⟩

theorem seg52Out0_rung84 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49470 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50598, rho 50599⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 50598, rho 50599⟩
        ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 50611, rho 50612⟩ := by
  obtain ⟨r6211, r6212, r6213, r6214, r6215, r6216, r6217, r6218, r6219, r6220, r6221, r6222, r6223⟩ := seg52Out0_rows84 rho h
  unfold Seg52.relationRow6211 at r6211

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6211

  unfold Seg52.relationRow6212 at r6212

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6212

  unfold Seg52.relationRow6213 at r6213

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6213

  unfold Seg52.relationRow6214 at r6214

  unfold Seg52.relationRow6215 at r6215

  unfold Seg52.relationRow6216 at r6216

  unfold Seg52.relationRow6217 at r6217

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6217

  unfold Seg52.relationRow6218 at r6218

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6218

  unfold Seg52.relationRow6219 at r6219

  unfold Seg52.relationRow6220 at r6220

  unfold Seg52.relationRow6221 at r6221

  unfold Seg52.relationRow6222 at r6222

  unfold Seg52.relationRow6223 at r6223

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX85 rho = seg52Out0AccX84 rho + rho 50606 := by
    unfold seg52Out0AccX85 seg52Out0AccX84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 84]

    ring

  have hnexty : seg52Out0AccY85 rho = seg52Out0AccY84 rho + rho 50607 := by
    unfold seg52Out0AccY85 seg52Out0AccY84
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 84]

    ring

  have ha0 : (rho 50598 + rho 50599) * (seg52Out0AccX84 rho + seg52Out0AccY84 rho) = rho 50600 := by
    unfold seg52Out0AccX84 seg52Out0AccY84
    linear_combination r6211
  have ha1 : rho 50599 * seg52Out0AccX84 rho = rho 50601 := by
    unfold seg52Out0AccX84
    linear_combination r6212
  have ha2 : rho 50598 * seg52Out0AccY84 rho = rho 50602 := by
    unfold seg52Out0AccY84
    linear_combination r6213
  have ha3 : 3021 * rho 50601 * rho 50602 = rho 50603 := by
    linear_combination r6214
  have ha4 : rho 50604 * (1 + rho 50603) = rho 50601 + rho 50602 := by
    linear_combination r6215
  have ha5 : rho 50605 * (1 - rho 50603) = rho 50600 - rho 50601 - rho 50602 := by
    linear_combination r6216
  have haddx :
      rho 50604 * (1 + 3021 * (rho 50599 * seg52Out0AccX84 rho) * (rho 50598 * seg52Out0AccY84 rho)) =
        rho 50599 * seg52Out0AccX84 rho + rho 50598 * seg52Out0AccY84 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50605 * (1 - 3021 * (rho 50599 * seg52Out0AccX84 rho) * (rho 50598 * seg52Out0AccY84 rho)) =
        (-1) * (rho 50599 * seg52Out0AccX84 rho) - rho 50598 * seg52Out0AccY84 rho +
          (seg52Out0AccY84 rho - seg52Out0AccX84 rho * (-1)) * (rho 50598 + rho 50599) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50605 * (1 - rho 50603) = rho 50600 - rho 50601 - rho 50602 := ha5
      _ = (-1) * rho 50601 - rho 50602 + (seg52Out0AccY84 rho - seg52Out0AccX84 rho * (-1)) *
          (rho 50598 + rho 50599) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX85 rho = seg52Out0AccX84 rho - Bool.toZMod bit * (seg52Out0AccX84 rho - rho 50604) := by
    have hd : rho 50606 = Bool.toZMod bit * (rho 50604 - seg52Out0AccX84 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX84
      linear_combination -r6217
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY85 rho = seg52Out0AccY84 rho - Bool.toZMod bit * (seg52Out0AccY84 rho - rho 50605) := by
    have hd : rho 50607 = Bool.toZMod bit * (rho 50605 - seg52Out0AccY84 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY84
      linear_combination -r6218
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50598 * rho 50599 = rho 50608 := by linear_combination r6219
  have hd1 : rho 50598 * rho 50598 = rho 50609 := by linear_combination r6220
  have hd2 : rho 50599 * rho 50599 = rho 50610 := by linear_combination r6221
  have hd3 : rho 50611 * (rho 50599 * rho 50599 + rho 50598 * rho 50598 * (-1)) =
      2 * (rho 50598 * rho 50599) := by
    rw [hd0, hd1, hd2]
    linear_combination r6222
  have hd4 : rho 50612 * (2 - (rho 50599 * rho 50599 + rho 50598 * rho 50598 * (-1))) =
      rho 50599 * rho 50599 - rho 50598 * rho 50598 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6223
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX84 rho, seg52Out0AccY84 rho⟩ ⟨rho 50598, rho 50599⟩
    ⟨rho 50604, rho 50605⟩ ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 50611, rho 50612⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6224 rho ∧ Seg52.relationRow6225 rho ∧ Seg52.relationRow6226 rho ∧ Seg52.relationRow6227 rho ∧ Seg52.relationRow6228 rho ∧ Seg52.relationRow6229 rho ∧ Seg52.relationRow6230 rho ∧ Seg52.relationRow6231 rho ∧ Seg52.relationRow6232 rho ∧ Seg52.relationRow6233 rho ∧ Seg52.relationRow6234 rho ∧ Seg52.relationRow6235 rho ∧ Seg52.relationRow6236 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236, _, _, _⟩

  exact ⟨r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236⟩

theorem seg52Out0_rung85 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49471 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50611, rho 50612⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 50611, rho 50612⟩
        ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 50624, rho 50625⟩ := by
  obtain ⟨r6224, r6225, r6226, r6227, r6228, r6229, r6230, r6231, r6232, r6233, r6234, r6235, r6236⟩ := seg52Out0_rows85 rho h
  unfold Seg52.relationRow6224 at r6224

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6224

  unfold Seg52.relationRow6225 at r6225

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6225

  unfold Seg52.relationRow6226 at r6226

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6226

  unfold Seg52.relationRow6227 at r6227

  unfold Seg52.relationRow6228 at r6228

  unfold Seg52.relationRow6229 at r6229

  unfold Seg52.relationRow6230 at r6230

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6230

  unfold Seg52.relationRow6231 at r6231

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6231

  unfold Seg52.relationRow6232 at r6232

  unfold Seg52.relationRow6233 at r6233

  unfold Seg52.relationRow6234 at r6234

  unfold Seg52.relationRow6235 at r6235

  unfold Seg52.relationRow6236 at r6236

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX86 rho = seg52Out0AccX85 rho + rho 50619 := by
    unfold seg52Out0AccX86 seg52Out0AccX85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 85]

    ring

  have hnexty : seg52Out0AccY86 rho = seg52Out0AccY85 rho + rho 50620 := by
    unfold seg52Out0AccY86 seg52Out0AccY85
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 85]

    ring

  have ha0 : (rho 50611 + rho 50612) * (seg52Out0AccX85 rho + seg52Out0AccY85 rho) = rho 50613 := by
    unfold seg52Out0AccX85 seg52Out0AccY85
    linear_combination r6224
  have ha1 : rho 50612 * seg52Out0AccX85 rho = rho 50614 := by
    unfold seg52Out0AccX85
    linear_combination r6225
  have ha2 : rho 50611 * seg52Out0AccY85 rho = rho 50615 := by
    unfold seg52Out0AccY85
    linear_combination r6226
  have ha3 : 3021 * rho 50614 * rho 50615 = rho 50616 := by
    linear_combination r6227
  have ha4 : rho 50617 * (1 + rho 50616) = rho 50614 + rho 50615 := by
    linear_combination r6228
  have ha5 : rho 50618 * (1 - rho 50616) = rho 50613 - rho 50614 - rho 50615 := by
    linear_combination r6229
  have haddx :
      rho 50617 * (1 + 3021 * (rho 50612 * seg52Out0AccX85 rho) * (rho 50611 * seg52Out0AccY85 rho)) =
        rho 50612 * seg52Out0AccX85 rho + rho 50611 * seg52Out0AccY85 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50618 * (1 - 3021 * (rho 50612 * seg52Out0AccX85 rho) * (rho 50611 * seg52Out0AccY85 rho)) =
        (-1) * (rho 50612 * seg52Out0AccX85 rho) - rho 50611 * seg52Out0AccY85 rho +
          (seg52Out0AccY85 rho - seg52Out0AccX85 rho * (-1)) * (rho 50611 + rho 50612) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50618 * (1 - rho 50616) = rho 50613 - rho 50614 - rho 50615 := ha5
      _ = (-1) * rho 50614 - rho 50615 + (seg52Out0AccY85 rho - seg52Out0AccX85 rho * (-1)) *
          (rho 50611 + rho 50612) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX86 rho = seg52Out0AccX85 rho - Bool.toZMod bit * (seg52Out0AccX85 rho - rho 50617) := by
    have hd : rho 50619 = Bool.toZMod bit * (rho 50617 - seg52Out0AccX85 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX85
      linear_combination -r6230
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY86 rho = seg52Out0AccY85 rho - Bool.toZMod bit * (seg52Out0AccY85 rho - rho 50618) := by
    have hd : rho 50620 = Bool.toZMod bit * (rho 50618 - seg52Out0AccY85 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY85
      linear_combination -r6231
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50611 * rho 50612 = rho 50621 := by linear_combination r6232
  have hd1 : rho 50611 * rho 50611 = rho 50622 := by linear_combination r6233
  have hd2 : rho 50612 * rho 50612 = rho 50623 := by linear_combination r6234
  have hd3 : rho 50624 * (rho 50612 * rho 50612 + rho 50611 * rho 50611 * (-1)) =
      2 * (rho 50611 * rho 50612) := by
    rw [hd0, hd1, hd2]
    linear_combination r6235
  have hd4 : rho 50625 * (2 - (rho 50612 * rho 50612 + rho 50611 * rho 50611 * (-1))) =
      rho 50612 * rho 50612 - rho 50611 * rho 50611 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6236
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX85 rho, seg52Out0AccY85 rho⟩ ⟨rho 50611, rho 50612⟩
    ⟨rho 50617, rho 50618⟩ ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 50624, rho 50625⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6237 rho ∧ Seg52.relationRow6238 rho ∧ Seg52.relationRow6239 rho ∧ Seg52.relationRow6240 rho ∧ Seg52.relationRow6241 rho ∧ Seg52.relationRow6242 rho ∧ Seg52.relationRow6243 rho ∧ Seg52.relationRow6244 rho ∧ Seg52.relationRow6245 rho ∧ Seg52.relationRow6246 rho ∧ Seg52.relationRow6247 rho ∧ Seg52.relationRow6248 rho ∧ Seg52.relationRow6249 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, p77, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart77 at p77

  rcases p77 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6237, r6238, r6239⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249⟩

theorem seg52Out0_rung86 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49472 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50624, rho 50625⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 50624, rho 50625⟩
        ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 50637, rho 50638⟩ := by
  obtain ⟨r6237, r6238, r6239, r6240, r6241, r6242, r6243, r6244, r6245, r6246, r6247, r6248, r6249⟩ := seg52Out0_rows86 rho h
  unfold Seg52.relationRow6237 at r6237

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6237

  unfold Seg52.relationRow6238 at r6238

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6238

  unfold Seg52.relationRow6239 at r6239

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6239

  unfold Seg52.relationRow6240 at r6240

  unfold Seg52.relationRow6241 at r6241

  unfold Seg52.relationRow6242 at r6242

  unfold Seg52.relationRow6243 at r6243

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6243

  unfold Seg52.relationRow6244 at r6244

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6244

  unfold Seg52.relationRow6245 at r6245

  unfold Seg52.relationRow6246 at r6246

  unfold Seg52.relationRow6247 at r6247

  unfold Seg52.relationRow6248 at r6248

  unfold Seg52.relationRow6249 at r6249

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX87 rho = seg52Out0AccX86 rho + rho 50632 := by
    unfold seg52Out0AccX87 seg52Out0AccX86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 86]

    ring

  have hnexty : seg52Out0AccY87 rho = seg52Out0AccY86 rho + rho 50633 := by
    unfold seg52Out0AccY87 seg52Out0AccY86
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 86]

    ring

  have ha0 : (rho 50624 + rho 50625) * (seg52Out0AccX86 rho + seg52Out0AccY86 rho) = rho 50626 := by
    unfold seg52Out0AccX86 seg52Out0AccY86
    linear_combination r6237
  have ha1 : rho 50625 * seg52Out0AccX86 rho = rho 50627 := by
    unfold seg52Out0AccX86
    linear_combination r6238
  have ha2 : rho 50624 * seg52Out0AccY86 rho = rho 50628 := by
    unfold seg52Out0AccY86
    linear_combination r6239
  have ha3 : 3021 * rho 50627 * rho 50628 = rho 50629 := by
    linear_combination r6240
  have ha4 : rho 50630 * (1 + rho 50629) = rho 50627 + rho 50628 := by
    linear_combination r6241
  have ha5 : rho 50631 * (1 - rho 50629) = rho 50626 - rho 50627 - rho 50628 := by
    linear_combination r6242
  have haddx :
      rho 50630 * (1 + 3021 * (rho 50625 * seg52Out0AccX86 rho) * (rho 50624 * seg52Out0AccY86 rho)) =
        rho 50625 * seg52Out0AccX86 rho + rho 50624 * seg52Out0AccY86 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50631 * (1 - 3021 * (rho 50625 * seg52Out0AccX86 rho) * (rho 50624 * seg52Out0AccY86 rho)) =
        (-1) * (rho 50625 * seg52Out0AccX86 rho) - rho 50624 * seg52Out0AccY86 rho +
          (seg52Out0AccY86 rho - seg52Out0AccX86 rho * (-1)) * (rho 50624 + rho 50625) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50631 * (1 - rho 50629) = rho 50626 - rho 50627 - rho 50628 := ha5
      _ = (-1) * rho 50627 - rho 50628 + (seg52Out0AccY86 rho - seg52Out0AccX86 rho * (-1)) *
          (rho 50624 + rho 50625) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX87 rho = seg52Out0AccX86 rho - Bool.toZMod bit * (seg52Out0AccX86 rho - rho 50630) := by
    have hd : rho 50632 = Bool.toZMod bit * (rho 50630 - seg52Out0AccX86 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX86
      linear_combination -r6243
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY87 rho = seg52Out0AccY86 rho - Bool.toZMod bit * (seg52Out0AccY86 rho - rho 50631) := by
    have hd : rho 50633 = Bool.toZMod bit * (rho 50631 - seg52Out0AccY86 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY86
      linear_combination -r6244
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50624 * rho 50625 = rho 50634 := by linear_combination r6245
  have hd1 : rho 50624 * rho 50624 = rho 50635 := by linear_combination r6246
  have hd2 : rho 50625 * rho 50625 = rho 50636 := by linear_combination r6247
  have hd3 : rho 50637 * (rho 50625 * rho 50625 + rho 50624 * rho 50624 * (-1)) =
      2 * (rho 50624 * rho 50625) := by
    rw [hd0, hd1, hd2]
    linear_combination r6248
  have hd4 : rho 50638 * (2 - (rho 50625 * rho 50625 + rho 50624 * rho 50624 * (-1))) =
      rho 50625 * rho 50625 - rho 50624 * rho 50624 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6249
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX86 rho, seg52Out0AccY86 rho⟩ ⟨rho 50624, rho 50625⟩
    ⟨rho 50630, rho 50631⟩ ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 50637, rho 50638⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow6250 rho ∧ Seg52.relationRow6251 rho ∧ Seg52.relationRow6252 rho ∧ Seg52.relationRow6253 rho ∧ Seg52.relationRow6254 rho ∧ Seg52.relationRow6255 rho ∧ Seg52.relationRow6256 rho ∧ Seg52.relationRow6257 rho ∧ Seg52.relationRow6258 rho ∧ Seg52.relationRow6259 rho ∧ Seg52.relationRow6260 rho ∧ Seg52.relationRow6261 rho ∧ Seg52.relationRow6262 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, p78, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart78 at p78

  rcases p78 with ⟨_, _, _, _, _, _, _, _, _, _, r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262⟩

theorem seg52Out0_rung87 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49473 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 50637, rho 50638⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 50637, rho 50638⟩
        ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50650, rho 50651⟩ := by
  obtain ⟨r6250, r6251, r6252, r6253, r6254, r6255, r6256, r6257, r6258, r6259, r6260, r6261, r6262⟩ := seg52Out0_rows87 rho h
  unfold Seg52.relationRow6250 at r6250

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6250

  unfold Seg52.relationRow6251 at r6251

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6251

  unfold Seg52.relationRow6252 at r6252

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6252

  unfold Seg52.relationRow6253 at r6253

  unfold Seg52.relationRow6254 at r6254

  unfold Seg52.relationRow6255 at r6255

  unfold Seg52.relationRow6256 at r6256

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6256

  unfold Seg52.relationRow6257 at r6257

  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6257

  unfold Seg52.relationRow6258 at r6258

  unfold Seg52.relationRow6259 at r6259

  unfold Seg52.relationRow6260 at r6260

  unfold Seg52.relationRow6261 at r6261

  unfold Seg52.relationRow6262 at r6262

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX88 rho = seg52Out0AccX87 rho + rho 50645 := by
    unfold seg52Out0AccX88 seg52Out0AccX87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49514 13 87]

    ring

  have hnexty : seg52Out0AccY88 rho = seg52Out0AccY87 rho + rho 50646 := by
    unfold seg52Out0AccY88 seg52Out0AccY87
    rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 49515 13 87]

    ring

  have ha0 : (rho 50637 + rho 50638) * (seg52Out0AccX87 rho + seg52Out0AccY87 rho) = rho 50639 := by
    unfold seg52Out0AccX87 seg52Out0AccY87
    linear_combination r6250
  have ha1 : rho 50638 * seg52Out0AccX87 rho = rho 50640 := by
    unfold seg52Out0AccX87
    linear_combination r6251
  have ha2 : rho 50637 * seg52Out0AccY87 rho = rho 50641 := by
    unfold seg52Out0AccY87
    linear_combination r6252
  have ha3 : 3021 * rho 50640 * rho 50641 = rho 50642 := by
    linear_combination r6253
  have ha4 : rho 50643 * (1 + rho 50642) = rho 50640 + rho 50641 := by
    linear_combination r6254
  have ha5 : rho 50644 * (1 - rho 50642) = rho 50639 - rho 50640 - rho 50641 := by
    linear_combination r6255
  have haddx :
      rho 50643 * (1 + 3021 * (rho 50638 * seg52Out0AccX87 rho) * (rho 50637 * seg52Out0AccY87 rho)) =
        rho 50638 * seg52Out0AccX87 rho + rho 50637 * seg52Out0AccY87 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 50644 * (1 - 3021 * (rho 50638 * seg52Out0AccX87 rho) * (rho 50637 * seg52Out0AccY87 rho)) =
        (-1) * (rho 50638 * seg52Out0AccX87 rho) - rho 50637 * seg52Out0AccY87 rho +
          (seg52Out0AccY87 rho - seg52Out0AccX87 rho * (-1)) * (rho 50637 + rho 50638) := by
    rw [ha1, ha2, ha3]
    calc
      rho 50644 * (1 - rho 50642) = rho 50639 - rho 50640 - rho 50641 := ha5
      _ = (-1) * rho 50640 - rho 50641 + (seg52Out0AccY87 rho - seg52Out0AccX87 rho * (-1)) *
          (rho 50637 + rho 50638) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX88 rho = seg52Out0AccX87 rho - Bool.toZMod bit * (seg52Out0AccX87 rho - rho 50643) := by
    have hd : rho 50645 = Bool.toZMod bit * (rho 50643 - seg52Out0AccX87 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX87
      linear_combination -r6256
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY88 rho = seg52Out0AccY87 rho - Bool.toZMod bit * (seg52Out0AccY87 rho - rho 50644) := by
    have hd : rho 50646 = Bool.toZMod bit * (rho 50644 - seg52Out0AccY87 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY87
      linear_combination -r6257
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 50637 * rho 50638 = rho 50647 := by linear_combination r6258
  have hd1 : rho 50637 * rho 50637 = rho 50648 := by linear_combination r6259
  have hd2 : rho 50638 * rho 50638 = rho 50649 := by linear_combination r6260
  have hd3 : rho 50650 * (rho 50638 * rho 50638 + rho 50637 * rho 50637 * (-1)) =
      2 * (rho 50637 * rho 50638) := by
    rw [hd0, hd1, hd2]
    linear_combination r6261
  have hd4 : rho 50651 * (2 - (rho 50638 * rho 50638 + rho 50637 * rho 50637 * (-1))) =
      rho 50638 * rho 50638 - rho 50637 * rho 50637 * (-1) := by
    rw [hd1, hd2]
    linear_combination r6262
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX87 rho, seg52Out0AccY87 rho⟩ ⟨rho 50637, rho 50638⟩
    ⟨rho 50643, rho 50644⟩ ⟨seg52Out0AccX88 rho, seg52Out0AccY88 rho⟩ ⟨rho 50650, rho 50651⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c7 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 77 ≤ i → i < 88 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung77 rho h bits[77]! (hbitAt 77 (by omega)) hacc hcur
  · exact seg52Out0_rung78 rho h bits[78]! (hbitAt 78 (by omega)) hacc hcur
  · exact seg52Out0_rung79 rho h bits[79]! (hbitAt 79 (by omega)) hacc hcur
  · exact seg52Out0_rung80 rho h bits[80]! (hbitAt 80 (by omega)) hacc hcur
  · exact seg52Out0_rung81 rho h bits[81]! (hbitAt 81 (by omega)) hacc hcur
  · exact seg52Out0_rung82 rho h bits[82]! (hbitAt 82 (by omega)) hacc hcur
  · exact seg52Out0_rung83 rho h bits[83]! (hbitAt 83 (by omega)) hacc hcur
  · exact seg52Out0_rung84 rho h bits[84]! (hbitAt 84 (by omega)) hacc hcur
  · exact seg52Out0_rung85 rho h bits[85]! (hbitAt 85 (by omega)) hacc hcur
  · exact seg52Out0_rung86 rho h bits[86]! (hbitAt 86 (by omega)) hacc hcur
  · exact seg52Out0_rung87 rho h bits[87]! (hbitAt 87 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
