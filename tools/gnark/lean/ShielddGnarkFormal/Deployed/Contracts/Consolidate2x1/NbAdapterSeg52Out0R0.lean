import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52ValueDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52Out0_rows0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5125 rho ∧ Seg52.relationRow5126 rho ∧ Seg52.relationRow5127 rho ∧ Seg52.relationRow5128 rho ∧ Seg52.relationRow5129 rho ∧ Seg52.relationRow5130 rho ∧ Seg52.relationRow5131 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, r5125, r5126, r5127, r5128, r5129, r5130, r5131, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131⟩

theorem seg52Out0_rung0 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49386 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX0 rho, seg52Out0AccY0 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 45162, rho 45164⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX0 rho, seg52Out0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
        ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 49519, rho 49520⟩ := by
  obtain ⟨r5125, r5126, r5127, r5128, r5129, r5130, r5131⟩ := seg52Out0_rows0 rho h
  unfold Seg52.relationRow5125 at r5125

  unfold Seg52.relationRow5126 at r5126

  unfold Seg52.relationRow5127 at r5127

  unfold Seg52.relationRow5128 at r5128

  unfold Seg52.relationRow5129 at r5129

  unfold Seg52.relationRow5130 at r5130

  unfold Seg52.relationRow5131 at r5131

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX1 rho = seg52Out0AccX0 rho + rho 49514 := by
    unfold seg52Out0AccX1 seg52Out0AccX0
    ring

  have hnexty : seg52Out0AccY1 rho = seg52Out0AccY0 rho + rho 49515 := by
    unfold seg52Out0AccY1 seg52Out0AccY0
    ring

  have haddx :
      rho 45162 * (1 + 3021 * (rho 45164 * seg52Out0AccX0 rho) * (rho 45162 * seg52Out0AccY0 rho)) =
        rho 45164 * seg52Out0AccX0 rho + rho 45162 * seg52Out0AccY0 rho := by
    unfold seg52Out0AccX0 seg52Out0AccY0
    ring
  have haddy :
      rho 45164 * (1 - 3021 * (rho 45164 * seg52Out0AccX0 rho) * (rho 45162 * seg52Out0AccY0 rho)) =
        (-1) * (rho 45164 * seg52Out0AccX0 rho) - rho 45162 * seg52Out0AccY0 rho +
          (seg52Out0AccY0 rho - seg52Out0AccX0 rho * (-1)) * (rho 45162 + rho 45164) := by
    unfold seg52Out0AccX0 seg52Out0AccY0
    ring
  have hselx : seg52Out0AccX1 rho = seg52Out0AccX0 rho - Bool.toZMod bit * (seg52Out0AccX0 rho - rho 45162) := by
    have hd : rho 49514 = Bool.toZMod bit * (rho 45162 - seg52Out0AccX0 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX0
      linear_combination -r5125
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY1 rho = seg52Out0AccY0 rho - Bool.toZMod bit * (seg52Out0AccY0 rho - rho 45164) := by
    have hd : rho 49515 = Bool.toZMod bit * (rho 45164 - seg52Out0AccY0 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY0
      linear_combination -r5126
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 45162 * rho 45164 = rho 49516 := by linear_combination r5127
  have hd1 : rho 45162 * rho 45162 = rho 49517 := by linear_combination r5128
  have hd2 : rho 45164 * rho 45164 = rho 49518 := by linear_combination r5129
  have hd3 : rho 49519 * (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1)) =
      2 * (rho 45162 * rho 45164) := by
    rw [hd0, hd1, hd2]
    linear_combination r5130
  have hd4 : rho 49520 * (2 - (rho 45164 * rho 45164 + rho 45162 * rho 45162 * (-1))) =
      rho 45164 * rho 45164 - rho 45162 * rho 45162 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5131
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX0 rho, seg52Out0AccY0 rho⟩ ⟨rho 45162, rho 45164⟩
    ⟨rho 45162, rho 45164⟩ ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 49519, rho 49520⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5132 rho ∧ Seg52.relationRow5133 rho ∧ Seg52.relationRow5134 rho ∧ Seg52.relationRow5135 rho ∧ Seg52.relationRow5136 rho ∧ Seg52.relationRow5137 rho ∧ Seg52.relationRow5138 rho ∧ Seg52.relationRow5139 rho ∧ Seg52.relationRow5140 rho ∧ Seg52.relationRow5141 rho ∧ Seg52.relationRow5142 rho ∧ Seg52.relationRow5143 rho ∧ Seg52.relationRow5144 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144⟩

theorem seg52Out0_rung1 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49387 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49519, rho 49520⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 49519, rho 49520⟩
        ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 49532, rho 49533⟩ := by
  obtain ⟨r5132, r5133, r5134, r5135, r5136, r5137, r5138, r5139, r5140, r5141, r5142, r5143, r5144⟩ := seg52Out0_rows1 rho h
  unfold Seg52.relationRow5132 at r5132

  unfold Seg52.relationRow5133 at r5133

  unfold Seg52.relationRow5134 at r5134

  unfold Seg52.relationRow5135 at r5135

  unfold Seg52.relationRow5136 at r5136

  unfold Seg52.relationRow5137 at r5137

  unfold Seg52.relationRow5138 at r5138

  unfold Seg52.relationRow5139 at r5139

  unfold Seg52.relationRow5140 at r5140

  unfold Seg52.relationRow5141 at r5141

  unfold Seg52.relationRow5142 at r5142

  unfold Seg52.relationRow5143 at r5143

  unfold Seg52.relationRow5144 at r5144

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX2 rho = seg52Out0AccX1 rho + rho 49527 := by
    unfold seg52Out0AccX2 seg52Out0AccX1
    ring

  have hnexty : seg52Out0AccY2 rho = seg52Out0AccY1 rho + rho 49528 := by
    unfold seg52Out0AccY2 seg52Out0AccY1
    ring

  have ha0 : (rho 49519 + rho 49520) * (seg52Out0AccX1 rho + seg52Out0AccY1 rho) = rho 49521 := by
    unfold seg52Out0AccX1 seg52Out0AccY1
    linear_combination r5132
  have ha1 : rho 49520 * seg52Out0AccX1 rho = rho 49522 := by
    unfold seg52Out0AccX1
    linear_combination r5133
  have ha2 : rho 49519 * seg52Out0AccY1 rho = rho 49523 := by
    unfold seg52Out0AccY1
    linear_combination r5134
  have ha3 : 3021 * rho 49522 * rho 49523 = rho 49524 := by
    linear_combination r5135
  have ha4 : rho 49525 * (1 + rho 49524) = rho 49522 + rho 49523 := by
    linear_combination r5136
  have ha5 : rho 49526 * (1 - rho 49524) = rho 49521 - rho 49522 - rho 49523 := by
    linear_combination r5137
  have haddx :
      rho 49525 * (1 + 3021 * (rho 49520 * seg52Out0AccX1 rho) * (rho 49519 * seg52Out0AccY1 rho)) =
        rho 49520 * seg52Out0AccX1 rho + rho 49519 * seg52Out0AccY1 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49526 * (1 - 3021 * (rho 49520 * seg52Out0AccX1 rho) * (rho 49519 * seg52Out0AccY1 rho)) =
        (-1) * (rho 49520 * seg52Out0AccX1 rho) - rho 49519 * seg52Out0AccY1 rho +
          (seg52Out0AccY1 rho - seg52Out0AccX1 rho * (-1)) * (rho 49519 + rho 49520) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49526 * (1 - rho 49524) = rho 49521 - rho 49522 - rho 49523 := ha5
      _ = (-1) * rho 49522 - rho 49523 + (seg52Out0AccY1 rho - seg52Out0AccX1 rho * (-1)) *
          (rho 49519 + rho 49520) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX2 rho = seg52Out0AccX1 rho - Bool.toZMod bit * (seg52Out0AccX1 rho - rho 49525) := by
    have hd : rho 49527 = Bool.toZMod bit * (rho 49525 - seg52Out0AccX1 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX1
      linear_combination -r5138
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY2 rho = seg52Out0AccY1 rho - Bool.toZMod bit * (seg52Out0AccY1 rho - rho 49526) := by
    have hd : rho 49528 = Bool.toZMod bit * (rho 49526 - seg52Out0AccY1 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY1
      linear_combination -r5139
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49519 * rho 49520 = rho 49529 := by linear_combination r5140
  have hd1 : rho 49519 * rho 49519 = rho 49530 := by linear_combination r5141
  have hd2 : rho 49520 * rho 49520 = rho 49531 := by linear_combination r5142
  have hd3 : rho 49532 * (rho 49520 * rho 49520 + rho 49519 * rho 49519 * (-1)) =
      2 * (rho 49519 * rho 49520) := by
    rw [hd0, hd1, hd2]
    linear_combination r5143
  have hd4 : rho 49533 * (2 - (rho 49520 * rho 49520 + rho 49519 * rho 49519 * (-1))) =
      rho 49520 * rho 49520 - rho 49519 * rho 49519 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5144
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX1 rho, seg52Out0AccY1 rho⟩ ⟨rho 49519, rho 49520⟩
    ⟨rho 49525, rho 49526⟩ ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 49532, rho 49533⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5145 rho ∧ Seg52.relationRow5146 rho ∧ Seg52.relationRow5147 rho ∧ Seg52.relationRow5148 rho ∧ Seg52.relationRow5149 rho ∧ Seg52.relationRow5150 rho ∧ Seg52.relationRow5151 rho ∧ Seg52.relationRow5152 rho ∧ Seg52.relationRow5153 rho ∧ Seg52.relationRow5154 rho ∧ Seg52.relationRow5155 rho ∧ Seg52.relationRow5156 rho ∧ Seg52.relationRow5157 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, r5156, r5157, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, r5156, r5157⟩

theorem seg52Out0_rung2 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49388 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49532, rho 49533⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 49532, rho 49533⟩
        ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 49545, rho 49546⟩ := by
  obtain ⟨r5145, r5146, r5147, r5148, r5149, r5150, r5151, r5152, r5153, r5154, r5155, r5156, r5157⟩ := seg52Out0_rows2 rho h
  unfold Seg52.relationRow5145 at r5145

  unfold Seg52.relationRow5146 at r5146

  unfold Seg52.relationRow5147 at r5147

  unfold Seg52.relationRow5148 at r5148

  unfold Seg52.relationRow5149 at r5149

  unfold Seg52.relationRow5150 at r5150

  unfold Seg52.relationRow5151 at r5151

  unfold Seg52.relationRow5152 at r5152

  unfold Seg52.relationRow5153 at r5153

  unfold Seg52.relationRow5154 at r5154

  unfold Seg52.relationRow5155 at r5155

  unfold Seg52.relationRow5156 at r5156

  unfold Seg52.relationRow5157 at r5157

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX3 rho = seg52Out0AccX2 rho + rho 49540 := by
    unfold seg52Out0AccX3 seg52Out0AccX2
    ring

  have hnexty : seg52Out0AccY3 rho = seg52Out0AccY2 rho + rho 49541 := by
    unfold seg52Out0AccY3 seg52Out0AccY2
    ring

  have ha0 : (rho 49532 + rho 49533) * (seg52Out0AccX2 rho + seg52Out0AccY2 rho) = rho 49534 := by
    unfold seg52Out0AccX2 seg52Out0AccY2
    linear_combination r5145
  have ha1 : rho 49533 * seg52Out0AccX2 rho = rho 49535 := by
    unfold seg52Out0AccX2
    linear_combination r5146
  have ha2 : rho 49532 * seg52Out0AccY2 rho = rho 49536 := by
    unfold seg52Out0AccY2
    linear_combination r5147
  have ha3 : 3021 * rho 49535 * rho 49536 = rho 49537 := by
    linear_combination r5148
  have ha4 : rho 49538 * (1 + rho 49537) = rho 49535 + rho 49536 := by
    linear_combination r5149
  have ha5 : rho 49539 * (1 - rho 49537) = rho 49534 - rho 49535 - rho 49536 := by
    linear_combination r5150
  have haddx :
      rho 49538 * (1 + 3021 * (rho 49533 * seg52Out0AccX2 rho) * (rho 49532 * seg52Out0AccY2 rho)) =
        rho 49533 * seg52Out0AccX2 rho + rho 49532 * seg52Out0AccY2 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49539 * (1 - 3021 * (rho 49533 * seg52Out0AccX2 rho) * (rho 49532 * seg52Out0AccY2 rho)) =
        (-1) * (rho 49533 * seg52Out0AccX2 rho) - rho 49532 * seg52Out0AccY2 rho +
          (seg52Out0AccY2 rho - seg52Out0AccX2 rho * (-1)) * (rho 49532 + rho 49533) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49539 * (1 - rho 49537) = rho 49534 - rho 49535 - rho 49536 := ha5
      _ = (-1) * rho 49535 - rho 49536 + (seg52Out0AccY2 rho - seg52Out0AccX2 rho * (-1)) *
          (rho 49532 + rho 49533) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX3 rho = seg52Out0AccX2 rho - Bool.toZMod bit * (seg52Out0AccX2 rho - rho 49538) := by
    have hd : rho 49540 = Bool.toZMod bit * (rho 49538 - seg52Out0AccX2 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX2
      linear_combination -r5151
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY3 rho = seg52Out0AccY2 rho - Bool.toZMod bit * (seg52Out0AccY2 rho - rho 49539) := by
    have hd : rho 49541 = Bool.toZMod bit * (rho 49539 - seg52Out0AccY2 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY2
      linear_combination -r5152
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49532 * rho 49533 = rho 49542 := by linear_combination r5153
  have hd1 : rho 49532 * rho 49532 = rho 49543 := by linear_combination r5154
  have hd2 : rho 49533 * rho 49533 = rho 49544 := by linear_combination r5155
  have hd3 : rho 49545 * (rho 49533 * rho 49533 + rho 49532 * rho 49532 * (-1)) =
      2 * (rho 49532 * rho 49533) := by
    rw [hd0, hd1, hd2]
    linear_combination r5156
  have hd4 : rho 49546 * (2 - (rho 49533 * rho 49533 + rho 49532 * rho 49532 * (-1))) =
      rho 49533 * rho 49533 - rho 49532 * rho 49532 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5157
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX2 rho, seg52Out0AccY2 rho⟩ ⟨rho 49532, rho 49533⟩
    ⟨rho 49538, rho 49539⟩ ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 49545, rho 49546⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5158 rho ∧ Seg52.relationRow5159 rho ∧ Seg52.relationRow5160 rho ∧ Seg52.relationRow5161 rho ∧ Seg52.relationRow5162 rho ∧ Seg52.relationRow5163 rho ∧ Seg52.relationRow5164 rho ∧ Seg52.relationRow5165 rho ∧ Seg52.relationRow5166 rho ∧ Seg52.relationRow5167 rho ∧ Seg52.relationRow5168 rho ∧ Seg52.relationRow5169 rho ∧ Seg52.relationRow5170 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170⟩

theorem seg52Out0_rung3 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49389 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49545, rho 49546⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 49545, rho 49546⟩
        ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 49558, rho 49559⟩ := by
  obtain ⟨r5158, r5159, r5160, r5161, r5162, r5163, r5164, r5165, r5166, r5167, r5168, r5169, r5170⟩ := seg52Out0_rows3 rho h
  unfold Seg52.relationRow5158 at r5158

  unfold Seg52.relationRow5159 at r5159

  unfold Seg52.relationRow5160 at r5160

  unfold Seg52.relationRow5161 at r5161

  unfold Seg52.relationRow5162 at r5162

  unfold Seg52.relationRow5163 at r5163

  unfold Seg52.relationRow5164 at r5164

  unfold Seg52.relationRow5165 at r5165

  unfold Seg52.relationRow5166 at r5166

  unfold Seg52.relationRow5167 at r5167

  unfold Seg52.relationRow5168 at r5168

  unfold Seg52.relationRow5169 at r5169

  unfold Seg52.relationRow5170 at r5170

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX4 rho = seg52Out0AccX3 rho + rho 49553 := by
    unfold seg52Out0AccX4 seg52Out0AccX3
    ring

  have hnexty : seg52Out0AccY4 rho = seg52Out0AccY3 rho + rho 49554 := by
    unfold seg52Out0AccY4 seg52Out0AccY3
    ring

  have ha0 : (rho 49545 + rho 49546) * (seg52Out0AccX3 rho + seg52Out0AccY3 rho) = rho 49547 := by
    unfold seg52Out0AccX3 seg52Out0AccY3
    linear_combination r5158
  have ha1 : rho 49546 * seg52Out0AccX3 rho = rho 49548 := by
    unfold seg52Out0AccX3
    linear_combination r5159
  have ha2 : rho 49545 * seg52Out0AccY3 rho = rho 49549 := by
    unfold seg52Out0AccY3
    linear_combination r5160
  have ha3 : 3021 * rho 49548 * rho 49549 = rho 49550 := by
    linear_combination r5161
  have ha4 : rho 49551 * (1 + rho 49550) = rho 49548 + rho 49549 := by
    linear_combination r5162
  have ha5 : rho 49552 * (1 - rho 49550) = rho 49547 - rho 49548 - rho 49549 := by
    linear_combination r5163
  have haddx :
      rho 49551 * (1 + 3021 * (rho 49546 * seg52Out0AccX3 rho) * (rho 49545 * seg52Out0AccY3 rho)) =
        rho 49546 * seg52Out0AccX3 rho + rho 49545 * seg52Out0AccY3 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49552 * (1 - 3021 * (rho 49546 * seg52Out0AccX3 rho) * (rho 49545 * seg52Out0AccY3 rho)) =
        (-1) * (rho 49546 * seg52Out0AccX3 rho) - rho 49545 * seg52Out0AccY3 rho +
          (seg52Out0AccY3 rho - seg52Out0AccX3 rho * (-1)) * (rho 49545 + rho 49546) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49552 * (1 - rho 49550) = rho 49547 - rho 49548 - rho 49549 := ha5
      _ = (-1) * rho 49548 - rho 49549 + (seg52Out0AccY3 rho - seg52Out0AccX3 rho * (-1)) *
          (rho 49545 + rho 49546) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX4 rho = seg52Out0AccX3 rho - Bool.toZMod bit * (seg52Out0AccX3 rho - rho 49551) := by
    have hd : rho 49553 = Bool.toZMod bit * (rho 49551 - seg52Out0AccX3 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX3
      linear_combination -r5164
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY4 rho = seg52Out0AccY3 rho - Bool.toZMod bit * (seg52Out0AccY3 rho - rho 49552) := by
    have hd : rho 49554 = Bool.toZMod bit * (rho 49552 - seg52Out0AccY3 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY3
      linear_combination -r5165
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49545 * rho 49546 = rho 49555 := by linear_combination r5166
  have hd1 : rho 49545 * rho 49545 = rho 49556 := by linear_combination r5167
  have hd2 : rho 49546 * rho 49546 = rho 49557 := by linear_combination r5168
  have hd3 : rho 49558 * (rho 49546 * rho 49546 + rho 49545 * rho 49545 * (-1)) =
      2 * (rho 49545 * rho 49546) := by
    rw [hd0, hd1, hd2]
    linear_combination r5169
  have hd4 : rho 49559 * (2 - (rho 49546 * rho 49546 + rho 49545 * rho 49545 * (-1))) =
      rho 49546 * rho 49546 - rho 49545 * rho 49545 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5170
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX3 rho, seg52Out0AccY3 rho⟩ ⟨rho 49545, rho 49546⟩
    ⟨rho 49551, rho 49552⟩ ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 49558, rho 49559⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5171 rho ∧ Seg52.relationRow5172 rho ∧ Seg52.relationRow5173 rho ∧ Seg52.relationRow5174 rho ∧ Seg52.relationRow5175 rho ∧ Seg52.relationRow5176 rho ∧ Seg52.relationRow5177 rho ∧ Seg52.relationRow5178 rho ∧ Seg52.relationRow5179 rho ∧ Seg52.relationRow5180 rho ∧ Seg52.relationRow5181 rho ∧ Seg52.relationRow5182 rho ∧ Seg52.relationRow5183 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, r5181, r5182, r5183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, r5181, r5182, r5183⟩

theorem seg52Out0_rung4 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49390 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49558, rho 49559⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 49558, rho 49559⟩
        ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 49571, rho 49572⟩ := by
  obtain ⟨r5171, r5172, r5173, r5174, r5175, r5176, r5177, r5178, r5179, r5180, r5181, r5182, r5183⟩ := seg52Out0_rows4 rho h
  unfold Seg52.relationRow5171 at r5171

  unfold Seg52.relationRow5172 at r5172

  unfold Seg52.relationRow5173 at r5173

  unfold Seg52.relationRow5174 at r5174

  unfold Seg52.relationRow5175 at r5175

  unfold Seg52.relationRow5176 at r5176

  unfold Seg52.relationRow5177 at r5177

  unfold Seg52.relationRow5178 at r5178

  unfold Seg52.relationRow5179 at r5179

  unfold Seg52.relationRow5180 at r5180

  unfold Seg52.relationRow5181 at r5181

  unfold Seg52.relationRow5182 at r5182

  unfold Seg52.relationRow5183 at r5183

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX5 rho = seg52Out0AccX4 rho + rho 49566 := by
    unfold seg52Out0AccX5 seg52Out0AccX4
    ring

  have hnexty : seg52Out0AccY5 rho = seg52Out0AccY4 rho + rho 49567 := by
    unfold seg52Out0AccY5 seg52Out0AccY4
    ring

  have ha0 : (rho 49558 + rho 49559) * (seg52Out0AccX4 rho + seg52Out0AccY4 rho) = rho 49560 := by
    unfold seg52Out0AccX4 seg52Out0AccY4
    linear_combination r5171
  have ha1 : rho 49559 * seg52Out0AccX4 rho = rho 49561 := by
    unfold seg52Out0AccX4
    linear_combination r5172
  have ha2 : rho 49558 * seg52Out0AccY4 rho = rho 49562 := by
    unfold seg52Out0AccY4
    linear_combination r5173
  have ha3 : 3021 * rho 49561 * rho 49562 = rho 49563 := by
    linear_combination r5174
  have ha4 : rho 49564 * (1 + rho 49563) = rho 49561 + rho 49562 := by
    linear_combination r5175
  have ha5 : rho 49565 * (1 - rho 49563) = rho 49560 - rho 49561 - rho 49562 := by
    linear_combination r5176
  have haddx :
      rho 49564 * (1 + 3021 * (rho 49559 * seg52Out0AccX4 rho) * (rho 49558 * seg52Out0AccY4 rho)) =
        rho 49559 * seg52Out0AccX4 rho + rho 49558 * seg52Out0AccY4 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49565 * (1 - 3021 * (rho 49559 * seg52Out0AccX4 rho) * (rho 49558 * seg52Out0AccY4 rho)) =
        (-1) * (rho 49559 * seg52Out0AccX4 rho) - rho 49558 * seg52Out0AccY4 rho +
          (seg52Out0AccY4 rho - seg52Out0AccX4 rho * (-1)) * (rho 49558 + rho 49559) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49565 * (1 - rho 49563) = rho 49560 - rho 49561 - rho 49562 := ha5
      _ = (-1) * rho 49561 - rho 49562 + (seg52Out0AccY4 rho - seg52Out0AccX4 rho * (-1)) *
          (rho 49558 + rho 49559) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX5 rho = seg52Out0AccX4 rho - Bool.toZMod bit * (seg52Out0AccX4 rho - rho 49564) := by
    have hd : rho 49566 = Bool.toZMod bit * (rho 49564 - seg52Out0AccX4 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX4
      linear_combination -r5177
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY5 rho = seg52Out0AccY4 rho - Bool.toZMod bit * (seg52Out0AccY4 rho - rho 49565) := by
    have hd : rho 49567 = Bool.toZMod bit * (rho 49565 - seg52Out0AccY4 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY4
      linear_combination -r5178
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49558 * rho 49559 = rho 49568 := by linear_combination r5179
  have hd1 : rho 49558 * rho 49558 = rho 49569 := by linear_combination r5180
  have hd2 : rho 49559 * rho 49559 = rho 49570 := by linear_combination r5181
  have hd3 : rho 49571 * (rho 49559 * rho 49559 + rho 49558 * rho 49558 * (-1)) =
      2 * (rho 49558 * rho 49559) := by
    rw [hd0, hd1, hd2]
    linear_combination r5182
  have hd4 : rho 49572 * (2 - (rho 49559 * rho 49559 + rho 49558 * rho 49558 * (-1))) =
      rho 49559 * rho 49559 - rho 49558 * rho 49558 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5183
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX4 rho, seg52Out0AccY4 rho⟩ ⟨rho 49558, rho 49559⟩
    ⟨rho 49564, rho 49565⟩ ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 49571, rho 49572⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5184 rho ∧ Seg52.relationRow5185 rho ∧ Seg52.relationRow5186 rho ∧ Seg52.relationRow5187 rho ∧ Seg52.relationRow5188 rho ∧ Seg52.relationRow5189 rho ∧ Seg52.relationRow5190 rho ∧ Seg52.relationRow5191 rho ∧ Seg52.relationRow5192 rho ∧ Seg52.relationRow5193 rho ∧ Seg52.relationRow5194 rho ∧ Seg52.relationRow5195 rho ∧ Seg52.relationRow5196 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196, _, _, _⟩

  exact ⟨r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196⟩

theorem seg52Out0_rung5 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49391 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49571, rho 49572⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 49571, rho 49572⟩
        ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 49584, rho 49585⟩ := by
  obtain ⟨r5184, r5185, r5186, r5187, r5188, r5189, r5190, r5191, r5192, r5193, r5194, r5195, r5196⟩ := seg52Out0_rows5 rho h
  unfold Seg52.relationRow5184 at r5184

  unfold Seg52.relationRow5185 at r5185

  unfold Seg52.relationRow5186 at r5186

  unfold Seg52.relationRow5187 at r5187

  unfold Seg52.relationRow5188 at r5188

  unfold Seg52.relationRow5189 at r5189

  unfold Seg52.relationRow5190 at r5190

  unfold Seg52.relationRow5191 at r5191

  unfold Seg52.relationRow5192 at r5192

  unfold Seg52.relationRow5193 at r5193

  unfold Seg52.relationRow5194 at r5194

  unfold Seg52.relationRow5195 at r5195

  unfold Seg52.relationRow5196 at r5196

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX6 rho = seg52Out0AccX5 rho + rho 49579 := by
    unfold seg52Out0AccX6 seg52Out0AccX5
    ring

  have hnexty : seg52Out0AccY6 rho = seg52Out0AccY5 rho + rho 49580 := by
    unfold seg52Out0AccY6 seg52Out0AccY5
    ring

  have ha0 : (rho 49571 + rho 49572) * (seg52Out0AccX5 rho + seg52Out0AccY5 rho) = rho 49573 := by
    unfold seg52Out0AccX5 seg52Out0AccY5
    linear_combination r5184
  have ha1 : rho 49572 * seg52Out0AccX5 rho = rho 49574 := by
    unfold seg52Out0AccX5
    linear_combination r5185
  have ha2 : rho 49571 * seg52Out0AccY5 rho = rho 49575 := by
    unfold seg52Out0AccY5
    linear_combination r5186
  have ha3 : 3021 * rho 49574 * rho 49575 = rho 49576 := by
    linear_combination r5187
  have ha4 : rho 49577 * (1 + rho 49576) = rho 49574 + rho 49575 := by
    linear_combination r5188
  have ha5 : rho 49578 * (1 - rho 49576) = rho 49573 - rho 49574 - rho 49575 := by
    linear_combination r5189
  have haddx :
      rho 49577 * (1 + 3021 * (rho 49572 * seg52Out0AccX5 rho) * (rho 49571 * seg52Out0AccY5 rho)) =
        rho 49572 * seg52Out0AccX5 rho + rho 49571 * seg52Out0AccY5 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49578 * (1 - 3021 * (rho 49572 * seg52Out0AccX5 rho) * (rho 49571 * seg52Out0AccY5 rho)) =
        (-1) * (rho 49572 * seg52Out0AccX5 rho) - rho 49571 * seg52Out0AccY5 rho +
          (seg52Out0AccY5 rho - seg52Out0AccX5 rho * (-1)) * (rho 49571 + rho 49572) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49578 * (1 - rho 49576) = rho 49573 - rho 49574 - rho 49575 := ha5
      _ = (-1) * rho 49574 - rho 49575 + (seg52Out0AccY5 rho - seg52Out0AccX5 rho * (-1)) *
          (rho 49571 + rho 49572) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX6 rho = seg52Out0AccX5 rho - Bool.toZMod bit * (seg52Out0AccX5 rho - rho 49577) := by
    have hd : rho 49579 = Bool.toZMod bit * (rho 49577 - seg52Out0AccX5 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX5
      linear_combination -r5190
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY6 rho = seg52Out0AccY5 rho - Bool.toZMod bit * (seg52Out0AccY5 rho - rho 49578) := by
    have hd : rho 49580 = Bool.toZMod bit * (rho 49578 - seg52Out0AccY5 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY5
      linear_combination -r5191
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49571 * rho 49572 = rho 49581 := by linear_combination r5192
  have hd1 : rho 49571 * rho 49571 = rho 49582 := by linear_combination r5193
  have hd2 : rho 49572 * rho 49572 = rho 49583 := by linear_combination r5194
  have hd3 : rho 49584 * (rho 49572 * rho 49572 + rho 49571 * rho 49571 * (-1)) =
      2 * (rho 49571 * rho 49572) := by
    rw [hd0, hd1, hd2]
    linear_combination r5195
  have hd4 : rho 49585 * (2 - (rho 49572 * rho 49572 + rho 49571 * rho 49571 * (-1))) =
      rho 49572 * rho 49572 - rho 49571 * rho 49571 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5196
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX5 rho, seg52Out0AccY5 rho⟩ ⟨rho 49571, rho 49572⟩
    ⟨rho 49577, rho 49578⟩ ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 49584, rho 49585⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5197 rho ∧ Seg52.relationRow5198 rho ∧ Seg52.relationRow5199 rho ∧ Seg52.relationRow5200 rho ∧ Seg52.relationRow5201 rho ∧ Seg52.relationRow5202 rho ∧ Seg52.relationRow5203 rho ∧ Seg52.relationRow5204 rho ∧ Seg52.relationRow5205 rho ∧ Seg52.relationRow5206 rho ∧ Seg52.relationRow5207 rho ∧ Seg52.relationRow5208 rho ∧ Seg52.relationRow5209 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p64, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart64 at p64

  rcases p64 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5197, r5198, r5199⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209⟩

theorem seg52Out0_rung6 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49392 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49584, rho 49585⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 49584, rho 49585⟩
        ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 49597, rho 49598⟩ := by
  obtain ⟨r5197, r5198, r5199, r5200, r5201, r5202, r5203, r5204, r5205, r5206, r5207, r5208, r5209⟩ := seg52Out0_rows6 rho h
  unfold Seg52.relationRow5197 at r5197

  unfold Seg52.relationRow5198 at r5198

  unfold Seg52.relationRow5199 at r5199

  unfold Seg52.relationRow5200 at r5200

  unfold Seg52.relationRow5201 at r5201

  unfold Seg52.relationRow5202 at r5202

  unfold Seg52.relationRow5203 at r5203

  unfold Seg52.relationRow5204 at r5204

  unfold Seg52.relationRow5205 at r5205

  unfold Seg52.relationRow5206 at r5206

  unfold Seg52.relationRow5207 at r5207

  unfold Seg52.relationRow5208 at r5208

  unfold Seg52.relationRow5209 at r5209

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX7 rho = seg52Out0AccX6 rho + rho 49592 := by
    unfold seg52Out0AccX7 seg52Out0AccX6
    ring

  have hnexty : seg52Out0AccY7 rho = seg52Out0AccY6 rho + rho 49593 := by
    unfold seg52Out0AccY7 seg52Out0AccY6
    ring

  have ha0 : (rho 49584 + rho 49585) * (seg52Out0AccX6 rho + seg52Out0AccY6 rho) = rho 49586 := by
    unfold seg52Out0AccX6 seg52Out0AccY6
    linear_combination r5197
  have ha1 : rho 49585 * seg52Out0AccX6 rho = rho 49587 := by
    unfold seg52Out0AccX6
    linear_combination r5198
  have ha2 : rho 49584 * seg52Out0AccY6 rho = rho 49588 := by
    unfold seg52Out0AccY6
    linear_combination r5199
  have ha3 : 3021 * rho 49587 * rho 49588 = rho 49589 := by
    linear_combination r5200
  have ha4 : rho 49590 * (1 + rho 49589) = rho 49587 + rho 49588 := by
    linear_combination r5201
  have ha5 : rho 49591 * (1 - rho 49589) = rho 49586 - rho 49587 - rho 49588 := by
    linear_combination r5202
  have haddx :
      rho 49590 * (1 + 3021 * (rho 49585 * seg52Out0AccX6 rho) * (rho 49584 * seg52Out0AccY6 rho)) =
        rho 49585 * seg52Out0AccX6 rho + rho 49584 * seg52Out0AccY6 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49591 * (1 - 3021 * (rho 49585 * seg52Out0AccX6 rho) * (rho 49584 * seg52Out0AccY6 rho)) =
        (-1) * (rho 49585 * seg52Out0AccX6 rho) - rho 49584 * seg52Out0AccY6 rho +
          (seg52Out0AccY6 rho - seg52Out0AccX6 rho * (-1)) * (rho 49584 + rho 49585) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49591 * (1 - rho 49589) = rho 49586 - rho 49587 - rho 49588 := ha5
      _ = (-1) * rho 49587 - rho 49588 + (seg52Out0AccY6 rho - seg52Out0AccX6 rho * (-1)) *
          (rho 49584 + rho 49585) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX7 rho = seg52Out0AccX6 rho - Bool.toZMod bit * (seg52Out0AccX6 rho - rho 49590) := by
    have hd : rho 49592 = Bool.toZMod bit * (rho 49590 - seg52Out0AccX6 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX6
      linear_combination -r5203
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY7 rho = seg52Out0AccY6 rho - Bool.toZMod bit * (seg52Out0AccY6 rho - rho 49591) := by
    have hd : rho 49593 = Bool.toZMod bit * (rho 49591 - seg52Out0AccY6 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY6
      linear_combination -r5204
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49584 * rho 49585 = rho 49594 := by linear_combination r5205
  have hd1 : rho 49584 * rho 49584 = rho 49595 := by linear_combination r5206
  have hd2 : rho 49585 * rho 49585 = rho 49596 := by linear_combination r5207
  have hd3 : rho 49597 * (rho 49585 * rho 49585 + rho 49584 * rho 49584 * (-1)) =
      2 * (rho 49584 * rho 49585) := by
    rw [hd0, hd1, hd2]
    linear_combination r5208
  have hd4 : rho 49598 * (2 - (rho 49585 * rho 49585 + rho 49584 * rho 49584 * (-1))) =
      rho 49585 * rho 49585 - rho 49584 * rho 49584 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5209
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX6 rho, seg52Out0AccY6 rho⟩ ⟨rho 49584, rho 49585⟩
    ⟨rho 49590, rho 49591⟩ ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 49597, rho 49598⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5210 rho ∧ Seg52.relationRow5211 rho ∧ Seg52.relationRow5212 rho ∧ Seg52.relationRow5213 rho ∧ Seg52.relationRow5214 rho ∧ Seg52.relationRow5215 rho ∧ Seg52.relationRow5216 rho ∧ Seg52.relationRow5217 rho ∧ Seg52.relationRow5218 rho ∧ Seg52.relationRow5219 rho ∧ Seg52.relationRow5220 rho ∧ Seg52.relationRow5221 rho ∧ Seg52.relationRow5222 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩

theorem seg52Out0_rung7 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49393 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49597, rho 49598⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 49597, rho 49598⟩
        ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 49610, rho 49611⟩ := by
  obtain ⟨r5210, r5211, r5212, r5213, r5214, r5215, r5216, r5217, r5218, r5219, r5220, r5221, r5222⟩ := seg52Out0_rows7 rho h
  unfold Seg52.relationRow5210 at r5210

  unfold Seg52.relationRow5211 at r5211

  unfold Seg52.relationRow5212 at r5212

  unfold Seg52.relationRow5213 at r5213

  unfold Seg52.relationRow5214 at r5214

  unfold Seg52.relationRow5215 at r5215

  unfold Seg52.relationRow5216 at r5216

  unfold Seg52.relationRow5217 at r5217

  unfold Seg52.relationRow5218 at r5218

  unfold Seg52.relationRow5219 at r5219

  unfold Seg52.relationRow5220 at r5220

  unfold Seg52.relationRow5221 at r5221

  unfold Seg52.relationRow5222 at r5222

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX8 rho = seg52Out0AccX7 rho + rho 49605 := by
    unfold seg52Out0AccX8 seg52Out0AccX7
    ring

  have hnexty : seg52Out0AccY8 rho = seg52Out0AccY7 rho + rho 49606 := by
    unfold seg52Out0AccY8 seg52Out0AccY7
    ring

  have ha0 : (rho 49597 + rho 49598) * (seg52Out0AccX7 rho + seg52Out0AccY7 rho) = rho 49599 := by
    unfold seg52Out0AccX7 seg52Out0AccY7
    linear_combination r5210
  have ha1 : rho 49598 * seg52Out0AccX7 rho = rho 49600 := by
    unfold seg52Out0AccX7
    linear_combination r5211
  have ha2 : rho 49597 * seg52Out0AccY7 rho = rho 49601 := by
    unfold seg52Out0AccY7
    linear_combination r5212
  have ha3 : 3021 * rho 49600 * rho 49601 = rho 49602 := by
    linear_combination r5213
  have ha4 : rho 49603 * (1 + rho 49602) = rho 49600 + rho 49601 := by
    linear_combination r5214
  have ha5 : rho 49604 * (1 - rho 49602) = rho 49599 - rho 49600 - rho 49601 := by
    linear_combination r5215
  have haddx :
      rho 49603 * (1 + 3021 * (rho 49598 * seg52Out0AccX7 rho) * (rho 49597 * seg52Out0AccY7 rho)) =
        rho 49598 * seg52Out0AccX7 rho + rho 49597 * seg52Out0AccY7 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49604 * (1 - 3021 * (rho 49598 * seg52Out0AccX7 rho) * (rho 49597 * seg52Out0AccY7 rho)) =
        (-1) * (rho 49598 * seg52Out0AccX7 rho) - rho 49597 * seg52Out0AccY7 rho +
          (seg52Out0AccY7 rho - seg52Out0AccX7 rho * (-1)) * (rho 49597 + rho 49598) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49604 * (1 - rho 49602) = rho 49599 - rho 49600 - rho 49601 := ha5
      _ = (-1) * rho 49600 - rho 49601 + (seg52Out0AccY7 rho - seg52Out0AccX7 rho * (-1)) *
          (rho 49597 + rho 49598) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX8 rho = seg52Out0AccX7 rho - Bool.toZMod bit * (seg52Out0AccX7 rho - rho 49603) := by
    have hd : rho 49605 = Bool.toZMod bit * (rho 49603 - seg52Out0AccX7 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX7
      linear_combination -r5216
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY8 rho = seg52Out0AccY7 rho - Bool.toZMod bit * (seg52Out0AccY7 rho - rho 49604) := by
    have hd : rho 49606 = Bool.toZMod bit * (rho 49604 - seg52Out0AccY7 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY7
      linear_combination -r5217
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49597 * rho 49598 = rho 49607 := by linear_combination r5218
  have hd1 : rho 49597 * rho 49597 = rho 49608 := by linear_combination r5219
  have hd2 : rho 49598 * rho 49598 = rho 49609 := by linear_combination r5220
  have hd3 : rho 49610 * (rho 49598 * rho 49598 + rho 49597 * rho 49597 * (-1)) =
      2 * (rho 49597 * rho 49598) := by
    rw [hd0, hd1, hd2]
    linear_combination r5221
  have hd4 : rho 49611 * (2 - (rho 49598 * rho 49598 + rho 49597 * rho 49597 * (-1))) =
      rho 49598 * rho 49598 - rho 49597 * rho 49597 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5222
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX7 rho, seg52Out0AccY7 rho⟩ ⟨rho 49597, rho 49598⟩
    ⟨rho 49603, rho 49604⟩ ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 49610, rho 49611⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5223 rho ∧ Seg52.relationRow5224 rho ∧ Seg52.relationRow5225 rho ∧ Seg52.relationRow5226 rho ∧ Seg52.relationRow5227 rho ∧ Seg52.relationRow5228 rho ∧ Seg52.relationRow5229 rho ∧ Seg52.relationRow5230 rho ∧ Seg52.relationRow5231 rho ∧ Seg52.relationRow5232 rho ∧ Seg52.relationRow5233 rho ∧ Seg52.relationRow5234 rho ∧ Seg52.relationRow5235 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235⟩

theorem seg52Out0_rung8 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49394 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49610, rho 49611⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 49610, rho 49611⟩
        ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 49623, rho 49624⟩ := by
  obtain ⟨r5223, r5224, r5225, r5226, r5227, r5228, r5229, r5230, r5231, r5232, r5233, r5234, r5235⟩ := seg52Out0_rows8 rho h
  unfold Seg52.relationRow5223 at r5223

  unfold Seg52.relationRow5224 at r5224

  unfold Seg52.relationRow5225 at r5225

  unfold Seg52.relationRow5226 at r5226

  unfold Seg52.relationRow5227 at r5227

  unfold Seg52.relationRow5228 at r5228

  unfold Seg52.relationRow5229 at r5229

  unfold Seg52.relationRow5230 at r5230

  unfold Seg52.relationRow5231 at r5231

  unfold Seg52.relationRow5232 at r5232

  unfold Seg52.relationRow5233 at r5233

  unfold Seg52.relationRow5234 at r5234

  unfold Seg52.relationRow5235 at r5235

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX9 rho = seg52Out0AccX8 rho + rho 49618 := by
    unfold seg52Out0AccX9 seg52Out0AccX8
    ring

  have hnexty : seg52Out0AccY9 rho = seg52Out0AccY8 rho + rho 49619 := by
    unfold seg52Out0AccY9 seg52Out0AccY8
    ring

  have ha0 : (rho 49610 + rho 49611) * (seg52Out0AccX8 rho + seg52Out0AccY8 rho) = rho 49612 := by
    unfold seg52Out0AccX8 seg52Out0AccY8
    linear_combination r5223
  have ha1 : rho 49611 * seg52Out0AccX8 rho = rho 49613 := by
    unfold seg52Out0AccX8
    linear_combination r5224
  have ha2 : rho 49610 * seg52Out0AccY8 rho = rho 49614 := by
    unfold seg52Out0AccY8
    linear_combination r5225
  have ha3 : 3021 * rho 49613 * rho 49614 = rho 49615 := by
    linear_combination r5226
  have ha4 : rho 49616 * (1 + rho 49615) = rho 49613 + rho 49614 := by
    linear_combination r5227
  have ha5 : rho 49617 * (1 - rho 49615) = rho 49612 - rho 49613 - rho 49614 := by
    linear_combination r5228
  have haddx :
      rho 49616 * (1 + 3021 * (rho 49611 * seg52Out0AccX8 rho) * (rho 49610 * seg52Out0AccY8 rho)) =
        rho 49611 * seg52Out0AccX8 rho + rho 49610 * seg52Out0AccY8 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49617 * (1 - 3021 * (rho 49611 * seg52Out0AccX8 rho) * (rho 49610 * seg52Out0AccY8 rho)) =
        (-1) * (rho 49611 * seg52Out0AccX8 rho) - rho 49610 * seg52Out0AccY8 rho +
          (seg52Out0AccY8 rho - seg52Out0AccX8 rho * (-1)) * (rho 49610 + rho 49611) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49617 * (1 - rho 49615) = rho 49612 - rho 49613 - rho 49614 := ha5
      _ = (-1) * rho 49613 - rho 49614 + (seg52Out0AccY8 rho - seg52Out0AccX8 rho * (-1)) *
          (rho 49610 + rho 49611) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX9 rho = seg52Out0AccX8 rho - Bool.toZMod bit * (seg52Out0AccX8 rho - rho 49616) := by
    have hd : rho 49618 = Bool.toZMod bit * (rho 49616 - seg52Out0AccX8 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX8
      linear_combination -r5229
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY9 rho = seg52Out0AccY8 rho - Bool.toZMod bit * (seg52Out0AccY8 rho - rho 49617) := by
    have hd : rho 49619 = Bool.toZMod bit * (rho 49617 - seg52Out0AccY8 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY8
      linear_combination -r5230
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49610 * rho 49611 = rho 49620 := by linear_combination r5231
  have hd1 : rho 49610 * rho 49610 = rho 49621 := by linear_combination r5232
  have hd2 : rho 49611 * rho 49611 = rho 49622 := by linear_combination r5233
  have hd3 : rho 49623 * (rho 49611 * rho 49611 + rho 49610 * rho 49610 * (-1)) =
      2 * (rho 49610 * rho 49611) := by
    rw [hd0, hd1, hd2]
    linear_combination r5234
  have hd4 : rho 49624 * (2 - (rho 49611 * rho 49611 + rho 49610 * rho 49610 * (-1))) =
      rho 49611 * rho 49611 - rho 49610 * rho 49610 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5235
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX8 rho, seg52Out0AccY8 rho⟩ ⟨rho 49610, rho 49611⟩
    ⟨rho 49616, rho 49617⟩ ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 49623, rho 49624⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5236 rho ∧ Seg52.relationRow5237 rho ∧ Seg52.relationRow5238 rho ∧ Seg52.relationRow5239 rho ∧ Seg52.relationRow5240 rho ∧ Seg52.relationRow5241 rho ∧ Seg52.relationRow5242 rho ∧ Seg52.relationRow5243 rho ∧ Seg52.relationRow5244 rho ∧ Seg52.relationRow5245 rho ∧ Seg52.relationRow5246 rho ∧ Seg52.relationRow5247 rho ∧ Seg52.relationRow5248 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248⟩

theorem seg52Out0_rung9 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49395 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49623, rho 49624⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 49623, rho 49624⟩
        ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 49636, rho 49637⟩ := by
  obtain ⟨r5236, r5237, r5238, r5239, r5240, r5241, r5242, r5243, r5244, r5245, r5246, r5247, r5248⟩ := seg52Out0_rows9 rho h
  unfold Seg52.relationRow5236 at r5236

  unfold Seg52.relationRow5237 at r5237

  unfold Seg52.relationRow5238 at r5238

  unfold Seg52.relationRow5239 at r5239

  unfold Seg52.relationRow5240 at r5240

  unfold Seg52.relationRow5241 at r5241

  unfold Seg52.relationRow5242 at r5242

  unfold Seg52.relationRow5243 at r5243

  unfold Seg52.relationRow5244 at r5244

  unfold Seg52.relationRow5245 at r5245

  unfold Seg52.relationRow5246 at r5246

  unfold Seg52.relationRow5247 at r5247

  unfold Seg52.relationRow5248 at r5248

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX10 rho = seg52Out0AccX9 rho + rho 49631 := by
    unfold seg52Out0AccX10 seg52Out0AccX9
    ring

  have hnexty : seg52Out0AccY10 rho = seg52Out0AccY9 rho + rho 49632 := by
    unfold seg52Out0AccY10 seg52Out0AccY9
    ring

  have ha0 : (rho 49623 + rho 49624) * (seg52Out0AccX9 rho + seg52Out0AccY9 rho) = rho 49625 := by
    unfold seg52Out0AccX9 seg52Out0AccY9
    linear_combination r5236
  have ha1 : rho 49624 * seg52Out0AccX9 rho = rho 49626 := by
    unfold seg52Out0AccX9
    linear_combination r5237
  have ha2 : rho 49623 * seg52Out0AccY9 rho = rho 49627 := by
    unfold seg52Out0AccY9
    linear_combination r5238
  have ha3 : 3021 * rho 49626 * rho 49627 = rho 49628 := by
    linear_combination r5239
  have ha4 : rho 49629 * (1 + rho 49628) = rho 49626 + rho 49627 := by
    linear_combination r5240
  have ha5 : rho 49630 * (1 - rho 49628) = rho 49625 - rho 49626 - rho 49627 := by
    linear_combination r5241
  have haddx :
      rho 49629 * (1 + 3021 * (rho 49624 * seg52Out0AccX9 rho) * (rho 49623 * seg52Out0AccY9 rho)) =
        rho 49624 * seg52Out0AccX9 rho + rho 49623 * seg52Out0AccY9 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49630 * (1 - 3021 * (rho 49624 * seg52Out0AccX9 rho) * (rho 49623 * seg52Out0AccY9 rho)) =
        (-1) * (rho 49624 * seg52Out0AccX9 rho) - rho 49623 * seg52Out0AccY9 rho +
          (seg52Out0AccY9 rho - seg52Out0AccX9 rho * (-1)) * (rho 49623 + rho 49624) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49630 * (1 - rho 49628) = rho 49625 - rho 49626 - rho 49627 := ha5
      _ = (-1) * rho 49626 - rho 49627 + (seg52Out0AccY9 rho - seg52Out0AccX9 rho * (-1)) *
          (rho 49623 + rho 49624) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX10 rho = seg52Out0AccX9 rho - Bool.toZMod bit * (seg52Out0AccX9 rho - rho 49629) := by
    have hd : rho 49631 = Bool.toZMod bit * (rho 49629 - seg52Out0AccX9 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX9
      linear_combination -r5242
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY10 rho = seg52Out0AccY9 rho - Bool.toZMod bit * (seg52Out0AccY9 rho - rho 49630) := by
    have hd : rho 49632 = Bool.toZMod bit * (rho 49630 - seg52Out0AccY9 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY9
      linear_combination -r5243
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49623 * rho 49624 = rho 49633 := by linear_combination r5244
  have hd1 : rho 49623 * rho 49623 = rho 49634 := by linear_combination r5245
  have hd2 : rho 49624 * rho 49624 = rho 49635 := by linear_combination r5246
  have hd3 : rho 49636 * (rho 49624 * rho 49624 + rho 49623 * rho 49623 * (-1)) =
      2 * (rho 49623 * rho 49624) := by
    rw [hd0, hd1, hd2]
    linear_combination r5247
  have hd4 : rho 49637 * (2 - (rho 49624 * rho 49624 + rho 49623 * rho 49623 * (-1))) =
      rho 49624 * rho 49624 - rho 49623 * rho 49623 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5248
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX9 rho, seg52Out0AccY9 rho⟩ ⟨rho 49623, rho 49624⟩
    ⟨rho 49629, rho 49630⟩ ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 49636, rho 49637⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_rows10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    Seg52.relationRow5249 rho ∧ Seg52.relationRow5250 rho ∧ Seg52.relationRow5251 rho ∧ Seg52.relationRow5252 rho ∧ Seg52.relationRow5253 rho ∧ Seg52.relationRow5254 rho ∧ Seg52.relationRow5255 rho ∧ Seg52.relationRow5256 rho ∧ Seg52.relationRow5257 rho ∧ Seg52.relationRow5258 rho ∧ Seg52.relationRow5259 rho ∧ Seg52.relationRow5260 rho ∧ Seg52.relationRow5261 rho := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, p65, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart65 at p65

  rcases p65 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  exact ⟨r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261⟩

theorem seg52Out0_rung10 (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    ∀ (bit : Bool), rho 49396 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ →
      EdwardsBridge.onCurve ⟨rho 49636, rho 49637⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 49636, rho 49637⟩
        ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49649, rho 49650⟩ := by
  obtain ⟨r5249, r5250, r5251, r5252, r5253, r5254, r5255, r5256, r5257, r5258, r5259, r5260, r5261⟩ := seg52Out0_rows10 rho h
  unfold Seg52.relationRow5249 at r5249

  unfold Seg52.relationRow5250 at r5250

  unfold Seg52.relationRow5251 at r5251

  unfold Seg52.relationRow5252 at r5252

  unfold Seg52.relationRow5253 at r5253

  unfold Seg52.relationRow5254 at r5254

  unfold Seg52.relationRow5255 at r5255

  unfold Seg52.relationRow5256 at r5256

  unfold Seg52.relationRow5257 at r5257

  unfold Seg52.relationRow5258 at r5258

  unfold Seg52.relationRow5259 at r5259

  unfold Seg52.relationRow5260 at r5260

  unfold Seg52.relationRow5261 at r5261

  intro bit hbit hacc hcur
  have hnextx : seg52Out0AccX11 rho = seg52Out0AccX10 rho + rho 49644 := by
    unfold seg52Out0AccX11 seg52Out0AccX10
    ring

  have hnexty : seg52Out0AccY11 rho = seg52Out0AccY10 rho + rho 49645 := by
    unfold seg52Out0AccY11 seg52Out0AccY10
    ring

  have ha0 : (rho 49636 + rho 49637) * (seg52Out0AccX10 rho + seg52Out0AccY10 rho) = rho 49638 := by
    unfold seg52Out0AccX10 seg52Out0AccY10
    linear_combination r5249
  have ha1 : rho 49637 * seg52Out0AccX10 rho = rho 49639 := by
    unfold seg52Out0AccX10
    linear_combination r5250
  have ha2 : rho 49636 * seg52Out0AccY10 rho = rho 49640 := by
    unfold seg52Out0AccY10
    linear_combination r5251
  have ha3 : 3021 * rho 49639 * rho 49640 = rho 49641 := by
    linear_combination r5252
  have ha4 : rho 49642 * (1 + rho 49641) = rho 49639 + rho 49640 := by
    linear_combination r5253
  have ha5 : rho 49643 * (1 - rho 49641) = rho 49638 - rho 49639 - rho 49640 := by
    linear_combination r5254
  have haddx :
      rho 49642 * (1 + 3021 * (rho 49637 * seg52Out0AccX10 rho) * (rho 49636 * seg52Out0AccY10 rho)) =
        rho 49637 * seg52Out0AccX10 rho + rho 49636 * seg52Out0AccY10 rho := by
    rw [ha1, ha2, ha3]
    exact ha4
  have haddy :
      rho 49643 * (1 - 3021 * (rho 49637 * seg52Out0AccX10 rho) * (rho 49636 * seg52Out0AccY10 rho)) =
        (-1) * (rho 49637 * seg52Out0AccX10 rho) - rho 49636 * seg52Out0AccY10 rho +
          (seg52Out0AccY10 rho - seg52Out0AccX10 rho * (-1)) * (rho 49636 + rho 49637) := by
    rw [ha1, ha2, ha3]
    calc
      rho 49643 * (1 - rho 49641) = rho 49638 - rho 49639 - rho 49640 := ha5
      _ = (-1) * rho 49639 - rho 49640 + (seg52Out0AccY10 rho - seg52Out0AccX10 rho * (-1)) *
          (rho 49636 + rho 49637) := by
        rw [← ha0]
        ring
  have hselx : seg52Out0AccX11 rho = seg52Out0AccX10 rho - Bool.toZMod bit * (seg52Out0AccX10 rho - rho 49642) := by
    have hd : rho 49644 = Bool.toZMod bit * (rho 49642 - seg52Out0AccX10 rho) := by
      rw [← hbit]
      unfold seg52Out0AccX10
      linear_combination -r5255
    rw [hnextx]
    linear_combination hd
  have hsely : seg52Out0AccY11 rho = seg52Out0AccY10 rho - Bool.toZMod bit * (seg52Out0AccY10 rho - rho 49643) := by
    have hd : rho 49645 = Bool.toZMod bit * (rho 49643 - seg52Out0AccY10 rho) := by
      rw [← hbit]
      unfold seg52Out0AccY10
      linear_combination -r5256
    rw [hnexty]
    linear_combination hd
  have hd0 : rho 49636 * rho 49637 = rho 49646 := by linear_combination r5257
  have hd1 : rho 49636 * rho 49636 = rho 49647 := by linear_combination r5258
  have hd2 : rho 49637 * rho 49637 = rho 49648 := by linear_combination r5259
  have hd3 : rho 49649 * (rho 49637 * rho 49637 + rho 49636 * rho 49636 * (-1)) =
      2 * (rho 49636 * rho 49637) := by
    rw [hd0, hd1, hd2]
    linear_combination r5260
  have hd4 : rho 49650 * (2 - (rho 49637 * rho 49637 + rho 49636 * rho 49636 * (-1))) =
      rho 49637 * rho 49637 - rho 49636 * rho 49636 * (-1) := by
    rw [hd1, hd2]
    linear_combination r5261
  apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
    (Bool.toZMod bit) ⟨seg52Out0AccX10 rho, seg52Out0AccY10 rho⟩ ⟨rho 49636, rho 49637⟩
    ⟨rho 49642, rho 49643⟩ ⟨seg52Out0AccX11 rho, seg52Out0AccY11 rho⟩ ⟨rho 49649, rho 49650⟩
    hacc hcur
  · simpa [EdwardsBridge.d] using haddx
  · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
  · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
  · exact hselx
  · exact hsely
  · simpa [EdwardsBridge.a_eq] using hd3
  · simpa [EdwardsBridge.a_eq] using hd4

theorem seg52Out0_hstep_c0 (rho : Nat -> Seg52.F)
    (h : Seg52.relation rho) (bits : List.Vector Bool 128)
    (hbitAt : ∀ i, i < 128 → rho (49386 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 0 ≤ i → i < 11 →
      EdwardsBridge.onCurve (seg52Out0AccState rho i) →
      EdwardsBridge.onCurve (seg52Out0CurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg52Out0AccState rho i) (seg52Out0CurState rho i)
        (seg52Out0AccState rho (i + 1)) (seg52Out0CurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg52Out0_rung0 rho h bits[0]! (hbitAt 0 (by omega)) hacc hcur
  · exact seg52Out0_rung1 rho h bits[1]! (hbitAt 1 (by omega)) hacc hcur
  · exact seg52Out0_rung2 rho h bits[2]! (hbitAt 2 (by omega)) hacc hcur
  · exact seg52Out0_rung3 rho h bits[3]! (hbitAt 3 (by omega)) hacc hcur
  · exact seg52Out0_rung4 rho h bits[4]! (hbitAt 4 (by omega)) hacc hcur
  · exact seg52Out0_rung5 rho h bits[5]! (hbitAt 5 (by omega)) hacc hcur
  · exact seg52Out0_rung6 rho h bits[6]! (hbitAt 6 (by omega)) hacc hcur
  · exact seg52Out0_rung7 rho h bits[7]! (hbitAt 7 (by omega)) hacc hcur
  · exact seg52Out0_rung8 rho h bits[8]! (hbitAt 8 (by omega)) hacc hcur
  · exact seg52Out0_rung9 rho h bits[9]! (hbitAt 9 (by omega)) hacc hcur
  · exact seg52Out0_rung10 rho h bits[10]! (hbitAt 10 (by omega)) hacc hcur

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
